#!/bin/bash
# Script name : pingnmap
# Scenario : The systems admin in company X is tired of the monotonous job
# of pinging and nmapping, so he decided to simplify the job using a script.
# The tasks he wish to achieve is
# 1. Ping - with a max count of 5 -the given IP address/domain. AND/OR
# 2. Check if a particular port is open with a given IP address/domain.
# And getopts is for her rescue.
# A brief overview of the options
# n : meant for nmap
# t : meant for ping
# i : The option to enter the IP address
# p : The option to enter the port
# v : The option to get the script version
while getopts ':nti:p:v' opt
#putting : in the beginnnig suppresses the errors for invalid options
do
case "$opt" in
'i')ip="${OPTARG}"
;;
'p')port="${OPTARG}"
;;
'n')nmap_yes=1;
;;
't')ping_yes=1;
;;
'v')echo "pingnmap version 1.0.0"
;;
*) echo "Invalid option $opt"
echo "Usage : "
echo "pingmap -[n|t[i|p]|v]"
;;
esac
done
if [ ! -z "$nmap_yes" ] && [ "$nmap_yes" -eq "1" ]
then
if [ ! -z "$ip" ] && [ ! -z "$port" ]
then
nmap -p "$port" "$ip"
fi
fi
if [ ! -z "$ping_yes" ] && [ "$ping_yes" -eq "1" ]
then
if [ ! -z "$ip" ]
then
ping -c 5 "$ip"
fi
fi
shift $(( OPTIND - 1 )) # Processing additional arguments
if [ ! -z "$@" ]
then
echo "Bogus arguments at the end : $@"
fi