-- Extrae todos los datos de las tablas de actor, film y customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- Extrae todas los títulos de películas de la tabla film
SELECT title FROM sakila.film;

-- Extrae el listado de idiomas usados en las películas
SELECT name FROM sakila.language;

	-- Son 6 idiomas distintos

-- Extrae el nombre de todos los empleados
SELECT first_name FROM sakila.staff;

	-- Hay 2 empleados: Mike y Jon

-- Extrae todos los valores únicos para el año
SELECT DISTINCT release_year
FROM sakila.film;

	-- solo hay películas de 2006

-- Determina el número de tiendas que tiene
SELECT COUNT(store_id)
FROM sakila.store;
	
	-- hay dos tiendas

-- Determina el número de empleados que tiene la compañía
SELECT COUNT(staff_id)
FROM sakila.staff;

	-- tiene dos empleados

-- Determina cuántas películas están disponibles para alquilar y cuántas han sido alquiladas
SELECT COUNT(inventory_id)
FROM sakila.inventory;

SELECT COUNT(inventory_id)
FROM sakila.rental;

	-- hay 4581 películas en el inventario e históricamente se han alquilado 16044 películas

-- Determina el número de apellidos únicos de actores
SELECT COUNT(DISTINCT last_name) AS unique_last_name
FROM sakila.actor;

	-- hay 121 apellidos únicos

-- Extrae las 10 películas más largas
SELECT title, length
FROM sakila.film
ORDER BY length DESC
LIMIT 10;

-- Extrae todos los actores con el primer nombre SCARLETT
SELECT *
FROM sakila.actor
WHERE first_name = "SCARLETT";

	-- Son dos SCARLETT DAMON y SCARLETT BENING
    
-- Extrae todas las películas que tienen ARMAGEDDON en el título y que duran más de 100 minutos
SELECT title
FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

	-- Hay 4 películas: LADYBUGS ARMAGEDDON, METAL ARMAGEDDON, STAGECOACH ARMAGEDDON y STEERS ARMAGEDDON

-- Determina cuántas películas tienen contenido 'Behind the scenes'
SELECT COUNT(title)
FROM sakila.film
WHERE special_features = 'Behind the Scenes';

	-- Son 70
