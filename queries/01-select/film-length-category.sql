SELECT film_id
,title
,length
,CASE WHEN length <= 60 THEN 'Short'
      WHEN length <= 120 THEN 'Standard'
      ELSE 'Long'
 END AS length_category
FROM film;
