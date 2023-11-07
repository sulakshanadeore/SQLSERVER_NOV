--:Views:
--Views are virtual tables, they donot hold any data with themselves but fetch the data from the table.
--They are used for security purpose to have encapsulation over the table from the users to show only limited data to the users with particular access levels.

select * from emp

--role with number of users in that role

--security(5)---ename,deptno(read only permission---->read only view)
		      --select/view
--accounts(2)---ename,empno,sal,comm----> (update)(read/write permission----> Simple View)
					--Updating
--hr(4)---empno,ename,job,mgr,hiredate,deptno--->(I/U/D/View data)(read/write permission----> Simple View)
    ---Insert/Update/Delete

--Types:
--1) Simple/Updateable----> they donot have any aggregate function, group by(rollup,cube). subqueries
--	simple select statement
--2)Readonly----contains a readonly keyword with it. no i/u/d possible
--3) Complex views---they can have  aggregate function, group by(rollup,cube). subqueries, etc so they are non- updateable views/read only views


create view vw_empcomplex
as
select deptno,sum(sal) as totalSal from emp
group by deptno


select * from vw_empcomplex


create view vc_readonlyV1
as
select empno,ename,deptno from emp

select * from vc_readonlyV1
insert into vc_readonlyV1 values(4,'xyz',10)

insert into emp(empno,ename,deptno) values (5,'abc',10)

select * from emp


drop view vw_empSecurity1

select * from vw_empSecurity1
insert into vw_empSecurity1 values(1,'pradnya',10)

cte---- Common table expressions, start "with" keyword
2 types
1) Simple
2) recursive

With expression_name[(column name/s)]
as 
SqlStatement(CTE definition)




with empwithJob
as
(select ename,job from emp)

select ename,job from empwithJob

use northwind
go

with examdata(Studentid,StudentMarks)
as
(select s.rollno,marks from examMarks right join students s
on s.rollno=examMarks.rollno)
select studentid,studentmarks from examdata

2)recursive cte 
with ex1_Rec(n,weekDay)
as
(select 0,DATENAME(DW,0) union all
select n+1, DATENAME(DW,n+1) from ex1_Rec where n<30)

select weekday from ex1_Rec


with ex1_Rec(n,weekDay)
as
(select 0,dateadd(day,0,getdate()) union all
select n+1, dateadd(day,(n+1),getdate()) from ex1_Rec where n<30)

select weekday from ex1_Rec


