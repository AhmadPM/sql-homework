
--list the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salaries
FROM employees e
JOIN salaries s 
ON e.emp_no = s.emp_no;

--List employees who were hired in 1986.

SELECT *
FROM employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

/*List the manager of each department with the following information: department number, department name, 
the manager's employee number, last name, first name, and start and end employment dates.*/

SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM departments d
JOIN dept_manager dm
ON d.dept_no = dm.dept_no 
JOIN employees e
ON dm.emp_no = e.emp_no;

/*List the department of each employee with the following information: employee number, 
last name, first name, and department name.*/

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no;


