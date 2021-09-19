#!/bin/bash

output=$HOME/research/sys_info.txt

ip=$(ip addr | head -9 | tail -1)

execs=$(find /home -type f -perm 777)

if [ $UID -ne 0 ]
then
	echo "Please run the script with sudo"
	exit
fi

if [ -f $output ]
then
	rm $output
fi

if [ ! -d $HOME/research ] 
then
mkdir $HOME/research
fi



echo "A Quick System Audit Script" > $output
date >> $output
echo "" >> $output
echo "Machine Type Info:" >> $output
echo $MACHTYPE >> $output
echo -e "Uname info: $(uname -a) \n" >> $output
echo -e $ip \n >> $output
echo -e "Hostname: $(hostname -s) \n" >> $output
echo "DNS Servers: " >> $output
cat /etc/resolv.conf >> $output
echo -e "\nMemory Info:" >> $output
free >> $output
# Display CPU usage
echo -e "\nCPU Info:" >> $output
lscpu | grep CPU >> $output
# Display Disk usage
echo -e "\nDisk Usage:" >> $output
df -H | head -2 >> $output
echo -e "\nWho is logged in: \n $(who -a) \n" >> $output
echo -e "\nSUID Files:" >> $output
find / -type f -perm /4000 >> $output
echo -e "\nTop 10 Processes" >> $output
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> $output



files=( 
	'/etc/shadow'
	'/etc/passwd'
}

echo -e "nThe permissions for sensitive /etc files: \n" >> $output

for file in ${files[@]}

do

	ls -l $file >> $output

then

	echo "$file is here $(which $file)"
else

	echo "$file is not here"
fi

done


for user in $(ls /home)
do
	sudo -lu $user
done

commands=(
	'date'
	'uname -a'
	'hostname -s'
)

for x in {0, 1, 2}
do
	results=$(${commands[$x]})
	echo "results of \"${commands[$x]}\" command"
	echo $results
	echo ""

done
