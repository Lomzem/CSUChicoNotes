---
id: substitution
aliases: []
tags: []
---

# Substitution Cipher
- Letters are **changed**, not reordered
- Changes characters in plaintext to produce ciphertext

## Substitution Cipher Examples
- [[caesar-cipher#Caesar Cipher|Caesar Cipher]]
- [[vigenere-cipher#Vigenere Cipher|Vigenere Cipher]]
- One-time pad

# Attacking a Substitution Cipher

## Frequency Sum Attack

1. Compute freq of each letter in ciphertext
2. Look up each character in table of char freqs
3. Multiply freq of each char in ciphertext by char  freq in English
4. Sum up results
5. Repeat previous two steps for each possible offset
6. Highest sum probably means most likely to be correct offset

## Method 2

- What letters appear the most?

### Example
- dwwdfn dw hohyhq sp
- H x 3
- W x 3
- D x 3

- What letter do you expect to appear the most in plaintext? E or T
- Substitute "E" for "H" then for "W" then for "D"
