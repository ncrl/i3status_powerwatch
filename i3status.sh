i3status | while :  
do
        read line ;
        A1=`cat /sys/class/power_supply/BAT0/voltage_now`;
        A2=`cat /sys/class/power_supply/BAT0/current_now`;
        B=$(awk "BEGIN {print ($A1*$A2/1000000000000.0)}")
line="${line/[{/[{\"name\":\"Power\",\"background\":\"#ff0000\",\"full_text\":\"$B\ W\"\},{}"
        echo "$line" || exit 1 ;

done
