SELECT * FROM sakila.film_category;
/*Filtrar peliculas que sean de una categoria*/
/*in puede seleccionar diferentes valores para las consultas*/
SELECT * FROM film WHERE film_id IN (1,2,3);
SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id = 5);

/*Filtrar peliculas por actores*/
SELECT film_id FROM film_Actor WHERE actor_id = 1;
SELECT title, film_id FROM film WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id=3);
SELECT * FROM actor WHERE first_name IN ("JOHNNY");


/*BETWEEN entre elementos*/
SELECT * FROM film WHERE film_id BETWEEN 100 AND 128;
SELECT * FROM film WHERE film_id IN (1,2,3);
SELECT * FROM film WHERE film_id IN (100, 7, 33);
SELECT film_id FROM catergory WHERE category_id = 5;