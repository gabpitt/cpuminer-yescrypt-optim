echo "Building Optimised Linux Miner for $2"

./autogen.sh
./nomacro.pl
./configure CFLAGS="-Ofast -march=$2 -mtune=$2"
make

mv ./minerd ./release/minerd-linux-$1-$2