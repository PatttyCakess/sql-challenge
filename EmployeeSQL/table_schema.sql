-- create Titles table
create table titles
(title_id varchar(10) NOT NULL Primary Key,
title varchar(50) NOT NULL);

-- create Employees table
create table employees
(emp_no int NOT NULL Primary Key,
emp_title_id varchar(10) NOT NULL,
Foreign Key (emp_title_id) references Titles(title_id),
birth_date varchar(10) NOT NULL,
first_name varchar(30) NOT NULL,
last_name varchar(30) NOT NULL,
sex varchar(1) NOT NULL,
hire_date varchar(10) NOT NULL
);

-- create Departments table
create table depts
(dept_no varchar(10) NOT NULL Primary Key,
dept_name varchar(30) NOT NULL);

-- create Salaries table
create table salaries
(emp_no int Primary Key NOT NULL,
Foreign Key (emp_no) references Employees(emp_no),
salary int NOT NULL);

-- create Department Employees table
create table dept_emp
(emp_no int NOT NULL,
Foreign Key (emp_no) references Employees(emp_no),
dept_no varchar(10) NOT NULL,
Foreign Key (dept_no) references Depts(dept_no),
Primary Key (emp_no,dept_no));

-- create Department Managers table
create table dept_manager
(emp_no int Primary Key NOT NULL,
Foreign Key (emp_no) references Employees(emp_no),
dept_no varchar(10) NOT NULL,
Foreign Key (dept_no) references Depts(dept_no)
);





