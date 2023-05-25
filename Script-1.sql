-- Question 1
-- How many actors are there with the last name 'Wahlberg'?
-- Answer: 2
select COUNT(LAST_NAME)
from ACTOR
where LAST_NAME like 'Wahlberg';

-- Question 2
-- How many payments were made between $3.99 and $5.99
-- Answer: 0
select COUNT(AMOUNT)
from PAYMENT 
where 3.99 < AMOUNT and amount < 5.99;

-- Question 3
-- What film does the store have the most of?
-- Answer: Crossroads Casualties (There are a lot more with the same count this is just the first one)
select COUNT(FILM_ID), FILM_ID
from INVENTORY 
group by FILM_ID
order by COUNT desc;

-- Question 4
-- How many customers have the last name 'William'?
-- Answer: 0
-- It is telling me that last_name is Customers does not exist so I used customer
select COUNT(LAST_NAME)
from Customer
where LAST_NAME like 'William';

-- Question 5
-- What store employee (get the id) sold the most rentals
-- Answer: Jon, staff_id: 2
select COUNT(PAYMENT_ID), STAFF_ID 
from PAYMENT 
group by STAFF_ID 
order by COUNT desc;

-- Question 6
-- How many different district names are there?
-- Answer: 378
 select COUNT(DISTRICT)
 from ADDRESS
 group by DISTRICT 
 order by COUNT desc;

--Question 7
-- What film has the most actors in it?
-- Answer: Lambs Cincinatti
select COUNT(ACTOR_ID), FILM_ID
from FILM_ACTOR
group by FILM_ID
order by COUNT desc;

-- Question 8 
-- From store_id 1, how many customers have a last name ending with 'es'(use customer table)
-- Answer: 13
select COUNT(LAST_NAME)
from CUSTOMER 
where LAST_NAME like '%es' and STORE_ID = 1;

-- Question 9 
-- How many payment amounts(4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430?
select COUNT(AMOUNT), AMOUNT
from PAYMENT 
where CUSTOMER_ID > 380 and CUSTOMER_ID < 430
group by AMOUNT 
order by COUNT desc;

-- Question 10
-- Within the film table, how many rating categories are there? And what rating has the most movies total?
-- ANSWER: 5 rating categories with most movies being rated PG-13 
select COUNT(FILM_ID), rating
from film 
group by RATING 
order by COUNT desc;