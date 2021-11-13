--List the following details of each employee: employee number, last name, first name, sex, and salary.
Select employees.emp_number,
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary

From employees
Left Join salaries
On employees.emp_number = salaries.emp_number
Order by emp_number;

-- List first name, last name, and hire date for employees who were hired in 1986.
Select employees.first_name,
employees.last_name, 
employees.hire_date 
From employees
Where hire_date >= '1986-01-01'
And hire_date < '1987-01-01'
Order by last_name;






-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select departments.dept_number,
departments.dept_name,
dept_manager.manager_number,
employees.last_name,
employees.first_name

From departments
Join dept_manager
On departments.dept_number = dept_manager.dept_number
 
Join employees
On dept_manager.manager_number = employees.emp_number

Order by last_name;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
Select dept_emp.emp_number,
employees.last_name,
employees.first_name,
departments.dept_name


From dept_emp
Join employees
On dept_emp.emp_number = employees.emp_number

Join departments
On dept_emp.dept_number = departments.dept_number

Order by last_name;


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select employees.first_name,
employees.last_name,
employees.sex

From employees
Where first_name = 'Hercules'
And last_name like 'B%'

Order by last_name;

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select employees.emp_number,
employees.last_name,
employees.first_name,
departments.dept_name

From employees
Join dept_emp
On dept_emp.emp_number = employees.emp_number

Join departments
On dept_emp.dept_number = departments.dept_number
Where departments.dept_name = 'Sales'
Order by last_name;


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select employees.emp_number,
employees.last_name,
employees.first_name,
departments.dept_name

From employees
Join dept_emp
On dept_emp.emp_number = employees.emp_number

Join departments
On dept_emp.dept_number = departments.dept_number
Where departments.dept_name = 'Sales'
Or departments.dept_name = 'Development'
Order by last_name;

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select employees.last_name,
Count(last_name) As "frequency"
From employees
Group by last_name
Order by
Count (last_name) desc;
