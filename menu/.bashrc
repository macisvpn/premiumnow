#!/bin/bash
#------------------------------------------////
# Bash Anherr
# Last Modified 9 Jan  2015 by @4nherr
# Running on Kali Linux 1.1
#------------------------------------------////
#------------------------------------------////
# Colors:
#------------------------------------------////
black='\e[0;30m'
blue='\e[0;34m'
green='\e[0;32m'
cyan='\e[0;36m'
red='\e[0;31m'
purple='\e[0;35m'
brown='\e[0;33m'
lightgray='\e[0;37m'
darkgray='\e[1;30m'
lightblue='\e[1;34m'
lightgreen='\e[1;32m'
lightcyan='\e[1;36m'
lightred='\e[1;31m'
lightpurple='\e[1;35m'
yellow='\e[1;33m'
white='\e[1;37m'
nc='\e[0m'
#------------------------------------------////
# Aliases:
#------------------------------------------////
#alias myip='curl -s checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*$//'
alias findbig='find . -type f -exec ls -s {} \; | sort -n -r | head -5'
#alias ps='my_ps'
alias ports='netstat -nape --inet'
alias btadmin='firefox http://anher323.blogspot.com &'
alias forum=' firefox http://forum.indonesianbacktrack.or.id &'
alias ping='ping -c 6'
alias ns='netstat -alnp --protocol=inet'
alias ls='ls -aF --color=always'
alias la='ls -Al'
alias lx='ls -lXB'
alias lk='ls -lSr'
alias lc='ls -lcr'
alias lu='ls -lur'
alias lr='ls -lR'
alias lt='ls -ltr'
alias lm='ls -al |more'
alias rm='rm -rf'
#------------------------------------------////
# Functions and Scripts:
#------------------------------------------////
localnet ()
{
/sbin/ifconfig | awk /'inet addr/ {print $2}'
echo ""
/sbin/ifconfig | awk /'Bcast/ {print $3}'
echo ""
}
myip ()
{
lynx -dump -hiddenlinks=ignore -nolist http://checkip.dyndns.org:8245/ | grep "Current IP Address" | cut -d":" -f2 | cut -d" " -f2
}
upinfo ()
{
echo -ne "${green}$HOSTNAME ${red}uptime is ${green} \t ";uptime | awk /'up/ {print $3,$4,$5,$6,$7,$8,$9,$10}'
}
cd()
{
  if [ -n "$1" ]; then
    builtin cd "$@" && ls
  else
    builtin cd ~ && ls
  fi
}
weather ()
{
declare -a WEATHERARRAY
WEATHERARRAY=( `lynx -dump "http://www.google.com/search?hl=en&lr=&client=firefox-a&rls=org.mozilla_en-US_official&q=weather+${1}&btnG=Search" | grep -A 5 -m 1 "Weather for" | sed 's;\[26\]Add to iGoogle\[27\]IMG;;g'`)
echo ${WEATHERARRAY[@]}
}
#------------------------------------------////
# Some original .bashrc contents:
#------------------------------------------////
# If not running interactively, don't do anything
[ -z "$PS1" ] && return
# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"
# set variable identify\e[1;32ming the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]anher@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#------------------------------------------////
# Prompt:
#------------------------------------------////

#PS1='\e[0;36m\h\[\e[0;36m\] \w \[\033[00m\] $ \[\033[00m\]'
PS1='\033[01;32manher\[\033[01;32m\]@\[\033[01;32m\]\h\[\033[00;32m\]{\[\033[01;32m\]\w\[\033[01;32m\]}\[\033[01;32m\]:\[\033[00m\]'
#PS1='\e[0;36m\W\@ \$\e[m '
#if [ `id -un` != root ]; then
#PS1="[${EGR}\u@\h${EBL} \W${NONE}]# "
#else
#PS1="[${ERD}\h${EBL} \W${NONE}]# "
#fi
#------------------------------------------////

#------------------------------------------////

clear
echo -e "${lightgreen}";figlet "Anherr Blog's";
echo "==================  http://anher323.blogspot.com  =================="
echo -ne "${lightgreen}Today is:\t\t${red}" `date`; echo ""
echo -e "${lightgreen}Kernel Information: \t${red}" `uname -smr`
echo -ne "${lightgreen}";upinfo;echo ""
echo "Indonesian Backtrack Team"
echo ""the quieter you become, the more you able to hear""
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
