/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */
Select film.title from film_category
join( select category_id, name from category) category using (category_id)
join( select film_id, title from film) film using (film_id)
Where category.name = 'Family';
