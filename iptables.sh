#!/bin/bash
BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
PURPLE='\e[0;35m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
LIGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
ULG='\e[4;1;32m'
WHITE='\e[1;37m'
NC='\e[0m'
clear
tput civis
who am i >> logs.txt
echo -n -e "${LIGHTCYAN}Please wait for the script to process and load............loading......... \r"
sleep 1.5
echo -n -e "${LIGHTRED}Loading Menu [${LIGHTCYAN}##                       ${LIGHTRED}(8%)\r"
sleep 1
echo -n -e "${LIGHTRED}Loading Menu [${LIGHTCYAN}########                 ${LIGHTRED}(38%)\r"
sleep 1
echo -n -e "${LIGHTRED}Loading Menu [${LIGHTCYAN}##########               ${LIGHTRED}(49%)\r"
sleep 1
echo -n -e "${LIGHTRED}Loading Menu [${LIGHTCYAN}################         ${LIGHTRED}(80%)\r"
sleep 1
echo -n -e "${LIGHTRED}Loading Menu [${LIGHTCYAN}#######################${LIGHTRED}] (100%) ${LIGHTCYAN}Finished"
sleep 2
echo -ne '\n'
tput cnorm
while true
do
clear
    echo -e "${YELLOW}    ██╗    ██╗ ██████╗ ███╗   ███╗██████╗        ${NC}"
    echo -e "${YELLOW}    ██║    ██║██╔═══██╗████╗ ████║██╔══██╗       ${NC}"
    echo -e "${YELLOW}    ██║ █╗ ██║██║   ██║██╔████╔██║██████╔╝       ${NC}"
    echo -e "${YELLOW}    ██║███╗██║██║   ██║██║╚██╔╝██║██╔═══╝        ${NC}"
    echo -e "${YELLOW}    ╚███╔███╔╝╚██████╔╝██║ ╚═╝ ██║██║            ${NC}"
    echo -e "${YELLOW}     ╚══╝╚══╝  ╚═════╝ ╚═╝     ╚═╝╚═╝            ${NC}"
    echo -e ""
    echo -e "${LIGHTBLUE}████████╗ █████╗ ██████╗ ██╗     ███████╗███████╗${NC}"
    echo -e "${LIGHTBLUE}╚══██╔══╝██╔══██╗██╔══██╗██║     ██╔════╝██╔════╝${NC}"
    echo -e "${LIGHTBLUE}   ██║   ███████║██████╔╝██║     █████╗  ███████╗${NC}"
    echo -e "${LIGHTBLUE}   ██║   ██╔══██║██╔══██╗██║     ██╔══╝  ╚════██║${NC}"
    echo -e "${LIGHTBLUE}   ██║   ██║  ██║██████╔╝███████╗███████╗███████║${NC}"
    echo -e "${LIGHTBLUE}   ╚═╝   ╚═╝  ╚═╝╚═════╝ ╚══════╝╚══════╝╚══════╝${NC}"
