--ex1
select * from customer where email is null;
--ex2
select * from customer where email is not null;

--ex3
select count(*) from film where release_year is null;

--ex4
select * from rental where return_date IS NULL;

--ex5
select count(*) from RENTAL where return_date IS NOT NULL;


