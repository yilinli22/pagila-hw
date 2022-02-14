/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
select first_name, last_name, payment.sum from
(select staff_id, sum(amount) as sum from payment where payment_date < '2020-02-01' group by staff_id) payment join staff using (staff_id)
order by last_name DESC;
