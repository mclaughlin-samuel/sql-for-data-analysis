SELECT film_id
,title
,rating
,rental_rate
,length
,CASE WHEN rating::text IN ('G', 'PG') AND rental_rate >= 2.99 THEN 'Premium Family'
      WHEN rating::text IN ('G', 'PG') AND rental_rate < 2.99 THEN 'Budget Family'
      WHEN rating::text IN ('R', 'NC-17') AND length > 120 THEN 'Long Adult Feature'
      ELSE 'Standard'
 END AS film_tier
FROM film;
