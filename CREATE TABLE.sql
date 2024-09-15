create database xyz;
use xyz;

-- parent table theke primary key onno table(child_table) e giye foreign key hoye jay 

create table dept (
id int primary key, 
name varchar(50)
);

insert into dept (id,name)
values 
(101, 'english'), (102, 'it');

select * from dept;

-- on update cascase | on delete cascade for doing operation in both table
create table teacher (
id int primary key, 
name varchar(50),
dept_id int, foreign key (dept_id) references dept(id)
on update cascade
on delete cascade
);


insert into teacher (id, name, dept_id)
values
(101, 'ador', 101),
(102, 'asif', 102);

select * from teacher;





