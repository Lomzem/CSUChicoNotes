# Flow Control
Don't overload the **destination**

## TCP Header: Window Size
how much data DEST can receive

# Congestion Control
Don't overload the **network**

Want to AVOID **Congestion Collapse**

Adjust data in transit to avoid congestion

## Congestion Window
- One per connection
- TCP assumes packet losses (timeout) mean congestion, decrease data sent
- Receive (new) ACK, increase data sent

**Cubic TCP**: modern TCP congestion control algorithm

## Additive Increase, Multiplicative Decrease (AMID)
- Increase sent in smaller steps
- When we think there's congestion, slow down fast
