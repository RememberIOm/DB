select c.customer_id as ID, c.`name` as `name`, count(o.orders_id) as `point`, group_concat(title) as `구입 목록`, group_concat(b.book_id) as `구입 목록(ISBN)`, group_concat(review) as `작성한 서평`, group_concat(grade) as `평가한 점수`
from orders as o, book as b, customer as c
where b.book_id = o.book_id and c.customer_id = o.customer_id
group by c.customer_id