#!/usr/bin/zsh

[ -e $KBUILD_OUTPUT/.config ] || exit 1

filename=$(date +"%F-%T").diff
diffconfig=$(diff $KBUILD_OUTPUT/.config $KSCRIPTS/.config)
difflines=$(echo -n $diffconfig | wc -l)

[ -e $KSCRIPTS/.config ]  && (( $difflines != 0 )) && echo -n $diffconfig >> $KSCRIPTS/$filename

[ -e $KBUILD_OUTPUT/.config ] && (( $difflines != 0 )) && cp $KBUILD_OUTPUT/.config $KSCRIPTS/

exit 0
