create database [OldHR]
go

USE [OldHR]
GO


CREATE TABLE [dbo].[Department_India](
	[deptno] [numeric](2, 0) NOT NULL,
	[dname] [varchar](14) NULL,
	[loc] [varchar](13) NULL,
 CONSTRAINT [pk_dept] PRIMARY KEY CLUSTERED 
(
	[deptno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO





insert into Department_India values(10,'ACCOUNTING','NEW YORK');
insert into Department_India values(20,'RESEARCH','DALLAS')
insert into Department_India values(30,'SALES','CHICAGO')
insert into Department_India values(40,'OPERATIONS','BOSTON')


USE [OldHR]
GO

/****** Object:  Table [dbo].[emp]    Script Date: 1/18/2018 12:58:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[emp](
	[empno] [numeric](4, 0) NOT NULL,
	[ename] [varchar](10) NULL,
	[job] [varchar](9) NULL,
	[mgr] [numeric](4, 0) NULL,
	[hiredate] [date] NULL,
	[sal] [numeric](7, 2) NULL,
	[comm] [numeric](7, 2) NULL,
	[deptno] [numeric](2, 0) NULL,
 CONSTRAINT [pk_emp] PRIMARY KEY CLUSTERED 
(
	[empno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[emp]  WITH CHECK ADD  CONSTRAINT [fk_deptno] FOREIGN KEY([deptno])
REFERENCES [dbo].[Department_India] ([deptno])
GO

ALTER TABLE [dbo].[emp] CHECK CONSTRAINT [fk_deptno]
GO





insert into emp values(7369,'SMITH','CLERK','7902','1980-12-17',800.00,NULL,20)
insert into emp values(7499,'ALLEN','SALESMAN','7698','1981-02-20',1600.00,300.00,30)
insert into emp values(7566,'JONES','MANAGER','7839','1981-02-04',2975.00,NULL,20)
insert into emp values(7698,'BLAKE','MANAGER','7839','1981-01-05',2850.00,NULL,30)
insert into emp values(7782,'CLARK','MANAGER','7839','1981-09-06',2450.00,NULL,10)
insert into emp values(7788,'SCOTT','ANALYST','7566','1987-07-13',3000.00,NULL,20)
insert into emp values(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000.00,NULL,10)
