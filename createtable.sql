--tables,views,synonymns etc 
use FlightBooking
go
create table customer
(custid numeric(3) primary key,
custname varchar(50),
birthdate date,
city  varchar(20),
country char(2))
go
create table flights
(flightid int primary key,
startloc varchar(20),
destloc varchar(20),
flightstart datetime,
flightend datetime,
custid numeric(3) foreign key references customer(custid))
go



sp_help flightcustomer

create table snacksInAir
(flightid int foreign key references flights(flightid),
customerid numeric(3),
snackItemCode int,
snackPrice int, 
constraint c1 foreign key(customerid) references customer(custid)
)

sp_help snacksInair


create table registration
(Regid int identity(10,1) primary key,
username varchar(20),
password varchar(20))

alter table registration
add customer_id numeric(3) foreign key references customer(custid)

alter table registration
alter column username varchar(25)

alter table registration
add customer_type varchar(20)

alter table registration
drop column customer_type

sp_help registration

alter table registration
alter column customer_id numeric(3) not null

alter table registration
drop constraint FK__registrat__custo__5DCAEF64

alter table registration
add unique(customer_id)
