
select * from orders_2

--retrieve the product_id whose revenue decreases as compared to previous month 

WITH current_month_revenue
AS
(    
    SELECT
        product_id,
        SUM(quantity) as qty_sold,
        SUM(price * quantity) as current_month_rev
    FROM orders_2
    WHERE EXTRACT(MONTH FROM order_date) = EXTRACT(MONTH FROM CURRENT_DATE) 
    GROUP BY product_id
),
prev_month_revenue
AS    
(
    SELECT
        product_id,
        SUM(quantity) as qty_sold,
        SUM(price * quantity) as prev_month_rev
    FROM orders_2
    WHERE EXTRACT(MONTH FROM order_date) = EXTRACT(MONTH FROM CURRENT_DATE)-1 
    GROUP BY product_id
)

SELECT
    cr.product_id,
    cr.qty_sold as cr_month_qty,
     pr.qty_sold as pr_month_qty,
    cr.current_month_rev,
    pr.prev_month_rev
FROM current_month_revenue as cr
JOIN 
prev_month_revenue as pr
ON cr.product_id = pr.product_id
WHERE cr.current_month_rev < pr.prev_month_rev



