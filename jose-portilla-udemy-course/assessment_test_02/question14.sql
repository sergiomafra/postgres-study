-- Question 14
-- How can you produce a list of the start times
-- for bookings for tennis courts, for the date
-- '2012-09-21'? Return a list of start time and
-- facility name pairings, ordered by the time.

SELECT fac.name,bok.starttime
FROM cd.facilities AS fac
INNER JOIN cd.bookings AS bok ON fac.facid = bok.facid
WHERE fac.name LIKE 'Tennis Court%'
AND bok.starttime BETWEEN '2012-09-21 00:00:00' AND '2012-09-21 23:59:59'
ORDER BY bok.starttime;
