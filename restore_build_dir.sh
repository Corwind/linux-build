#!/usr/bin/zsh

make -C $KSRC defconfig

$KSCRIPTS/restore_config.sh

$KSCRIPTS/build_kernel.sh

exit 0
