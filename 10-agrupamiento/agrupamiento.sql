-- seleccionar cuales son las que duran 3 horas
SELECT * FROM film WHERE rental_duration = 3;

-- cuantas son
SELECT count (film_id) FROM film WHERE rental_duration = 3;


-- me dice cuales y cuantas
SELECT rental_duration, count(film_id) AS "Total" FROM film WHERE rental_duration = 3;

-- GROUP


-- De menor a mayor
SELECT rental_duration, count(film_id) AS "Total" FROM  film GROUP BY rental_duration ORDER BY Total ASC;

-- de mayor a menor

SELECT rental_duration, COUNT(film_id) AS "Total" FROM  film GROUP BY rental_duration ORDER BY Total DESC;

SELECT rental_duration, COUNT(film_id) AS "Total" FROM film GROUP BY rental_duration ORDER BY rental_id DESC;


-- Promedio

SELECT AVG(replacement_cost) AS "Costo promedio" FROM film;

-- suma total
SELECT SUM(replacement_cost) AS "Costo total de inventario" FROM film;


-- De todos los valores más alto
SELECT *, MAX(replacement_cost) FROM film;

-- MAX no devuelve todos los valores relacionados, solo el numero máximo

-- Incluye todo el registro del valor más alto
SELECT * FROM film ORDER BY replacement_cost DESC LIMIT 1;

