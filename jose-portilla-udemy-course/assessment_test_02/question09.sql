-- Question 09
-- You'd like to get the signup date of your last
-- member. How can you retrieve this information?

-- My Solution
SELECT joindate
FROM cd.members
ORDER BY joindate DESC
LIMIT 1;

-- Jose Portilla Solution (more straight forward, simpler)
SELECT MAX(joindate) AS latest
FROM cd.members;
