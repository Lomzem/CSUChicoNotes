---
id: switches-forwarding-tables
aliases: []
tags: []
---

INTF stands for interfaces (ports)

# Networking Devices
- Hubs
- Hub Plus
- Switch

# Switches

"Switch" means Transparent Learning Switches (by default)

Switches are transparent to **user data**, not necessarily to each other (allows for spanning tree protocol)

Watch things going on to learn about things in the network

Don't want to hold on to packets for long to conserve memory

Switches don't make packets, they forward packets

## Forwarding Table Example
| DST MAC Addr | SRC MAC INTF (Interface/Port on Switch) |
| :--- | ---: |
| A | 0 |
| C | 2 |

Layer 2 uses Ethernet/MAC Addresses

D->C is a unicast address, MAC Address at Layer 2

**flood**: send to everybody except **ingress interface** (source) (and unconnected interfaces)

Forwarding table will **never** have more than one INTF for one Addr

Forwarding table **can** have more than one Addr for one INTF

Forwarding table removes entries after a certain amount of time

**Never** forward to the ingress interface

Broadcast packets are **never** in the table

## Spanning Tree Protocol
Recognizes cycle/loop and logically disconnects one of the cables

# Switch Forwarding Process

1) Learn **source** address

2) If **destination** address is in the forwarding table, send out to specified INTF, _unless the INTF is the Ingress INTF_

3) Else **flood** packet

# Switch Limitations (Switch-Only)
- Broadcast overhead, have to use broadcast packets (flooding)
- Management
- Table size (forwarding table)
