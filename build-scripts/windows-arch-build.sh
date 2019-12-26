echo "Building Optimised Windows Miner for $2"

./autogen.sh
./nomacro.pl
CFLAGS="-Ofast -march=$2 -mtune=$2" LIBCURL="-lcurldll" ./configure --host=x86_64-w64-mingw32
make

mv ./minerd.exe ./release/minerd-windows-$1-$2.exe