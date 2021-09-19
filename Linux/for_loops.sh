#1/bin/bash

states=( 'hawaii' 'california' 'ohio' 'iowa' 'texas ')

for state in ${states[@]}
do
	if [ $state == 'hawaii' ]
	then
	echo "Hawaii is best"
	else
	echo "I am not a fan of Hawaii"
fi
done


nums=$(echo {0 1 2 3 4 5 6 7 8 9})

for num in ${nums[@]}
do
	if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
	then
	echo $num
fi
done


ls_out=$(ls)

for x in ${ls_out[@]}
do
	echo $x
done

execs=$(find /home -type f -perm 777 2> /dev/null)

for exec in ${execs[@]}
do
	echo $exec
done
