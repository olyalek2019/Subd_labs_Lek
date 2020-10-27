use my_publishing_housedb;
select Book_name as bestbook, (count(distinct customer_order.Id_customer_order)*2) as rating
from book inner join customer_order 
on book.Id_book=customer_order.Id_book
where month(customer_order.Order_date)=(month(current_date)-1)
group by Book_name;

select A_name,avg(char_length(Email)) as Email_length
	from author
    group by A_name;

select Publishing_year,
count(Id_book) as number_of_books
from book
group by Publishing_year with rollup;


select year(Order_date) as year,
count(Id_customer_order) as number_of_books
from customer_order
group by year with rollup;

select customer_order.Id_book, book.Book_name, count(*) as Number_of_orders
from book inner join customer_order
on book.Id_book=customer_order.Id_book
group by Id_book;