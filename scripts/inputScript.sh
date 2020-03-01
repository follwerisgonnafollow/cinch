#!/bin/sh

flag="true"
echo "Please Enter Your Input Before: "
read inputString

while [ "$inputString" != "00" ]
do
	oldInputString="$inputString"
	if [ "$flag" == "false" ]; 
	then
		echo "Please Enter Your Input After: "
		read inputString
	fi
	
	equiString="$oldInputString"
	let equiString+=1
	
	if [ "$inputString" == "$equiString" ] || [ "$flag" == "true" ];
	then
		flag="false"
		if [[ "$inputString" -eq "1" ]];
		then
			$(curl -X GET "http://API-call.com" --connect-timeout 30)
			if [[ $? -eq "0" ]];
			then 
				printf "Machine is Running.....\n"
			else 
				printf "Machine Start request not completed...\n"
			fi
		elif [[ "$inputString" -eq "2" ]];
		then	
			$(curl -X GET "http://API-call.com" --connect-timeout 30)
			if [[ $? -eq "0" ]];
			then 
				printf "Machine Stopped.....\n"
			else 
				printf "Machine stop request not completed...\n"
			fi
		elif [[ "$inputString" -eq "3" ]];
		then	
			$(curl -X GET "http://API-call.com" --connect-timeout 30)
			if [[ $? -eq "0" ]];
			then 
				printf "Raw Material Finished.....\n"
			else 
				printf "Raw Material Finish req. not completed...\n"
			fi	
		elif [[ "$inputString" -eq "4" ]];
		then	
			$(curl -X GET "http://API-call.com" --connect-timeout 30)
			if [[ $? -eq "0" ]];
			then 
				printf "Raw Material in Stock...\n"
			else 
				printf "Raw Material in Stock req. not completed...\n"
			fi
		elif [[ "$inputString" -eq "5" ]];
		then
			$(curl -X GET "http://API-call.com" --connect-timeout 30)
			if [[ $? -eq "0" ]];
			then 
				printf "Machine Breakdown.....\n"
			else 
				printf "Machine Breakdown request not completed..\n"
			fi
		elif [[ "$inputString" -eq "6" ]];
		then
			$(curl -X GET "http://API-call.com" --connect-timeout 30)
			if [[ $? -eq "0" ]];
			then 
				printf "Machine is Recovered.....\n"
			else 
				printf "Machine Recovery request not completed..\n"
			fi
		else
			printf "Invalid Input, Please Try again!\n"
		fi
	else
		printf "Invalid Input, Please Try again!\n"
	fi	
done