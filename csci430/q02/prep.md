# 6. Software Architecture

## Terms

**Maintainability**: a set of attributes that bear on the effort needed to make specified modifications

**Technical Debt**

- Speeds up development
- Should _repay_ debt later (rewrite)
- Could deadlock entire org

Purposes

- Separation of concerns
- Reusable

# 7. Module Design

## Model View Controller

Associated w/Software Architecture

**model**: internal representation of info

**view**: interface that presents info to and accepts it from user

**controller**: software linking model & view

# 8. Function Design

## Lack of Cohesion of Methods (LCOM4)

![](./assets/lcom-example.gif)

- LCOM4=1 indicates a cohesive class (good)
- LCOM>=2 indicates a problem. The class should be split into smaller classes (bad)
- LCOM4=0 means no methods in class (also bad)

## McCabe's Cyclomatic Complexity (PMMCCABE)

- How many bool paths exist

Complexity of 2:

```c
if (x > y && x < z)
```

- Complexity <= 10 is good
- More means function may be too complex

# Code Smells

A _code smell_ is a hint that something has gone wrong somewhere in your code

## Spaghetti Code

- Complex, tangled control structure
- Unstructured code

## Cut-and-Paste

## Swiss Army Knife

- Class/Module tries to do too many things at same time
- Class/Module tries to do multiple functions that aren't related

## Shotgun Surgery

- Single change requires multiple parts to be changed

## God Object

- Single class has too many responsibilities
- Does everything
- Knows too much, does too much

## Sequence Coupling

- Requires functions to be called in specific order or it won't work

## Vendor Lock-In

## Busy Waiting

- Repeatedly checking if process has completed rather than waiting for info about its completion

## Inappropriate Intimacy

- Sharing private variables too much

## Error Hiding

## Reinvent the Wheel

## Utility Method

- Method doesn't depend on object's data

## Data Class Smell

- Class _only_ holds data w/no behavior
