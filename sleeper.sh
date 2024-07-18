#!/bin/bash
for i in {1..10}
do
	date +"%H:%M:%S"
	ps -ef | wc -l
	sleep 5
done
cat /proc/cpuinfo > cpu_info.txt
cat /etc/os-release | grep '^NAME=' > os_info.txt
sed -i 's/^NAME=//' os_info.txt
for i in {50..100}
do
	touch "${i}.txt"
done

