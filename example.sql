-- Create a new table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10, 2)
);

-- Insert some data into the table
INSERT INTO employees (id, name, department, salary) VALUES
(1, 'John Doe', 'Engineering', 75000.00),
(2, 'Jane Smith', 'Marketing', 60000.00),
(3, 'Mike Wilson', 'Sales', 80000.00);

SELECT * FROM employees WHERE salary > 70000;

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

SELECT * FROM employees ORDER BY salary DESC LIMIT 1;

UPDATE employees SET salary = 85000 WHERE name = 'John Doe';

-- Query all records from the employees table
SELECT * FROM employees;