echo -e "${WHITE}Devs:${WHITE} [${LIGHTCYAN}Taylor Christian Newomse${WHITE}]"
echo -e "${LIGHTBLUE}list ${WHITE}To See The Full List OF Commands "
echo -e -n "${WHITE}Users Online:${LIGHTRED} "
users | wc -w
echo -e "\n"
echo -e ""
echo -e ""
echo -e ""
echo -e ""
echo -e -n "${WHITE}root@${BLUE}IPTables${WHITE}:~# \c"
read answer
if [[ $answer == list ]]
then
clear
echo -e ""
echo -e "${YELLOW}                                  IP Tables List                               "
echo -e ""
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L1     ${WHITE} Block packets with bogus TCP flags           (${LIGHTRED}options${WHITE})  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L2     ${WHITE} Block spoofed packets                        (${LIGHTRED}options${WHITE})  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L3     ${WHITE} Drop invalid packets                         (${LIGHTRED}options${WHITE})  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L4     ${WHITE} SSH brute-force protection                   (${LIGHTRED}options${WHITE})  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L5     ${WHITE} Protection against port scanning             (${LIGHTRED}options${WHITE})  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L6     ${WHITE} Limit RST packets                            (${LIGHTRED}options${WHITE})  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L7     ${WHITE} Block Uncommon MSS Values                    (${LIGHTRED}options${WHITE})  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L8     ${WHITE} Block New Packets That Are Not SYN           (${LIGHTRED}options${WHITE})  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L9     ${WHITE} Additional Rules                             (${LIGHTRED}options${WHITE})  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L10    ${WHITE} ICMP/BLOCKING                                (${LIGHTRED}options${WHITE})  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}FLUSH  ${WHITE} FLUSHES ALL IPTABLES                         (${LIGHTRED}options${WHITE})  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}DL     ${WHITE} Downloads config file to fully secure server (${LIGHTRED}options${WHITE})  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}Install${WHITE} Downloads and installs IPTABLES              (${LIGHTRED}options${WHITE})  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}Main   ${WHITE} Switches back to the main Menu               (${LIGHTRED}options${WHITE})  "
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
read
fi  
if [[ $answer == L1 ]]
then
clear
echo -e ""
echo -e "${YELLOW}                                  Block packets with bogus TCP flags                               "
echo -e ""
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}1 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}2 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,SYN FIN,SYN -j DROP            "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}3 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags SYN,RST SYN,RST -j DROP         "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}4 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,RST FIN,RST -j DROP  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}5 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,ACK FIN -j DROP      "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}6 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,URG URG -j DROP     "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}7 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,FIN FIN -j DROP    "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}8 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,PSH PSH -j DROP "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}9 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL ALL -j DROP     "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}10 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL NONE -j DROP       "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}11 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL FIN,PSH,URG -j DROP   "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}12 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,FIN,PSH,URG -j DROP   "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}13 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,RST,ACK,FIN,URG -j DROP "
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
read
fi
if [[ $answer == L2 ]]
then
clear
echo -e ""
echo -e "${YELLOW}                                    Block spoofed packets                               "
echo -e ""
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}14 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -s 224.0.0.0/3 -j DROP   "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}15 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -s 169.254.0.0/16 -j DROP   "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}16 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -s 172.16.0.0/12 -j DROP  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}17 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -s 192.0.2.0/24 -j DROP   "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}18 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -s 192.168.0.0/16 -j DROP "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}19 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -s 10.0.0.0/8 -j DROP   "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}20 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -s 0.0.0.0/8 -j DROP  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}21 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -s 240.0.0.0/5 -j DROP  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}22 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -s 127.0.0.0/8 ! -i lo -j DROP  "
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
read
fi
if [[ $answer == L3 ]]
then
clear
echo -e ""
echo -e "${YELLOW}                                    Drop invalid packets                               "
echo -e ""
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}23 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -m conntrack --ctstate INVALID -j DROP   "
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
read
fi
if [[ $answer == L4 ]]
then
clear
echo -e ""
echo -e "${YELLOW}                                    SSH brute-force protection                               "
echo -e ""
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}24 ${WHITE} /sbin/iptables -A INPUT -p tcp --dport ssh -m conntrack --ctstate NEW -m recent --set      "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}25 ${WHITE} /sbin/iptables -A INPUT -p tcp --dport ssh -m conntrack --ctstate NEW -m recent --update --seconds 60 --hitcount 10 -j DROP   "
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
read
fi
if [[ $answer == L5 ]]
then
clear
echo -e ""
echo -e "${YELLOW}                                    Protection against port scanning                               "
echo -e ""
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}26 ${WHITE} /sbin/iptables -N port-scanning"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}27 ${WHITE} /sbin/iptables -A port-scanning -p tcp --tcp-flags SYN,ACK,FIN,RST RST -m limit --limit 1/s --limit-burst 2 -j RETURN  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}28 ${WHITE} /sbin/iptables -A port-scanning -j DROP "
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
read
fi
if [[ $answer == L6 ]]
then
clear
echo -e ""
echo -e "${YELLOW}                                     Limit RST packets                                "
echo -e ""
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}29 ${WHITE}/sbin/iptables -A INPUT -p tcp --tcp-flags RST RST -m limit --limit 2/s --limit-burst 2 -j ACCEPT "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}30 ${WHITE}/sbin/iptables -A INPUT -p tcp --tcp-flags RST RST -j DROP"
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
read
fi
if [[ $answer == L7 ]]
then
clear
echo -e ""
echo -e "${YELLOW}                                     Block Uncommon MSS Values                                "
echo -e ""
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}31 ${WHITE}iptables -t mangle -A PREROUTING -p tcp -m conntrack --ctstate NEW -m tcpmss ! --mss 536:65535 -j DROP "
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
read
fi
if [[ $answer == L8 ]]
then
clear
echo -e ""
echo -e "${YELLOW}                                     Block New Packets That Are Not SYN                               "
echo -e ""
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}32 ${WHITE} iptables -t mangle -A PREROUTING -p tcp ! --syn -m conntrack --ctstate NEW -j DROP"
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
read
fi
if [[ $answer == L9 ]]
then
clear
echo -e ""
echo -e "${YELLOW}                                      Additional Rules                               "
echo -e ""
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}33 ${WHITE}iptables -t mangle -A PREROUTING -p icmp -j DROP "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}34 ${WHITE}iptables -A INPUT -p tcp -m connlimit --connlimit-above 80 -j REJECT --reject-with tcp-reset"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}35 ${WHITE}iptables -A INPUT -p tcp -m conntrack --ctstate NEW -m limit --limit 60/s --limit-burst 20 -j ACCEPT "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}36 ${WHITE}iptables -A INPUT -p tcp -m conntrack --ctstate NEW -j DROP "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}37 ${WHITE}iptables -t mangle -A PREROUTING -f -j DROP "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}38 ${WHITE}iptables -A INPUT -p tcp --tcp-flags RST RST -m limit --limit 2/s --limit-burst 2 -j ACCEPT"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}39 ${WHITE}iptables -A INPUT -p tcp --tcp-flags RST RST -j DROP"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}40 ${WHITE}iptables -t raw -A PREROUTING -p tcp -m tcp --syn -j CT --notrack  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}41 ${WHITE}iptables -A INPUT -p tcp -m tcp -m conntrack --ctstate INVALID,UNTRACKED -j SYNPROXY --sack-perm --timestamp --wscale 7 --mss 1460"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}42 ${WHITE}iptables -A INPUT -m conntrack --ctstate INVALID -j DROP"
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
read
fi
if [[ $answer == L10 ]]
then
clear
echo -e ""
echo -e "${YELLOW}                                      ICMP/BLOCKING                               "
echo -e ""
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}43 ${WHITE} /sbin/iptables -t mangle -A PREROUTING -p icmp -j DROP  "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}44 ${WHITE} iptables -D INPUT -s 127.0.0.1 -p icmp -j DROP"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}45 ${WHITE} iptables -D INPUT -s ip -p icmp -j DROP"
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}46 ${WHITE} iptables -A INPUT -s ip -j DROP "
echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}47 ${WHITE} iptables -A INPUT -s IP -p tcp --destination-port $port -j DROP"
echo -e "${LIGHTCYAN}--------------------------------------------------------------------------------"
read
fi
if [[ $answer == 1 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP
read
fi
if [[ $answer == 2 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,SYN FIN,SYN -j DROP
read
fi
if [[ $answer == 3 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags SYN,RST SYN,RST -j DROP
read
fi
if [[ $answer == 4 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,RST FIN,RST -j DROP
read
fi
if [[ $answer == 5 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,ACK FIN -j DROP
read
fi
if [[ $answer == 6 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,URG URG -j DROP
read
fi
if [[ $answer == 7 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,FIN FIN -j DROP
read
fi
if [[ $answer == 8 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,PSH PSH -j DROP
read
fi
if [[ $answer == 9 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL ALL -j DROP
read
fi
if [[ $answer == 10 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL NONE -j DROP
read
fi
if [[ $answer == 11 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL FIN,PSH,URG -j DROP
read
fi
if [[ $answer == 12 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,FIN,PSH,URG -j DROP
read
fi
if [[ $answer == 13 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,RST,ACK,FIN,URG -j DROP
read
fi
if [[ $answer == 14 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -s 224.0.0.0/3 -j DROP
read
fi
if [[ $answer == 15 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -s 169.254.0.0/16 -j DROP
read
fi
if [[ $answer == 16 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -s 172.16.0.0/12 -j DROP
read
fi
if [[ $answer == 17 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -s 192.0.2.0/24 -j DROP
read
fi
if [[ $answer == 18 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -s 192.168.0.0/16 -j DROP
read
fi
if [[ $answer == 19 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -s 10.0.0.0/8 -j DROP
read
fi
if [[ $answer == 20 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -s 0.0.0.0/8 -j DROP
read
fi
if [[ $answer == 21 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -s 240.0.0.0/5 -j DROP
read
fi
if [[ $answer == 22 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -s 127.0.0.0/8 ! -i lo -j DROP
read
fi
if [[ $answer == 23 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -m conntrack --ctstate INVALID -j DROP
read
fi
if [[ $answer == 24 ]]
then
clear
echo -e ""
/sbin/iptables -A INPUT -p tcp --dport ssh -m conntrack --ctstate NEW -m recent --set
read
fi
if [[ $answer == 25 ]]
then
clear
echo -e ""
/sbin/iptables -A INPUT -p tcp --dport ssh -m conntrack --ctstate NEW -m recent --update --seconds 60 --hitcount 10 -j DROP
read
fi
if [[ $answer == 26 ]]
then
clear
echo -e ""
/sbin/iptables -N port-scanning
read
fi
if [[ $answer == 27 ]]
then
clear
echo -e ""
/sbin/iptables -A port-scanning -p tcp --tcp-flags SYN,ACK,FIN,RST RST -m limit --limit 1/s --limit-burst 2 -j RETURN
read
fi
if [[ $answer == 28 ]]
then
clear
echo -e ""
/sbin/iptables -A port-scanning -j DROP
read
fi
if [[ $answer == 29 ]]
then
clear
echo -e ""
/sbin/iptables -A INPUT -p tcp --tcp-flags RST RST -m limit --limit 2/s --limit-burst 2 -j ACCEPT
read
fi
if [[ $answer == 30 ]]
then
clear
echo -e ""
/sbin/iptables -A INPUT -p tcp --tcp-flags RST RST -j DROP
read
fi
if [[ $answer == 31 ]]
then
clear
echo -e ""
iptables -t mangle -A PREROUTING -p tcp -m conntrack --ctstate NEW -m tcpmss ! --mss 536:65535 -j DROP
read
fi
if [[ $answer == 32 ]]
then
clear
echo -e ""
iptables -t mangle -A PREROUTING -p tcp ! --syn -m conntrack --ctstate NEW -j DROP
read
fi
if [[ $answer == 33 ]]
then
clear
echo -e ""
iptables -t mangle -A PREROUTING -p icmp -j DROP
read
fi
if [[ $answer == 34 ]]
then
clear
echo -e ""
iptables -A INPUT -p tcp -m connlimit --connlimit-above 80 -j REJECT --reject-with tcp-reset
read
fi
if [[ $answer == 35 ]]
then
clear
echo -e ""
iptables -A INPUT -p tcp -m conntrack --ctstate NEW -m limit --limit 60/s --limit-burst 20 -j ACCEPT
read
fi
if [[ $answer == 36 ]]
then
clear
echo -e ""
iptables -A INPUT -p tcp -m conntrack --ctstate NEW -j DROP
read
fi
if [[ $answer == 37 ]]
then
clear
echo -e ""
iptables -t mangle -A PREROUTING -f -j DROP
read
fi
if [[ $answer == 38 ]]
then
clear
echo -e ""
iptables -A INPUT -p tcp --tcp-flags RST RST -m limit --limit 2/s --limit-burst 2 -j ACCEPT
read
fi
if [[ $answer == 39 ]]
then
clear
echo -e ""
iptables -A INPUT -p tcp --tcp-flags RST RST -j DROP
read
fi
if [[ $answer == 40 ]]
then
clear
echo -e ""
iptables -t raw -A PREROUTING -p tcp -m tcp --syn -j CT --notrack
read
fi
if [[ $answer == 41 ]]
then
clear
echo -e ""
iptables -A INPUT -p tcp -m tcp -m conntrack --ctstate INVALID,UNTRACKED -j SYNPROXY --sack-perm --timestamp --wscale 7 --mss 1460
read
fi
if [[ $answer == 42 ]]
then
clear
echo -e ""
iptables -A INPUT -m conntrack --ctstate INVALID -j DROP
read
fi
if [[ $answer == 43 ]]
then
clear
echo -e ""
/sbin/iptables -t mangle -A PREROUTING -p icmp -j DROP
read
fi
if [[ $answer == 44 ]]
then
clear
echo -e ""
iptables -D INPUT -s 127.0.0.1 -p icmp -j DROP
read
fi
if [[ $answer == 45 ]]
then
clear
echo -e ""
echo -e "${WHITE} Enter Desired IP: \c"
read ip
clear
echo -e ""
iptables -D INPUT -s $ip -p icmp -j DROP
read
fi
if [[ $answer == 46 ]]
then
clear
echo -e ""
echo -e "${WHITE} Enter Desired IP: \c"
read ip
clear
echo -e ""
iptables -A INPUT -s $ip -j DROP
read
fi
if [[ $answer == 47 ]]
then
clear
echo -e ""
echo -e "${WHITE} Enter Desired IP: \c"
read ip
clear
echo -e ""
echo -e "${WHITE} Enter Desired PORT: \c"
read port
clear
echo -e ""
iptables -A INPUT -s $ip -p tcp --destination-port $port -j DROP
read
fi
if [[ $answer == Flush ]]
then
clear
echo -e ""
iptables -F
read
fi
if [[ $answer == DL ]]
then
clear
echo -e ""
cd /etc
rm -rf sysctl.conf
echo "kernel.printk = 4 4 1 7" >> sysctl.conf
echo "kernel.panic = 10 " >> sysctl.conf
echo "kernel.sysrq = 0 " >> sysctl.conf
echo "kernel.shmmax = 4294967296" >> sysctl.conf
echo "kernel.shmall = 4194304" >> sysctl.conf
echo "kernel.core_uses_pid = 1" >> sysctl.conf
echo "kernel.msgmnb = 65536 " >> sysctl.conf
echo "kernel.msgmax = 65536 " >> sysctl.conf
echo "vm.swappiness = 20 " >> sysctl.conf
echo "vm.dirty_ratio = 80 " >> sysctl.conf
echo "vm.dirty_background_ratio = 5" >> sysctl.conf
echo "fs.file-max = 2097152 " >> sysctl.conf
echo "net.core.netdev_max_backlog = 262144 " >> sysctl.conf
echo "net.core.rmem_default = 31457280 " >> sysctl.conf
echo "net.core.rmem_max = 67108864" >> sysctl.conf
echo "net.core.wmem_default = 31457280 " >> sysctl.conf
echo "net.core.wmem_max = 67108864 " >> sysctl.conf
echo "net.core.somaxconn = 65535" >> sysctl.conf
echo "net.core.optmem_max = 25165824 " >> sysctl.conf
echo "net.ipv4.neigh.default.gc_thresh1 = 4096" >> sysctl.conf
echo "net.ipv4.neigh.default.gc_thresh2 = 8192" >> sysctl.conf
echo "net.ipv4.neigh.default.gc_thresh3 = 16384" >> sysctl.conf
echo "net.ipv4.neigh.default.gc_interval = 5 " >> sysctl.conf
echo "net.ipv4.neigh.default.gc_stale_time = 120 " >> sysctl.conf
echo "net.netfilter.nf_conntrack_max = 10000000 " >> sysctl.conf
echo "net.netfilter.nf_conntrack_tcp_loose = 0 " >> sysctl.conf
echo "net.netfilter.nf_conntrack_tcp_timeout_established = 1800" >> sysctl.conf
echo "net.netfilter.nf_conntrack_tcp_timeout_close = 10 " >> sysctl.conf
echo "net.netfilter.nf_conntrack_tcp_timeout_close_wait = 10 " >> sysctl.conf
echo "net.netfilter.nf_conntrack_tcp_timeout_fin_wait = 20 " >> sysctl.conf
echo "net.netfilter.nf_conntrack_tcp_timeout_last_ack = 20 " >> sysctl.conf
echo "net.netfilter.nf_conntrack_tcp_timeout_syn_recv = 20" >> sysctl.conf
echo "net.netfilter.nf_conntrack_tcp_timeout_syn_sent = 20 " >> sysctl.conf
echo "net.netfilter.nf_conntrack_tcp_timeout_time_wait = 10 " >> sysctl.conf
echo "net.ipv4.tcp_slow_start_after_idle = 0" >> sysctl.conf
echo "net.ipv4.ip_local_port_range = 1024 65000" >> sysctl.conf
echo "net.ipv4.ip_no_pmtu_disc = 1" >> sysctl.conf
echo "net.ipv4.route.flush = 1" >> sysctl.conf
echo "net.ipv4.route.max_size = 8048576" >> sysctl.conf
echo "net.ipv4.icmp_echo_ignore_broadcasts = 1 " >> sysctl.conf
echo "net.ipv4.icmp_ignore_bogus_error_responses = 1" >> sysctl.conf
echo "net.ipv4.tcp_congestion_control = htcp " >> sysctl.conf
echo "net.ipv4.tcp_mem = 65536 131072 262144 " >> sysctl.conf
echo "net.ipv4.udp_mem = 65536 131072 262144 " >> sysctl.conf
echo "net.ipv4.tcp_rmem = 4096 87380 33554432" >> sysctl.conf
echo "net.ipv4.udp_rmem_min = 16384" >> sysctl.conf
echo "net.ipv4.tcp_wmem = 4096 87380 33554432 " >> sysctl.conf
echo "net.ipv4.udp_wmem_min = 16384 " >> sysctl.conf
echo "net.ipv4.tcp_max_tw_buckets = 1440000 " >> sysctl.conf
echo "net.ipv4.tcp_tw_recycle = 0 " >> sysctl.conf
echo "net.ipv4.tcp_tw_reuse = 1 " >> sysctl.conf
echo "net.ipv4.tcp_max_orphans = 400000" >> sysctl.conf
echo "net.ipv4.tcp_window_scaling = 1" >> sysctl.conf
echo "net.ipv4.tcp_rfc1337 = 1 " >> sysctl.conf
echo "net.ipv4.tcp_syncookies = 1 " >> sysctl.conf
echo "net.ipv4.tcp_synack_retries = 1 " >> sysctl.conf
echo "net.ipv4.tcp_syn_retries = 2 " >> sysctl.conf
echo "net.ipv4.tcp_max_syn_backlog = 16384 " >> sysctl.conf
echo "net.ipv4.tcp_timestamps = 1 " >> sysctl.conf
echo "net.ipv4.tcp_sack = 1 " >> sysctl.conf
echo "net.ipv4.tcp_fack = 1 " >> sysctl.conf
echo "net.ipv4.tcp_ecn = 2 " >> sysctl.conf
echo "net.ipv4.tcp_fin_timeout = 10 " >> sysctl.conf
echo "net.ipv4.tcp_keepalive_time = 600" >> sysctl.conf
echo "net.ipv4.tcp_keepalive_intvl = 60" >> sysctl.conf
echo "net.ipv4.tcp_keepalive_probes = 10 " >> sysctl.conf
echo "net.ipv4.tcp_no_metrics_save = 1 " >> sysctl.conf
echo "net.ipv4.tcp_no_metrics_save = 1 " >> sysctl.conf
echo "net.ipv4.ip_forward = 0 " >> sysctl.conf
echo "net.ipv4.conf.all.accept_redirects = 0 " >> sysctl.conf
echo "net.ipv4.conf.all.send_redirects = 0 " >> sysctl.conf
echo "net.ipv4.conf.all.accept_source_route = 0 " >> sysctl.conf
echo "net.ipv4.conf.all.rp_filter = 1" >> sysctl.conf
read
fi
if [[ $answer == Install ]]
then
clear
echo -e ""
yum install iptables -y
apt-get install iptables -y
read
fi
if [[ $answer == Main ]]
then
clear
echo -e ""
sh 1.sh
clear
fi
done
