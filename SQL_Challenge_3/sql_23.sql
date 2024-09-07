select * from amazon_transactions



--Write a query that will identify returning active users.
--A returning active user is a user that made a second purchase within 7 days of their first purchase.

select distinct(a1.user_id) as active_users from amazon_transactions a1
join amazon_transactions a2 on a1.user_id=a2.user_id
where a2.purchase_date < a1.purchase_date and 
a2.purchase_date-a1.purchase_date <= 7
order by 1