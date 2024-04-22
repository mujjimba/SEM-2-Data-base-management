-- Drop the table if it exists
DROP TABLE IF EXISTS employees, departments;

-- Create the employees table
CREATE TABLE employees(
    id INT PRIMARY KEY,
    name VARCHAR(255),
    salary DECIMAL(10,2),
    department_id INT,
    hire_date DATE
);

-- Create the departments table
CREATE TABLE departments(
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

-- Insert values into the departments table
INSERT INTO departments (id, name) VALUES
(1, 'Engineering'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'HR');



-- Insert values into the employees table
INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES
(1, 'Alice', 60000.00, 1, '2020-01-01'),
(2, 'Bob', 70000.00, 1, '2020-01-15'),
(3, 'charlie', 80000.00, 2, '2020-02-01'),
(4, 'Dave', 90000.00, 3, '2020-02-15'),
(5, 'Eve', 100000.00, 4, '2020-03-01');


 
SELECT e.name, e.salary, e.department_id
FROM employees e
JOIN (
    SELECT department_id, MAX(salary) AS max_salary
    FROM employees
    GROUP BY department_id
) max_salaries
ON e.department_id = max_salaries.department_id
AND e.salary = max_salaries.max_salary;


SELECT e.name, e.hire_date, e.department_id
FROM employees e
JOIN (
    SELECT department_id, MIN(hire_date) AS oldest_hire_date
    FROM employees
    GROUP BY department_id
) oldest_hires
ON e.department_id = oldest_hires.department_id
AND e.hire_date = oldest_hires.oldest_hire_date;



SELECT e.name, e.salary, e.department_id
FROM employees e
JOIN (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) avg_salaries
ON e.department_id = avg_salaries.department_id
WHERE e.salary > avg_salaries.avg_salary;


