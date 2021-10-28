-- joins
-- unir tablas
/**/
SELECT * FROM actor, film_text;
/*relacionadas, sin relación directa copia todos los registros, los duplica*/
SELECT * FROM actor, film_actor;
/*le pido que cuente de la tabla actor que me de la cantidad de todos los actor_id*/
SELECT COUNT(actor.actor_id) FROM actor, film_actor;
/*seleccioname city_id, city y country estos campos los voy a querer de la tabla cty y country*/
SELECT city_id, city, country FROM city, country;
/*on relacion, yo quiero que coincida con */
/*INNER JOIN las mezcla con coincidencias*/
/*especificar con city.country_id nombre de la tabla- columna country.id*/
/*Para las relaciones deben tener campos entre si*/
SELECT city_id, city, country FROM city INNER JOIN country ON city.country_id = country.country_id;

/*Mezclar mas de dos tablas*/
SELECT film.film_id, first_name, last_name, title FROM film 
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON film_actor.actor_id = actor.actor_id
/*Buscar id del actor*/
WHERE actor.actor_id=155;
