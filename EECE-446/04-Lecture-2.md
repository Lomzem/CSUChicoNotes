---
id: 04-Lecture-2
aliases: []
tags: []
---

# Friday Lab
- Intro to linux
- Basic cmd line stuff
- How to compile on linux
- Makefiles
- Man pages
- Wireshark

# Key Concepts

## 1. Layering
- Instead of monolith, break into pieces assigned to do different tasks
- Organized pieces into layers, hierarchies
- End users use highest-most layer
- Layers only do their jobs and use the layers below
- Bottom-most layer may be cable, wires, physical
- Bottom-most layer may go to a network device
- Network devices may have layers as well
- Data goes up network devices only as needed
- Layers don't talk to other layers, only speak to other implementations at same layer

## 2. Modularity
- Primary motivation for layering
- Not every user wants the same thing
- Monolith forces users to have same experience as others
- Separate by functionality
- Could have multiple vendors, implementations, etc.

## 3. OSI (7 Layer) Model
- Model for [[04-Lecture-2#1. Layering|Layering]]
- When people say Layer 1, Layer 7, etc. they are talking about OSI Model

From highest to lowest:
1. Application Layer (DNS)
2. Presentation Layer
3. Session Layer
4. Transport Layer (TCP, UDP)
5. Network Layer (IP)
6. Data Link Layer
7. Physical Layer

## Actual Implementation: TCP/IP (DOD) Model

From highest to lowest:
1. Application Layer
2. Transport Layer
3. Network Layer
4. Link Layer

## 4. Packets + Headers
- Each packet is independent from other packets (by default)
- Each packet contains info necessary for every device along the way to know what to do with it

## 5. Encapsulation
- How we deal with packets
- Each layer adds its own header to the packet, treating **all** of what it receives (including higher-level headers) as just data

## 6. Addressing
- Addresses are identifiers / for labeling
- Meant for computers

### Scope: Global
- Addresses have meaning **everywhere**

### Scope: Local
- Addresses only have meaning in some defined scope

### Specificity
- What does an address correspond to?
- **unicast** address identifies one thing (most common)
- **broadcast** address identifies for everybody (2nd most common)
- **multicast** not all but more than one
- **anycast** group identified but just one

### Hierarchical vs. Flat
- Hierarchical: addresses are grouped
    - Phone number: area code, 3, 4
- Flat: no grouping, just identifiers
    - Chico state ID

## 7. Names
- Domain names
- Only purpose is to help our humans
- www.csuchico.edu

## 8. Service Model
- Description of the functionality provided by an implementation at a layer
- Protocols

Defines:
- What happens if we lose packets? (Reliability)
- Security

HW: Look up End-to-End Principle, before next wednesday
