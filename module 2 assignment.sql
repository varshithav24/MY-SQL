create database assignmentm2
--1.Create a customer table which comprises of these columns – ‘customer_id’, ‘first_name’, ‘last_name’, ‘email’, ‘address’, ‘city’,’state’,’zip’


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
--2.Insert 5 new records into the table

 insert into CUSTOMERS1 values  
 (1,'shreya','patil','shreya@gmail.com','bangalore','second floor mg road','karnataka', 56032),
 (2,'aditi','patil','aditi@gmail.com','hubli','1stfloor mg road','karnataka', 3322),
  (3,'disha','jain','disha@gmail.com','bangalore','3rd floor race course','karnataka', 56033),
   (4,'gaurav','jain','gaurav@gmail.com','san jose','3rd floor race course','karnataka', 56033),
 (5,'shruthi','shah','shruthi@gmail.com','bangalore','second floor kankpur road','karnataka', 56032)

-- 3. Select only the ‘first_name’ & ‘last_name’ columns from the customer table

 select  first_name, last_name from CUSTOMERS1

 --4. Select those records where ‘first_name’ starts with “G” and city is ‘San Jose’

 select*from  CUSTOMERS1  where first_name like 'g%' and city='san jose';