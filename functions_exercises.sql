-- Update your query for 'Irena', 'Vidya', or 'Maya'. 
-- Use count(*) and GROUP BY to find the number of employees for each gender 
-- with those names.

SELECT COUNT(*) as "employees by gender", gender
FROM employees
WHERE 
	 (
		first_name = "Irena"
	OR first_name = "Vidya"
	OR first_name = "Maya"
	)
GROUP BY gender;

-- Update your queries for employees whose names start and end with 'E'. 
-- Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, " ", last_name) as "full names"
FROM employees
WHERE last_name LIKE "E%e"
ORDER BY emp_no;

-- For your query of employees born on Christmas and hired in the 90s, 
-- use datediff() to find how many days they have been working at the company.
SELECT datediff(CURDATE(), hire_date) as "Days working", CONCAT(last_name, ", ", first_name) as "Employee Name"
FROM employees
WHERE hire_date BETWEEN "1990-01-01" AND "1999-12-31"
AND birth_date LIKE "%-12-25"
ORDER BY last_name;