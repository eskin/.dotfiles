#!/usr/bin/env bash

cd ~/.vim/plugged/color_coded/
rm build/ -rf
mkdir build && cd build && cmake -DCUSTOM_CLANG=1 .. && make && make install
cd ~/.vim/plugged/youcompleteme/
./install.py --clang-completer --system-libclang
cd
