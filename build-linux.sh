#!/usr/bin/bash

CONFIG=${1:-Release}

echo "Building joltc with config: $CONFIG"

cmake -S joltc -B joltc/build \
    -DJPH_SAMPLES=OFF \
    -DJPH_BUILD_SHARED=ON \
    -DCMAKE_BUILD_TYPE=$CONFIG

cmake --build joltc/build --config $CONFIG

cp joltc/build/lib/libjoltc.so jolt
