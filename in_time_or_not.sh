#!/data/data/com.termux/files/usr/bin/zsh

if [ $# -ne 4 ]
then
 echo "Usage: $0 {day begin} {day end} {hour begin} {hour end}"
 echo " Days are 0-6 where 0 is Sunday."
 echo " Hours are 0-23."
 exit
fi

DAY_BEGIN=$1
DAY_END=$2
HOUR_BEGIN=$3
HOUR_END=$4
DAY=`date +%w`
HOUR=`date +%H`

if [ $DAY -ge $DAY_BEGIN -a $DAY -le $DAY_END\
  -a $HOUR -ge $HOUR_BEGIN -a $HOUR -le $HOUR_END ]
then
 echo "It is time to notify!"
 return 0
else
 echo "It is not time to notify!"
 return 1
fi
