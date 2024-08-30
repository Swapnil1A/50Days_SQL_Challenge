
select * from employees_3


select *,
case 
 when salary> '70000' then 'High'
 when salary between '50000' and '70000' then 'Medium'
 else 'Low'
 end as Salary_Category
 from employees_3


