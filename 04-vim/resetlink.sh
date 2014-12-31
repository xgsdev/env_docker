#!/bin/bash

DIR=`pwd`

rm -rf $DIR/workingvimrc

ln -s $HOME/.vim/vimrc $DIR/workingvimrc 

echo "links is reset"
