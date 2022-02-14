/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */
select film.film_id, film.title, inventory.count
From film
Join (select film_id, count(film_id) as count from inventory group by film_id) inventory using (film_id)
Where title ilike 'h%'
Order by title DESC;
