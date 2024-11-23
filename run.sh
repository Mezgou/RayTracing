mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build . -j$(nproc)
cd ..
build/AlgorithmsAndDS > build/image.ppm
display build/image.ppm