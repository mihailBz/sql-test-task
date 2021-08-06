select count(id) as number_of_vacancies, employer_id from vacancy
group by employer_id order by number_of_vacancies desc;