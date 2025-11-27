
--ex1
insert into customer(store_id,first_name,last_name,address_id) values(1,'Ali','Karimov',5)

--ex2
insert into film(title,length,rental_rate,language_id) values('HE UNKNOWN ENGINEER',120,3.99,1)

--ex3
insert into rental(customer_id,inventory_id,rental_date,staff_id) values(5,10,'2025-01-01 13:00:00.000Z',2)

--ex4
insert into  staff(first_name,last_name,address_id,username,store_id) values ('John','White',1,'john',1)

--ex5
insert into actor(first_name,last_name) values ('Aisha','Khan'),('Omar','Malik'),('Layla','Noor');

--ex6
insert into category(name) values ('Machine Learning')

--ex8
insert into staff(store_id,first_name,last_name,email,address_id,username) values (1,'eshmat','toshmatov','eshmat01@gmail.com',1,'eshmat01')

--ex9
insert into payment(customer_id,amount,payment_date,staff_id,rental_id) values (8,5.99,'2025-01-01 13:00:00.000Z',2,1000)

--ex10
insert into language (language_id,name) values (11,'uzbek')

--ex11


update customer set email='alikarimov@gmail.com' where customer_id=601


--ex12 
update film set rental_rate = rental_rate + 1.00 where length >150


--ex13
update category set name='artificial intelegence' where category_id=1

--ex14
update customer set activebool=false where last_update>'2025-01-01 13:00:00.000'
 
 


--ex16
update payment set amount=amount*0.1 where amount > 10.00

--ex17
update inventory set last_update='2025-01-01 13:00:00.000'


--ex18
update staff set store_id =2 where store_id=1

--ex19
update film set rating='PG'  where title like '%LOVE%'

--ex20

update actor set last_name='Malyk' where actor_id=207
