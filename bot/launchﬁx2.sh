#!/usr/bin/env bash 
THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR
update() {
  git pull
  git submodule update --init --recursive
  install_rocks
}
# Will install luarocks on THIS_DIR/.luarocks
install_luarocks() {
  git clone https://github.com/keplerproject/luarocks.git
  cd luarocks
  git checkout tags/v2.2.1 # Current stable
  PREFIX="$THIS_DIR/.luarocks"
  ./conﬁgure --preﬁx=$PREFIX --sysconfdir=$PREFIX/
