---
id: 10-14-24-routing
aliases: []
tags: []
---

# Routing vs Forwarding
Routing: building forwarding table
Forwarding: process of moving packets around (using forwarding table)

# Routing

## Methodology

### Centralized vs Distributed
- Centralized: single entity collects all info to build forwarding table, tells each device which forwarding table to use
- Distributed: routers talk to each other, share info, each router individually makes its own choices/builds on forwarding table

## Proactive vs Reactive
How and when to build forwarding table?
- Proactive: do before there's a need
- Reactive: wait until there's a need (packet)

Modern Internet is **proactive** + **distributed**

## Metrics to Compare Routing Protocols
- Overhead, Security, etc. See [[9-12-24-lecture#Metrics Examples|Metrics Examples]]
- Convergence Time: len of time it takes from network change to forwarding is stabilized; update forwarding table to correct tables
