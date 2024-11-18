---
id: 10-23-24-interdomain-routing
aliases: []
tags: []
---

# Interdomain Routing
Between domains

Focusing on collections of networks

Each domain is called an **autonomous system (AS)**, a large collection of networks

## Autonomous System
- Each autonomous system has its own number
- Gets packets to correct autonomous system

One Protocol: Border Gateway Protocol (BGP)

# Border Gateway Protocol (BGP)
- Use autonomous systems (and their numbers) to identify/address domains

## Path Vector Protocol
Entry Example:
- (Network address; Full path to network)
- (101.0.0.0/8; 13, 45, 812, 24)

- **Full path** is a list of AS numbers

System designed for policy decisions, could choose not to go through an AS

Also filter what they share to other people (could choose not to share route to competitors)

Fixes loop issues, could see entire path (no duplicate AS)

