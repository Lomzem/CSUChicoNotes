---
id: 10-2-24-ip-addresses
aliases: []
tags: []
---

# IP Addresses
Two Parts:
1) Address
2) Mask

Mask is also 32 bits (in IPv4), same size as address

Mask has:
- 1 for each corresponding bit in address that represents network
- 0 for each corresponding bit in address that represents host

All devices in same network have same mask

# Representation

## Dotted Decimal Notation:
Each decimal value separated by dots represents an **octet**: 8 bits

Mask:
255.224.0.0
OR
/11

Count of 1s is 11

Example of full:
192.168.11.7/11

# IP Address Rules
- All devices in same network have:
    - Same network addr
    - Same mask

- All devices have a unique address
- No devices have the broadcast nor network address
- No two networks overlap in their address space
- Each interface of each router is in a separate network

# Reserved Addresses
In every IP network, there are two reserved addresses:

1) Network Address
    - Lowest possible addr in network (host portion bits are all 0s)
    - NET = `Device Addr & MASK` (bitwise `AND`)
    - Distinguishes _entire network_ from _individual device_

2) Broadcast Address
    - Highest possible addr in network (host portion bits are all 1s)
    - BCAST = `Device Addr | ~MASK` (bitwise `OR` with complement of mask)

Also reserved:
- `0.0.0.0` - Unknown
- `127.0.0.0/8` - localhost, loopback
- Local/Unroutable
    - `192.168.0.0/16`
    - `172.16.0.0/12`
    - `10.0.0.0/8`

# Network Address Translation (NAT)
Allows you to use private address internally and automatically translates to public address so public only sees public address

# Classful and Classless Addresses

## Classful Addresses
Class A: `/8` (0.....)
Class B: `/16` (10.....)
Class C: `/24` (110.....)
Class D: Multicast (1110.....)

See [[04-Lecture-2#Specificity|Multicast and Specificity]]
Broadcast: everybody else
Unicast: target is one device
Multicast: Some hosts, maybe not all
Everything is multicast, multicast could be both unicast or broadcast

## Classless Interdomain Routing (CIDR)
- Could pick any mask
- Default today

Longest Prefix Match

Example:
- `50.12.35.0/24` -> Device A
- `50.12.0.0/16` -> Device B
- `50.12.0.0/8` -> Device C

Match an address like `50.12.35.127` to the longest prefix (network portion) match
^ Above example `50.12.35.127` sends to Device A

`50.12.4.8` matches Device B
