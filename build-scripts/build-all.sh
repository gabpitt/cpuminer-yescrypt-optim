archs=(
  'generic x86-64'
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

for i in "${archs[@]}"
do
  ./build-scripts/build-for-platform.sh $i
done

cd release

cp ./minerd-intel-skylake ./minerd-intel-kabylake
mv ./minerd-amd-bdver1 ./minerd-amd-bulldozer1
mv ./minerd-amd-bdver2 ./minerd-amd-bulldozer2
mv ./minerd-amd-bdver3 ./minerd-amd-bulldozer3
mv ./minerd-amd-bdver4 ./minerd-amd-bulldozer4
mv ./minerd-amd-znver1 ./minerd-amd-ryzen1
mv ./minerd-amd-znver2 ./minerd-amd-ryzen2
