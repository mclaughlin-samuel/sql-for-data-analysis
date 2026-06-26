SELECT rental_id
,CASE WHEN return_date IS NULL THEN '2006-02-14'::date
      ELSE return_date::date
 END AS return_date_filled
FROM rental;
