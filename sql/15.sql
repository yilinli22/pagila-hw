/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
select category.name, film.sum from category 
join (select category_id, sum(language.language_id) as sum from film_category 
join (select film_id, language_id from film) language using (film_id) group by film_category.category_id)
film using (category_id);
