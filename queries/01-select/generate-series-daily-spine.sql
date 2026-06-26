SELECT *
FROM generate_series(
  '2005-05-01'::timestamp,
  '2006-02-28',
  '1 day'
) AS day;
