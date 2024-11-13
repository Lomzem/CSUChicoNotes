# Blocking Functions
- Takes as long as necessary to complete

Example: `recv`, waiting for someone to send data

Fix: `select()`

# Select
Two main uses:
1) Fix how long an operation can take
2) Determine which, of several, resources are available
```c++
int select(int nfds, fd_set* readfds, fd_set* writefds, fd_set* exceptfds, struct timeval* timeout);
```
- `nfds`: ALWAYS is one larger than maximum file descriptor value in any of the fd sets
- `readfds`: which file descriptors `select` could read WITHOUT blocking
- `writefds`: which file descriptors `select` could write WITHOUT blocking
- `exceptfds`: any errors?
- `timeout`: how long to wait for file descriptors to come back

Return value: count of file descriptors across all sets
- `0` means timeout
- `-1` on ERROR
- `2` means 2 file descriptors from the sets are ready

In this class, we **aren't** going to use `writefds` or `exceptfds`
- Instead use `NULL`

# File Descriptor Sets

## fd_set Macros
`FD_ZERO`: Clear a set
```c
fd_set myset;
FD_ZERO(&myset);
```

`FD_SET`: Put something into set
```c
fd_set myset;
FD_SET(&myset, 7);
```

`FD_CLR`: Remove file descriptor from a set
```c
fd_set myset;
FD_CLR(&myset, 13);
```

`FD_ISSET`: Check if file descriptor is in set
```c
fd_set myset;
FD_ISSET(&myset, 25);
```

