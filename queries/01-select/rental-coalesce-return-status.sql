SELECT rental_id
,COALESCE(return_date::varchar, 'Not returned') AS return_status
FROM rental;
