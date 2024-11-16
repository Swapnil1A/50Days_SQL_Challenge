select * from house_price

--Retrieve the properties where the  mkt_price of the house exceeds the city's avg mkt_price..

select h1.id,h1.state,h1.city,h1.mkt_price from house_price h1
where mkt_price>(
    select avg(h2.mkt_price) from house_price h2
    where h2.city=h1.city
)