create database student_info;
use student_info;

-- database query : if not exists | if exists
-- database delete : drop database db_name
-- show all databases : show databases
create database if not exists student_info;
show databases;


-- create table : create table tb_name
-- constraints : not null, unique, default, primary key......(column_name data_type constraints)
-- to limit values for columns : check (column_name data_type check(condition))
create table student (
rollno int primary key,
name varchar (50),
class int default(4),
marks tinyint, 
grade varchar(1),
city varchar (50)
);


-- insert values into table : insert into tb_name(column names) values ()()()
insert into student (rollno, name, class, marks, grade, city)
values
(1, 'raquib', 4, 85, 'b', 'jamalpur'),
(2, 'joy', 4, 88, 'b', 'sherpur'),
(3, 'rabbi', 4, 81, 'b', 'bakshiganj'),
(4, 'rofiq', 4, 75, 'c', 'dhaka'),
(5, 'santi', 4, 90, 'a', 'vola'),
(6, 'kamrul', 4, 75, 'c', 'sherpur'),
(7, 'joynal', 4, 65, 'd', 'jamalpur'),
(8, 'janu', 4, 75, 'c', 'jamalpur'),
(9, 'pannu', 4, 95, 'a', 'vola'),
(10, 'tafir', 4, 92, 'a', 'vola'),
(11, 'nakab', 4, 83, 'b', 'narsingdi');

select * from student;

-- show only specific column
-- show only unique values from column
select rollno, city from student;
select distinct city from student;


-- select with clauses : where(condition), 
-- we can also set multiple conditions with operators : 
-- arithmatic(+,-,*,/,%) | comparison(=, !=, >, <, >=, <=) | logical(and, or, not, in, between, all, like, any)

select * from student where (marks > 85);
select  * from student where (city = 'jamalpur');
select * from student where (marks > 80+10);
select * from student where (marks > 80) and (city = 'jamalpur');


-- select with between, in , not in

select * from student where rollno between 3 and 7;
select * from student where city in ('dhaka', 'jamalpur');
select * from student where city not in ('dhaka', 'jamalpur');


-- select with clauses : limit (value)

select * from student limit 4;
select * from student where marks > 85 limit 2;


-- select with clauses : select column_name from tb_name order by column_name asc/desc 

select marks from student order by marks asc;
select marks from student order by marks desc;


-- aggregate functions : count(), max(), min(), sum(), avg() | (column_name)

select avg(marks) from student;
select max(marks) from student;
select min(marks) from student;


-- group by clause

select city, count(name) from student group by city;
select grade from student group by grade order by grade;
select grade, count(rollno) from student group by grade order by grade;

 
 -- having clause : similar as where but we use "having" after the grouping
 
 select city, count(name) from student group by city having max(marks) > 90;
 select city from student where grade = 'a' group by city having max(marks)>=93 order by city desc;


set sql_safe_updates = 0;
-- table related queries : update | update tb_name set column_name = value where column_name = value

update student set grade = 'y' where grade = 'a';
select * from student;
update student set grade = 'a' where grade = 'y';
select * from student;
update student set marks = 44 where rollno = 2;
select * from student;
update student set grade = 'b' where marks between 80 and 90;
select * from student;


-- table related queries : delete | delete from tb_name where (conditions)
delete from student where marks < 30 ;
select * from student;











