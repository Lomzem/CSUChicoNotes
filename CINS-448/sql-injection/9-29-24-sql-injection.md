---
id: 9-29-24-sql-injection
aliases: []
tags: []
---

# Important Concepts
- OWASP
- Problem of SQL Injection
- Conduct own SQL Injection attack
- Know how to remediate websites against SQL Injection

# OWASP
Open Web Application Security Project

Ranks top web app vulnerabilities

# SQL Injection
Historically the largest vulnerability for websites

Inserting extra SQL statements into code 

Comments in SQL: `-- this is a comment`

## Examples:
- `OR '1' == '1'`
- `Joe' OR '1' = '1'; DROP TABLE Users;--`

Traits:
- Easily exploited
- Widespread prevalence
- Easy to detect weaknesses in system
- Severe technical impacts

# Ways to Fix SQL Injection
- Strip away/escape common injection chars `--`, `'`, `=`, `;`
- Parameterized Statements, force **input** to be a _value_ instead of building onto command

To prevent SQL injection in language of choice, go to https://bobby-tables.com
