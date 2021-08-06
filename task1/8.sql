select employer_id from vacancy
group by employer_id having count(id) > 3;