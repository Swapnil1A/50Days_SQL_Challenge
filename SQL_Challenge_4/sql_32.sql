select * from user_flags

--retrieve the unique flag holders for each video_id
select video_id,count(distinct(user_firstname,user_lastname)) as cnt_users from user_flags
where flag_id is not null
group by 1
order by 2 desc
