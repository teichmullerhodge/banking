#ifndef BANKING_H
#define BANKING_H

#include <time.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdatomic.h> 
#include "declarations.h" 


enum BankingOperations {

    TRANSFER = 0,
    WITHDRAW = 1,
    DEPOSIT = 3,

};

typedef struct {

    u64 Id;
    atomic_uint_fast64_t Balance;

} Account;

#define BALANCE_SIM_VALUE 600
#define MAX_BALANCE_RANGE 25000

Account new_account(); 
void deposit(Account *dst, u64 amount);
bool transfer(Account *src, Account *dst, u64 amount);
bool withdraw(Account *acc, u64 amount);
void simulate(size_t accountsNumber);

#endif 
