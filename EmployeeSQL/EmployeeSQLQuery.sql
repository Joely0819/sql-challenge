--List the following details of each employee: employee number, last name, first name, sex, and salary.
Select employees.emp_number,
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary

From employees
Left Join salaries
On employees.emp_number = salaries.emp_number
order by emp_number;

-- List first name, last name, and hire date for employees who were hired in 1986.
Select employees.first_name,
employees.last_name,
employees.hire_date
From employees
order by last_name


-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


-- List the department of each employee with the following information: employee number, last name, first name, and department name.


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.