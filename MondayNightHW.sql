-- Monday night's homeowork (10 Questions)
-- 1. 
--Answer = Two actors
SELECT first_name,last_name
FROM actor
WHERE last_name LIKE 'Wahlberg';

-- 2.
-- Answer = 5607 payments
SELECT COUNT(payment)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- 3.
-- Answer = Brooklyn Desert
SELECT COUNT(DISTINCT inventory_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY film_id desc;

SELECT *
FROM film;

-- 4.
-- Answer = 0
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE 'William';


-- 5.
-- Answer = Mike
SELECT COUNT(rental_id), staff_id
FROM rental
GROUP BY staff_id
ORDER BY staff_id;

SELECT *
FROM staff;

-- 6.
-- Answer = 378
SELECT COUNT(DISTINCT district)
FROM address;

-- 7.
-- Answer = Lambs Cincinatti 
SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT desc;

SELECT title, film_id
FROM film
WHERE film_id = '508';

-- 8.
-- Answer = 326
SELECT COUNT(DISTINCT customer_id), store_id
FROM customer
WHERE store_id = 1
GROUP BY store_id;

-- 9.
-- Answer = ....
SELECT *
FROM payment;

-- 10. 
-- Answer = 5, PG-13 
SELECT COUNT(film_id), rating
FROM film
GROUP BY rating
ORDER BY rating; 