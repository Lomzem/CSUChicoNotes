---
id: security-arch-and-OS
aliases: []
tags: []
---

# Security Architecture
**security architecture**: a view of an overall system architecture from a security perspective

# Designing a New Information System
- Security considered requirement from beginning
- Must be thought of as one of features of a system

# Pieces of System
4) End User: Application Program
3) Utilities
2) Operating System
1) Computer Hardware (Memory: Storage Devices, CPU: I/O Devices)
0) Network

# Layering
- Lower layers provide primitive functions
- Higher layers use primitive functions for more complex functions

## Security & Layering
- Functions only belong to one layer
- Can't have _single_ security layer
- Each layer should have security features
- Security primitives placed in lowest level possible

# Operating System

## Main Objectives of OS
1) Control use of system resources
2) Provide GUI

## OS Services
- Program creation/execution
- Access to I/O devices
- Access to files
- System access
- Error detection/response
- Accounting (logs)

# Techniques to Control Use of System Resources
- Multitasking
- Multithreading
- Multiprocessing

## Multitasking
Several programs running, each taking turns using the processor

1) Requests are placed in a stack (in RAM)
2) CPU pulls instruction from stack
3) CPU processes instruction
4) Result temporarily put back into RAM

## Multithreading
The ability of OS to execute different parts of a program, called threads, simultaneously

## Multiprocessing
Coordinated processing of 2+ programs by a system that contains parallel processors

Two types:
1. Symmetric multiprocessing
2. Massively parallel processing

### Symmetric Multiprocessing
- Processors share memory and the I/O bus
- Single copy of OS is in charge of all processors

### Massively Parallel Processing
- "Each processor has its own OS and memory"
    - Misleading (generally describes clustering)
    - Can have its own memory (not usually own OS)
- Data paths allow messages to be sent between processors

# Clustering
- Integrates resources of 2+ computers (that could otherwise function separately) together for some common purpose
- Computers are available to general public and linked together with standard LAN technology

# History
- Single processor first, died off
- MPP hyped up a bit, dying down
- Clustering, new current trend, getting more popular

# Vulnerabilities
- Storage residue
- Time of check/Time of use

## Storage Residue
Context switch w/improper cleanup

1) Context switch occurs when OS deactivates running process to active next process
2) Info needed to restart deactivated process is stored in RAM
3) When processor is ready for process again, data is read from RAM

Storage residue occurs is OS doesn't scrub RAM before releasing it

## Time of check/Time of use (TOC/TOU)
- One process passes pointers to parameters residing in its virtual memory to OS
- At same time, another process modifies parameters (between time OS validates them and time they are used)

# CPU States
1. User
- Only non-privileged instructions can be executed

2. Privileged
- Any privileged/non-privileged instructions can be executed

# Vulnerability w/CPU State
- When system crashes, core dump of internal state, including RAM, program stacks, CPU registers is created
- Is core dump isn't secured, unauthorized users could access it
