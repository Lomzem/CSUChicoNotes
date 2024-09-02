---
id: asymmetric-cryptography
aliases: []
tags: []
---

# Problems with Symmetric Cryptography
- Single key used to encrypt and decrypt data
- Exchanging the key (could be intercepted)
- Scalability

## Out-of-band Messaging
- Using transmission methods other than what is usual/expected

## Scalability Issues
- Number of keys required explodes as number of communicating pairs increases and each pair needs a separate key

$n(n-1)/2$

# Asymmetric Cryptography (public key cryptography)
- Introduced by Whitfield Diffie and Martin Hellman in 1976
- Arrived just in time for internet

## Basic Idea
- Each user has a public key and a private key
- Sender and receiver do not need to share a secret key
- All communication involves the public key
- When encrypting something with the public key, cannot decrypt it with the public key, only with the corresponding private key (and vice versa)

## How can this work?
- Two keys are linked to each other mathematically
- Uses: numbers theory, finite fields, abelian groups, elliptic curves

## Sending a message
- Sender uses receiver's public key to encrypt msg
- Receiver uses their private key to decrypt msg

## Advantages
- Don't need to worry about key distribution, people only need to publish one public key, everyone has access
- Key scalability: don't need one distinct key for each communicating pair of users

## Disadvantages
- Very slow to process
- Can be up to 1000 times slower (bytes per second) than [[cryptography#Classical cryptosystem (Single-key, Symmetric)|symmetric key algs]]

# Hybrid Systems
- Uses symmetric and asymmetric key algs where each is strong

## Hybrid Example
- Use symmetric key cryptography to encrypt a long msg
- Use asymmetric key cryptography to exchange the symmetric key used in the encryption process
- Instead of asymmetric on the msg, asymmetric on the symmetric key

# Asymmetric Key Cryptography Algorithm
- First invented by researchers in the British military but unclassified recently
- James Ellis was cryptographer credited with creation, unable to implement idea
- Clifford Cocks created RSA encryption alg w/Ellis' idea
- Considered the **most important advance in cryptography** in the past 2000 years

# One-Way Function
- Fxn which enormous difference in time required to perform the function itself compared to how quickly you can perform its inverse
