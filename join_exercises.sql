use employees;

select departments.dept_name as 'Department Name', CONCAT(employees.first_name,' ',employees.last_name) as 'Department Manager'
from employees
join dept_manager on employees.emp_no = dept_manager.emp_no
join departments on dept_manager.dept_no = departments.dept_no
where dept_manager.to_date like '9999%'
order by `Department Name`;

# Number 3

select departments.dept_name as 'Department Name',CONCAT(employees.first_name,' ',employees.last_name) as 'Manager Name'
from employees
join dept_manager
on employees.emp_no = dept_manager.emp_no
join departments
on dept_manager.dept_no = departments.dept_no
where dept_manager.to_date like '9999%' and employees.gender = 'f'
order by dept_name;

# Number 4

select titles.title, count(title)
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
join titles on employees.emp_no = titles.emp_no
where departments.dept_no = 'd009' and titles.to_date like '9999%' and dept_emp.to_date like '9999%'
group by titles.title;

# Number 5

select departments.dept_name as 'Department Name',CONCAT(employees.first_name,' ',employees.last_name) as 'Name',salary
from employees
join dept_manager on employees.emp_no = dept_manager.emp_no
join departments on dept_manager.dept_no = departments.dept_no
join salaries on employees.emp_no = salaries.emp_no
where dept_manager.to_date like '999%' and salaries.to_date like '9999%'
order by `Department Name`;

# Bonus
# select CONCAT(employees.first_name,' ',employees.last_name) as 'Employee Name',
#        departments.dept_name,

select *
from employees e
join dept_emp on e.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
# join dept_manager dm on e.emp_no = dm.emp_no
# join employees managers on managers.emp_no = dm.emp_no;
where dept_emp.to_date > now():


