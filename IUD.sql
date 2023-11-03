insert into customer values(1,'Varun','03-11-2020','Mumbai','IN')
insert into customer values(2,'Arun','03-31-2020','Mumbai','IN')
insert into customer values(3,'Simran','2020-04-21','Mumbai','IN')
insert into customer values(4,'Pratik','2021-04-22','Mumbai','IN')
select GETDATE()--->YYYY-MM-DD
select * from customer
sp_help registration

insert into registration values('varun','varun@123',1)
insert into registration values('arun','arun@123',3)
insert into registration values('aruna','aruna@123',3)
select * from registration


insert into flights values('Bengaluru','Chennai','2023-11-03 1:10','2023-11-03 3:10',1)

select * from flights
insert into snacksInAir values(10000,1,100,150)
select * from snacksInAir

sp_help snacksInAir

select * from customer

delete from customer where custid=2

select * from snacksInAir

select * from flights

---For on delete cascade -->go to foreign key table
--customer if deleted, his snacks must be deleted, so go to snacksOnAir table, modify foreign key constraint, on delete---cascade

select * from flightCustomer
insert into flightCustomer values(101,2,'DebitCard',getdate(),10000);

update customer
set city='Chennai'
where custid=3