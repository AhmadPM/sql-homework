CREATE TABLE employees (
	emp_no INTEGER NOT NULL,
	birth_date DATE,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	gender VARCHAR(10) NOT NULL,
	hire_date DATE,
	PRIMARY KEY (emp_no));

CREATE TABLE departments (
	dept_no VARCHAR(20) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(50) NOT NULL);


CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(20) NOT NULL,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY(emp_no, dept_no, from_date));


CREATE TABLE dept_manager (
	dept_no VARCHAR(20) NOT NULL,
	emp_no INTEGER NOT NULL,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY(emp_no, dept_no, from_date));

	
CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
	salaries INT,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (emp_no, from_date));
	
CREATE TABLE titles (
	emp_no INTEGER NOT NULL,
	title VARCHAR(40) NOT NULL,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (emp_no, from_date));
	
COPY employees FROM 'C:\temp-data\sql-homework\employees.csv' DELIMITER ',' CSV HEADER;
COPY dept_emp FROM 'C:\temp-data\sql-homework\dept_emp.csv' DELIMITER ',' CSV HEADER;
COPY dept_manager FROM 'C:\temp-data\sql-homework\dept_manager.csv' DELIMITER ',' CSV HEADER;
COPY salaries FROM 'C:\temp-data\sql-homework\salaries.csv' DELIMITER ',' CSV HEADER;
COPY titles FROM 'C:\temp-data\sql-homework\titles.csv' DELIMITER ',' CSV HEADER;
COPY departments FROM 'C:\temp-data\sql-homework\departments.csv' DELIMITER ',' CSV HEADER; 


SELECT *
FROM departments;
