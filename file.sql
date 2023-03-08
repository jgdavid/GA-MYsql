--- Which actor has appeared in the most films? --- 

SELECT actor_id FROM film_actor  GROUP BY actor_id ORDER BY COUNT(actor_id) DESC; 

SELECT * FROM actor WHERE actor_id = 107; 

	  

-- What is that average running time of all the films in the database? --

SELECT AVG(length)  FROM film; 

	  

What is the average running time of films by category? 

 SELECT AVG(length) FROM film GROUP BY film_id; 

How many movies have Robots in them? 

	  

Find the movie(s) with the longest runtime. 

SELECT * FROM film ORDER BY length DESC: 

	  

Count how many movies were released in 2010. 

SELECT * FROM film WHERE release_year  =  2010/01/01 

	  

Which last names are not repeated? 

SELECT last_name, COUNT(last_name) FROM actor GROUP BY last_name, HAVING COUNT(last_name) = 1;	  
