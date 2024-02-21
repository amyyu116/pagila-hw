/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
SELECT category.name, COUNT(film.film_id) as sum
FROM film
JOIN film_category ON film_category.film_id = film.film_id
JOIN category ON category.category_id = film_category.category_id
JOIN language ON language.language_id = film.language_id
WHERE language.name = 'English'
GROUP BY category.name
ORDER BY category.name;
