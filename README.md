# mail-server-troubleshooting (work in progress)
Troubleshoot exim mail delivery failure

# Log file locations to check

- /var/log/exim_mainlog
- /var/log/maillog

[http://www.cyberciti.biz/faq/exim-remove-all-messages-from-the-mail-queue/]

# List exim queue

exim -bp

# Clear Exim Queue

exim -bp | awk '/^ *[0-9]+[mhd]/{print "exim -Mrm " $3}' | bash
