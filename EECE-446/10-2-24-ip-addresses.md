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
- Each router interface is in a separate network

# Reserved Addresses
In every IP network, there are two reserved addresses:

1) Network Address
    - Lowest possible addr in network (host portion bits are all 0s)
    - NET = `Device Addr & MASK` (bitwise `AND`)

2) Broadcast Address
    - Highest possible addr in network (host portion bits are all 1s)
    - BCAST = `Device Addr | ~MASK` (bitwise `OR` with complement of mask)
