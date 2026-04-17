create database trends_shop;
use trends_shop;

create table products (product_id int primary key,product_name varchar(50) not null,
category varchar(50),price decimal(10,2));
desc products;

insert into products values
(1,'t-shirt','men',599.00),
(2,'jeans','men',1299.00),
(3,'kurti','women',899.00),
(4,'saree','women',1999.00),
(5,'shirt','men',799.00),
(6,'jacket','men',1499.00),
(7,'top','women',699.00),
(8,'hoodie','unisex',1199.00),
(9,'shorts','men',499.00),
(10,'leggings','women',599.00),
(11,'blazer','men',2499.00),
(12,'skirt','women',899.00),
(13,'dress','women',1599.00),
(14,'sweater','unisex',1299.00),
(15,'tracks','men',999.00);

select * from products;

create table orders (order_id int primary key,product_id int,quantity int,order_date date,foreign key (product_id) references products(product_id));
desc orders;

insert into orders values
(101,1,2,'2024-03-01'),
(102,2,1,'2024-03-02'),
(103,3,3,'2024-03-03'),
(104,4,1,'2024-03-04'),
(105,5,2,'2024-03-05');

select * from orders;