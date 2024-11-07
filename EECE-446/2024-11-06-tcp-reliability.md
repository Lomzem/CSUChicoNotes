# TCP Reliability
- No errors
- Data in order
- No duplication

RTT Estimations

# Automatic Repeat Request (ARQ)

## Stop and Wait Scheme
- Timeouts (between repeat requests) should be approximately one RTT long
- Wait until timeout to resend packet

### Throughput
Max bytes in Ethernet: 1500 B

Max THPT = $(1500 B) / (25 ms) = 60,000 B/sec = 60 kB/sec$

## Sliding Window
- Sender has Sender's Window
- Add more to packets as long as fits within window


