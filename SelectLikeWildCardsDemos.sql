use northwind
go

select * from Employees

select * from Employees
where City='London'


select * from Employees
where City='London' or City='Redmond'

select * from Employees
where (City='London' or City='Redmond') and BirthDate='1937-09-19 00:00:00.000'

select * from Employees
where City='London' or (City='Redmond' and BirthDate='1937-09-19 00:00:00.000')

select * from Employees
where City='London' or (City='Redmond' and BirthDate='1937-09-19 00:00:00.000')  and Title='Sales Manager'


select * from Employees
where City='London' and Title='Sales Manager' or (City='Redmond' and BirthDate='1937-09-19 00:00:00.000')  

select * from Employees
where (City='London' and Title='Sales Manager') or (City='Redmond' and BirthDate='1937-09-19 00:00:00.000')  

select * from Employees
where City!='London' and Title='Sales Manager' or (City='Redmond' and BirthDate='1937-09-19 00:00:00.000')

select * from Employees
where EmployeeID=4 or (City='London' and Title='Sales Manager') or (City='Redmond' and BirthDate='1937-09-19 00:00:00.000')

select * from Employees
where EmployeeID=4 or (City like 'London' and Title like 'Sales Manager') or (City like 'Redmond' and BirthDate like '1937-09-19 00:00:00.000')



---Wild Card operators(%,_) when  always use 'like'
--% represents anything from that point
select * from Employees
where Title like 'Sales%'

select * from Employees
where Title like '%Sales%'

select * from Employees
where TitleOfCourtesy not like '___'

select * from Employees
where Title  like '%pre%'

select * from Employees
where Title  like 'V___%pre%'

select * from Employees
where FirstName like 'N%'

select * from Suppliers
where CompanyName like '_x%'

--null cannot be compared with anything--like or = cannot be used
select * from Employees
where region is null
select * from Employees
where region is not null








