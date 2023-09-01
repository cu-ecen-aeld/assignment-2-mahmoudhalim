#!/usr/bin/bash


if [ $# != 2 ] ;then
echo "INVALID ARGUMENTS"
exit 1
fi
filesdir=$1
searchstr=$2

if ! [[ -d "$filesdir" ]] ; then
echo "First Arguemnt should be a path"
exit 1
fi

numOfMatches=$(grep -r "$searchstr" "$filesdir"| wc -l)
numOfFiles=$(find  "$filesdir" -type f| wc -l)


echo "The number of files are $numOfFiles and the number of matching lines are $numOfMatches" 
