-- Step 1: Create Tables
CREATE TABLE departments (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT
);

CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department_id INTEGER,
    salary REAL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE projects (
    project_id INTEGER PRIMARY KEY,
    emp_id INTEGER,
    project_name TEXT,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

-- Step 2: Insert Data
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

INSERT INTO employees VALUES
(1, 'Amit', 1, 40000),
(2, 'Bhavna', 2, 60000),
(3, 'Chirag', 3, 55000),
(4, 'Divya', 2, 70000),
(5, 'Eshan', 1, 45000);

INSERT INTO projects VALUES
(101, 2, 'AI Project'),
(102, 3, 'Budget Report'),
(103, 4, 'Cyber Security');

-- Subquery 1: In SELECT (Scalar Subquery)
-- Show each employee's salary and department average salary
SELECT 
    name,
    salary,
    (SELECT AVG(salary) FROM employees WHERE department_id = e.department_id) AS dept_avg_salary
FROM employees e;

-- Subquery 2: In WHERE with IN
-- Find employees who work in departments with 'Finance' or 'IT'
SELECT name
FROM employees
WHERE department_id IN (
    SELECT department_id FROM departments WHERE department_name IN ('Finance', 'IT')
);

-- Subquery 3: In WHERE with EXISTS (Correlated Subquery)
-- List employees who are assigned to at least one project
SELECT name
FROM employees e
WHERE EXISTS (
    SELECT 1 FROM projects p WHERE p.emp_id = e.emp_id
);

-- Subquery 4: In FROM clause (Derived Table)
-- Show department name and average salary
SELECT d.department_name, dept_avg.avg_salary
FROM (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) AS dept_avg
JOIN departments d ON d.department_id = dept_avg.department_id;
