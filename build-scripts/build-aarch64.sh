make clean
./autogen.sh
./nomacro.pl

./configure CFLAGS="-O2 -fomit-frame-pointer"
make
mv ./minerd ./release/minerd-ARM-aarch64
