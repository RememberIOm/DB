alter table topic_list add foreign key(book_id) references book(book_id);
alter table author_list add foreign key(book_id) references book(book_id);
alter table orders add foreign key(book_id) references book(book_id);
alter table orders add foreign key(customer_id) references customer(customer_id);
alter table publishing add foreign key(book_id) references book(book_id);
alter table publishing add foreign key(publisher_name) references publisher(`name`);