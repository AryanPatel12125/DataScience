use fingertips;

create table Professionals(
Professional_ID int(5),
First_Name varchar(10),
Last_Name varchar(10),
Salary int(10),
Joining_Date DATETIME,
Department varchar(10)
);

show tables;

insert into Professionals(Professional_ID,First_Name,Last_Name,Salary,Joining_Date,Department)values
(001,"Mayank","Srivastava",100000,"2021-02-20 09:00:00","ENGINEER "),
(002,"Virat","Agnihotri",80000,"2021-06-11 09:00:00","Architect"),
(003,"Shubham","Srivastava",300000,"2021-02-20 09:00:00","ENGINEER"),
(004,"Sunil","Khurana",500000,"2021-02-20 09:00:00","Architect"),
(005,"Mohammad","Salman",500000,"2021-06-11 09:00:00","Architect"),
(006,"Prem","Modi",200000,"2021-06-11 09:00:00","Sales"),
(007,"Harsh","Shukla",75000,"2021-01-20 09:00:00","Sales"),
(008,"Pryag","Agarwal",9000,"2021-04-11 09:00:00","Architect"),
(009,"Anil","Rastogi",120000,"2021-02-20 09:00:00","Accounts"),
(010,"Amitabh","Singh",60000,"2021-06-11 09:00:00","Finance");

select * from professionals;
/*
delete from professionals;

set autocommit=0;
delete from professionals;
select * from professionals;

rollback;

truncate table professionals;
select * from professionals;

rollback;
*/
select * from professionals p;

select First_Name, Last_Name , Salary  from professionals p where Salary >= 10000 and Salary <= 500000 and Department in ('Architect','Engineer','Sales');

select First_Name, upper(First_Name), lower(Last_Name) from professionals p ;

select * from professionals p where (instr(First_Name,' ')= 1); 


select Department ,count(first_name) from professionals p group by Department;

select First_Name ,max(salary),Department  from professionals p group by Department;

select * from professionals p ;

select first_name, count(first_name)
from professionals p 
group by First_Name 
having count(First_Name) > 1
order by First_Name desc;

select first_name, last_name, department, avg(Salary) 
from professionals p
group by Department 
having avg(Salary) > 150000 and Department="ENGINEER"
order by salary;

select department, avg(salary) from professionals p 
where Department in ('ENGINEER','sales','Architect')
group by Department having avg(Salary) > 150000;

select * from professionals p where mod (Professional_ID,2) <> 1;

create table mufat select first_name, last_name, salary from professionals p;
show tables;

drop table mufat;

create table table2 select first_name, last_name, salary as 'avg_sal' from professionals 
group by Department
having avg(salary) > 150000
order by Salary;

drop table table2;

select * from table2;



