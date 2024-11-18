---
id: routers
aliases: []
tags: []
---

# Routers

Routers are in Layer 3, Network Layer [[04-Lecture-2#3. OSI (7 Layer) Model]]

Routers separate things (solve broadcast/floods)

Only care about networks not individual devices

Routers contain a whole network of switches

Routers don't consider individual devices, only care about object (collection of devices)
- Can't see individual switches

Networks can have multiple routers connected to them

Devices implicitly (built-in) know their own MAC address

IEP network, local area network, ...
**Network**: one collection of devices that are treated independently and interface to a router

Routers use **IP** addresses, Layer 3

Each router has at least two interfaces (connects two networks)

Routers can create routing loops (error)

A packet -> C

Layer 2 Table:
| DST MAC (Switch) | SRC MAC (Switch) | SRC IP (Router) | DST IP (Router) |
| --------------- | --------------- | --------------- | --------------- |
| Router_0mac | A_mac | A_ip | C_ip |

# Network Layer Questions

## How do I get my address?
- Dynamic Host Configuration Protocol DHCP

## How do I get other addresses?
- DNS

## IN vs OUT of network?

## How to get out of network?

## How does a router decide where to send?


