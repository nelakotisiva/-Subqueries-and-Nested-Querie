Learn how to use subqueries (also called nested queries) inside SQL statements to perform complex data retrieval by embedding one query within another.

📌 Where Subqueries Are Used:
In SELECT clause

Used to display calculated values such as averages, totals, or any derived value.

Example: Show each employee’s salary along with the average salary of their department.

In WHERE clause

Used to filter data based on conditions returned by another query.

Common operators used: IN, =, EXISTS, <, >.

Example: Find employees who belong to departments named 'IT' or 'Finance'.

In FROM clause

Used to treat the result of a subquery as a temporary table (also called a derived table).

This virtual table can be joined or filtered further in the main query.

🧠 Types of Subqueries:
Scalar Subquery

Returns a single value.

Often used in SELECT or WHERE clause.

Example: Compare an employee's salary to the average salary.

Correlated Subquery

A subquery that depends on the outer query for its values.

It is re-executed for every row processed by the outer query.

Often used with EXISTS.

Table Subquery (Derived Table)

Returns multiple rows and columns.

Typically used in the FROM clause as a temporary table.

✅ Operators Commonly Used:
IN – Checks if a value exists within a list returned by a subquery.

EXISTS – Returns true if the subquery returns at least one row.

= / < / > – Compares a value against a single result from a scalar subquery.

📈 Outcome:
You will gain advanced SQL query logic skills.

You'll be able to write complex queries that combine and filter data intelligently using subqueries.
