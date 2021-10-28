-- Seleccionar por id

SELECT * FROM tabla WHERE id = 5;

-- Muestra arriba de 63

SELECT * FROM actor WHERE actor_id > 63;


-- muestra desde el 63

SELECT * FROM actor WHERE actor_id >= 63;

-- Seleccionar campo

SELECT actor_id, first_name, last_name FROM actor WHERE actor_id > 63;


-- Seleccionar elementos con id pares/ divisible entre dos

SELECT * FROM actor WHERE actor_id % 2 = 0;

-- Operador and

SELECT * FROM actor WHERE first_name = 'CHRIS' AND actor_id >50;

-- Se tengan la letra a

SELECT * FROM actor WHERE first_name LIKE "%a%";

-- Que acaben con la a

SELECT * FROM actor WHERE first_name LIKE "%a";

-- Que empiecen 
SELECT * FROM actor WHERE first_name LIKE "a%";
