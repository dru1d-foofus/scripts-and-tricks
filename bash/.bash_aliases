#General goodness
alias tb="nc termbin.com 9999"
alias sortip="sort -n -t. -k 1,1 -k 2,2 -k 3,3 -k4,4"
alias whatismyip="curl icanhazip.com"

#Filesystem Stuff/Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias lt='ls -At1 && echo "--Oldest--"'
alias ltr='ls -Art1 && echo "--Newest--"'
alias space2underscore="find -name '* *' -type f | rename 's/ /_/g'"

#CSV Parsing Commands - increments based on number
alias csvtwo="sed 's/\(\([^,]*,\)\{1\}[^,]*\),/\1\n/g'"
alias csv3="sed 's/\(\([^,]*,\)\{2\}[^,]*\),/\1\n/g'"
alias csv4="sed 's/\(\([^,]*,\)\{3\}[^,]*\),/\1\n/g'"
alias csv5="sed 's/\(\([^,]*,\)\{4\}[^,]*\),/\1\n/g'"
alias csv6="sed 's/\(\([^,]*,\)\{5\}[^,]*\),/\1\n/g'"

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
