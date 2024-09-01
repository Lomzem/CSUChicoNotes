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

# Known plaintext attack
- has ciphertext and the plaintext
- goal is to find the key
- could use the key to find other plaintexts using same system

# Chosen plaintext attack
- ask for specific plaintext to be enciphered
- will be given corresponding ciphertext
- goal is to find the key

= How attack is accomplished
- Math/stats
- Statistical methods
- Make assumptions about statistics of the plaintext language
- Assumptions are also called "the model"
- Examine the ciphertext to correlate its properties with the assumptions

= Classical cryptosystem (Single-key, Symmetric)
- Use one key to both encrypt and decrypt
- Example: Caesar's cipher

= Two types of classical ciphers
1. [[transposition#Transposition|Transposition]]
2. Substitution

