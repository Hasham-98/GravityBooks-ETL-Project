use Gravity_Book_DWH;
use gravity_books;
--sql command for Fact Sales
select * from cust_order;
select * from order_line;

select book_id, customer_id, shipping_method_id, order_date, C.order_id, line_id, price
from cust_order C inner join order_line O
on C.order_id = O.order_id
where O.line_id>?;

--sql command for Dim_book_lookup

select Book_SK, Book_BK
from Book_DIM
where Is_Current=1;


--sql command for Dim_customer_lookup

select Cust_SK, Cust_BK
from Customer_DIM
where Is_Current=1;


--sql command for Dim_shipping_lookup

select Shipping_SK, Shipping_BK
from Shipping_DIM
where Is_Current=1;


--Meta control table
--sql command for last_orderLineID
select * from Meta_Control_Fact_Sales_Load;

select Last_Load_LineID_BK 
from Meta_Control_Fact_Sales_Load
where LineDetails='OrderLine'; 

select * from Meta_Control_Fact_Sales_Load;
--sql command for max_OrderID

select max(LineID_BK) as last_LineID
from Fact_Sales;


--sql command fto update Meta table with (last_LineId) value
update Meta_Control_Fact_Sales_Load
set Last_Load_LineID_BK=?,
Last_load_date=?
where LineDetails = 'OrderLine';

--sql command for Dim_Date_lookup

select DateSK, Date
from DimDate;
