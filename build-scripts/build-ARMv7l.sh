./autogen.sh
./nomacro.pl
./configure CFLAGS="-Ofast -mcpu=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=hard -ffast-math" CXXFLAGS="-Ofast -mcpu=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=hard -ffast-math"
make
mv ./minerd ./release/minerd-ARM-v7l
