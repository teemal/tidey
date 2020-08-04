#!/bin/bash
mkdir -p $(pwd)/images
mkdir -p $(pwd)/docs
mkdir -p $(pwd)/archives
mkdir -p $(pwd)/text
mkdir -p $(pwd)/scripts

images=(jpg
    jpeg
    png
    gif)

docs=(pdf
    odg
    xls
    doc
    docx
    xlsx)

archives=(zip
    tar*
    udeb
    deb)

text=(text
    txt
    json)

scripts=(sh)

for i in ${images[@]}; do
    count=$(ls -1 *.$i 2>/dev/null | wc -l)
    if [ $count != 0 ]; then
        mv *.$i $(pwd)/images
    fi
done

for i in ${docs[@]}; do
    count=$(ls -1 *.$i 2>/dev/null | wc -l)
    if [ $count != 0 ]; then
        mv *.$i $(pwd)/docs
    fi
done

for i in ${archives[@]}; do
    count=$(ls -1 *.$i 2>/dev/null | wc -l)
    if [ $count != 0 ]; then
        mv *.$i $(pwd)/archives
    fi
done


for i in ${archives[@]}; do
    count=$(ls -1 *.$i 2>/dev/null | wc -l)
    if [ $count != 0 ]; then
        mv *.$i $(pwd)/archives
    fi
done

for i in ${text[@]}; do
    count=$(ls -1 *.$i 2>/dev/null | wc -l)
    if [ $count != 0 ]; then
        mv *.$i $(pwd)/text
    fi
done

for i in ${scrips[@]}; do
    count=$(ls -1 *.$i 2>/dev/null | wc -l)
    if [ $count != 0 ]; then
        mv *.$i $(pwd)/scripts
    fi
done
