create database assignment4

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
	 select* from orders
 --1. Use the inbuilt functions and find the minimum, maximum and average amount from the orders table

 select AVG (amount) as average from orders
 select max (amount) as maximum from orders 
 select min (amount) as minimum from orders

 --2. Create a user-defined function, which will multiply the given number with 10
create function fn_multiplication
(
	  @param1 int,
	  @param2 int
	  )
	  returns int
	  as
	  begin
	  declare @result int
	  set @result =  @param1 * @param2
	  return @result
	  end
	  select dbo. fn_multiplication (2,10) multiplication


 --3. Use the case statement to check if 100 is less than 200, greater than 200 or equal to 200 and print the corresponding value
   select case when amount<=80000 then 'tier1'
              when amount>=90000 then 'tier2'
			  else 'not defined' end as amounttiers,

	*
	from orders


	---MODULE 5

	--1. Arrange the ‘Orders’ dataset in decreasing order of amount
	create table orderss
 (
  order_id int,
 amount int,

 )
 insert into orderss values
 (1, 300),
 (2, 400),
 (3, 500),
 (4, 600)

	 select* from orderss


	 select amount from orderss order by  amount DESC
	 --
	 --2. Create a table with name ‘Employee_details1’ and comprising of these columns – ‘Emp_id’,
	 --‘Emp_name’, ‘Emp_salary’. Create another table with name ‘Employee_details2’, which
	 --comprises of same columns as first table.
	 
	 create table employee_details1
	 (
	 emp_id int,
emp_name nvarchar(100),
	 emp_salary  decimal(10,2),
	 )
	
	 insert into employee_details1 values 
(1, 'trupti', 6000),
(2, 'sneha',6500),
(3, 'dheeraj', 8000),
(4, 'shruthi', 9000)

	create table employee_details2
	(
	 emp_id int,
emp_name nvarchar(100),
	 emp_salary  decimal(10,2),
	 )
	  insert into employee_details2 values
	  (1, 'pranav', 9000),
	  (2, 'sejal', 9500),
	  (3, 'pranjali', 10000),
	  (4, 'skanda', 7500)
	   
	   select*from employee_details1
	   select*from employee_details2

	   --3. Apply the union operator on these two tables
	   select*from employee_details1
	   union all
	      select*from employee_details2

		  --4. Apply the intersect operator on these two tables
		  select*from employee_details1
	 intersect
	      select*from employee_details2

		  --5. Apply the except operator on these two tables
		   select*from employee_details1
	 except
	      select*from employee_details2