
select * from products


--Retrieve the highest selling product of each category as per the quantity_sold
with cte as(
select product_name,category,quantity_sold,row_number() over(partition by category order by quantity_sold desc) as rn from products
group by 1,2,3
)
select * from cte 
where rn=1
