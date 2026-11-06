create database std;
show databases;
use std;
create table courses(course_id int,course_name varchar(50));
drop table courses;
create table courses(course_id int primary key,course_name varchar(50) not null);
select * from courses; 
insert into courses(course_id,course_name) values(1,'data_science'),(2,'information tech'); 
select * from courses;
use std;
create table students(student_id int,name varchar(50),email varchar(50),country varchar(50));
drop table students;
create table students(student_id int primary key,name varchar(50),email varchar(50) unique,country varchar(50));

insert into students(student_id,name,email,country)values(1,'pratik','xyz','india'),(2,'sid','zyz','pak'); 
create table student1(cust_id int,foreign key(cust_id) references students(student_id),company varchar(50)); 
insert into student1(cust_id,company) values(1,'accenture'),(2,'techm');
select * from student1;
use data_science; 
create table enroll(course_id int,course_name varchar(50),
primary key(course_id,course_name));
insert into enroll(course_id,course_name)values(1,'tech'),(1,'fintech');
select* from enroll;