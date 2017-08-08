-- In your script, use DISTINCT to find the unique titles in the titles table.
SELECT DISTINCT title
FROM titles;

-- Update the previous query to sort the results alphabetically.
SELECT DISTINCT title
FROM titles
GROUP BY title ASC;

-- Find your query for employees whose last names start and end with 'E'.
-- Update the query find just the unique last names that start and end with 'E' using GROUP BY.
SELECT DISTINCT *
FROM employees
WHERE last_name LIKE "E%e"
GROUP BY last_name;