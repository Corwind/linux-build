#!/usr/bin/zsh

$KSCRIPTS/save_config.sh

[[ -e $KBUILD_OUTPUT/.config ]] || ($KSCRIPTS/restore_build_dir.sh && exit 0)

make $@ -C $KSRC -j9 || exit 127

$KSCRIPTS/install_headers.sh
$KSCRIPTS/install_modules.sh

exit 0
