i3status | while :  
do 
	read line ; 
	A=`cat /sys/class/power_supply/BAT0/power_now`;
	B=` echo "scale=2; $A / 1000000" | bc` ; 
line="${line/[{/[{\"name\":\"Power\",\"background\":\"#ff0000\",\"full_text\":\"$B\ W\"\},{}"
	echo "$line" || exit 1 ;

done

