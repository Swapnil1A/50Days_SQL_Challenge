
select * from employees_1




--Retrieve the employees detail along with their manager name based on the manager_id
select e1.emp_id,e1.name,e1.manager_id,
e2.name as manager_name
from employees_1 as e1
cross join employees_1 as e2 
where e1.manager_id=e2.manager_id
