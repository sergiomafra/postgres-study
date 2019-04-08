-- Question 03
-- How can you produce a list of facilities that
-- charge a fee to members?

SELECT name
FROM cd.facilities
WHERE membercost > 0;
