#TODO APP SQL


## Create Database

```sql
create database todoapp_db;
use todoapp_db;
```

## Create Users table
```sql
create table users(
id int primary key auto_increment,
name varchar(50) not null,
email varchar(50) not null,
password varchar(50) not null
);
```

## Load Sample Data
```sql
insert into users (name,email,password) values ( 'kiran','kiran@mail.com', 'kiran');
insert into users (name,email,password) values ( 'swaroop','swaroop@mail.com', 'sai143');
insert into users (name,email,password) values ( 'test','test@mail.com', 'test');
```

## List All Users
```sql
select * from users;
```

## Create Profiles 
```sql
create table profiles
( 
id int primary key auto_increment,
user_id int not null,
company varchar(50),
foreign key (user_id) references users(id)
);
```

## Load Sample Data
```sql
insert into profiles (user_id, company) values (1, 'sify');
insert into profiles (user_id, company) values (2, 'moonshot');
insert into profiles (user_id, company) values (3, 'testing');
```

## List All Profiles
```sql
select * from profiles;
```

## Creating Task Table:
```sql
create table tasks
(
id int primary key auto_increment,
created_by int not null,
desc text(500),
priority varchar(50),
status varchar(50),
forigen key (created_by) references users(id)
);
```

## Loading Sample Data
```sql
insert into tasks (desc, created_by, priority, status) values ('create account heroku', 3, 'high', 'ongoing');
insert into tasks (disc, created_by, priority, status) values ('create app in heroku', 3, 'medium', 'upcoming');
insert into tasks (disc, created_by, priority, status) values ('create api', 'kiran', 3, 'upcoming');
```

## Filtering with status
```sql
select * from tasks where created_by = 3 and status = "ongoing";
select * from tasks where created_by = 3 and status = "upcoming";
select * from tasks where created_by = 3 and status = "completed";
```

## Sorting with priority
```sql
select * from tasks where created_by = 3 order by priority;
```
