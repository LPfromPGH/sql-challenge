SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
s.emp_no=e.emp_no;

SELECT first_name, last_name, hire_date
FROM employees WHERE hire_date
BETWEEN '1986-01-01' AND '1986-12-31';

SELECT e.emp_no, e.first_name, e.last_name, de.dept_no, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no=de.emp_no
INNER JOIN departments AS d ON
de.dept_no=d.dept_no
WHERE e.emp_title_id = 'm0001';

SELECT e.emp_no, e.first_name, e.last_name, de.dept_no, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no=de.emp_no
INNER JOIN departments AS d ON
de.dept_no=d.dept_no;

SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';


SELECT e.emp_no, e.first_name, e.last_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no=de.emp_no
WHERE de.dept_no = 'd007';

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no=de.emp_no
INNER JOIN departments AS d ON
de.dept_no=d.dept_no
WHERE de.dept_no IN ('d005', 'd007');

SELECT e.last_name, COUNT (*)
FROM employees AS e
GROUP BY e.last_name
ORDER BY
COUNT(e.last_name) DESC;