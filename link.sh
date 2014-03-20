#!/usr/bin/env bash
#
# link.sh
# Copyright (C) 2013 Andrew DeMaria (muff1nman) <ademaria@mines.edu>
#
# All Rights Reserved.
#

if [ -d "$1" ]; 
then
	dir=`readlink -f "$1"`
	echo 'REQUIRES:'
	echo '	test -f ~/.Xkeymap && xkbcomp ~/.Xkeymap $DISPLAY'
	ln -sf "$dir/hhkb.xkb" ~/.Xkeymap
else
	exit 1
fi

