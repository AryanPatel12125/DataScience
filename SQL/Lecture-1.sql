show databases;

create database fingertips;

use fingertips;

create table students(
	ID int,
	Name varchar(20),
	class_name varchar(20)
);
show tables;

insert into students (ID, Name, class_name)
values
(002,'Hansraj',"Altius"),
(003,'Jay','Citius'),
(004,'Tanmay','Citius');


-- inserted more values from mysql command line client

select * from students;

select * from professionals where first_name like '______m';

select * from professionals p where Joining_Date between "2021-02-20 09:00:00" and "2021-06-11 09:00:00";

select distinct First_Name, Last_Name , Salary from professionals p where dayname(Joining_Date) in ("Saturday","Friday") ;

select max(salary) from professionals p;

select max(Salary) from professionals where salary not in(
select max(salary) from professionals p);  

select max(salary) from professionals p where salary not in
(select max(Salary) from professionals where salary not in
(select max(salary) from professionals p));

select * from professionals p;

select first_name,last_name,Department,Salary  from professionals p2 
where salary in (select min(salary) from professionals p);

select * from professionals p order by Professional_ID desc limit 5;

select first_name, last_name, max(salary) from professionals p where salary <
(select max(salary) from professionals p2 where salary not in 
(select max(salary) from professionals p3)); 



create table new2 select concat(First_Name,' ',Last_Name) Name, department, salary from professionals p;
select * from new2;

drop table new2;

-- DML STARTS HERE
alter table new2 add column location varchar(20);

insert into new2(location) -- will put values after all the data not useful.
values('Ahmedabad'),
('Rajkot'),
('Silicon Valley'),
('Pune'),
('Mirzapur'),
('Delhi'),
('Noida'); 

select * from new2;

alter table new2 modify column salary varchar(10);
select * from new2;
alter table new2 modify column salary int(10);
select * from new2;

alter table new2 drop column location;
select * from new2;

alter table new2 rename column department to Department;

select * from new2;

select count(concat(substr(first_name,1,4),' ',substr(Last_Name,3))) alias_ni_dena from professionals p

select * from professionals p ;
update professionals 
set Last_Name = "Bhatt"
where First_Name = 'Mohammad';

select * from professionals p;

alter table new2 add column location varchar(20);
select * from new2;

update new2
set location = 'Ahmedabad'
where Name = 'Mayank Srivastava';

select * from new2;

update professionals 
set Salary = 4000000
where First_Name = 'Virat' and Last_Name = 'Agnihotri';

select * from professionals p;

update professionals 
set department = "Data Sc."
where First_Name in ('Virat','Amitabh');

select * from professionals p;

delete from professionals 
where Professional_ID = 4;
select * from professionals p;


select first_name,last_name,salary,
case
	when salary > 300000 then "A Class"
	when salary between 100000 and 300000 then "B Class"
	else "C Class"
end as class
from professionals p;


