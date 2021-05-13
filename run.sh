#!/bin/bash

rm -rf tmp

base_dir=$(pwd)
mkdir tmp
cp ./files.txt ./tmp
cd tmp

../build.sh && ../dump.sh

if [ $? -eq 0 ]; then
    cp il2cpp.h ../rust-header/il2cpp.h
    cd ../rust-header/
    echo $(pwd)
    echo 'done'
    git add il2cpp.h
    git commit -m "update"
    git push
fi
