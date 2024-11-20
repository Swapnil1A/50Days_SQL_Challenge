Select * from orders_2
Select * from customers_1

--Retrieve the Customers details along with their Order Details.

select c.*,sum(o.totalamount) as total from customers_1 c 
join orders_2 o on o.customerid=c.customerid
group by 1
order by 2 desc
