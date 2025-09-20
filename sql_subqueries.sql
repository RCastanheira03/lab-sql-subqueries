USE sakila;

-- 1. Determine the number of copies of the film "Hunchback Impossible" that exist in the inventory system.
SELECT count(inventory_id) as "Number of copies" FROM inventory as i
JOIN film_text as f
ON i.film_id = f.film_id
WHERE f.title = "Hunchback Impossible";

-- 2. List all films whose length is longer than the average length of all the films in the Sakila database.
SELECT title FROM film as f
WHERE f.length > (SELECT AVG(length) from film);

-- 3. Use a subquery to display all actors who appear in the film "Alone Trip".
SELECT a.first_name, a.last_name, f.title FROM actor as a
JOIN film_actor as fa
ON a.actor_id = fa.actor_id
JOIN film as f
ON fa.film_id = f.film_id
HAVING f.title = "Alone Trip";