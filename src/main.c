#include <stdbool.h>
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include "banking.h"
#include "declarations.h"
    

int main(int argc, char **argv){ 
    (void)argc;
    (void)argv;


    srand(time(NULL));
    simulate(200);
    return 0;
    
}
