SELECT d.dept_name as "Department Name", CONCAT(e.first_name, " ", e.last_name) as "Name", s.salary as "Salary"
FROM departments as d
JOIN dept_manager as dm
	ON dm.dept_no = d.dept_no
JOIN employees as e
	ON e.emp_no = dm.emp_no
JOIN salaries as s
	ON s.emp_no = e.emp_no
WHERE dm.to_date > now()
	AND s.to_date > now();

SELECT t.title as "Title", COUNT(*) as "Count"
FROM titles as t
JOIN employees as e
	ON e.emp_no = t.emp_no
JOIN dept_emp as de
	ON de.emp_no = e.emp_no
JOIN departments as d
	ON d.dept_no = de.dept_no
WHERE d.dept_name = "Customer Service"
AND de.to_date LIKE "9999%"
GROUP BY t.title;