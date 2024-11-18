# TCP Options

## Window Scaling
- Advertised/receiver's window
- Usually 16 bits by default (max is 2^16)
- Input: scaling factor
- Multiple the window size by this factor

## SACK
Selective ACK
- Can say I've received this RANGE of bytes
    - Instead of: I've received up to this number of bytes

