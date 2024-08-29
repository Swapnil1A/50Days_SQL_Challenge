
select * from customers_1
select * from purchases

--Apple DA Interview Questions
--Retrieve the customers who purchases Airplods after purchasing iPhone

select c.customerid,customername,p1.productname,p1.purchasedate,p2.productname,p2.purchasedate from customers_1 c
join purchases as p1 on c.customerid=p1.customerid
join purchases p2 on c.customerid=p2.customerid
where p1.productname='iPhone'
AND
p2.productname='Airpods'
AND
p1.purchasedate < p2.purchasedate
group by 1,2,3,4,5,6
