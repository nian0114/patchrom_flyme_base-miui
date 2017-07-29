#!/bin/bash
jarBaseName=$1
tempSmaliDir=$2
GIT_APPLY=$PORT_ROOT/tools/git/git.apply

function applyPatch() {
    cd overlay/$1
    for patch in `find . -name "*.patch"`
    do
	cp $patch ../../$2/
        cd ../../$2
        $GIT_APPLY $patch
	rm -rf *.patch
        cd -
    done
    cd ../..
}

function appendSmaliPart() {
  cd overlay/$1
  for file in `find . -name *.part`
  do
    filepath=`dirname $file`
    filename=`basename $file .part`
    dstfile="$2/$filepath/$filename"
    cat $file >> ../../$dstfile
  done
  cd ../..
}

if [ "$jarBaseName" = "framework" ];then
    echo ">>> in custom_jar $jarBaseName"
    rm -rf $2/smali_classes2/android/widget/Editor*.smali
    cp -rf ../base/$1.jar.out/smali_classes2/android/widget/Editor*.smali $2/smali/android/widget/
fi
