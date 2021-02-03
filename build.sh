#!/bin/bash

build_dir="build"
bin_dir="bin"
lib_dir="lib"
date_bgn=$(date +"%Y-%m-%d %H:%M:%S") 
echo -e "=============bgn: $date_bgn"

function vmkdir()
{
    for idir in $@
    do
    if [ ! -d "$idir" ];then
	echo -e "mkdir $idir"
	mkdir $idir
    fi
    done
}

vmkdir $build_dir $bin_dir $lib_dir

cd $build_dir
cmake ../src/ 
make
cd -

date_end=$(date +"%Y-%m-%d %H:%M:%S") 
echo -e "=============end: $date_end"
