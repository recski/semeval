#!/usr/bin/env bash

for file in $1/STS.input.*
do
    n=`basename $file | cut -d'.' -f3`
    echo $n
    nice python semeval/paraphrases.py $3 $file $2/STS.output.$n.txt $1/STS.gs.$n.txt 2> $2/$n.log
done
