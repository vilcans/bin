#!/bin/bash

set -f

LS='ls -l --color=auto'

if [ "$#" == '0' ]; then
    $LS $*
    exit $?
elif [ "$#" == '1' ]; then
	if [ -f "$1" ]; then
    	less $1
    	exit $?
	fi
fi
$LS $*
