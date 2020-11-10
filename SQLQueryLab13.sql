use my_publishing_housedb;

explain select straight_join book.Book_name as book_name, count(customer_order.Id_customer_order) as amount
            from (buyer inner join customer_order)inner join book 
            on buyer.Buyer_name = Buyer_name
            and buyer.Id_buyer=customer_order.Id_buyer
            and customer_order.Id_book=book.Id_book
            where customer_order.Order_date between '2020-09-28'  and '2020-10-31'
			GROUP BY book_name;

explain select book.Book_name as book_name, count(customer_order.Id_customer_order) as amount
            from (buyer inner join customer_order)inner join book 
            on buyer.Buyer_name = Buyer_name
            and buyer.Id_buyer=customer_order.Id_buyer
            and customer_order.Id_book=book.Id_book
            where customer_order.Order_date between '2020-09-28'  and '2020-10-31'
			GROUP BY book_name;

create index bookINDX3 on book (Id_book, Book_name);
show index from book;

create index customer_orderIND3 on customer_order (Id_customer_order, Id_book);
show index from customer_order;

show index from book;
show index from customer_order;