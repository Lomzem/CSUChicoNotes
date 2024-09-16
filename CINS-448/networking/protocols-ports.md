---
id: protocols-ports
aliases: []
tags: []
---

# Protocols & Ports

## TCP/IP
- Not a single protocol, suite of protocols
- Transmission Control Protocol

### TCP Three-Way Handshake
- Client sends SYN
- Server sends SYN/ACK
- Client sends ACK
- Client ports: 49,152 - 65,535
- Server ports: 1- 49,151

## UDP
- User Datagram Protocol
- Sends data as fast as possible
- Lots of loss
- Client doesn't know if server is receiving
- Example of UDP: [[protocols-ports#ICMP|ICMP]]

## ICMP
- Internet Control Message Protocol
- Used to test basic connectivity
- Example: `ping`

## HTTP
- Hypertext Transfer Protocol
- Port 80

# Encryption Protocols

## SSH
- Secure Shell
- Encrypts wide variety of traffic
- Secure Copy (SCP)
- Secure File Transfer Protocol ([[protocols-ports#SFTP|SFTP]])
- Uses TCP Port 22

## HTTPS
- Hypertext Transfer Protocol Secure
- **Port 443**
- Encrypted with TLS

# SSL (Replaced with TLS)
- Browser encryption

## FTP
- Port 20 for data
- Port 21 for control

## SFTP
- Port 22
- Extension of SSH

## FTPS
- File Transfer Protocol Secure
- Uses TLS or SSL (ports 989 and 990)

## TFTP
- Trivial File Transfer Protocol
- Used to transfer smaller amounts of data
- Uses UDP port 69

# Email Protocols
- Most common: IMAP4, POP3
- Both supported by all modern email clients and web servers

## IMAP4
- Allows simultaneous access by multiple clients
- More suitable for accessing email from different locations

## POP3
- Allows downloading email messages on local computer and reading them even when offline
- Messages are downloaded locally and removed from email server

## SMTP
- Simple Mail Transfer Protocol
- Standard protocol for sending emails across Internet
