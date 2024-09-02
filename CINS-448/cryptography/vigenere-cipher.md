---
id: vigenere-cipher
aliases: []
tags: []
---

# Vigenere Cipher
- Complex substitution cipher
- Doesn't use a 1:1 relationship between each letter and substitute
- Offset is based on a table

# Cigenere Cipher Table
- Each row corresponds to a Caesar cipher
- 1st row is shift of 0
- 2nd is a shift of 1
- Last is shift of 25

# Vigenere Cipher Process
- Uses table with a **keyword** to encipher msg
- Len of key is called **period** of the cipher
- Each letter in keyword is used to determine how much to shift the corresponding letter in msg

1. Write down plaintext msg

I WILL PASS THE CISSP EXAM

2. Write keyword above plaintext, repeated as many times as necessary

keyword: study

S TUDY STUD YST UDYST UDYS
I WILL PASS THE CISSP EXAM

3. In table, find intersection of each row (keyword letter) and column (plaintext letter) to determine the ciphertext letter
- Row is keyword
- Col is plaintext
- Intersect is ciphertext

# Vigenere Decipher Process

1. Write keyword repeatedly above msg

S TUDY STUF YST UDYST UDYS
A PCOJ HTMV RZX WLQKI YAYE

2. Use keyword letter to pick a column of the table, and then trace down column to the row containing the ciphertext letter

- Use keyword to find column
- Go down until you find ciphertext
- Row is plaintext

# Weakness in Vigenere Cipher
-  Repetitions occur when characters of the key appear over the same characters in the ciphertext

Key: VIG VIG VIG VIG VIG
PT:  THE BOY HAS THE BAG
CT:  OPK WWE CIY OPK WIM

Multiple Times:
Key: G
PT: E
CT: K

- Ciphertext repetitions are 9 chars apart
- Key must be a multiple of 9

## Solution to Weakness
Make key longer -> Less repetitions
