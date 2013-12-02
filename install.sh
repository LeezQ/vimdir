#!/bin/bash
git clone https://github.com/LeezQ/vimdir.git gitvimdir
cd gitvimdir
rm -rf ~/.vim
rm ~/.vimrc
mv .vim ~/
mv .vimrc ~/
