--Indexes
----------
--Physical or logical arrangement of the data in the tables created to achieve performance boost is called as Indexes
--Types
--1) Clustered--- Clustered index is a type of index which sorts the data in the rows of the table based on their key values.
A clustered index defines the order in whcih the data is stored in the table which can be sorted in  the table
only in one way, and so thre can be only one clustered index per table, usually in the form of primary key.

--2) Non-clustered
use northwind

sp_help products

select * from products 
where productid=27

select * from products 
where categoryid=1


select * from students
use oldhr
go


sp_help emp

sp_help dept

select * from emp
where empno=7369


sp_help emp

create table hotels
(hotelid int,
hotelname varchar(20))

sp_help hotels



create clustered index C1
on hotels(hotelid)

create index c2
on  hotels(hotelname)


insert into hotels values(99,'ABC1')
select * from hotels


select NEWID(),hotelid,hotelname from hotels

select ROW_NUMBER() over (order by hotelid) from hotels