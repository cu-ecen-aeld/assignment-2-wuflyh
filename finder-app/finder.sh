#!/bin/sh

set -e

if [ $# -lt 2 ]; then
    echo "$0 filesdir searchstr"
    exit 1
fi

if ! [ -d $1 ]; then
    echo "$1 must be a directory"
    exit 1
fi

FILESDIR=$1
SEARCHSTR=$2
X=$( grep -R -l $SEARCHSTR $FILESDIR | wc -l )
Y=$( grep -R $SEARCHSTR $FILESDIR | wc -l )
echo "The number of files are $X and the number of matching lines are $Y" 




