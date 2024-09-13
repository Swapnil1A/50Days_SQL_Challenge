select * from bank_transactions

--retrieve the first and last transaction of the customer in the bank..
with cte1 as(
select *,dense_rank() over(partition by customer_id order by transaction_date asc) as rn from bank_transactions
),
cte2 as(
    select customer_id,transaction_amount,transaction_date from cte1
    where rn =(select min(rn) from cte1)
),-- least date transaction
cte3 as(
    select customer_id,transaction_amount,transaction_date from cte1
    where rn=(select max(rn) from cte1)
)-- max date transaction

select cte2.customer_id,
cte2.transaction_amount as first_trans_amt,
cte2.transaction_date as first_trans_dt,
cte3.transaction_amount as last_trans_amt,
cte3.transaction_date as last_trans_dt from cte2
join cte3 on cte2.customer_id=cte3.customer_id