--ex1
select * from film where rental_rate > 2.99 and length < 90

--ex2
select * from customer where first_name like 'M%' or first_name like 'A%'

--ex3
select * from film where rating!= 'R'

--ex4
select * from customer where ------------------


--ex5
select * from film ORDER BY film_id DESC LIMIT 10

--ex6
select * from actor where first_name like '%a' limit 5

--ex7
select * from staff where email like '%@sakilacustomer.org%'

--ex8
select * from payment where amount between 5.00 and 10.00

--ex9
select * from film where title like '%ACTION%' limit 10

--EX10
select * from customer where activebool=FALSE

--ex11
select * from address where address!='United States'

--ex12
select * from film where release_year>2005 and rating='PG' or rating='G'


--ex14
select * from film order by rental_rate desc limit 5

