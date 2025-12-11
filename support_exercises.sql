--BASIC

--ex1
select a.address from customer as c 
inner join address as a 
on c.address_id=a.address_id
where c.active=1;

--ex2
select title from film 
where release_year=2006 and rental_rate>2;

--ex3
select i.store_id from inventory as i
inner join film as f 
on i.film_id=f.film_id;

--ex4
select email from customer where email like '%@gmail.com';

--ex5
select round(avg(length),2), min(length),max(length) from film;

--ex6
select rental_id from rental 
where rental_date between '2005-05-01' and '2005-05-31' ;

--ex7
select count(customer_id) from customer 
where active=1;

--ex8
select * from film 
order by rental_rate 

--ex9
select  title from film 
order by replacement_cost desc;

--ex10
select store_id from inventory as i ---------------------------------------------------------------
group by store_id ;                 -----------------------------------

--ex11
select title from film where title  LIKE 'A%';

--ex12
select first_name from customer where first_name ILIKE '%jo%';

--ex13
select title from film where rental_rate > 2 and  replacement_cost > 20 ;

--ex14
select first_name from actor 
union
select first_name from customer 

--ex15
select first_name from actor 
union all
select first_name from customer 


--MIDDLE
--ex1
select c.first_name,c.last_name ,r.rental_id from  customer as c
inner join rental as r
on c.customer_id=r.customer_id;

--ex2

select s.first_name,s.last_name , st.store_id from staff
as s left join store as st 
on s.store_id=st.store_id

--ex3
select r.rental_id,i.inventory_id  from rental as r
right join inventory as i 
on r.inventory_id=i.inventory_id

--ex4
select f.title, l.name from film  as f 
full join language as l 
on f.language_id=l.language_id 
where f.title is null or l.name is null;

--ex5



--ex6
select length,rental_rate from film 
order by length,rental_rate;

--ex7
select length,rental_rate from film 
order by length,rental_rate DESC

--ex8
select distinct film_id from inventory order by film_id;

--ex9
select first_name,last_name from customer where email like '%@yahoo.com';

--ex10
select avg(rental_rate), min(rental_rate), max(rental_rate), 
avg(replacement_cost), min(replacement_cost), max(replacement_cost) from film;











