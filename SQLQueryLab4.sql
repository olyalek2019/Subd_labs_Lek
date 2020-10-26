use my_publishing_housedb;
delete from customer_order
	where Order_date<'2019-12-15';

update author set House_num='44'
	where A_address='Konyska';
update author set Cellphone=997824987
	where A_surname='Williams';

Insert into publishing_house values (1, "Luminiscence", 506034222, 2381142, "pb_luminiscence@gmail.com", 
	"www.lumimescence.com", "Kyiv", "Povitryana", "34a", "Kyiv", "34891");
    
Insert into
	publishing_house values (2, "Alpaca", 503434212, 2371288, "pb_alpaca@gmail.com", 
	"www.alpaca.com.ua", "Lviv", "Rynok Square", "14", "Lviv", "79013"),
							(3, "Mirror", 972409718, 2552988, "pb_mirror@yahoo.com", 
	"www.mirror.net", "Kharkiv", "Lvivska", "167", "Kharkiv", "67045"),
							(4, "Kobra", 972662086, 2994287, "kobra@yahoo.com.ua", 
	"www.kobra.com.ua", "Sumy", "Sonyachna", "19", "Sumy", "67135"),
							(5, "Lehenda", 972409718, 2552988, "lehenda_pb@yahoo.com.ua", 
	"www.lehenda.ua", "Vinnytsa", "Lvivska", "67", "Vinnytsa", "18971");

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/author_data.csv'
	into table my_publishing_housedb.author
	fields terminated by ';'
	lines terminated by '\n'
    ignore 1 lines;

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/buyer_data.csv'
	into table my_publishing_housedb.buyer
	fields terminated by ';'
	lines terminated by '\n'
    ignore 1 lines;
    
load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tp_data.csv'
	into table my_publishing_housedb.typography
	fields terminated by ';'
	lines terminated by '\n'
    ignore 1 lines;
    
load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/pb_type_data.csv'
	into table my_publishing_housedb.publishing_type
	fields terminated by ';'
	lines terminated by '\n'
    ignore 1 lines;
    
load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/book_data.csv'
	into table my_publishing_housedb.book
	fields terminated by ';'
	lines terminated by '\n'
    ignore 1 lines;

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customer_order_data.csv'
	into table my_publishing_housedb.author
	fields terminated by ';'
	lines terminated by '\n'
    ignore 1 lines; 
