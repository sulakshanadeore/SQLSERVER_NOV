--Joins
-------
--What is Join?
--Clause in SQL combines columns from one or more tables.
--Relational Algebra---> takes a relation/table and returns relation/table instances of output with one or
--more relations/table/s

---Select,Project(distinct),Union,Cartesian,Minus,etc
Set Operators---> Union,Union All,Intersect,Minus

--Why use Joins
--Find the data from mutiple tables using Joins
---Some related data is in one or more table/s then we bringall related tables together using joins.
--How to use Joins
---Join keyword
--types of joins
--1) Inner Joins--->
--2) Self Joins
--3) Outer Joins
--   Left
--   Right
--   Full
--4) Cartesian Join


Prerequisite---> The table/s should have relation between them
Order--ORderid  OrderDetails-Orderid
1(Order)                   M(Products)



select * from Orders
select * from [Order Details]

sp_help orders
sp_help [order details]
------------------------------------------------
--inner join-atleast 2 tables
--inner join only returns the rows that match in both the tables
select orders.orderid,productid,OrderDate,sum(UnitPrice*Quantity) as 'Total Price' from [Order Details] inner join Orders
on orders.OrderID=[Order Details].OrderID
group by cube(orders.OrderID,productid,OrderDate)

select ProductID,ProductName,p.CategoryID,CategoryName from Products p inner join Categories  c
on p.CategoryID=c.CategoryID
order by p.CategoryID

select ProductID,ProductName,p.CategoryID,CategoryName,s.CompanyName from Products p inner join Categories  c
on p.CategoryID=c.CategoryID inner join Suppliers s on s.SupplierID=p.SupplierID
order by p.CategoryID


select * from Products

select ProductID,ProductName,p.CategoryID,CategoryName from Products p, Categories  c
where p.CategoryID=c.CategoryID
order by p.CategoryID


select ProductID,ProductName,p.CategoryID,CategoryName,s.companyName from Products p, Categories  c,Suppliers s
where p.CategoryID=c.CategoryID and s.SupplierID=p.SupplierID
order by p.CategoryID



-----------------------------------------------------------------
---SELF JOIN-- only one table
select EmployeeID,FirstName,LastName,ReportsTo from Employees

select e.employeeid,e.firstname,e.lastname,e.reportsto,m.firstname,m.lastname from employees e , employees m
where 	e.reportsto=m.employeeid									
-----------------------------------------------------------------
Outer Joins---Forcefully select the data

select * from Customers
select * from Orders
---show the customers who have placed orders
---whenever using order by the null values will come at the top when in ascending order,
--and they will be shown at the bottom in desc orer

--			LHS                                           RHS

select c.customerid,orderid from Customers c left outer join orders o
on c.CustomerID=o.CustomerID
order by o.OrderID desc


select c.customerid,orderid from Orders o  right outer join Customers c
on c.CustomerID=o.CustomerID
order by o.OrderID desc

select customerid,orderid from orders


select c.customerid,orderid from Orders o  left outer join Customers c
on c.CustomerID=o.CustomerID
order by o.OrderID desc

select c.customerid,orderid from Orders o  right outer join Customers c
on c.CustomerID=o.CustomerID
order by o.OrderID desc

create table students
(rollno int primary key,
studname varchar(10))

insert into students values(1,'Amit')
insert into students values(2,'Sumit')
insert into students values(3,'Nita')
insert into students values(4,'Sima')
insert into students values(5,'Vimal')
insert into students values(6,'Kamal')

create table Studentclass
(
classid int primary key
)

insert into Studentclass values(11)
insert into Studentclass values(12)

alter table students 
add class int foreign key references studentClass(classid)






select * from students
update students
set class=12
where rollno in(2,4,6)



create table examMarks
(rollno int foreign key references students(rollno),
marks int)



insert into examMarks values (1,100)
insert into examMarks values (2,80)
insert into examMarks values (3,90)
insert into examMarks values (4,95)

select * from examMarks
select * from students
                    left                 right
select s.rollno,marks from examMarks right join students s
on s.rollno=examMarks.rollno


select s.rollno,marks from students s right join examMarks
on s.rollno=examMarks.rollno


select s.rollno,marks from students s left join examMarks
on s.rollno=examMarks.rollno


select s.rollno,marks from students s full outer join examMarks
on s.rollno=examMarks.rollno

--------------------------------------

---cartesian join9product)---- join with no condition---probabiltiy matrix
select * from Studentclass
select * from students

select rollno,studname,class,classid  from students,Studentclass

------------------------------------------------------------------------
select * from Products

select * from Customers
all 91 customer * 77 proudcts atleast once=
select 91*77

select productid,customerid from Products,Customers















select * from Customers
select distinct CustomerID from Orders

--the customer who have placed orders & the customers who have not placed any orders till now










