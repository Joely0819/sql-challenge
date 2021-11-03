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

--create table for employees and dept numbers
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