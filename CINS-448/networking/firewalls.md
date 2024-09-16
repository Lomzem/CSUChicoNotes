---
id: firewalls
aliases: []
tags: []
---

# Firewalls
Block unwanted traffic from the internet into your network

Firewall **exceptions** allow some traffic to get through

## Types of Firewalls

### Host Based Firewall
- Runs directly on the host
- Example: Windows firewall

### Network Based Firewall
- Separate internal networks
- Filters traffic going in and out of a network
- Filters based on firewall rules

### Border Firewall
- Right on the "edge" of the network
- Stops all internet traffic that is unwanted
- Could deny outbound connects (stop users from going to a specific site)

### WAF Firewall
- Web Application Firewall (aka Application Gateway)
- Protects internal web servers from any kind of web application attack
    - Cross site scripting, SQL injection

## Generations of Firewalls

### First generation
Packet filtering rules

### Second generation
Stateful inspection

### Third generation
Application-level firewalls (WAF)

### Next generation
Multiple capabilities into a single firewall

# DMZ
- Demilitarized Zone
- Protects internal structure
- Anything in our internal network, can stop any possibility of connecting to internet
- Put in DMZ anything that will have an internet connection to it
    - Web servers, email servers, etc.

# Proxy Server
- Allows/denies internal computers from connecting to particular sites

# UTM Firewall
- Unified Threat Management
- All in one
- Firewall, Antivirus/Spyware, Anti-span, Content Filters, Intrusion Prevention, Monitoring & Reporting
