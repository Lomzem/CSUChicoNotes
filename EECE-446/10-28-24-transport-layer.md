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
All 16 bits in size:
- SRC/DST Port Numbers
- Checksum (basic error detection)
- Length (how much data is in a UDP message)

# Transmission Control Protocol (TCP)

## Service Model
- Connection-oriented
- Reliable (error checking)
- Byte stream:
    - infinite sequence of bytes
    - no concept of this data is for one packet, this data is for another packet
        - "what is a packet?" determined by TCP implementation

## Additional Functionality
- Flow Control: adapting to what it does in network to avoid overloading/overwhelming end destination
- Congestion Control: adapting behavior to avoid overloading network (things in between)

## Important TCP Headers
- SRC/DST Port Numbers (16 bit)
- Sequence Number (32 bit)
- ACK Number (32 bit)
- Flags (8 bit)
    - SYN: Synchronize
    - FIN: Finish
    - ACK: Acknowledge

## State Machine
- Connection setup
- **Established** state
    - Most TCP connections spend majority of time in ESTABLISHED
    - Only state that can send data
- Connection teardown

# Connection Setup

