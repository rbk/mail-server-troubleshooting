# mail-server-troubleshooting (work in progress)
Troubleshoot exim mail delivery failure

# Log file locations to check

- /var/log/exim_mainlog
- /var/log/maillog

[http://www.cyberciti.biz/faq/exim-remove-all-messages-from-the-mail-queue/]

# List exim queue

`exim -bp`

# Clear Exim Queue

`exim -bp | awk '/^ *[0-9]+[mhd]/{print "exim -Mrm " $3}' | bash`

# Find the most used mailing scripts [http://www.inmotionhosting.com/support/email/exim/find-spam-script-location-with-exim]

`grep cwd /var/log/exim_mainlog | grep -v /var/spool | awk -F"cwd=" '{print $2}' | awk '{print $1}' | sort | uniq -c | sort -n`
