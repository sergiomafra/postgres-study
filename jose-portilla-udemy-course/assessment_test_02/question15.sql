-- Question 15
-- How can you produce a list of the start times
-- for bookings by members named 'David Farrell'?

SELECT bok.starttime
FROM cd.bookings AS bok
INNER JOIN cd.members AS mem ON mem.memid = bok.memid
WHERE mem.firstname = 'David'
AND mem.surname = 'Farrell';
