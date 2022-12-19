use my_db;
create table std2(
std_id int primary key,
std_name varchar(50) not null,
std_age int not null);

insert into std2 
values
(1,"Ram",12),
(2,"Atul",13);

select * from std2;

alter table std2 
add city varchar(200);

select * from std2;

alter table std2
add father_name varchar(50),
add mother_name varchar(50);

select * from std2;

alter table std2
add city_1 varchar(50) default 'Indore';


rename table std2 to student2;

alter table student2 
rename column city to class;

-- Drop column--

alter table student2
drop column city ;

select * from student2;

alter table student2
rename column city_1 to city ;

select * from student2;

alter table student2 
drop primary key;

describe student2;
select * from student
;



use my_db;

create table customer
(customer_id int primary key,
Customer_name varchar(50),
customer_age varchar(50));

insert into customer 
values
(1,"ram",25),
(2,"Nitesh",25),
(3,"Vignesh",24);


create table order_table
(order_id int primary key,
Product_id int  ,
Customer_id int );


create table product_table
(order_id int ,
Product_id int primary key ,
Customer_id int,
foreign key(customer_id) references Customer(customer_id)
);

drop table order_table;

create table order_table
(order_id int primary key,
Product_id int  ,
Customer_id int ,
foreign key(product_id) references product_table(product_id)
);

