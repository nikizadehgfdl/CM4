#!/bin/bash -x                                     
machine_name="stellar" 
platform="intel19"
target="prod-openmp"        
flavor="cm4"

usage()
{
    echo "usage: linux-build.bash -m stellar -p intel19 -t prod-openmp -f cm4"
    echo "usage: linux-build.bash -m stellar -p intel19 -t prod -f om4"
    echo "usage: linux-build.bash -m ncrc5   -p intel23cl -t prod -f om4"
}

# parse command-line arguments
while getopts "m:p:t:f:h" Option
do
   case "$Option" in
      m) machine_name=${OPTARG};;
      p) platform=${OPTARG} ;;
      t) target=${OPTARG} ;;
      f) flavor=${OPTARG} ;;
      h) usage ; exit ;;
   esac
done

rootdir=`dirname $0`
abs_rootdir=`cd $rootdir && pwd`

makeflags="PLAT=$machine_name"

if [[ "$target" =~ "openmp" ]] ; then 
   makeflags="$makeflags OPENMP=1" 
fi

if [[ "$target" =~ "openacc" ]] ; then 
   makeflags="$makeflags OPENACC=1" 
fi

if [[ $target =~ "repro" ]] ; then
   makeflags="$makeflags REPRO=1"
fi

if [[ $target =~ "prod" ]] ; then
   makeflags="$makeflags PROD=1"
fi

if [[ $target =~ "avx2" ]] ; then
   makeflags="$makeflags AVX=2"
fi

if [[ $target =~ "debug" ]] ; then
   makeflags="$makeflags DEBUG=1"
fi

srcdir=$abs_rootdir/../src
execdir=$abs_rootdir/../exec.$machine_name-$platform.$target

if [ ! -d $execdir ]; then
   cp -r ../exec ../exec.$machine_name-$platform.$target
fi   
pushd $execdir   

#load modules              
source $MODULESHOME/init/bash
source templates/$machine_name/$platform.env 
module list |& tee make.stdout
#source $rootdir/$machine_name/$platform.env
#. $rootdir/$machine_name/$platform.env


if [[ $flavor =~ "mom6sis2" || $flavor =~ "om4" ]] ; then
    make -f Makefile.OM4 $makeflags |& tee -a make.stdout
elif [[ $flavor =~ "cm4" ]] ; then
    make -f Makefile.CM4 $makeflags
fi
