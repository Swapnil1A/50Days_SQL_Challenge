
select * from employees_2

--retrieve the names of managers who have at least 5 direct reports..
select e2.name as manager_name from employees_2 as e1
join employees_2 as e2 on e1.managerid=e2.id
group by 1,e1.managerid
having count(e1.managerid) >= 5


