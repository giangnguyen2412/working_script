#!/bin/bash

while getopts "w:i:" opt
do
   case "$opt" in
      w ) parameterA="$OPTARG" ;;
      i ) parameterB="$OPTARG" ;;
      ? )
   esac
done

scp giang@server_name:/home/giang/Downloads/datasets/imagenet1k-val/"$parameterA"/"$parameterB".JPEG /Users/dexter/Desktop/
sh imgcat /Users/dexter/Desktop/"$parameterB".JPEG
