select u.id, u.name, u.email, p.company from users u, profiles p where u.id = p.user_id;