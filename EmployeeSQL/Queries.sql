-- Queries
Select * FROM dept_manager
Select * FROM departments
Select * FROM employees 
select * from titles
select * from salaries
select * from dept_emp

-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.Salary FROM Employees e --salaries --and groupby emp title id in employees to emp number in salaries
LEFT JOIN Salaries s ON
e.emp_no = s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.

--DONE-----------------------
SELECT   e.first_name, e.last_name, e.hire_date FROM Employees e
WHERE e.hire_date >= '1986-01-01' 
	AND e.hire_date <= '1986-12-31';
--DONE-----------------------

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager 
INNER JOIN departments 
ON (dept_manager.dept_no = departments.dept_no) 
INNER JOIN employees
ON (dept_manager.emp_no = employees.emp_no)

-- List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
INNER JOIN deparments
ON (dept_emp.dept_no = departments.dept_no);

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

--DONE-----------------------
SELECT e.first_name, e.last_name, e.sex FROM Employees e
WHERE e.first_name = 'Hercules' 
	AND e.last_name LIKE 'B%';
--DONE-----------------------

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM employees
INNER JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no) 
INNER JOIN departments
ON (dept_emp.dept_no = departments.dept_no)
WHERE departments.dept_name IN ('Sales', 'Development');

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) 
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC
