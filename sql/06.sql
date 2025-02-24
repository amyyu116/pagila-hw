/*
 * List the last names of actors, as well as how many actors have that last name.
 * HINT:
 * Use the count() aggregation function and group by the actor's last name.
 */
SELECT last_name, COUNT(last_name) AS last_name_count FROM Actor GROUP BY last_name ORDER BY COUNT(last_name) DESC;
