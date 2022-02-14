/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */
Select film.film_id, film.title, film.language_id, language.name
From film
join(select language_id, name from language) language using (language_id)
Where film.title ilike 'k%' or film.title ilike 'q%' and film.language_id = 1
Order by title;
