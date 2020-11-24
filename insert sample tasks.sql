insert into tasks (description, created_by, priority, status) values ('create account heroku', 3, 'high', 'ongoing');
insert into tasks (description, created_by, priority, status) values ('create app in heroku', 3, 'medium', 'upcoming');
insert into tasks (description, created_by, priority, status) values ('create api', 3, 'medium', 'upcoming');

delete from tasks where id = 1;

select * from tasks;