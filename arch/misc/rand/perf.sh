#! /bin/bash
printf "Memory\t\tDisk\t\tCPU\n"
end=$((SECONDS+36))
while [ $SECONDS -lt $end ]; do
MEMORY=$(free -m | awk 'NR==2{printf "%.2f%%\t\t", $3*100/$2 }')
DISK=$(df -h | awk '$NF=="/"{printf "%s\t\t", $5}')
CPU=$(top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}')
echo "$MEMORY$DISK$CPU"
mem=$(free -m | awk 'NR==2{printf "%d\t\t", $3*100/$2 }')
if [ $mem -gt 60 ]
then
	echo "too high"
	exit
fi
sleep 2
done
