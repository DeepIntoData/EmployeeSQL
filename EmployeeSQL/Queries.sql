-- Queries

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, Salaries.Salary FROM Employees e --salaries --and groupby emp title id in employees to emp number in salaries
INNER JOIN Salaries ON
e.emp_no = Salaries.emp_no;

select * from employees
select * from salaries

-- List first name, last name, and hire date for employees who were hired in 1986.

--DONE
SELECT   e.first_name, e.last_name, e.hire_date FROM Employees e
WHERE e.hire_date >= '1986-01-01' 
	AND e.hire_date <= '1986-12-31';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select * FROM dept_manager
Select * FROM departments
Select * FROM employees

-- List the department of each employee with the following information: employee number, last name, first name, and department name.



-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

--DONE
SELECT   e.first_name, e.last_name, e.sex FROM Employees e
WHERE e.first_name = 'Hercules' 
	AND e.last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT emp_no FROM dept_manager
WHERE dept_no = 'd007' 


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT * FROM employees
WHERE emp_no IN
(
SELECT emp_no FROM dept_manager
WHERE dept_no = 'd007'
	OR dept_no = 'd005'
);
-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

