---between used with dates and numbers
select * from employees
where BirthDate not between '1963-07-02 00:00:00.000' and  '1966-01-27 00:00:00.000'
order by BirthDate desc

select * from Products
where unitprice between 18 and 25
order by UnitPrice

select * from Products
where unitprice=18 or UnitPrice=25 or UnitPrice=97
order by UnitPrice


select * from Products
where unitprice in (18, 25,97)


select * from Products
where ProductName in('Chai','Grandma''s Boysenberry Spread')

select distinct SupplierID from Products

select distinct CategoryID from Products

select * from Employees
select distinct city from Employees


