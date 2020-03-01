if [[ -f /sys/class/net/wlx0013ef80003e/carrier ]];
then
	printf "$(date) - Interface for hot-spot is available\n" >> /opt/cinch/logs/enableRouting.log
	$(/sbin/iptables -t nat -A PREROUTING -s 172.24.1.1/24 -p all -j DNAT --to-destination 172.24.1.1 -i wlx0013ef80003e)
	if [[ $? -eq "0" ]];
	then
		printf "$(date) - Pre Routing enabled\n"  >> /opt/cinch/logs/enableRouting.log
		$(iptables -t nat -A POSTROUTING -j MASQUERADE)
		if [[ $? -eq "0" ]];
		then
			printf  "$(date) - Post Routing enabled\n"  >> /opt/cinch/logs/enableRouting.log
		else 
			printf "$(date) - Post Routing not enabled\n"  >> /opt/cinch/logs/enableRouting.log
		fi
	else
		printf "$(date) - Pre Routing not enabled\n"  >> /opt/cinch/logs/enableRouting.log
	fi
else 
	printf "$(date) - Interface for hot-spot in not available\n" >> /opt/cinch/logs/enableRouting.log
fi

exit 0
