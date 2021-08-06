#!/bin/env bash
getFileName(){
call=$(caller)
if test -z "$call";then
	echo $0
	return 0
fi

fname=$(echo $(caller)|cut -d ' ' -f 2-)
if test -f $fname;then
	link=$(readlink $fname);
if test -z "$link";then
if test -f $fname;then
	echo $(basename $fname);return 0;
fi
	echo $fname;return 0;
fi
	echo $(basename $(readlink $fname));
	return 0
fi

echo $fname
}

echo fileName=$(getFileName)
