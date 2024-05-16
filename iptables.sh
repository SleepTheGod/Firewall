#!/bin/bash

# Color variables
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

# Function to display the main menu
main_menu() {
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
    echo -e "${WHITE}Devs: ${LIGHTCYAN}@Slav${NC}"
    echo -e "${LIGHTBLUE}list ${WHITE}To See The Full List OF Commands"
    echo -e -n "${WHITE}Users Online: ${LIGHTRED}"
    users | wc -w
    echo -e "\n\n\n\n"
    echo -e -n "${WHITE}root@${LIGHTBLUE}IPTables${WHITE}:~# \c"
}

# Function to display the IP Tables list
iptables_list() {
    clear
    echo -e ""
    echo -e "${YELLOW}                       IP Tables List                       "
    echo -e ""
    echo -e "${LIGHTCYAN}------------------------------------------------------------"
    echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L1     ${WHITE} Block packets with bogus TCP flags           (${LIGHTRED}options${WHITE})"
    echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L2     ${WHITE}Block packets with invalid SYN flags         (${LIGHTRED}options${WHITE})"
    echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L3     ${WHITE}Drop packets from IP source routed networks   (${LIGHTRED}options${WHITE})"
    echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L4     ${WHITE}Block packets with impossible frags          (${LIGHTRED}options${WHITE})"
    echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L5     ${WHITE}Block packets going to private IP ranges      (${LIGHTRED}options${WHITE})"
    echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L6     ${WHITE}Block packets from private IP ranges          (${LIGHTRED}options${WHITE})"
    echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L7     ${WHITE}Block packets going to Bogon IP ranges        (${LIGHTRED}options${WHITE})"
    echo -e "${LIGHTRED}[!] ${WHITE}Type: ${LIGHTCYAN}L8     ${WHITE}Block packets from Bogon IP ranges            (${LIGHTRED}options${WHITE})"
    echo -e "${LIGHTCYAN}------------------------------------------------------------"
    echo -e ""
    echo -e "${WHITE}root@${LIGHTBLUE}IPTables${WHITE}:~# \c"
}

# Function to apply IP Tables rule
apply_iptables_rule() {
    local rule_type=$1

    case $rule_type in
        "L1")
            echo "Applying IP Tables rule L1..."
            # Add your command to apply L1 rule here
            ;;
        "L2")
            echo "Applying IP Tables rule L2..."
            # Add your command to apply L2 rule here
            ;;
        "L3")
            echo "Applying IP Tables rule L3..."
            # Add your command to apply L3 rule here
            ;;
        "L4")
            echo "Applying IP Tables rule L4..."
            # Add your command to apply L4 rule here
            ;;
        "L5")
            echo "Applying IP Tables rule L5..."
            # Add your command to apply L5 rule here
            ;;
        "L6")
            echo "Applying IP Tables rule L6..."
            # Add your command to apply L6 rule here
            ;;
        "L7")
            echo "Applying IP Tables rule L7..."
            # Add your command to apply L7 rule here
            ;;
        "L8")
            echo "Applying IP Tables rule L8..."
            # Add your command to apply L8 rule here
            ;;
        *)
            echo "Invalid rule type!"
            ;;
    esac
}

# Main script
while true; do
    main_menu
    read -p "" option

    case $option in
        "list")
            iptables_list
            ;;
        "L1" | "L2" | "L3" | "L4" | "L5" | "L6" | "L7" | "L8")
            apply_iptables_rule "$option"
            ;;
        "exit")
            echo -e "${WHITE}Bye bye..."
            break
            ;;
        *)
            echo -e "${LIGHTRED}Invalid option!${WHITE}"
            ;;
    esac
done
