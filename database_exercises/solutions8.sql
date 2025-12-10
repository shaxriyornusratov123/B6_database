--LEVEL1
--ex1
select f.title,l.name from film as f join language as l on f.language_id=l.language_id;

--ex2
sakila_db=# select a.first_name,a.last_name from actor as a
join film_actor as fa on a.actor_id=fa.actor_id 
join film as f on fa.film_id=f.film_id where f.title='ACADEMY DINOSAUR';

--ex3 
select c.first_name , c.email from customer as c 
join address as a on c.address_id=a.address_id;

--ex4 
select c.first_name, c.last_name, s.store_id  from customer as c 
join store as s on c.store_id=s.store_id;

--ex5 
select f.title, c.name from film as f join film_category 
as fc on f.film_id=fc.film_id 
join category as c on fc.category_id=c.category_id;

--ex6
select s.first_name, s.last_name , add.address from staff 
as s join address as add on s.address_id=add.address_id;


--ex7
select f.title from customer as c
join rental as r on c.customer_id=r.customer_id
join inventory as i on r.inventory_id=i.inventory_id
join film as f on i.film_id=f.film_id
where c.first_name='MARY'  and c.last_name='SMITH';

--LEVEL2
--ex1
select DISTINCT c.first_name, c.last_name from customer as c
join rental as r on c.customer_id=r.customer_id ;

--ex2
select f.title,c.name from film as f 
join film_category as fc 
on f.film_id=fc.film_id
join category as c 
on fc.category_id= c.category_id
where c.name='Comedy';

--ex3
select p.payment_id ,c.first_name, c.last_name from payment as p 
join customer as c on p.customer_id=c.customer_id ;

--ex4
select title , rental_rate,length from film 
where length>120


--ex5
SELECT s.first_name, s.last_name
FROM staff AS s
JOIN rental AS r 
ON s.staff_id = r.staff_id;


--ex6
select c.first_name ,c.last_name ,ci.city from customer as c
join address as a on c.address_id=a.address_id 
join city as ci on a.city_id=ci.city_id;


--LEVEL3
--ex1
select c.first_name,c.last_name ,f.title ,r.rental_date from customer as c
join rental as r on c.customer_id=r.customer_id
join inventory as i on r.inventory_id=i.inventory_id
join film as f on i.film_id=f.film_id;


--ex2
select f.title, a.first_name,a.last_name,c.name from film as f
join film_actor as fa on f.film_id=fa.film_id 
join actor as a on fa.actor_id=a.actor_id 
join film_category as fc on f.film_id=fc.film_id 
join category as c on fc.category_id=c.category_id;

--ex3
SELECT r.rental_id,
c.first_name AS customer_first,
c.last_name AS customer_last,
s.first_name AS staff_first,
s.last_name AS staff_last,
f.title,
r.rental_date
FROM rental AS r
JOIN customer AS c ON r.customer_id = c.customer_id
JOIN staff AS s ON r.staff_id = s.staff_id
JOIN inventory AS i ON r.inventory_id = i.inventory_id
JOIN film AS f ON i.film_id = f.film_id;



--ex4
select c.first_name,c.last_name ,c.email,ci.city from customer as c
join store as s on  c.store_id=s.store_id 
join address as a on  s.address_id=a.address_id 
join city as ci on a.city_id=ci.city_id;


--ex5





--BASIC LEVEL
--ex1
select f.title,l.name from film as f
inner join language as l 
on f.language_id=l.language_id;

--ex2
select a.first_name,a.last_name ,f.title from actor as a
inner join film_actor as fa on a.actor_id=fa.actor_id
inner join film as f on fa.film_id=f.film_id;

--ex3
select c.first_name,c.last_name ,r.rental_date from customer as c
inner join rental as r on c.customer_id=r.customer_id;

--ex4
select s.first_name,s.last_name ,a.address from staff as s 
inner join address as a on s.address_id=a.address_id;


--ex5
select p.payment_id,c.first_name,c.last_name from payment as p
inner join customer as c on p.customer_id=c.customer_id;

--Intermediate Level
--ex1
select f.title , c.name from film as f
inner join film_category as fc on f.film_id=fc.film_id
inner join category as c on fc.category_id=c.category_id;

--ex2
select a.first_name,a.last_name,count(fa.film_id) from actor as a
inner join film_actor as fa on a.actor_id=fa.actor_id 
inner join film as f on fa.film_id=f.film_id
group by a.actor_id , a.first_name,a.last_name
order by count(fa.film_id) 

--ex3
select c.first_name,c.last_name ,s.store_id from customer as c
inner join rental as r on c.customer_id=r.customer_id
inner join inventory as i on r.inventory_id=i.inventory_id
inner join store as s on i.store_id=s.store_id
where s.store_id=1;

--ex4
select f.title ,c.first_name,c.last_name, r.rental_date from film
as f inner join inventory as i on f.film_id=i.film_id 
inner join rental as r on i.inventory_id=r.inventory_id 
inner join customer as c on r.customer_id=c.customer_id 
where r.rental_date between '2005-05-01' and '2005-05-31';

--ex5
select s.first_name,s.last_name, p.amount from staff as s
inner join payment as p on s.staff_id=p.staff_id 
where p.amount>5.00;


--Advanced Level
--ex1
select f.title , count(r.rental_id) from film as f 
inner join inventory as i on f.film_id=i.film_id
inner join rental as r on i.inventory_id=r.inventory_id 
group by f.title 
having count(r.rental_id)>10;

--ex2
select c.first_name,c.last_name, count(distinct ca.category_id) as category_count from customer as c                                                
inner join rental as r on c.customer_id=r.customer_id
inner join inventory as i on r.inventory_id=i.inventory_id
inner join film as f on i.film_id=f.film_id
inner join film_category as fc on f.film_id=fc.film_id  
inner join category as ca on fc.category_id=ca.category_id
group by c.customer_id,c.first_name,c.last_name 
having count(distinct ca.category_id)>1;


--ex3

