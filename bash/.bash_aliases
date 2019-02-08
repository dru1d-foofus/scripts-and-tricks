#General goodness
alias tb="nc termbin.com 9999"
alias sortip="sort -n -t. -k 1,1 -k 2,2 -k 3,3 -k4,4"
alias whatismyip="curl icanhazip.com"
alias portsbyprocess='sudo lsof -i -n -P'

#Filesystem Stuff/Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias lt='ls -At1 && echo "--Oldest--"'
alias ltr='ls -Art1 && echo "--Newest--"'
alias space2underscore="find -name '* *' -type f | rename 's/ /_/g'"
alias update-all-git="sudo find . -type d -mindepth 1 -maxdepth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;"

#CSV Parsing Commands - increments based on number
alias csvtwo="sed 's/\(\([^,]*,\)\{1\}[^,]*\),/\1\n/g'"
alias csv3="sed 's/\(\([^,]*,\)\{2\}[^,]*\),/\1\n/g'"
alias csv4="sed 's/\(\([^,]*,\)\{3\}[^,]*\),/\1\n/g'"
alias csv5="sed 's/\(\([^,]*,\)\{4\}[^,]*\),/\1\n/g'"
alias csv6="sed 's/\(\([^,]*,\)\{5\}[^,]*\),/\1\n/g'"

#nmap aliases
alias nmap_pingable='sudo nmap -sP -PE -PS443 -PA22,80 -PP -T4 --max-retries 2'
alias nmap_quickports='sudo nmap -sS -sU -PE -p U:161,T:20,21,22,23,25,53,80,110,135,139,143,443,445,1433,1494,1521,1723,3306,3389,5631,5800,5900,8080,8443,8888,9100,10000,38292 -T4'
alias nmap_quickports_versioned='sudo nmap -sS -sU -PE -sV -p U:161,T:20,21,22,23,25,53,80,110,135,139,143,443,445,1433,1494,1521,1723,3306,3389,5631,5800,5900,8080,8443,8888,9100,10000,38292 -T4'
alias nmap_services='sudo nmap -sS -Pn -T4 --max-retries 2'
alias nmap_services_versioned='sudo nmap -sS -sV -Pn -T4 --max-retries 2'
alias nmap_services_versioned-fast='sudo nmap -sS -sV -Pn -T4 --max-retries 2 --min-hostgroup 255 --min-parallelism 255'
alias nmap_complete='sudo nmap -sS -Pn -p- -T4 --max-retries 2'
alias nmap_complete_versioned='sudo nmap -sS -sV -Pn -p- -T4 --max-retries 2'
alias nmap_quickrecon='sudo nmap -sS -sU -PE -p U:161,T:22,80,134,443,445,8080,8443,8888,9100'
alias nmap_quickrecon_versioned='sudo nmap -sS -sU -PE -sV -p U:161,T:22,80,134,443,445,8080,8443,8888,9100'
alias nmap_http_discovery='sudo nmap -Pn -sC -sS -sV --script=http-headers,http-ntlm-info,http-title,http-vhosts -T4 '



#Zip Commands
alias zipaes="7z a -tzip -mem=AES256 -p "
alias unzipaes="7z e -mem=AES256 "
alias unziplistaes="7z l -mem=AES256 "

#Shell Built-ins Reference (In case of Restricted shells)
# ls == echo *
# cat == while read line; do echo "$line"; done < file.txt
# grep == while read line; do if [[ $line == *"nice"* ]]; then echo $line; fi; done < ./file.txt
# wc == i=0; while read line; do i=$(($i+1)); done < ./file.txt; echo $i
# uid == echo $UID
# whoami == while read line; do if [[ $line == *":x:$UID:"* ]]; then echo ${line%%:*}; fi; done < /etc/passwd
### Check for file permissions; for example in /sbin/
# check for readable files == for x in `echo /sbin/*`; do if [ -r $x ]; then echo $x; fi; done
# check for writable files == for x in `echo /sbin/*`; do if [ -w $x ]; then echo $x; fi; done
# check for executable files == for x in `echo /sbin/*`; do if [ -x $x ]; then echo $x; fi; done
