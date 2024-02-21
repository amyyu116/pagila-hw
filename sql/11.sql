/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */
SELECT film.film_id, film.title, COUNT(inventory.film_id) as count
FROM film
INNER JOIN inventory ON film.film_id = inventory.film_id
WHERE film.title ILIKE 'h%'
GROUP BY film.film_id
ORDER BY film.title DESC; 
