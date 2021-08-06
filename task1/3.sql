select count(id) as number_of_profiles, profession_id from profile
group by profession_id having profession_id is not null;