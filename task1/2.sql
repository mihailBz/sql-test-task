select distinct em.employer_name, v.vacancy_name from vacancy as v
INNER JOIN employer as em on v.employer_id = em.id
order by em.employer_name;