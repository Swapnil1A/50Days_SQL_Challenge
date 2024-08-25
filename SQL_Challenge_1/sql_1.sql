
select * from employees

--Retrieve the second Highest Salary
with cte as(
select name,department,salary,row_number() over(order by salary desc) as rn 
from employees
)
select name,department,salary from cte
where rn=2

