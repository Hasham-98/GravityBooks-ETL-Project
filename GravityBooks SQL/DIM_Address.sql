--sql command for DIM_Address

select * from address;
select * from country;

select address_id, street_number, street_name, city, country_name, C.country_id
from address A left join country C
on A.country_id = C.country_id;
