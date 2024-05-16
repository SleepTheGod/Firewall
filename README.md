```
███████╗██╗██████╗ ███████╗██╗    ██╗ █████╗ ██╗     ██╗     
██╔════╝██║██╔══██╗██╔════╝██║    ██║██╔══██╗██║     ██║     
█████╗  ██║██████╔╝█████╗  ██║ █╗ ██║███████║██║     ██║     
██╔══╝  ██║██╔══██╗██╔══╝  ██║███╗██║██╔══██║██║     ██║     
██║     ██║██║  ██║███████╗╚███╔███╔╝██║  ██║███████╗███████╗
╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝ ╚══╝╚══╝ ╚═╝  ╚═╝╚══════╝╚══════╝
                                                             
                                                     
Dynamic Firewall Setup Script
This script provides an automated firewall setup solution with dynamic DNS resolution, rule persistence, logging, and enhanced security features. It ensures that only authorized outbound traffic is allowed, with specific protection for port 443 and TLS traffic at the application layer.

Features
Dynamic DNS Resolution: Continuously monitors the specified domain's DNS resolution and updates firewall rules accordingly to handle IP address changes.
Rule Persistence: Ensures firewall rules persist across reboots for consistent security configurations.
Logging: Logs denied outbound attempts for audit and analysis, enhancing security monitoring capabilities.
Security Enhancements: Minimizes the rule set to reduce potential attack surfaces and explicitly allows outbound HTTPS traffic (Port 443) to the specified domain.
Flexibility: Allows for easy customization and addition of new rules to adapt to various network environments and requirements.
