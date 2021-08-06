select id, create_date from profile
order by id desc offset 0 rows fetch next 1 rows only;