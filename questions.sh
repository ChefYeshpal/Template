#Made by: ChefYeshpal@github
#purpose: to help me in inserting my mcq numbers in computerised form
#start date: 20 October 2023

########################################################################################################################################################




#!/bin/bash
date=$(date +'%Y-%m-%d') #current date
week=$(date +'%V') #week number


#define logfile, can change this if u wanna
logfile='number.log'


# Prompt the user for input
read -p "Maths marks: " mathsM
read -p "Physics marks: " phyM
read -p "Chemistry marks: " chemM 
read -p "English marks: " engM
read -p "LR/DI marks: " ldM
echo "------------------------------" >> "$logfile"
read -p "Questions per subj: " qpj



echo "------------------------------" >> "$logfile" #should be able to view stuff in log file


#for date and all for each entry
echo "Date: $date" Week:"$week" >> "$logfile"


#inserting data into logfile
echo "maths: $mathsM" >> "$logfile"
echo "physics: $phyM" >> "$logfile"
echo "chemistry: $chemM" >> "$logfile"
echo "english: $engM" >> "$logfile"
echo "LR/DI: $ldM" >> "$logfile"


echo "------------------------------"
#average
avg=$(echo "($mathsM + $phyM + $chemM + $engM + $ldM)/5" | bc) #avg=sum of all num / number of num

echo "Average: $avg"

#insert avg in logfile
echo "Average: $avg" >> "$logfile"


#end message
echo "------------------------------"
echo "data has been stored in $logfile"
echo "------------------------------"






