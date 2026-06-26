SELECT film_id
,title
,rental_duration
,CASE WHEN rental_duration <= 4 THEN rental_duration::varchar
      ELSE '5+'
 END AS duration_label
FROM film;
