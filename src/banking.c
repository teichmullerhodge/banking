#include "banking.h"
#include "logger.h"
#include <stdio.h>




Account new_account(){
    
    static u64 id = 0;
    const u64 initialBalance = rand() % 2500; 
    Account acc = { id, initialBalance};
    id++;
    return acc;

}

void deposit(Account *dst, u64 amount) {
    
    atomic_fetch_add(&dst->Balance, amount);

}

bool transfer(Account *src, Account *dst, u64 amount) {
    u64 funds = atomic_load(&src->Balance);
    while(funds >= amount){ 
        if(atomic_compare_exchange_weak(&src->Balance, &funds, funds - amount)) {
            atomic_fetch_add(&dst->Balance, amount);
            return true;
        }
    }

    return false;
}


bool withdraw(Account *acc, u64 amount) {
    u64 funds = atomic_load(&acc->Balance);
    while(funds >= amount){ 
        if(atomic_compare_exchange_weak(&acc->Balance, &funds, funds - amount)) {
            return true;
        }
    }

    return false;
}





void simulate(size_t accountsNumber) {
    
    Account accounts[accountsNumber];
    for(size_t k = 0; k < accountsNumber; k++) {
        accounts[k] = new_account();
    }
    while(true) {

        //usleep(100000); comment this if you're in an unix env and want to see the logs more clearer.
        
        char msgbuffer[1024];
        enum BankingOperations operation = rand() % 2; // 0, 1, 2
        u64 value = rand() % BALANCE_SIM_VALUE;
        switch(operation) {
            case TRANSFER: { 
                size_t index = rand() % accountsNumber - 1;
                size_t sindex = rand() % accountsNumber - 1;
                if(index == sindex) 
                    break;
                Account src = accounts[index];
                Account dst = accounts[sindex];
                bool transaction = transfer(&src, &dst, value);
                if(transaction) {
                    
                    snprintf(msgbuffer, sizeof(msgbuffer),"Transfered: %ld from account: %ld to account %ld.\n", value, src.Id, dst.Id);
                    log_ok(msgbuffer);
                    snprintf(msgbuffer, sizeof(msgbuffer), "Current balance of accounts: [SOURCE: %ld, DESTINY: %ld].\n", src.Balance, dst.Balance);
                    log_warning(msgbuffer);
                    break;
                } else {
                   snprintf(msgbuffer, sizeof(msgbuffer), "Not enough funds. Current balance: %ld. The value needed is %ld.\n", src.Balance, value); 
                   log_error(msgbuffer);
                   break;
                }
            }
            case DEPOSIT: {
                size_t index = rand() % accountsNumber - 1;
                Account acc = accounts[index];
                deposit(&acc, value);
                snprintf(msgbuffer, sizeof(msgbuffer), "Deposited in account %ld the value of %ld.\n", acc.Id, value);;
                log_ok(msgbuffer);
                break;
            }
            case WITHDRAW: {
                size_t index = rand() % accountsNumber - 1;
                Account acc = accounts[index];
                bool transaction = withdraw(&acc, value);
                if(transaction) {

                    snprintf(msgbuffer, 
                             sizeof(msgbuffer), 
                             "Withdraw from account %ld the value of %ld. Current balance is %ld.\n", acc.Id, value, acc.Balance);
                    log_ok(msgbuffer);
                    break;
                } else {
                
                   snprintf(msgbuffer, 
                            sizeof(msgbuffer), 
                            "Not enough funds. Current balance: %ld. The value needed for this withdraw is %ld.\n", acc.Balance, value);
                    log_error(msgbuffer);
                    break;
                }
 
            }

        }
    }
}
