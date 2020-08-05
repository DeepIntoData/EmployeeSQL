-- Queries

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT emp_no, last_name, first_name, sex FROM employees --salaries --and groupby emp title id in employees to emp number in salaries
WHERE emp_no in (
	SELECT emp_no
	FROM salaries 
)

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT s.salary FROM salaries s
INNER JOIN employees e ON e.emp_no = s.emp_no
WHERE emp_no in (
	SELECT emp_no
	FROM employees
)

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.



-- List the department of each employee with the following information: employee number, last name, first name, and department name.



-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."



-- List all employees in the Sales department, including their employee number, last name, first name, and department name.



-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.



-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

