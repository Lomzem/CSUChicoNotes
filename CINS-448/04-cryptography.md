---
id: 04-cryptography
aliases: []
tags: []
---

= Cryptography
- "secret writing" in Greek
- **plaintext**: useful information before scrambled
- **ciphertext**: useful info after scrambled

= Cryptosystem
- set of plaintexts
- set of keys
- set of ciphertexts
- enciphering functions

Take **plaintext**, turn it into **ciphertexts** using a **key** to run it through an **enciphering function**

= Cryptanalysis
- breaking of codes
- science of finding/correcting weaknesses in cryptographic algorithms
- an algorithm should not rely on its secrecy
- should not be able to decrypt even when knowing which algorithm used
- algorithm should be made available for public evaluation -> more trust in algorithm

# Three types of attacks
1. Ciphertext only
2. Known plaintext
3. Chosen plaintext

# Ciphertext only attack
- only has the ciphertext
- goal is to find the plaintext
- may also find the key
