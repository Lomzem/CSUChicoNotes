---
id: 24-10-6-interrupts-security-model
aliases: []
tags: []
---

# Hardware Interrupts
Used to signal the CPU that data is now available

# Interrupt Vulnerability
Process gains interrupt's privileges

- If second interrupt arrives w/higher priority than current interrupt, execution is transferred to new interrupt
- Once new interrupt completes, transfer back to initial interrupt must be done securely
- If not secure, process that was interrupted may gain supervisor status an OS call

# Redirection of Interrupts
- Changing address of interrupt handler could redirect OS to execute the malicious code (virus)
- Hard to detect because original interrupt handler is not changed
- Hard to detect because original interrupt handler is not changed

## What Could Go Wrong?
- App could attempt to make direct call to piece of hardware instead of using proper system calls through OS
- Program could attempt to read data outside of its approved memory space
- Software could not properly release resources after use

# Trusted Computing Base (TCB)
What needs to be trusted?
1. process activation
2. execution domain switching
3. memory protection
4. I/O operations

# Enterprise Architecture
"Systematically derived structural desc (models/diagrams) of mode of operation for an enterprise"

Provides:
- What enterprise does
- When, where, how, why it does it
- What it uses to do it

# Zachman Framework
- John Zachman, 1980s
- Specifications for defining/capturing an architecture

1. How entity operates
2. What entity uses to operate
3. Where entity operates
4. Who operates the entity
5. When entity operations occur
6. Why entity operates

# Security Models
Goal: prevent unauthorized disclosure of info

## Military Security Policy
- Used by US Department of Defense

Basic Idea:
- Info (object) possesses a classification
- People (subject) possess a clearance
- Clearance compared to classification to determine access

Classification Levels:
- Unclassified
- Confidential
- Secret
- Top Secret

# Bell-LaPudula Model
- Models multilevel security
- Cornerstone of much work in computer security

## State Machine Model
Important Aspects:
- State
- State transitions

Can't have unknown states, must list them all

## State
A representation of system at one moment in time

State variables:
- Represent subject and objects of system
- Value of variables that must be maintained to ensure a secure state

## Secure Machine
If:
- All state transitions are secure
- Initial state is secure

Then:
- Every subsequent state is also secure, regardless of inputs
