import subprocess
import time

DOMAIN = input("Enter the domain: ")
PREV_IPS = ""

def update_firewall_rules():
    global PREV_IPS
    
    while True:
        # Resolve current IPs
        try:
            result = subprocess.run(["dig", "+short", DOMAIN], capture_output=True, text=True, check=True)
            current_ips = result.stdout.strip().split("\n")
            current_ips.sort()
        except subprocess.CalledProcessError as e:
            print(f"Error resolving DNS for {DOMAIN}: {e.stderr}")
            continue
        
        # Check if the IPs have changed
        if current_ips != PREV_IPS:
            print(f"Updating firewall rules for {DOMAIN}: {', '.join(current_ips)}")
            
            # Flush previous rules for this domain
            for ip in PREV_IPS:
                subprocess.run(["iptables", "-D", "OUTPUT", "-p", "tcp", "-d", ip, "-j", "ACCEPT"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
            
            # Apply new rules
            for ip in current_ips:
                subprocess.run(["iptables", "-I", "OUTPUT", "-p", "tcp", "-d", ip, "-j", "ACCEPT"])
            
            PREV_IPS = current_ips
        
        # Wait for a specified interval before checking again
        time.sleep(300) # Check every 5 minutes

def main():
    update_firewall_rules()

if __name__ == "__main__":
    main()
