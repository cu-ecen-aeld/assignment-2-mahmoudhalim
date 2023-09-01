#!/usr/bin/bash
if [ $# != 2 ] ;then
echo "INVALID ARGUMENTS"
exit 1
fi

writefile=$1
writestr=$2

dir=$(dirname "$1")
if [ ! -d "$dir" ]; then
mkdir -p "$dir"
fi
echo "$writestr" > "$writefile"