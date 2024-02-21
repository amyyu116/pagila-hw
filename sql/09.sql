/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
SELECT staff.first_name, staff.last_name, SUM(payment.amount) as sum
FROM staff
INNER JOIN payment ON staff.staff_id=payment.staff_id
WHERE EXTRACT(YEAR FROM payment.payment_date) = 2020
AND EXTRACT(MONTH FROM payment.payment_date) = 1
GROUP BY staff.staff_id
ORDER BY sum ASC;
