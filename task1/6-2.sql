select v.vacancy_name, v.description, v.profession_id, v.employer_id
from vacancy as v
group by v.vacancy_name, v.description, v.profession_id, v.employer_id;