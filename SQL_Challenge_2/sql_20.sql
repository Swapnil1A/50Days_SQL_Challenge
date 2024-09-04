
select * from products


--Retrieve the Product_name who has only two suppliers i.e Supplier A and Supplier B

select product_name,supplier_name from products
where supplier_name IN ('Supplier A','Supplier B')
group by 1,2

select product_id,product_name,count(supplier_name) as cnt_sellers
from products
where supplier_name in('Supplier A','Supplier B')
group by 1,2
having count(distinct supplier_name) = 2