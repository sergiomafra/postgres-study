-- Question 05
-- How can you produce a list of all facilities
-- with the word 'Tennis' in their name?

SELECT name
FROM cd.facilities
WHERE name LIKE '%Tennis%';
