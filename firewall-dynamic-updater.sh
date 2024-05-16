#!/bin/bash

DOMAIN="$1"
PREV_IPS=""

while true; do
    # Resolve current IPs
    CURRENT_IPS=$(dig +short $DOMAIN | sort | tr '\n' ' ')
    
    # Check if the IPs have changed
    if [[ "$CURRENT_IPS" != "$PREV_IPS" ]]; then
        echo "Updating firewall rules for $DOMAIN: $CURRENT_IPS"
        
        # Flush previous rules for this domain
        iptables -D OUTPUT -p tcp -d $PREV_IPS -j ACCEPT 2>/dev/null
        
        # Apply new rules
        for ip in $CURRENT_IPS; do
            iptables -I OUTPUT -p tcp -d $ip -j ACCEPT
        done
        
        PREV_IPS=$CURRENT_IPS
    fi
    
    # Wait for a specified interval before checking again
    sleep 300 # Check every 5 minutes
done
