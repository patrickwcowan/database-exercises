use join_test_db;

select * from join_test_db.users
order by role_id;

select *
from users
left JOIN roles on roles.id = users.role_id;

select roles.name, count(*)
from users
JOIN roles on roles.id = users.role_id
group by roles.name
order by count(*) DESC;