select * from professionals p 
where Professional_ID <= 
(select Professional_ID from professionals p2 where count(Professional_ID);

use fingertips;

create table w1(Name varchar(10),Age int(5));

create table w2(Name varchar(10),Age int(5));

insert into w1 values
("Sachin", 45),
("Kohli",33),
("Manish",22),
("Kohli",33);

insert into w2 values
("Maxwell",45),
("Amit",33),
("Rahul",22),
("Rahul",33);


select * from w1
union
select * from w2;

select * from w1
union all
select * from w2;

#create table products
CREATE TABLE products (
 id INT PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 price DECIMAL(10,2) NOT NULL,
 size VARCHAR(10),
 color VARCHAR(20),
 description VARCHAR(250)
);

#create table customers
CREATE TABLE customers (
 id INT PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,
 phone VARCHAR(20),
 address VARCHAR(255)
);

#create table orders
CREATE TABLE orders (
 id INT PRIMARY KEY,
 customer_id INT NOT NULL,
 product_id INT NOT NULL,
 quantity INT NOT NULL,
 order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 FOREIGN KEY (customer_id) REFERENCES customers(id),
 FOREIGN KEY (product_id) REFERENCES products(id)
);

#insert values into products
INSERT INTO products (id, name, price, size, color, description)
VALUES 
(1, 'T-shirt', 19.99, 'M', 'Blue', 'A comfortable and stylish t-shirt'),
(2, 'Jeans', 49.99, '32x34', 'Black', 'A classic pair of black jeans'),
(3, 'Sneakers', 79.99, '10.5', 'White', 'A pair of comfortable and 
stylish sneakers'),
(4, 'Sweater', 34.99, 'L', 'Gray', 'A cozy and warm sweater'),
(5, 'Dress', 59.99, 'S', 'Red', 'A beautiful and elegant dress'),
(6, 'Jacket', 99.99, 'XL', 'Green', 'A warm and stylish jacket'),
(7, 'Skirt', 29.99, 'M', 'Yellow', 'A cute and flirty skirt'),
(8, 'Blouse', 39.99, 'L', 'Pink', 'A flowy and feminine blouse'),
(9, 'Shorts', 24.99, 'S', 'Orange', 'A comfortable pair of shorts for 
summer'),
(10, 'Hoodie', 49.99, 'L', 'Black', 'A cozy and casual hoodie'),
(11, 'Boots', 89.99, '9.5', 'Brown', 'A stylish pair of boots for any 
occasion'),
(12, 'Sweatpants', 29.99, 'M', 'Gray', 'A comfortable and casual 
pair of sweatpants'),
(13, 'Sunglasses', 19.99, NULL, 'Black', 'A cool and trendy pair of 
sunglasses'),
(14, 'Scarf', 14.99, NULL, 'Purple', 'A warm and cozy scarf for the 
winter'),
(15, 'Hat', 9.99, 'One size', 'Navy', 'A stylish and versatile hat for
any outfit'),
(16, 'Jumpsuit', 69.99, 'M', 'Black', 'A chic and trendy jumpsuit 
for any occasion'),
(17, 'Blazer', 79.99, 'L', 'White', 'A sophisticated and stylish blazer 
for work or events'),
(18, 'Sweatshirt', 39.99, 'XL', 'Pink', 'A comfortable and cozy 
sweatshirt for lounging'),
(19, 'Leggings', 24.99, 'S', 'Black', 'A versatile and comfortable 
pair of leggings'),
(20, 'Pants', 54.99, '32x30', 'Khaki', 'A classic and stylish pair of 
khaki pants');

#insert values into customers
INSERT INTO customers (id, name, email, phone, address)
VALUES 
(1, 'John Smith', 'john.smith@gmail.com', '+1 555-123-4567', 
'123 Main St, Anytown, USA'),
(2, 'Jane Doe', 'jane.doe@yahoo.com', '+1 555-987-6543', '456 
Maple Ave, Anytown, USA'),
(3, 'Bob Johnson', 'bob.johnson@yahoo.com', NULL, '789 Oak St, 
Anytown, USA'),
(4, 'Emily Williams', 'emily.williams@gmail.com', '+1 555-555-
1212', '321 Elm St, Anytown, USA'),
(5, 'David Lee', 'david.lee@yahoo.com', '+1 555-555-5555', '567 
Pine St, Anytown, USA'),
(6, 'Sarah Kim', 'sarah.kim@gmail.com', '+1 555-123-7890', '890 
Cedar Ave, Anytown, USA'),
(7, 'Michael Chen', 'michael.chen@yahoo.com', '+1 555-999-
8888', '246 Birch Blvd, Anytown, USA'),
(8, 'Jessica Brown', 'jessica.brown@yahoo.com', '+1 555-777-
6666', '369 Spruce St, Anytown, USA'),
(9, 'Kevin Garcia', 'kevin.garcia@gmail.com', '+1 555-111-2222', 
'802 Maplewood Dr, Anytown, USA'),
(10, 'Ashley Davis', 'ashley.davis@gmail.com', NULL, '135 Walnut 
St, Anytown, USA');

#insert values into orders
INSERT INTO orders (id, customer_id, product_id, quantity, 
order_date)
VALUES 
(1, 1, 1, 2, '2022-03-08 14:25:00'),
(2, 2, 1, 1, '2022-03-07 09:32:00'),
(3, 3, 3, 4, '2022-03-06 18:05:00'),
(4, 4, 5, 3, '2022-03-05 10:12:00'),
(5, 5, 2, 2, '2022-03-04 15:22:00'),
(6, 1, 3, 1, '2022-03-03 12:48:00'),
(7, 2, 4, 2, '2022-03-02 17:09:00'),
(8, 3, 1, 3, '2022-03-01 11:35:00'),
(9, 4, 2, 1, '2022-02-28 16:02:00'),
(10, 5, 5, 2, '2022-02-27 13:24:00'),
(11, 1, 2, 3, '2022-02-26 10:49:00'),
(12, 2, 3, 2, '2022-02-25 14:56:00'),
(13, 3, 4, 1, '2022-02-24 09:17:00'),
(14, 4, 1, 2, '2022-02-23 12:40:00'),
(15, 5, 3, 3, '2022-02-22 16:58:00');


#select * from table
select * from products;
select * from customers;
select * from orders;

select p.id, p.name, p.price, p.'size',o.quantity,o.id,o.product_id
from products p, inner join orders o
on p.id=o.product_id;

select p.* , o.*
from products p inner join orders o
on p.id = o.product_id;


select o.* , p.*
from products p inner join orders o
on o.id = p.id;

select c.name, p.name as pr_name, p.price, o.quantity
from orders o inner join customers c inner join products p
on p.id = o.product_id and c.id = o.customer_id;

select *, if(avg(Salary) > 100000, "A Class","B Class") from professionals p 
group by Department;

select c.name, p.name as productname, p.price, o.quantity
from orders o inner join products p inner join customers c
where p.id = o.product_id and c.id = o.customer_id;

select c.name, sum(o.quantity) as Number_of_orders
from customers c inner join orders o
on c.id = o.customer_id
group by c.id;

alter table customers rename column id to customer_id;
alter table products rename column id to product_id;

select * from products p; 
select * from customers c;
select * from orders o;

select p.name, sum(o.quantity) as Quantity from 
products p inner join orders o
on p.product_id = o.product_id
group by p.name
order by Quantity;

select p.name, sum(o.quantity) as Quantity, if(o.quantity > 3, "Le Lo", "Mat Lo") as Analysis from 
products p left join orders o
on p.product_id = o.product_id
group by p.name;

select p.size, sum(o.quantity) as Sold from 
products p left join orders o 
on p.product_id = o.product_id
group by p.size;

select p.product_id, count(p.product_id), avg(p.price) 
from products p left join orders o
on p.product_id=o.product_id
group by p.product_id
union
select p.product_id, count(p.product_id), avg(p.price) 
from products p right join orders o
on p.product_id=o.product_id
group by p.product_id;


select * from customers c;


# for ends with use $
select Name,email from customers c where email regexp '@gmail.com$';

select Name,email from customers c where email regexp '@gmail.com$ || @yahoo.com$';


# for starts with use ^
select Name from customers c where name regexp '^J|^E';

# for any random pattern multiple case scenario use | and string

select Name from customers c where name regexp 'JO|EM';

# same like above but better

select color from products p where color regexp '[aeiou]';

create procedure professional_details (id int)
select * from professionals where id = professional_id;

call professional_details(2);

select c.name, sum(o.quantity) as Number_of_orders
from customers c inner join orders o
on c.customer_id = o.customer_id
group by c.customer_id;


create procedure custom_proc (Name varchar(20))
(select c.name, sum(o.quantity) as Number_of_orders
from customers c inner join orders o
on c.id = o.customer_id
group by c.id)where Name = c.name;

call custom_proc('John Smith') ;

drop procedure custom_proc ;










