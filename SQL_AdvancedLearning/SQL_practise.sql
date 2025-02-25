Use sakila;

-- 1. All films with PG-13 with rental of 2.99 or lower
SELECT * FROM film f
WHERE f.rental_rate <= 2.99
AND f.rating ='PG-13';

-- 2. All films that have deleted scenes
SELECT f.title, f.release_year, f.special_features
FROM film f
WHERE f.special_features like '%Deleted Scenes%';

-- 3. All active customers
SELECT * FROM customer
where active = 1;

-- 4. Names of the customers who rented a movie on 26th July 2005
Select r.rental_id, r.rental_date, r.customer_id,
concat( c.first_name,' ',  c.last_name) AS 'Customer Name' from rental r
join customer c on c.customer_id=r.customer_id
where date(r.rental_date) = '2005-07-26';

-- 5. Distinct names of customers who rented a movie on 26th July 2005
Select distinct r.customer_id, 
concat( c.first_name,' ',  c.last_name) AS 'Customer Name' from rental r
join customer c on c.customer_id=r.customer_id
where date(r.rental_date) = '2005-07-26';


-- 6. How many rental we do on each day?
select date(rental_date) d, count(*) 
from rental
GROUP BY date(rental_date);


-- 7. All sci-fi movies in our catalogue
select fc.film_id, fc.category_id, c.name, f.title, f.release_year from film_category fc
join category c  on c.category_id = fc.category_id
join film f on f.film_id = fc.film_id
where c.name='Sci-Fi';

-- 8. Customers and how many movies they rented from us so far
Select r.customer_id,c.first_name, c.email, count(*) 'Count'
from rental r
join customer c on c.customer_id=r.customer_id
group by r.customer_id
order by count(*) desc;

-- 9. Which movie should we discontinue from our catalogue (less than 1 lifetime rental)

with low_rentals as 
(select inventory_id, count(*) 
from rental r
group by inventory_id
having count(*) <= 1)

select  low_rentals.inventory_id , i.film_id, f.title
from low_rentals  
join inventory i on i.inventory_id = low_rentals.inventory_id 
join film f on f.film_id =i.film_id;

-- 10. Which movies are not returned yet
select rental_date , customer_id , i.film_id,  f.title
from rental r 
join inventory i on i.inventory_id = r.inventory_id
join film f on f.film_id = i.film_id
where r.return_date is NULL
order by f.title;



