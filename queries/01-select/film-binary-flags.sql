SELECT film_id
,title
,CASE WHEN rating::text IN ('G', 'PG') THEN 1 ELSE 0 END AS is_family
,CASE WHEN rental_rate = 4.99 THEN 1 ELSE 0 END AS is_premium
FROM film;
