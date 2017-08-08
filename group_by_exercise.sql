-- In your script, use DISTINCT to find the unique titles in the titles table.
SELECT DISTINCT title
FROM titles;

-- Update the previous query to sort the results alphabetically.
SELECT DISTINCT title
FROM titles
ORDER BY title ASC;