use my_publishing_housedb;
select book.Book_name, customer_order.Id_customer_order, publishing_house.Pb_name
	from(customer_order inner join book)
    inner join publishing_house
    on customer_order.Id_book=book.Id_book
    and customer_order.Id_pb=publishing_house.Id_pb
    order by book.Book_name;

select customer_order.Id_customer_order, book.Book_name, publishing_house.Pb_name
	from(customer_order inner join book)
    inner join publishing_house
    on customer_order.Id_book=book.Id_book
    and customer_order.Id_pb=publishing_house.Id_pb;

select Id_customer_order, Order_date
	from customer_order
    order by Order_date desc
    limit 5;

select Id_author, A_name, A_surname, City
	from author
    where City='Lviv' OR City='Kyiv'
    order by A_name asc;