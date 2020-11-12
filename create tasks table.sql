create table tasks
(
id int primary key auto_increment,
created_by int not null,
description text(500),
priority varchar(50),
status varchar(50),
foreign key (created_by) references users(id)
);