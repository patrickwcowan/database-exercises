SELECT * from employees where first_name IN ('Irena','Vidya','Maya');

SELECT * from employees where last_name LIKE 'e%';

select * from employees where hire_date LIKE '199%';

select * from employees where birth_date like '%-12-25'

select * from employees where last_name like '%q%';

SELECT *
from employees
where first_name = 'Irena'
 or first_name = 'Vidya'
 or first_name = 'Maya';

SELECT *
from employees
where gender = 'm'
 and (first_name = 'Irena'
 or first_name = 'Vidya'
 or first_name = 'Maya');

select * from employees where last_name like 'e%' or last_name like '%e';

select * from employees where last_name like 'e%' and last_name like '%e';

select * from employees where hire_date like '199%' and birth_date like '%-12-25';

select * from employees where last_name like '%q%' and last_name not like '%qu%';