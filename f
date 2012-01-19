#!/bin/bash

if [ "$#" == '2' ]; then
    DIR="$1"
    SEARCH="$2"
elif [ "$#" == '1' ]; then
    DIR="."
    SEARCH="$1"
else
    echo "Usage: $0 [directory] search"
    exit 2
fi
find "$DIR" -type f \
    -not -path '*/.svn/*' \
    -not -name '#*#' \
    -not -name '*~' \
    -not -path '*/.git/*' \
    -not -name '*.pyc' \
    -print0 | xargs -0 grep --with-filename --color=auto "$SEARCH"
