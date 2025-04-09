= Constraints

- Key Constraint (primary key vs unique)
- Referential Integrity Constraint (FK)

$R subset.eq S => R - S = emptyset$

$R = emptyset => R subset.eq emptyset$

= SQL Commands

== Foreign Keys

```sql
CREATE TABLE Studio (
  name CHAR(30) PRIMARY KEY,
  address VARCHAR(255),
  presC INT,
  FOREIGN KEY (presC) REFERENCES MovieExec (cert)
);
```

== Insert

```sql
INSERT INTO
  Movies
VALUES
  (
    "Screaming",
    Date '2023-10-31',
    "Adventure",
    "CSUC"
  );
```

== AS

```sql
SELECT
  title AS name
FROM
  movies;
```

```sql
SELECT
  title AS name,
  length * 0.0167 AS lengthInHours;
```

== LIKE

-`%` is regex `*`
- `_` is regex `.`

== NULL

- Arithmetic on `NULL` results in `NULL`
- Comparison on `NULL` results in `UNKNOWN`

=== Check if `NULL`

```sql
X IS NULL;
```

```sql
X IS NOT NULL;
```

== ORDER BY

```sql
SELECT
  *
FROM
  Movies
WHERE
  YEAR = 1990
ORDER BY
  length,
  title;
```

```sql
SELECT
  *
FROM
  R
ORDER BY
  A + B DESC;
```

= Good Design

- Faithfulness

