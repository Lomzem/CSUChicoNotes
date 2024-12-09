---
id: 2024-12-09-dns-security
aliases: []
tags: []
---

# DNS Security
- Resource Record w/wrong data
- DoS DNS server

# Query/Resource Record Correlation
- SRC Port
- DST Port
- ID (header in DNS packet)
- SRC IP
- DST IP

# Security Issues
- Fixed numbers: Ports, IPs, ID brute forcing
- Accepting anything in RR response
    - Used to include extra _fake_ RR like bank RR
    - Client used to accept any extra info
