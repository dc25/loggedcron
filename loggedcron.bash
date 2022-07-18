#! /bin/bash
COMMAND=$1
FILE=`date +%Y-%m-%d__%H-%M-%S`
DIR=~/cron_logs/${COMMAND##*/}
mkdir -p $DIR
cd $DIR
date > $FILE 2>&1
echo RUNNING $COMMAND >> $FILE 2>&1
$COMMAND >> $FILE 2>&1
