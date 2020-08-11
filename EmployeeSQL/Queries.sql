-- QUERIES SCHEMATA

-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.Salary FROM public."Employees" e --salaries --and groupby emp title id in employees to emp number in salaries
LEFT JOIN public."Salaries" s ON
e.emp_no = s.emp_no
ORDER BY emp_no ASC;

-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT   e.first_name, e.last_name, e.hire_date FROM public."Employees" e
WHERE e.hire_date >= '1986-01-01' 
AND e.hire_date <= '1986-12-31'
ORDER BY first_name ASC;

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM public."Dept_Manager" dm 
INNER JOIN public."Departments" d
ON (dm.dept_no = d.dept_no) 
INNER JOIN public."Employees" e
ON (dm.emp_no = e.emp_no)
ORDER BY emp_no ASC;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM public."Employees" e
INNER JOIN public."Dept_Employee" de
ON (e.emp_no = de.emp_no)
INNER JOIN public."Departments" d
ON (de.dept_no = d.dept_no)
ORDER BY emp_no ASC;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT e.first_name, e.last_name, e.sex 
FROM public."Employees" e
WHERE e.first_name = 'Hercules' 
AND e.last_name LIKE 'B%'
ORDER BY last_name ASC;

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM public."Employees" e
INNER JOIN public."Dept_Employee" de
ON (e.emp_no = de.emp_no)
INNER JOIN public."Departments" d
ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN ('Development')
ORDER BY emp_no ASC;

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM public."Employees" e
INNER JOIN public."Dept_Employee" de
ON (e.emp_no = de.emp_no) 
INNER JOIN public."Departments" d
ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY emp_no ASC;

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) 
FROM public."Employees" e
GROUP BY last_name
ORDER BY COUNT(last_name) DESC
