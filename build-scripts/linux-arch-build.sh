echo "Building Optimised Miner for $2"

mkdir release

./autogen.sh
./configure CFLAGS="-Ofast -march=$2 -mtune=$2"
make clean
make

mv ./minerd ./release/minerd-linux-$1-$2