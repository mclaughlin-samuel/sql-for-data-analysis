SELECT generate_series(
  '2005-05-01'::date,
  '2006-02-28'::date,
  '1 month'::interval
)::date AS month_start;
