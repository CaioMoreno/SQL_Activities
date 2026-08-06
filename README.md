| **Category**             | **Syntax / Command**                                                                               | **Purpose / Notes**              |
| ------------------------ | -------------------------------------------------------------------------------------------------- | -------------------------------- |
| **SELECT**               | `SELECT * FROM table;`                                                                             | Select all columns               |
|                          | `SELECT col1, col2 FROM table;`                                                                    | Select specific columns          |
|                          | `SELECT DISTINCT column FROM table;`                                                               | Remove duplicates                |
|                          | `SELECT column AS alias FROM table;`                                                               | Rename a column                  |
| **FROM**                 | `FROM table`                                                                                       | Specify the table                |
| **WHERE**                | `WHERE age > 18`                                                                                   | Filter rows                      |
|                          | `WHERE age BETWEEN 18 AND 30`                                                                      | Range                            |
|                          | `WHERE country IN ('US','UK')`                                                                     | Multiple values                  |
|                          | `WHERE name LIKE 'A%'`                                                                             | Pattern matching                 |
|                          | `WHERE phone IS NULL`                                                                              | NULL values                      |
|                          | `WHERE phone IS NOT NULL`                                                                          | Not NULL                         |
| **Comparison Operators** | `=`                                                                                                | Equal                            |
|                          | `!=` or `<>`                                                                                       | Not equal                        |
|                          | `>`                                                                                                | Greater than                     |
|                          | `<`                                                                                                | Less than                        |
|                          | `>=`                                                                                               | Greater or equal                 |
|                          | `<=`                                                                                               | Less or equal                    |
| **Logical Operators**    | `AND`                                                                                              | Both conditions true             |
|                          | `OR`                                                                                               | Either condition true            |
|                          | `NOT`                                                                                              | Negates condition                |
| **Wildcards**            | `%`                                                                                                | Any number of characters         |
|                          | `_`                                                                                                | Exactly one character            |
| **ORDER BY**             | `ORDER BY column ASC`                                                                              | Ascending sort                   |
|                          | `ORDER BY column DESC`                                                                             | Descending sort                  |
| **LIMIT**                | `LIMIT 10 -> OFFSET 3`                                                                             | Return first rows->start in pos  |
| **Aggregate Functions**  | `COUNT(*)`                                                                                         | Count rows                       |
|                          | `SUM(column)`                                                                                      | Sum values                       |
|                          | `AVG(column)`                                                                                      | Average                          |
|                          | `MIN(column)`                                                                                      | Minimum                          |
|                          | `MAX(column)`                                                                                      | Maximum                          |
| **GROUP BY**             | `GROUP BY department`                                                                              | Group rows                       |
| **HAVING**               | `HAVING COUNT(*) > 5`                                                                              | Filter groups                    |
| **INSERT**               | `INSERT INTO table(col1,col2) VALUES(val1,val2);`                                                  | Insert one row                   |
|                          | `INSERT INTO table VALUES (...), (...);`                                                           | Insert multiple rows             |
| **UPDATE**               | `UPDATE table SET column=value WHERE condition;`                                                   | Update rows                      |
| **DELETE**               | `DELETE FROM table WHERE condition;`                                                               | Delete rows                      |
| **CREATE TABLE**         | `CREATE TABLE table (...);`                                                                        | Create table                     |
| **ALTER TABLE**          | `ADD COLUMN column TYPE;`                                                                          | Add column                       |
|                          | `RENAME COLUMN old TO new;`                                                                        | Rename column                    |
|                          | `RENAME TO new_table;`                                                                             | Rename table                     |
| **DROP TABLE**           | `DROP TABLE table;`                                                                                | Delete table                     |
| **Constraints**          | `PRIMARY KEY`                                                                                      | Unique identifier                |
|                          | `FOREIGN KEY`                                                                                      | References another table         |
|                          | `UNIQUE`                                                                                           | Prevent duplicates               |
|                          | `NOT NULL`                                                                                         | Value required                   |
|                          | `DEFAULT value`                                                                                    | Default value                    |
|                          | `CHECK(condition)`                                                                                 | Validation rule                  |
| **JOIN**                 | `INNER JOIN`                                                                                       | Matching rows only               |
|                          | `LEFT JOIN`                                                                                        | All left rows + matches          |
|                          | `RIGHT JOIN`                                                                                       | All right rows *(not in SQLite)* |
|                          | `FULL JOIN`                                                                                        | All rows *(not in SQLite)*       |
| **Aliases**              | `SELECT name AS employee`                                                                          | Column alias                     |
|                          | `FROM employees e`                                                                                 | Table alias                      |
| **Subquery**             | `SELECT ... WHERE col > (SELECT AVG(col) FROM table)`                                              | Nested query                     |
| **SQLite Data Types**    | `INTEGER`                                                                                          | Whole number                     |
|                          | `REAL`                                                                                             | Decimal                          |
|                          | `TEXT`                                                                                             | String                           |
|                          | `BLOB`                                                                                             | Binary data                      |
|                          | `NULL`                                                                                             | Missing value                    |
| **Useful Functions**     | `ROUND(col,2)`                                                                                     | Round decimals                   |
|                          | `LENGTH(col)`                                                                                      | String length                    |
|                          | `LOWER(col)`                                                                                       | Lowercase                        |
|                          | `UPPER(col)`                                                                                       | Uppercase                        |
|                          | `SUBSTR(col,start,length)`                                                                         | Substring                        |
|                          | `COALESCE(col,'N/A')`                                                                              | Replace NULL                     |
| **Execution Order**      | `FROM → WHERE → GROUP BY → HAVING → SELECT → DISTINCT → ORDER BY → LIMIT`                          | SQL execution order              |
| **Query Template**       | `SELECT cols FROM table WHERE condition GROUP BY col HAVING condition ORDER BY col DESC LIMIT 10;` | General query structure          |
