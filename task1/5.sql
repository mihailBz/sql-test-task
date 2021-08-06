select em.id as employer_id from employer as em
left join vacancy as v on em.id = v.employer_id
where v.employer_id is null;