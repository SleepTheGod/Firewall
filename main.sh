#!/bin/bash

# Define constants
DOMAIN="$1"
DYNAMIC_UPDATER_PATH="firewall-dynamic-updater.sh"

# Function to set up basic firewall rules
setup_basic_rules() {
    # Allow established connections
    iptables -A OUTPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
    iptables -A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
    
    # Allow loopback
    iptables -A INPUT -i lo -j ACCEPT
    iptables -A OUTPUT -o lo -j ACCEPT
    
    # Log and drop outbound traffic by default (with limit to avoid log spam)
    iptables -A OUTPUT -m limit --limit 12/hour -j LOG --log-prefix "iptables denied: " --log-level 7
    iptables -P OUTPUT DROP
}

# Save the current rules to be persistent across reboots
save_rules_persistent() {
    if command -v netfilter-persistent save >/dev/null 2>&1; then
        netfilter-persistent save
    elif command -v iptables-save > /etc/iptables/rules.v4; then
        echo "iptables rules saved to /etc/iptables/rules.v4"
    else
        echo "Error: Could not find a way to save iptables rules persistently."
        exit 1
    fi
}

# Setup basic rules
setup_basic_rules

# Save rules
save_rules_persistent

# Deploy the dynamic DNS updater script
if [[ ! -f "$DYNAMIC_UPDATER_PATH" ]]; then
    echo "Dynamic DNS updater script not found. Please ensure it's correctly deployed at $DYNAMIC_UPDATER_PATH"
    exit 1
else
    bash "$DYNAMIC_UPDATER_PATH" "$DOMAIN" &
    echo "Dynamic DNS updater script deployed and running in background."
fi
