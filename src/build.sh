compiler="gcc"
flags="-Wall -Werror -Wextra -O3"
source="main.c banking.c"
exit="-o ../build/bank"

$compiler $source $flags $exit 
