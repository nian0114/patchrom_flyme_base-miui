#!/bin/bash
apkBaseName=$1
tempSmaliDir=$2
GIT_APPLY=$PORT_ROOT/tools/git/git.apply

function applyPatch() {
    cd $1
    for patch in `find . -name "*.patch"`
    do
	cp $patch ../$2/
        cd ../$2
        $GIT_APPLY $patch
	rm -rf *.patch
        cd -
    done
    cd ..
}


if [ $1 = "TeleService" ];then
	applyPatch $1 $2
fi

if [ $1 = "Telecom" ];then
	applyPatch $1 $2
fi
