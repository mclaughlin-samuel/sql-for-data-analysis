SELECT
CASE WHEN amount <= 2 THEN 'up to 2'
     WHEN amount <= 5 THEN '2 - 5'
     ELSE '5+' END AS amount_bin,
CASE WHEN amount <= 2 THEN 'small'
     WHEN amount <= 5 THEN 'medium'
     ELSE 'large' END AS amount_category,
COUNT(customer_id) AS customers
FROM payment
GROUP BY 1, 2;
