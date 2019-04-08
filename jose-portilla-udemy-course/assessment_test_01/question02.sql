-- Question 02
-- How many films begin with the letter J?

SELECT COUNT(title)
FROM film
WHERE title LIKE 'J%';
