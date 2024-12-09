---
id: 2024-12-08-access-controls
aliases: []
tags: []
---

# Access Control
The process of protecting a resource so that it is used only by those allowed

# Two Types of Access

1. Access to data

2. Access to the system

Controlled by implementing:
- Identification & Authentication
- Remote, centralized, and decentralized access control methods

# Four Parts of Access Control
1. Identification
2. Authentication
3. Authorization
4. Accountability

# Types of Identification
- Username, LoginID, UserID, Account Number
- Badge system using Smart Cards

# Guidelines for User Identification
- Issuance
    - Make sure people are who they say they are
    - Process should be secure and documented
- Naming Standards
- Non-Descriptive of Job Function
    - Not "admin123"
- No sharing
- Verifiable
- Unique

# Three Methods of Authentication

Presenting something:
1. You know: Password
2. You have: 2Factor, Auth apps
    - Synchronous tokens
    - Challenge-response devices
3. You are: Biometric devices

## Smart Cards
Credit card-sized plastic card that has an embedded semiconductor chip
- Can accept, store, and send information

## Biometric Device
- Analyzes a unique personal attribute/behavior
    - Behavior can be typing speed
- Examines unique physiological trait

Three physical characteristics unique for each individual
1. Fingerprint
2. Retina of the eye
    - Blood vessel patterns inside the eyeball
3. Iris of the eye
    - Random patterns of granularity in the colored portion of the eye

Important Elements of Biometric Devices:
- Accuracy
- Processing speed
- User acceptability

### Accuracy
Must be able to separate authentic users from imposters

Measurable factors
- False reject rate - Type I Error
- False accept rate - Type II Error
    - Most important error
- Crossover error
    - Total error
       - False acceptance + False rejection

### Processing Speed
- How fast accept/reject decision is presented to the user
- Generally accepted standard is 5-10 seconds from start-up to decision announcement

### User Acceptability
- Users must be comfortable/willing to use system
- Convince users that system is not dangerous to their health
- Not infringing on privacy rights

# One-Factor vs Two-Factor

Two-Factor (aka "strong auth") requires two authentication methods
- Something you know and something you have
    - You know: Password
    - You are: Fingerprint

# Authentication vs Authorization
Authorization establishes what user is allowed to do once user has been authenticated by the system

# Access Controls
- Rule-Based
- Role-Based
- Content-Dependent

## Rule-Based
- Explicit rules grant access
- Grant individual people individual permissions

### Access Control List(ACL)
Table of users and their permissions

## Role-Based
- Implicit rules grant access
- Groups share same access

## Content-Dependent Access Control
- Access based on values in data (i.e., Department)
- Local Manager: Can only see data only on employees in the same department
- HR Manager: Can see data on all employees

# Accountability
How are actions traced to an individual to ensure that the person who makes data/system changes can be identified?

**ALL ABOUT LOGS**


