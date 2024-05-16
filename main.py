import subprocess

DOMAIN = input("Enter the domain: ")
DYNAMIC_UPDATER_PATH = "firewall-dynamic-updater.sh"

def setup_basic_rules():
    # Allow established connections
    subprocess.run(["iptables", "-A", "OUTPUT", "-m", "conntrack", "--ctstate", "RELATED,ESTABLISHED", "-j", "ACCEPT"])
    subprocess.run(["iptables", "-A", "INPUT", "-m", "conntrack", "--ctstate", "RELATED,ESTABLISHED", "-j", "ACCEPT"])
    
    # Allow loopback
    subprocess.run(["iptables", "-A", "INPUT", "-i", "lo", "-j", "ACCEPT"])
    subprocess.run(["iptables", "-A", "OUTPUT", "-o", "lo", "-j", "ACCEPT"])
    
    # Log and drop outbound traffic by default (with limit to avoid log spam)
    subprocess.run(["iptables", "-A", "OUTPUT", "-m", "limit", "--limit", "12/hour", "-j", "LOG", "--log-prefix", "iptables denied: ", "--log-level", "7"])
    subprocess.run(["iptables", "-P", "OUTPUT", "DROP"])

def save_rules_persistent():
    try:
        result = subprocess.run(["netfilter-persistent", "save"], check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        print(result.stdout.decode())
    except subprocess.CalledProcessError:
        try:
            result = subprocess.run(["iptables-save", ">", "/etc/iptables/rules.v4"], shell=True, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            print("iptables rules saved to /etc/iptables/rules.v4")
        except subprocess.CalledProcessError as e:
            print("Error: Could not find a way to save iptables rules persistently.")
            print(e.stderr.decode())
            exit(1)

def deploy_dynamic_dns_updater():
    if not os.path.exists(DYNAMIC_UPDATER_PATH):
        print(f"Dynamic DNS updater script not found. Please ensure it's correctly deployed at {DYNAMIC_UPDATER_PATH}")
        exit(1)
    else:
        subprocess.Popen(["bash", DYNAMIC_UPDATER_PATH, DOMAIN])
        print("Dynamic DNS updater script deployed and running in background.")

def main():
    setup_basic_rules()
    save_rules_persistent()
    deploy_dynamic_dns_updater()

if __name__ == "__main__":
    main()
