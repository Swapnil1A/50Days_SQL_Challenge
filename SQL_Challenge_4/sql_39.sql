select * from amazon_products
select * from return_records


--Retrieve the return percentage of each category 
select count(*) from return_records;

select ap.category, round(count(rr.*)::numeric/(select count(*) from return_records)::numeric * 100, 2) as percentage_returns
from amazon_products ap
join return_records rr on ap.product_id=rr.product_id
group by ap.category
order by 2 desc

--Conclusion : The Max. percentage of returns were obtained for the category of Headphones, Monitors and laptops with 17.14%