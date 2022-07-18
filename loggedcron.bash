#! /bin/bash
COMMAND=$1
shift
ARGS=$@
FILE=`date +%Y-%m-%d__%H-%M-%S`
DIR=~/cron_logs/${COMMAND##*/}
mkdir -p $DIR
cd $DIR
date > $FILE 2>&1
echo RUNNING $COMMAND $ARGS >> $FILE 2>&1
$COMMAND $ARGS>> $FILE 2>&1
