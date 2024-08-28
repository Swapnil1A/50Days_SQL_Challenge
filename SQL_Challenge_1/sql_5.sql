
select * from employees_1

--Retrieve the 3rd Highest salary
with cte as(
select name,department,salary,
dense_rank() over(order by salary desc) as rn 
from employees_1
)
select * from cte
where rn=3
