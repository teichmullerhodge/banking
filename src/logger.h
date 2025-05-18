#ifndef LOGGER_H
#define LOGGER_H

#include <stdio.h>


/// sample logger
#define RED "\033[1;31m"
#define GREEN   "\033[1;32m"
#define BLUE    "\033[1;34m"
#define RESET   "\033[0m"

static inline void log_error(const char *msg) {
    printf(RED "%s" RESET, msg);
}
static inline void log_warning(const char *msg) {
    printf(BLUE "%s" RESET, msg);
}
static inline void log_ok(const char *msg) {
    printf(GREEN "%s" RESET, msg);
}

static inline void log_debug(const char *msg) {
    printf("%s", msg);
}


#endif 

