--TABLE SCHEMATA 

DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
	dept_no varchar(4) NOT NULL,
	dept_name varchar NOT NULL
);

CREATE TABLE dept_emp (
	emp_no varchar NOT NULL,
	dept_no varchar(4) NOT NULL
);

CREATE TABLE dept_manager (
	dept_no varchar(4) NOT NULL,
	emp_no varchar(6) NOT NULL	
);

CREATE TABLE employees (
	emp_no int NOT NULL, 
	emp_title_id varchar(5) NOT NULL,
	birth_date date NOT NULL,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	sex varchar(1) NOT NULL,
	hire_date date NOT NULL
);

CREATE TABLE salaries (
	emp_no int NOT NULL,
	salary int NOT NULL
);

CREATE TABLE titles (
	title_id varchar(5) NOT NULL,
	title varchar NOT NULL
);
