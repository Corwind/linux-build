#!/usr/bin/zsh

make -C $KSRC INSTALL_MOD_PATH=$INSTALL_PATH modules_install

exit 0
