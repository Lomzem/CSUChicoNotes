---
id: 9-16-24-part2-data-link-layer
aliases: []
tags: []
---

# Data Link Layer

## Framing
- How to know if bits mean something
- What are packets?

## Addressing
- Need way to identify things (machines)

## Error Control
Lowest layer where begin thinking about errors

3 Types:

### 1) Do nothing

### 2) Error detection
- Example: CRC
- Don't know how many errors or where errors occurred

### 3) Error correction

#### Forward Error Correction (FEC)
- Add FEC bits to packet
- Identify which bits changed
- More commonly used in wireless
- Fixes immediately

#### Automatic Repeat Request (ARQ)
- Send data, device that received data responds back with acknowledgement, if sender doesn't receive acknowledgement, sends again
- example: TCP SYN/ACK

## Medium Access Control (MAC)
- Collection of devices using shared resource, how do they collaborate/use shared thing correctly
