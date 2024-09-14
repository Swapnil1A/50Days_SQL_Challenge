select * from employees

--Retrieve the emp_name along with the manager_name. If the manger_name is null replace with the no boss..
select e1.emp_name as employee_name,coalesce(e2.emp_name,'No Boss') as manager_name 
from employees e1
left join employees as e2 on e1.manager_id=e2.emp_no
group by 1,2