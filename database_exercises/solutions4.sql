--ex1
select count(amount) from payment;

--ex2
select sum(amount) from payment

--ex3
select avg(amount) from payment

--ex4
select min(amount),max(amount) from payment

--ex5
select customer_id, count(customer_id) from payment
group by customer_id

--ex6
select customer_id , sum(amount) from payment
group by customer_id

--ex7
select customer_id , round(avg(amount),2) from payment
group by customer_id


--ex8
select customer_id, count(customer_id) as payment_cutomer from payment
group by customer_id 
HAVING count(customer_id)>10

--ex9

select customer_id, sum(amount) as total_payments from payment
group by customer_id 
HAVING sum(amount)>150

--ex10
select customer_id, round(avg(amount),2) as avg_payments from payment
group by customer_id 
HAVING avg(amount)>5

--ex11
select staff_id, count(amount) as payment_count from payment
group by staff_id

--ex12
select staff_id, sum(amount) as payment_count from payment
group by staff_id

--ex13
select staff_id, sum(amount) as toatal_collected from payment
group by staff_id 
having sum(amount)>1000

--ex14
select staff_id, round(avg(amount),2) as avg_payment from payment
group by staff_id

--ex15
select date(payment_date) as payment_date,count(payment_date) as payment_count from payment
group by date(payment_date)

--ex16
select count(rental_id) from rental

--ex17
select min(rental_date) as erliest , max(rental_date) as latest from rental

--ex18
select customer_id , count(customer_id) from rental 
group by customer_id

--ex19
select customer_id , count(customer_id) rentals_count from rental 
group by customer_id
having count(customer_id)>20

--ex20
select round(avg(count_per_day),2) 
FROM (select count(rental_id) as count_per_day
from rental group by date(rental_date))

--ex 21
select count(rental_id) from rental group by staff_id;

--ex22
select staff_id,count(staff_id) as count_of_rentals from rental
group by staff_id
having count(staff_id)>100

--ex23
select date(return_date), count(return_date) from rental
group by date(return_date)


--ex24
select rental_id, count(rental_id) from  rental
group by date(rental_id)
having count(rental_id)>50-------------------------

--ex25
select staff_id, round(avg(rental_id),2) from rental
group by staff_id

--ex26
select count(customer_id) from customer

--ex27

select count(customer_id) from customer where active=1
