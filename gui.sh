#!/bin/bash

# Function to display an error message
show_error() {
    dialog --title "Error" --msgbox "$1" 10 50
}

# Function to display an information message
show_info() {
    dialog --title "Information" --msgbox "$1" 10 50
}

# Function to get user input for the domain
get_domain_input() {
    dialog --title "Domain Input" --inputbox "Enter the domain:" 10 50 2> /tmp/domain_input.txt
    domain=$(cat /tmp/domain_input.txt)
    rm /tmp/domain_input.txt
    echo "$domain"
}

# Function to confirm firewall setup
confirm_setup() {
    dialog --title "Confirmation" --yesno "Do you want to setup the firewall for $1?" 10 50
    return $?
}

# Function to setup the firewall
setup_firewall() {
    domain="$1"
    if [ -z "$domain" ]; then
        show_error "Please enter a domain."
        return
    fi

    confirm_setup "$domain"
    response=$?
    if [ $response -eq 0 ]; then
        bash main_firewall_setup.sh "$domain"
        show_info "Firewall setup completed."
    fi
}

# Main function
main() {
    domain=$(get_domain_input)
    setup_firewall "$domain"
}

# Execute main function
main
