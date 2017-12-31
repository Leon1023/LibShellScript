#!/data/data/com.termux/files/usr/bin/zsh
##################################################################
#                                                                #
#func: output the days since 1970.01.01 00:00 to now,with GMT!   #
#                                                                #
##################################################################

epoch_days=719591

declare -a DATE=(`date +"%S %M %k %d %m %Y"`)
month=`echo ${DATE[5]} | sed 's/0*//'`
year=${DATE[6]}

if [ $month -gt 2 ]
then
 month=$(( $month+1 ))
else
 month=$(( $month+13 ))
 year=$(( $year-1 ))
fi

today_days=$(( ($year*365)+($year/4)-($year/100)\
  +($year/400)+($month*306001/10000)+${DATE[4]} ))

days_since_epoch=$(($today_days-$epoch_days))
echo $days_since_epoch
