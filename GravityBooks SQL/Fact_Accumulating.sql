use Gravity_Book_DWH;
--sql command for Fact_Accumulating 
use gravity_books;
select * from order_history;
select * from order_status;
select * from cust_order;

select C.order_id, customer_id, shipping_method_id, status_date, s.cost
from  cust_order C left join order_history H 
on C.order_id = H.order_id
left join shipping_method S
on C.shipping_method_id = S.method_id;


use gravity_books;

select C.order_id, customer_id, shipping_method_id, status_date, s.cost
from  cust_order C left join order_history H 
on C.order_id = H.order_id
left join shipping_method S
on C.shipping_method_id = S.method_id
where C.Order_id>?; 




----------------lookups
use Gravity_Book_DWH;

truncate table Fact_Accumulating;

select Cust_SK, Cust_BK
from Customer_DIM;

select Shipping_SK, Shipping_BK
from Shipping_DIM;

select * from gravity_books.dbo.order_status;
select * from gravity_books.dbo.order_history;

select DateSK, Date
from DimDate
where Date in(select cast(status_date as date)
from gravity_books.dbo.order_history
where status_id = 1);


------------------------------------------------------------------------


--sql command for last_orderLineID
select * from Meta_Control_Fact_Sales_Load;


select Last_Load_LineID_BK 
from Meta_Control_Fact_Sales_Load
where LineDetails='ShippingHistory'; 

select * from Meta_Control_Fact_Sales_Load;
--sql command for max_OrderID

select max(Order_ID_BK) as last_OrderID
from Fact_Accumulating;


--sql command fto update Meta table with (last_LineId) value
update Meta_Control_Fact_Sales_Load
set Last_Load_LineID_BK=?,
Last_load_date=?
where LineDetails = 'ShippingHistory';


