
select * from product
select * from sales

--Retrieve all products that havent been sold in the last six months
select p.*,s.sale_date
from product as p
left join sales as s on
p.product_id=s.product_id
where sale_date is null or
s.sale_date < current_date - interval '6 month'






select current_date - interval '6 month'