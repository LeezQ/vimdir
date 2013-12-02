#!/bin/bash
git clone https://github.com/LeezQ/vimdir.git gitvimdir
cd gitvimdir
rm -rf ~/.vim
rm -f ~/.vimrc
mv .vim ~/
mv .vimrc ~/
cd ..
rm -rf gitvimdir
