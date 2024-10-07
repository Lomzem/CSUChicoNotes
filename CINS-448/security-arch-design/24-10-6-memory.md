---
id: memory
aliases: []
tags: []
---

# Memory
Memory needs to be protected so user's programs don't interfere with OS or processes of other users

Protected with:
- Base/limit register, can't read/write more than a certain distance from base
- User/privileged modes

# Types of Memory
1. Random Access Memory (RAM)
2. Read-Only Memory (ROM)
3. Flash Memory

## Random Access Memory (RAM)
- Read/write memory
- Stores program instructions/data

Types of RAM:
- Dynamic Random Access Memory (DRAM)
- Extended Data Output RAM (EDO RAM)
- Synchronous DRAM (SDRAM)
- Double Data Rate SDRAM (DDR SDRAM)

### Dynamic Random Access Memory (DRAM)
- Was most common
- Holds data for short period of time
- Must be continually and **dynamically** refreshed

### Extended Data Output RAM (EDO RAM)
- Faster read time than DRAM
- Uses "look ahead" feature

### Synchronous DRAM (SDRAM)
- Synchronized w/clock speed
- Increases speed of transmitting/executing data

### Double Data Rate SDRAM (DDR SDRAM)
- Outputs on both rising/falling edges of clock cycle (rather than just rising edge)

## Read-Only Memory (ROM)
- Usually for storing parts of OS necessary to boot computer
- Data not lost when computer power turned off (unlike RAM)
- Small long-life battery in computer

### Flash Memory
Functions like RAM and hard drive combined (but has no moving parts)

Examples:
- CompactFlash (cameras)
- SmartMedia
- Memory Stick

# Memory Management
- OS in charge of management
- Each program gets diff part of memory
- Accomplished by dividing memory up w/addressing scheme
- Independent of physical hardware addresses
- Application writes "pages" (size of page varies) of info to reserved address space

# Locked Memory
- Pages are locked in memory space
- Prevented from being written to virtual memory

# Virtual Memory
Use space on hard disk as extension of RAM
- Takes CPU about 200 ns to access RAM 120e5 ns to access HD

# Virtual Memory Vulnerability
- Data remains on HD even when power turned off (unlike RAM)

Solution:
- Windows, store swap file in another partition that can be secured
- Linux, encrypt partition that holds swap file

# Encryption with Paging
- Encryption program reads data in encrypted file, decrypts it, works on data while its in memory
- If data is paged to HD then its no longer encrypted and could be available to unauthorized users
- Memory lock can be created by admin to prevent paging the encrypted data
