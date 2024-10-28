---
id: 10-28-24-transport-layer
aliases: []
tags: []
---

# Transport Layer (Layer 4)
- Application to Application
- Software to Software
- Once packet arrived at machine, which application to give it to?
- **Port number** is address for application on a machine
    - 16 bits
- Well known ports (like 80 for HTTP) in `/etc/services`

# User Datagram Protocol (UDP)

## Service Model
- Connectionless
- Best Effort (error checking)
- Datagram Model: either entire chunk of data is sent/received or none at all

## UDP Header
- SRC/DST Port Numbers
- Checksum (basic error detection)
- Length (how much data is in a UDP message)

