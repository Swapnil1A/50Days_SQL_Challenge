select * from employees

--Retriev the employees name who has salary more than their managers

select e.employee_id,e.employee_name,e.department,e.salary,e.manager_id,
m.employee_name as manager_name,m.salary as manager_salary from employees as e
join employees as m 
on e.manager_id=m.employee_id
where e.salary > m.salary