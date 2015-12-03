#!/bin/bash
touch output.txt;
truncate -s0 output.txt;
grep cwd /var/log/exim_mainlog | grep -v /var/spool | awk -F"cwd=" '{print $2}' | awk '{print $1}' | sort | uniq -c | sort -n >> output.txt;
cat output.txt | mail -s "EXIM REPORT" YOUREMAIL;

# NOTES
# Change YOUREMAIL to your email address
# add this cron to server: 0 * * * * /bin/bash /PATH-TO-SCRIPT/exim-checker.sh
# Change PATH-TO-SCRIPT to the path to this script
# Now you will get a report every hour of what scripts are sending emails from your server
