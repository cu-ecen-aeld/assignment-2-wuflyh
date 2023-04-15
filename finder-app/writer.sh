#!/bin/sh

set -e

if [ $# -lt 2 ]; then
    echo "$0 writefile writestr"
    exit 1
fi

DIR=$(dirname $1)
mkdir -p $DIR && echo $2 > $1
if [ $? -ne 0 ]; then
    echo "cannot create file"
    exit 1
fi



