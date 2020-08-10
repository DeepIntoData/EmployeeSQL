Departments
-
dept_no PK varchar
dept_name varchar

Department_Employee
-
emp_no varchar FK >- employees.emp_no
dept_no varchar FK -  departments.dept_no

Dept_Manager
-
dept_no varchar FK >- departments.dept_no
emp_no varchar FK - employees.emp_no

Employees
-
emp_no PK int
emp_title_id varchar FK >- titles.title_id
birth_date date
first_name varchar 
last_name varchar
sex varchar
hire_date date 

Salaries
-
emp_no int FK - employees.emp_no
salary int

Titles
-
title_id PK varchar
title varchar