# Exim Help/Commands

Troubleshoot exim mail delivery failure

# Commands

##### List exim queue

`exim -bp`

##### Clear Exim Queue

`exim -bp | awk '/^ *[0-9]+[mhd]/{print "exim -Mrm " $3}' | bash`

##### Find the most used mailing scripts

`grep cwd /var/log/exim_mainlog | grep -v /var/spool | awk -F"cwd=" '{print $2}' | awk '{print $1}' | sort | uniq -c | sort -n`

##### Watch exim log

`tail -f /var/log/exim_mainlog | grep cwd`

##### Clear exim queue

`exim -bp | awk '/^ *[0-9]+[mhd]/{print "exim -Mrm " $3}' | bash`

# Log Locations

- /var/log/exim_mainlog
- /var/log/maillog

# Resources

- http://www.cyberciti.biz/faq/exim-remove-all-messages-from-the-mail-queue/
- http://bradthemad.org/tech/notes/exim_cheatsheet.php
- http://www.inmotionhosting.com/support/email/exim/find-spam-script-location-with-exim
- https://kb.iweb.com/entries/24423351-Identifying-spam-sources-under-cPanel-exim - with WHM
