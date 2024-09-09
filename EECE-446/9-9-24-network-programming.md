---
id: Lecture-9-9-24
aliases: []
tags: []
---

# Network Programming

## Socket API
- aka Berkeley sockets
- well known, established
- follows [[lecture-9-9-24#Client/Server Model|client/server model]]
- socket is not a data structure, it's a conceptual piece of data
- definition of socket is OS dependent
- identified by file descriptor (**socket descriptor**), int identifier
- OS takes care of packet loss
- holds data from socket in socket memory until socket is closed

## Client/Server Model
- multithreaded client handling

## Important Functions

### Server
- `bind(2)`, "naming" a socket, describes info abt socket needed to have ready for clients, assigns port num
- `listen(2)`, differentiates client from server, "passively opening socket"
- `accept(2)`, accepts clients

### Client
- `getaddrinfo(3)`, tell u abt who u want to communicate with
- `connect(2)`, client equiv of accept(2), tries to talk to server

### Both
- `socket(2)`, does something to give/return u a socket
- `send(2)`
- `recv(2)`, receive
- `close(2)`, disconnect is a thing but not widely used

# Important Function Signatures

## Accept
```c
int accept(int sfd, const struct sockaddr* addr, socklen_t addrlen);
```
`param: addr` is **always** `NULL`
`param: socklen_t` could by anything, `0`
`param: sfd` is listening socket descriptor
`returns` connected socket descriptor, can't be listening socket

## Send/Receive
```c
int send(int sfd, void* buf, size_t len, int flags);
int recv(int sfd, void* buf, size_t len, int flags);
```
`param: sfd` socket descriptor of socket you want to send to/receive from
`param: buf` data/where to put data
`param: len` count of bytes to send/receive
`param: flag` usually just do `0`
`returns` how many bytes actually sent/received

