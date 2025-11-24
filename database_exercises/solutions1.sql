 --ex1 
 select * from customer;

 --ex2
  select first_name, last_name from customer;
 
 --ex3 
 select rating from film;

 --ex4 
 select * from film 
    where rental_rate>4;

--ex5
select * from actor
where first_name='PENELOPE';

--ex6
insert into actor (first_name,last_name) values ('lucy','van pelt');

--ex7
select * from film
where title='ACADEMY DINOSAUR';

--ex8
select * from actor
where last_name='NOLTE';

--ex9
select * from film
where replacement_cost<10.00;

--ex10
insert into language(name) values ('Finnish');

--ex11
select title,release_year from film ;

--ex12
SELECT language_id from film;

--ex13
select * from customer where customer_id=50;

--ex14
SELECT * from film 
where release_year=2006;

--ex15
select * from actor
where first_name='SANDRA';

--ex16
insert into category(name) values ('MYSTERY');

--ex17
select * from film
where rental_duration=6;

--ex18
select customer_id, first_name,  email from customer;

--ex19
select rating, rental_duration from  film;

--ex20
select * from actor
where first_name='WHOOPI';

--ex21
insert into film(title,language_id) values ('the greate escape',1);

--ex 22
select * from film
where rating in ( 'G', 'PG',  'PG-13');

--ex23
select * from customer 
where store_id=1;

--ex24
select * from actor
where last_name='DEGENERES';

--EX25
select * from film
where rental_rate between 1.00 and 3.00;

--ex26
insert into actor(first_name,last_name) values ('CHARLIE','CHAPLIN');

--ex27
select * from film 
where replacement_cost BETWEEN 12.00 AND 18.00;

--ex28
select * from actor
order by LAST_NAME;

--ex29
select * from FILM
order by title desc;

--ex30
select * from customer 
order by first_name;


