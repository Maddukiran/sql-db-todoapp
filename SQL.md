#TODO APP SQL


## Create Database

```sql
create database kiran_db;
use kiran_db;
```

## Create Users table
```sql
create table users(
id int primary key auto_increment,
name varchar(50) not null,
email varchar(50) not null,
password varchar(50) not null,
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
user_name varchar(50) unique,
email varchar(50) unique,
fullname varchar(50),
company varchar(50)
);
```

## Load Sample Data
```sql
insert into profiles (user_name, email, fullname, company) values ('test', 'test@mail.com', 'test', 'testing');
insert into profiles (user_name, email, fullname, company) values ('kiran', 'kiran@mail.com', 'kiranM', 'sify');
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
created_bt varchar(50),
disc text(500),
priority varchar(50),
status varchar(50)
);
```

## Loading Sample Data
```sql
insert into tasks (disc, created_by, priority, status) values ('create account heroku', 'kiran', 'high', 'ongoing');
insert into tasks (disc, created_by, priority, status) values ('create app in heroku', 'kiran', 'medium', 'upcoming');
insert into tasks (disc, created_by, priority, status) values ('create api', 'kiran', 'medium', 'upcoming');
```

## Filtering with status
```sql
select * from tasks where created_by = "kiran" and status = "ongoing";
select * from tasks where created_by = "kiran" and status = "upcoming";
select * from tasks where created_by = "kiran" and status = "completed";
```

## Sorting with priority
```sql
select * from tasks where created_by = "kiran" order by priority;
```
