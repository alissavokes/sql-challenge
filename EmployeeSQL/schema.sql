DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;

CREATE TABLE departments (
	dept_no varchar(4) PRIMARY KEY,
	dept_name text NOT NULL
);

CREATE TABLE titles (
	title_id varchar(5) PRIMARY KEY,
	title text NOT NULL
);

CREATE TABLE employees (
	emp_no integer PRIMARY KEY,
	emp_title_id varchar(5),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date date,
	first_name text,
	last_name text,
	sex text,
	hire_date date
);

CREATE TABLE dept_emp (
	emp_no integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no varchar(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no varchar(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
	emp_no integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary integer
);

SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;
SELECT * FROM titles;