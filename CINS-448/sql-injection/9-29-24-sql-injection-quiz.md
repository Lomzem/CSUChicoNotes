---
id: 9-29-24-sql-injection-quiz
aliases: []
tags: []
---

1) How long has SQL Injectino been the top vulnerability?
=> at least the last decade

2) The OWASP website:
- ranks top ten database vulnerabilities
- ranks top ten wireless vulnerabilities
- ranks top ten web app vulnerabilities
- ranks top ten server vulnerabilities

=> ranks top ten web app vulnerabilities

3) Which of the following is true about an OR statement?
=> only one side of OR statement needs to be true in order for entire statement to be true

4) In order to list all rows from employee table, what would you enter into text box prompting for employee ID
=> `100' or '1' = '1`

5) How do you string two SQL injection queries together?
=> End first SQL statement with a closing quote (if needed), then a semicolon, then second query, and `--` for comment

6) Which of the following chars would you consider an escape char used for SQL injection
- `'` (single quote)
- `--` (dash dash)
- `;` (semicolon)
- all of the above
=> all of the above

7) In the XKCD comic strip, what did Little Bobby Tables do?
=> Dropped students table

8) Which one of the following is NOT an effective control against SQL injection attack?
- Limiting database permissions
- Parameterization
- Client-side input validation
- Escaping
=> Client-side input validation
