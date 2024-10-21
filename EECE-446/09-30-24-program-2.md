---
id: 9-30-24-program-2
aliases: []
tags: []
---

# Program 2
- Client app
- Peer to Peer: Group of programs that talk more to each other than just to a single server
- Peer is program running in P2P network
- Share files between peers
- Given a registry
- Client tells registry who you are, what files you have to share
- Send cmds to registry, receive info abt cmds from registry
- Creating own headers & packets
- Run multiple copies of client

## Commands
- `join`: I want to join P2P network, no response from registry
- `publish(list of files)`: tell registry what files you have available to share to P2P network, no response from registry
- `search(file to search for)`: is this file available in P2P network, search for this file, registry responds back with information of peer that has that file
- `exit`: quit connection
