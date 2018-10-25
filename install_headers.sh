#!/usr/bin/zsh

make -C $KSRC INSTALL_HDR_PATH=$INSTALL_PATH/usr headers_install

exit 0
