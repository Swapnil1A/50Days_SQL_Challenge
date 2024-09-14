select * from students

--Retrieve the min and max marks from the students table
--Approach 1 :
select * from students
where marks=(select min(marks) from students) or
marks=(select max(marks) from students)

--Approach 2 :
with cte as (
    select min(marks) as min_marks,
    max(marks) as max_marks from students
)
select s.* from students s
join cte on s.marks=cte.min_marks or
s.marks=cte.max_marks