select profile.*, profession.profession_name from profile 
INNER JOIN profession ON profile.profession_id = profession.id;