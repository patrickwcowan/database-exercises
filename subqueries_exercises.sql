use employees;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
)
LIMIT 10;

# Question 1

# select hire_date from employees
# where emp_no = 101010;

select * from employees
where hire_date in (
  select hire_date
  from employees where emp_no = 101010
  );

# Question 2

# select emp_no from employees where first_name = 'aamod';

select titles.title, count(title) as 'Total' from titles
where emp_no IN (
  SELECT emp_no from employees where first_name = 'aamod'
  )
group by title
order by Total DESC ;


# Question 3

# select emp_no from dept_manager where to_date > now();

select first_name,last_name from employees
where emp_no IN (
  select emp_no from dept_manager
  where to_date > now()
  and gender = 'f');

#BONUS

select dept_name from departments;

# select * from employees
# where emp_no IN (
#   select emp_no from dept_manager
#   )

select dept_no from dept_manager;

select * from departments
where dept_no IN (select dept_no
                  from dept_manager join employees e on dept_manager.emp_no = e.emp_no)


select users.email from ad_content
join users on users.id = ad_content.user_id;

select ad_content.ad_id, cate_content.cate_name  from cate_content_id
join ad_content on ad_content.ad_id = cate_content_id.ad_id
join categories on categories.cate_id = cate_content_id.cate_id;

select cate_content.cate_name, ad_content.ad_id  from cate_content_id
join ad_content on ad_content.ad_id = cate_content_id.ad_id
join categories on categories.cate_id = cate_content_id.cate_id;

Select ad_content. FROM ad_content
join user on users.id = ad_content.user_id


