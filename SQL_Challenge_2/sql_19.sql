
select * from employees_3

--Retrieve the salary of employees having salary greater than the avg_salary
select * from employees_3
where salary>(
    select avg(salary) from employees_3
)