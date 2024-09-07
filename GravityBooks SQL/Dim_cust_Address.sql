--sql command for Dim_cust_Address

select * from address_status;
select * from customer_address;

select address_status, customer_id, address_id, C.status_id
from customer_address C left join address_status A
on C.status_id = A.status_id;
