#!/bin/bash


DIR=$(dirname $(readlink $(which genr8)))


echo "====="
echo "Genr8"
echo "====="
echo


if [[ ! -z $1 ]] && [ -f $DIR/$1/index.sh ]; then
  bash $DIR/$1/index.sh
  exit 0
fi

if [[ ! -z $1 ]]; then
  echo "'$1' is not an available generator"
fi

echo "Please specify a generator from the list:"
cd $DIR
ls -1d */ | sed 's#/##' | sed 's#^#  #'
exit 1













