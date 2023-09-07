create database assignment3
--1. Create an ‘Orders’ table which comprises of these columns – ‘order_id’, ‘order_date’, ‘amount’, ‘customer_id’
create table CUSTOMERS1
(
customer_id int ,
first_name varchar(50),
last_name varchar (50),
email varchar(50),
city varchar(10),
address varchar(40),
state varchar(10),
zip int
)

 insert into CUSTOMERS1 values  
 (1,'shreya','patil','shreya@gmail.com','bangalore','second floor mg road','karnataka', 56032),
 (2,'aditi','patil','aditi@gmail.com','hubli','1stfloor mg road','karnataka', 3322),
  (3,'disha','jain','disha@gmail.com','bangalore','3rd floor race course','karnataka', 56033),
   (4,'gaurav','jain','gaurav@gmail.com','san jose','3rd floor race course','karnataka', 56033),
 (5,'shruthi','shah','shruthi@gmail.com','bangalore','second floor kankpur road','karnataka', 56032)


 create table orders
 (
  order_id int,
 order_date  date,
 amount int,
 customer_id int
 )
 insert into orders values
 (100,' 2023-01-23',3000,10),
  (210,' 2023-02-24',4000,20),
   (110,' 2023-03-01',3000,30),
    (200,' 2023-04-02',8000,40),
	 (150,' 2023-05-03',9000,50)

	 select * from CUSTOMERS1
	 select*from orders

---2. Make an inner join on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column
	select  ord.order_id
		 from orders as ord
inner join CUSTOMERS1 as cust on ord.customer_id=cust.customer_id
		 
--3. Make left and right joins on ‘Customer’ & ‘Order’ tables on the ‘customer_id’ column

        select  ord.order_id
		 from orders as ord
	     left join  CUSTOMERS1 as cust on ord.customer_id=cust.customer_id

		 select  ord.order_id
		 from orders as ord
	   right join  CUSTOMERS1 as cust on ord.customer_id=cust.customer_id


--4. Update the ‘Orders’ table, set the amount to be 100 where ‘customer_id’ is 3
select*from orders
 update orders
 set amount='100'
 where customer_id='3'