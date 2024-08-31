
select * from employees
select * from employeeuni

--Retrieve the name and uni_id from the employees table. If uni_id is not present for particular id then return the null value.

select e.name,eu.unique_id
from employees as e
left join employeeuni as eu on e.id=eu.id
