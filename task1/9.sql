select p.id as profile_id, v.employer_id from profile as p
inner join vacancy as v on p.profession_id = v.profession_id;