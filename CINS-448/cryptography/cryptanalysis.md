---
id: cryptanalysis
aliases: []
tags: []
---

# Cryptanalysis
- breaking of codes
- science of finding/correcting weaknesses in cryptographic algorithms
- an algorithm should not rely on its secrecy
- should not be able to decrypt even when knowing which algorithm used
- algorithm should be made available for public evaluation -> more trust in algorithm

## Three types of attacks
1. Ciphertext only
2. Known plaintext
3. Chosen plaintext

## Ciphertext only attack
- only has the ciphertext
- goal is to find the plaintext
- may also find the key

## Known plaintext attack
- has ciphertext and the plaintext
- goal is to find the key
- could use the key to find other plaintexts using same system

## Chosen plaintext attack
- ask for specific plaintext to be enciphered
- will be given corresponding ciphertext
- goal is to find the key

# How attack is accomplished
- Math/stats
- Statistical methods
- Make assumptions about statistics of the plaintext language
- Assumptions are also called "the model"
- Examine the ciphertext to correlate its properties with the assumptions

# Substitution and Transposition to Easy to Crack?
- [[Substitution]] and [[transposition]] do not disguise linguistic patterns of letters and word freq

## Solution
- Use both [[substitution]] and [[transposition]] together
