--- Which actor has appeared in the most films? --- 

SELECT actor_id FROM film_actor  GROUP BY actor_id ORDER BY COUNT(actor_id) DESC; 

SELECT * FROM actor WHERE actor_id = 107; 

	-- Nested Query Version --
SELECT * FROM actor WHERE actor_id = (
	SELECT actor_id FROM `film_actor` GROUP BY `actor_id`  ORDER BY  COUNT(film_id) DESC LIMIT 1
);

	  

-- What is that average running time of all the films in the database? --

SELECT AVG(length) AS 'Average Length'  
FROM film; 

	  
--What is the average running time of films by category?--

SELECT  AVG(length) AS 'Average Length'
FROM film_list 
GROUP BY category 
ORDER BY category ASC;
 

--How many movies have Robots in them?--

SELECT `description` 
FROM film WHERE `description` 
LIKE '%Robot%';

	  

--Find the movie(s) with the longest runtime.-- 

SELECT * FROM film 
ORDER BY length DESC: 

	  

--Count how many movies were released in 2010.-- 

SELECT * FROM film
WHERE release_year  =  2010/01/01 
  

--Which last names are not repeated?--

SELECT last_name AS 'Last Name', COUNT(last_name) AS 'People with Last Name' FROM actor GROUP BY last_name HAVING COUNT(last_name) = 1;	 
  
