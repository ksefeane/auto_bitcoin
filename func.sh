#! /bin/bash 

nowMEM (){
	umem=$(free -m | awk 'NR==2{printf "%d", $3}')
	echo $umem
}

nowCPU (){
	cpu=$(top -bn1 | grep load | awk '{printf "%d", $(NF-2) * 10}')
	echo $cpu
}

avgCPU (){
	avg=$(($sum / $i))
	echo $avg
}

minCPU (){
	if [ $cpu -lt $min ]; then
		echo $cpu
	else
		echo $min
	fi
}

maxCPU (){
	if [ $cpu -gt $max ]; then
		echo $cpu
	else
		echo $max
	fi
}

burstCPU (){
	cpuB=$(nowCPU)
	burst=$(($cpuB - $cpuA))
	echo $burst
}

#dropCPU (){
#cpuB - cpuA 0 -> 1 ratio
#}

#burstTime (){
#how long burst was
#}
