#/bin/bash

echo "---------------Welcome to the System Report-------------"

echo

echo "-------------Date And Time of Report Created------------------"
echo "The date & Time is:$(date)"

echo

echo "------------System Running Time-----------"
uptime -p

echo

echo "----------Users----------"
users

echo

echo "---------Current User Logged in---------"
whoami

echo

echo "----------Currently User Details-------"
who

echo

echo "--------Tasks Running & Sleeping----------"
top bn1| grep -e Tasks

echo

echo "----------Memory Usage------------"
free -h

echo

echo "--------Disk FileSystem-----------"
df -h

echo

echo "---------SELinux Status-----------"
sestatus

echo

echo "-----------Security Status---------"
systemctl status firewalld | grep -iE "Active:|Enabled"

echo

echo "-------------Process State----------"
ps -f | head -n5

echo

echo "----------Cpu Utilization----------"
top bn1 | grep -e Cpu

echo

echo "----------About Installation----------"
grep -i "Installed" /var/log/dnf.log | tail -n 3

echo

echo "---------Current disk usage---------"
du -sh

echo

echo "-------Recent System Log Entries---------"
cd /var/log
cat messages | tail -n2

echo

echo "----------Cleared Cache----------------"
echo 3> /proc/sys/vm/drop_caches
echo "Cache Cleared at the time of:$(date)"

echo


echo "------------This is Your SystemReport Thanks For Visiting-------------"


