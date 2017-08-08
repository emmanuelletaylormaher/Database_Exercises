-- Modify your first query to order by first name. 
-- The first result should be Irena Majewski and the last result should be Vidya Schaft.
SELECT *
FROM employees
WHERE gender = "M"
	AND (
		first_name = "Irena"
	OR first_name = "Vidya"
	OR first_name = "Maya"
	)
ORDER BY first_name;

-- Update the query to order by first name and then last name. 
-- The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT *
FROM employees
WHERE gender = "M"
	AND (
		first_name = "Irena"
	OR first_name = "Vidya"
	OR first_name = "Maya"
	)
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE last_name LIKE "E%"
OR last_name LIKE "%e";

SELECT *
FROM employees
WHERE last_name LIKE "E%"
AND last_name LIKE "%e";

SELECT *
FROM employees
WHERE hire_date BETWEEN "1990-01-01" AND "1999-12-31"
AND birth_date LIKE "%-12-25";

SELECT *
FROM employees
WHERE last_name like "%q%"
AND last_name NOT LIKE "%qu%";