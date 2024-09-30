---
id: 9-30-24-network-layer-ip
aliases: []
tags: []
---

# Network Layer

Only 1 Working Protocol: **IP**

At layer 3 - network, everyone uses IP

# Internet Protocol (IP)
IPv4 most common

## Important Header Fields
- SRC + DST addr
- TTL (Time to Live), how long something lives, useful for limit on how long packets live
    - Time sync is an issue
    - Gave up on time
    - Actually a limit of how many hops (# routers)
- Protocol (for Transport Layer: UDP, TCP)

## Service Model
- Connectionless service
    - Connection-oriented: sockets
- Best Effort (non-reliable error correction) service
    - no error recovery
    - **does** do error detection
- Datagram service
    - either entire chunk of data is sent/received or none at all

## IP Addresses (Intro)
- Creates distinction: IN/OUT of network
- MSB: network portion
    - same for all devices in an IP network
- LSB: host portion
    - individual device in network

## IP Forwarding
**NO** learning, routers do **not** learn

1) If in local net, send directly (give directly to switches/Layer 2)
    - Same network portion
