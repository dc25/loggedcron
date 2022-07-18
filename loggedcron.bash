#! /bin/bash
COMMAND=$1
NAME=`date +%Y-%m-%d__%H-%M-%S`
DIR=~/cron_logs/${COMMAND##*/}
FILE=$DIR/$NAME
mkdir -p $DIR
date > $FILE 2>&1
$COMMAND >> $FILE 2>&1
