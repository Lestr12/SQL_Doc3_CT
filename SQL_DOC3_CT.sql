
SELECT first_name, last_name 
FROM customer 
INNER JOIN address 
ON customer.address_id = address.address_id 
WHERE district = 'Texas';


SELECT cust.first_name, cust.last_name, pay.amount
FROM customer AS cust
INNER JOIN payment AS pay
ON cust.customer_id = pay.customer_id
WHERE pay.amount > 6.99;


SELECT cust.customer_id, cust.first_name, cust.last_name, pay.amount
FROM customer AS cust
INNER JOIN payment AS pay
ON cust.customer_id = pay.customer_id
GROUP BY cust.customer_id, pay.amount 
HAVING SUM(pay.amount) > 175.00
ORDER BY SUM(pay.amount) DESC;


SELECT * FROM customer;


SELECT * FROM address;


SELECT * FROM city;


SELECT * FROM country;


SELECT * FROM payment 
WHERE customer_id = 341;


SELECT first_name, last_name, customer_id 
FROM customer 
FULL JOIN address 
ON customer.address_id = address.address_id
FULL JOIN city 
ON address.city_id = city.city_id
FULL JOIN country 
ON city.country_id = country.country_id
WHERE country = 'Nepal'
GROUP BY customer_id;


SELECT * FROM payment;


SELECT * FROM amount;


SELECT * FROM store;


SELECT * FROM staff;


SELECT staff_id, COUNT(*) AS transaction_count
FROM payment
GROUP BY staff_id
ORDER BY transaction_count DESC
LIMIT 1;


SELECT * FROM film;


SELECT rating, COUNT(*) 
FROM film 
GROUP BY rating;


SELECT cust.customer_id, cust.first_name, cust.last_name, pay.amount 
FROM customer AS cust
INNER JOIN payment AS pay
ON cust.customer_id = pay.customer_id
WHERE pay.amount > 6.99;


SELECT COUNT(*) AS free_rentals
FROM payment
WHERE amount = 0;
