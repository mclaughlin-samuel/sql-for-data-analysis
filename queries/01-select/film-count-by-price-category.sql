SELECT
CASE WHEN rental_rate < 1 THEN 'budget'
     WHEN rental_rate < 3 THEN 'mid-range'
     ELSE 'premium'
END AS price_category,
COUNT(*) AS films
FROM film
GROUP BY 1
ORDER BY 1;
