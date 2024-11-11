--Retreive the names of those customers whose salary is greater than the avg salary..

select * from employees_1


with cte as(
select round(avg(salary),2) as average from employees_1
)
select emp_name,salary,cte.average,department from employees_1,cte
where salary > average
group by 1,2,3,4
order by salary desc


--Retrieve the data of salary in their respective dept. whose salary is less as compare to avg_salary

select e1.emp_name,e1.salary,e1.department
from employees_1 as e1
where salary>(select avg(e2.salary) as average from employees_1 e2
where e1.department=e2.department)
order by salary desc
