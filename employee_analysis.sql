-- Employee Data Analysis Using SQL and SQLite
-- Dataset: 10 fictional employees
-- Run this script in SQLite.

CREATE TABLE IF NOT EXISTS employees (
    emp_id INTEGER PRIMARY KEY,
    emp_name TEXT NOT NULL,
    department TEXT NOT NULL,
    salary INTEGER NOT NULL CHECK (salary >= 0),
    city TEXT NOT NULL
);

-- Insert the sample data only if an employee ID does not already exist.
INSERT OR IGNORE INTO employees (emp_id, emp_name, department, salary, city)
VALUES
    (1, 'Amit',   'IT',      45000, 'Surat'),
    (2, 'Priya',  'HR',      32000, 'Mumbai'),
    (3, 'Rahul',  'IT',      55000, 'Ahmedabad'),
    (4, 'Neha',   'Sales',   30000, 'Surat'),
    (5, 'Vikram', 'HR',      35000, 'Vadodara'),
    (6, 'Sneha',  'IT',      60000, 'Mumbai'),
    (7, 'Arjun',  'Sales',   40000, 'Surat'),
    (8, 'Pooja',  'Finance', 42000, 'Ahmedabad'),
    (9, 'Karan',  'Finance', 48000, 'Mumbai'),
    (10,'Meera',  'Sales',   38000, 'Vadodara');

-- 1. Preview all employee records
SELECT * FROM employees ORDER BY emp_id;

-- 2. Count employees in each department
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department
ORDER BY department;

-- 3. Calculate total salary by department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC;

-- 4. Find the highest salary in each department
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department
ORDER BY department;

-- 5. Find the lowest salary in each department
SELECT department, MIN(salary) AS lowest_salary
FROM employees
GROUP BY department
ORDER BY department;

-- 6. Find average salary by department
SELECT department, ROUND(AVG(salary), 2) AS average_salary
FROM employees
GROUP BY department
ORDER BY department;

-- 7. Show departments with average salary above 35000
SELECT department, ROUND(AVG(salary), 2) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 35000
ORDER BY average_salary DESC;

-- 8. Show departments with more than 2 employees
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 2
ORDER BY total_employees DESC, department;

-- 9. Show departments ranked by total salary (highest first)
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC;
