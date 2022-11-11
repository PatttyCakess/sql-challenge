-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, last_name, first_name, sex, salaries.salary from employees
join salaries on salaries.emp_no = employees.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
select last_name, first_name, hire_date from employees
where hire_date like '%1986';

-- List the manager of each department with the following information: department number, department name, the manager's employee number,
-- last name, first name.
select dept_manager.dept_no, depts.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name from dept_manager
join depts on depts.dept_no = dept_manager.dept_no
join employees on employees.emp_no = dept_manager.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select employees.emp_no, last_name, first_name, depts.dept_name from employees
join dept_emp on dept_emp.emp_no = employees.emp_no
join depts on depts.dept_no = dept_emp.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex from employees
where first_name = 'Hercules' and last_name like 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select employees.emp_no, last_name, first_name, depts.dept_name from employees
join dept_emp on dept_emp.emp_no = employees.emp_no
join depts on depts.dept_no = dept_emp.dept_no
where depts.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.emp_no, last_name, first_name, depts.dept_name from employees
join dept_emp on dept_emp.emp_no = employees.emp_no
join depts on depts.dept_no = dept_emp.dept_no
where depts.dept_name = 'Sales' or depts.dept_name = 'Development'
order by depts.dept_name;

-- List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
select last_name, count(last_name) as c from employees group by last_name order by c desc;