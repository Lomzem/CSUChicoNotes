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
- Convergence Time: len of time it takes from network change to forwarding is stabilized; update forwarding table to correct tables since network changed

# Main Intradomain Routing Approaches

## Distance Vector Routing Protocols
"Signpost" Approach

- Better for smaller networks
- Less common than [[10-14-24-routing#Link State Routing Protocols|Link State]]

Bellman-Ford Algorithm:
- Have routers share signposts, share a list of (destination, cost pairs) (Distance Vectors)
- Only share w/direct neighbors

### "Counting to Infinity" Problem

#### Solutions
- Split Horizon
- Split Horizon w/Poison Reverse
- Hold Down Timers

Networks with cycles can't prevent "Counting to Infinity" problem

## Link State Routing Protocols
"Map" Approach

- Routers exchange info about who their connected to
- Build entire map of network they're routing across
- Each router has a graph in state (the same graph)
- Dijkstra's Algorithm to find shortest path
    - Weights protocol/operator dependent

Common Protocols:
- OSPF (Open Shortest Path First)
- IS-IS (Intermediate System to Intermediate System)

