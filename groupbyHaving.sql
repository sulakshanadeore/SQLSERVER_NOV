---Aggregate(One/combined) Functions
---numerical
---total=sum(addition)
----average=avg
----minimum=min
----maximum=max
----Count==count

select sum(unitprice) from products
select count(unitprice) from products

select region from Employees
select count(region) from Employees
---not null are only counted


select categoryid,unitprice from Products
order by CategoryID

categoryid   sum(unitpirce)
1              455.75
2              
3
. 29

select categoryid,sum(unitprice)  as TotalPrice from Products
group by categoryid


select categoryid,count(unitprice)  as 'Count of Products' from Products
group by categoryid


select orderid, productid,unitprice,Quantity, sum(UnitPrice*Quantity) as 'Total Price' from [Order Details]
group by orderid, productid,unitprice,Quantity

select orderid, productid,unitprice,Quantity, UnitPrice*Quantity as 'Total Price' from [Order Details]
group by orderid, productid,unitprice,Quantity


select orderid, sum(UnitPrice*Quantity) as 'Total Price' from [Order Details]
group by orderid
order by 'Total Price'

---REMEMBER THIS*****
--select ___ from ___
--where [condition]
--group by columnname
--having [aggregate condition]  (group by)
--order by columnname/s





select orderid, sum(UnitPrice*Quantity) as TotalPrice from [Order Details]
group by orderid
having sum(UnitPrice*Quantity) >1000 and sum(UnitPrice*Quantity) <2000 
order by TotalPrice



select orderid, sum(UnitPrice*Quantity) as 'Total Price' from [Order Details]
group by OrderID
having sum(unitprice*quantity)>1000 and sum(UnitPrice*Quantity) <2000
order by OrderID

orderid totalprice
10248      440
10249       1863

--group by OrderID

---1)orderid wise , productid wise total of quantity * price of that productid
---2)total of totals product id wise sales
---3)order id wise total sales

select * from  [order details] where orderid=10285

select orderid,productid ,sum(UnitPrice*Quantity) as 'Total Price' from [Order Details]
group by cube(OrderID,productid)

categoryid,brandwise, sales
Shirts       Polo      12000
Shirts       Lee      12003
                      24003

shirts 23003









select  * from [Order Details]
where OrderId=10285
select 14.40 * 45




