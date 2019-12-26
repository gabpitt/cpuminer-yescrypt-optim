archs=(
  'intel pentium4'
  'intel core2'
  'intel nehalem'
  'intel westmere'
  'intel sandybridge'
  'intel ivybridge'
  'intel haswell'
  'intel broadwell'
  'intel skylake'
  'intel cannonlake'
  'intel cascadelake'
  'amd opteron'
  'amd athlon64'
  'amd athlon-fx'
  'amd bdver1'
  'amd bdver2'
  'amd bdver3'
  'amd bdver4'
  'amd znver1'
  'amd znver2'
)

cd ..
rm -rf release
mkdir release

for i in "${archs[@]}"
do
  ./build-scripts/linux-arch-build.sh $i
  ./build-scripts/windows-arch-build.sh $i
done

./build-scripts/build-aarch64.sh
./build-scripts/build-ARMv7l.sh

cd release

cp ./minerd-linux-intel-skylake ./minerd-linux-intel-kabylake
mv ./minerd-linux-amd-bdver1 ./minerd-linux-amd-bulldozer1
mv ./minerd-linux-amd-bdver2 ./minerd-linux-amd-bulldozer2
mv ./minerd-linux-amd-bdver3 ./minerd-linux-amd-bulldozer3
mv ./minerd-linux-amd-bdver4 ./minerd-linux-amd-bulldozer4
mv ./minerd-linux-amd-znver1 ./minerd-linux-amd-ryzen1
mv ./minerd-linux-amd-znver2 ./minerd-linux-amd-ryzen2

cp ./minerd-windows-intel-skylake.exe ./minerd-windows-intel-kabylake.exe
mv ./minerd-windows-amd-bdver1.exe ./minerd-windows-amd-bulldozer1.exe
mv ./minerd-windows-amd-bdver2.exe ./minerd-windows-amd-bulldozer2.exe
mv ./minerd-windows-amd-bdver3.exe ./minerd-windows-amd-bulldozer3.exe
mv ./minerd-windows-amd-bdver4.exe ./minerd-windows-amd-bulldozer4.exe
mv ./minerd-windows-amd-znver1.exe ./minerd-windows-amd-ryzen1.exe
mv ./minerd-windows-amd-znver2.exe ./minerd-windows-amd-ryzen2.exe
