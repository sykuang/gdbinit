#!/bin/bash

CUR_PATH="$(dirname "$(realpath "$0")")"
if [[ ! -f $CUR_PATH/gdbinit ]];then
  echo "Can't find $CUR_PATH/gdbinit!"
  exit 1
fi
if [[ -z $TOP ]];then
  echo "Please run this script after source build/envsetup_soc.sh"
  exit 1
fi
cp $CUR_PATH/gdbinit  $TOP/.gdbinit
echo "add-auto-load-safe-path $TOP/.gdbinit" >> $HOME/.gdbinit
