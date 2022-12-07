select b.book_id as `ISBN code`, title, group_concat(author) as author, `page`, price, publisher_name as `publisher name`, `date` as `publishing date`, topic, group_concat(review) as reviews, avg(grade) as `average grade`
from book as b, publishing as pg, publisher as p, author_list as a, orders as o, topic_list as t
where b.book_id = pg.book_id and pg.publisher_name = p.`name` and b.book_id = a.book_id and b.book_id = o.book_id and b.book_id = t.book_id
group by b.book_id;