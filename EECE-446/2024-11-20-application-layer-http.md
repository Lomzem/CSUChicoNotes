---
id: 2024-11-20-application-layer-http
aliases: []
tags: []
---

# Application Layer
- HTTP
- DNS

# HTTP
- Client/Server Model
- Text-Based Origin

## Client/Server Model
- Client sends request
- Server responds

### Types of HTTP Requests
GET, PUT, POST

### Server Response
Success or Error

# History

## HTTP/1.0
- Every request requires a new TCP connection
- Minimum 3 RTT for each resource exchange
- One server per physical machine
- Must restart download if connection broke
- When server responded, server had to send _entire_ response

## HTTP/1.1
- **Persistent Connections**: Allows devices to use same connection for multiple requests
- Pipelined Requests: Can send multiple requests before you get response
    - Multiple requests/responses at once
    - Server must send back responses _in order_
- Virtual Servers: $>=1$ server per physical machine
- Byte Serving: I want this resource, but I only need this portion of the file
- Chunked Encoding: Server can give part of response and later on send other part of response

## HTTP/2.0
- SPDY, QUIC

## HTTP/3.0
