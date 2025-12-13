--🟢 Basic
--ex1
select first_name from actor
union
select first_name from customer;

--ex2
select first_name from actor
union ALL
select first_name from customer;

--ex3




--ex4
select title from film
union 
select first_name from customer;

--ex5
select distinct store_id from inventory
union
select distinct store_id from staff;

--🟡 Intermediate
--ex1


--ex2
select film_id from inventory 
except 
select i.film_id
from rental as r join inventory as i
on i.inventory_id=r.inventory_id;

--ex3
select a.actor_id from film
as f join film_actor as fa 
on f.film_id=fa.film_id
join actor as a 
on a.actor_id=fa.actor_id 
union all 
select c.customer_id from customer as c
join rental as r 
on c.customer_id=r.customer_id;

--ex4
select staff_id from payment
intersect 
select staff_id from rental;


--ex5
select title from film
except
select f.title from film as f
join inventory as i 
on f.film_id=i.film_id;


--🟠 Advanced
--ex1
select language_id from film 
intersect 
select language_id from language;

--ex2




--ex3
select c.email from customer as c
join rental as r 
on c.customer_id=r.customer_id
union
select c.email from customer as c
join payment as p 
on c.customer_id=p.customer_id;

--ex4
SELECT DISTINCT film_id
FROM inventory
UNION
SELECT DISTINCT i.film_id
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id;

--ex5
select i.film_id from inventory as i
join rental as r 
on i.inventory_id=r.inventory_id 
except 
select film_id from inventory;

--🔴 Applied Scenarios
--ex1
select customer_id from rental 
except
select customer_id from payment;

--ex2
select customer_id from rental 
intersect
select customer_id from payment;

--ex3



--ex4

--ex5


--⚫ Mixed Logic
--ex1
select first_name from staff 
union
select first_name from customer 

--ex2
select store_id from staff
except 
select store_id from inventory

--ex3
select language_id from film 
intersect 
select language_id from language

--ex4

