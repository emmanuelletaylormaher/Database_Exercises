-- Employees with first names 'Irena', 'Vidya', or 'Maya' 
-- — 709 rows (Hint: Use IN).

-- SELECT *
-- FROM employees
-- WHERE first_name in ("Irena", "Vidya", "Maya");

-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
-- Now add a condition to find everybody with those names who is also male — 441 rows.
SELECT *
FROM employees
WHERE gender = "M"
	AND (
		first_name = "Irena"
	OR first_name = "Vidya"
	OR first_name = "Maya"
	);


-- Employees whose last name starts with 'E' — 7,330 rows.

-- SELECT *
-- FROM employees
-- WHERE last_name LIKE "E%";

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.

SELECT *
FROM employees
WHERE last_name LIKE "E%"
OR last_name LIKE "%e";

-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.

SELECT *
FROM employees
WHERE last_name LIKE "E%"
AND last_name LIKE "%e";


-- Employees hired in the 90s — 135,214 rows.
-- SELECT *
-- FROM employees
-- WHERE hire_date BETWEEN "1990-01-01" AND "1999-12-31";

-- Employees born on Christmas — 842 rows.
-- SELECT *
-- FROM employees
-- WHERE birth_date LIKE "%-12-25";


-- Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT *
FROM employees
WHERE hire_date BETWEEN "1990-01-01" AND "1999-12-31"
AND birth_date LIKE "%-12-25";

-- Employees with a 'q' in their last name — 1,873 rows
-- SELECT *
-- FROM employees
-- WHERE last_name like "%q%";

-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT *
FROM employees
WHERE last_name like "%q%"
AND last_name NOT LIKE "%qu%";