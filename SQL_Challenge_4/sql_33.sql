select * from fb_active_users

--Retrieve the active_users from fb in usa country..
select country,count(user_id)::numeric,sum(
case
when status='open' then 1
else 0
end) as cnt_active_users,
round(sum(
case
when status='open' then 1
else 0
end)/(count(user_id)::numeric)*100,2) as share_active_users
from fb_active_users
where country='USA'
group by 1
