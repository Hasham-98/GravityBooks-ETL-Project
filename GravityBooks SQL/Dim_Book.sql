-- sql command for Dim_Book

select book_id, title, isbn13,language_code,language_name, publisher_name,num_pages,
       publication_date, L.language_id, B.publisher_id
from book B left join publisher P
on B.publisher_id = P.publisher_id
left join book_language L
on B.language_id = L.language_id;
