create table departments (
	
	dept_number varchar,
	dept_name varchar

);
select * from departments;

--import departments CSV

COPY departments
FROM 'C:\Users\joely\Desktop\CSV_SQL\departments.csv'
DELIMITER ',' 
CSV HEADER;

--create table for department and employees
create table dept_emp (
	
	emp_number varchar,
	dept_number varchar

);
select * from dept_emp;

--import departments CSV

COPY dept_emp
FROM 'C:\Users\joely\Desktop\CSV_SQL\dept_emp.csv'
DELIMITER ',' 
CSV HEADER;

--create table for department and managers
create table dept_manager (
	
	dept_number varchar,
	manager_number varchar

);
select * from dept_manager;

--import managers CSV

COPY dept_manager
FROM 'C:\Users\joely\Desktop\CSV_SQL\dept_manager.csv'
DELIMITER ',' 
CSV HEADER;

--create table for employees
create table employees (
	
	emp_number varchar,
	emp_title_id varchar,
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date varchar
	

);
select * from employees;

--import employees CSV

COPY employees
FROM 'C:\Users\joely\Desktop\CSV_SQL\employees.csv'
DELIMITER ',' 
CSV HEADER;
--show import
select * from employees;

--create table for salaries
create table salaries (
	
	emp_number varchar,
	salary int
	

);
select * from salaries;

--import employees CSV

COPY salaries
FROM 'C:\Users\joely\Desktop\CSV_SQL\salaries.csv'
DELIMITER ',' 
CSV HEADER;
--show import
select * from salaries;

--create table for titles
create table titles (
	
	title_id varchar,
	title varchar
	

);
select * from titles;

--import employees CSV

COPY titles
FROM 'C:\Users\joely\Desktop\CSV_SQL\titles.csv'
DELIMITER ',' 
CSV HEADER;
--show titles import
select * from titles;
