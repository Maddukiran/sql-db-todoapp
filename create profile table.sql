create table profiles(
id int primary key auto_increment,
user_id int not null,
company varchar(50),
foreign key (user_id) references users(id)
);