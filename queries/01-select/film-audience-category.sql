SELECT film_id
,title
,rating
,CASE WHEN rating::text IN ('G', 'PG') THEN 'Family'
      WHEN rating::text IN ('PG-13') THEN 'Teen'
      WHEN rating::text IN ('R', 'NC-17') THEN 'Adult'
 END AS audience
FROM film;
