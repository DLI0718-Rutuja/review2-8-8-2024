-- ,purches date, price,product name, product id
-- order quanty
create table product(
	product_id int not null primary key,
	product_name char(50),
	product_price int,
	product_type char(50)
)
drop table product
select * from product
 insert into product(product_id,product_name,product_price,product_type) values(1,'smartphone',20000,'electronic')
 insert into product(product_id,product_name,product_price,product_type) values(2,'jaggery',2000,'fooditem')
 insert into product(product_id,product_name,product_price,product_type) values(3,'usb cable',1000,'electronic')
 insert into product(product_id,product_name,product_price,product_type) values(4,'washingmachine',15000,'electronic')
 insert into product(product_id,product_name,product_price,product_type) values(5,'freeze',20000,'electronic')
 

drop table Order_detail
create table Order_detail(
	order_id int not null,
	quantity int,
	purches_date date,
	product_price int
)
 select * from Order_detail
 insert into Order_detail(order_id,quantity,purches_date,product_price) values(1,10,'2-5-2023',20000)
 insert into Order_detail(order_id,quantity,purches_date,product_price) values(12,8,'3-8-2024',2000)
 insert into Order_detail(order_id,quantity,purches_date,product_price) values(3,10,'2-5-2023',1000)
 insert into Order_detail(order_id,quantity,purches_date,product_price) values(4,5,'12-9-2023',15000)
 insert into Order_detail(order_id,quantity,purches_date,product_price) values(5,10,'3-8-2024',20000)

select order_id from Order_detail where purches_date='12-9-2023'
	
select count (order_id) from Order_detail where purches_date='3-8-2024'

	
select count(order_id) from Order_detail
where purches_date='2-5-2023'
group by order_id

select max(product_price)from Order_detail
where purches_date='2-5-2023'