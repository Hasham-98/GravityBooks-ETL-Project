--create table Meta_Control_Fact_Sales_Load
USE Gravity_Book_DWH;
--drop table Meta_Control_Fact_Sales_Load;
CREATE TABLE Meta_Control_Fact_Sales_Load
(
    ID int IDENTITY(1,1) NOT NULL,
    LineDetails nvarchar(50) NULL,
    Last_load_date datetime NULL,
    Last_Load_LineID_BK int NULL,
    CONSTRAINT PK_Meta_Control_Fact_Sales_Load PRIMARY KEY CLUSTERED (ID)
);

select * from Meta_Control_Fact_Sales_Load;

insert into Meta_Control_Fact_Sales_Load (LineDetails, Last_load_date, Last_Load_LineID_BK) 
values('OrderLine', '1900-01-01 00:00:00:00', 0);

insert into Meta_Control_Fact_Sales_Load (LineDetails, Last_load_date, Last_Load_LineID_BK) 
values('ShippingHistory', '1900-01-01 00:00:00:00', 0);

truncate table Meta_Control_Fact_Sales_Load;
