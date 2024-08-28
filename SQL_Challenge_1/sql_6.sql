SELECT 
	*
FROM customers
WHERE customer_id NOT IN (SELECT customer_id FROM orders
							WHERE EXTRACT(MONTH from order_date) 
							= EXTRACT(MONTH FROM current_date)-1 	
							AND 
							EXTRACT(YEAR FROM order_date) = 
							EXTRACT(YEAR FROM current_date)
							);
