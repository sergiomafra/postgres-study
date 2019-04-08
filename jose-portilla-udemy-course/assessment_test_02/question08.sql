-- Question 08
-- How can you produce an ordered list of the
-- first 10 surnames in the members table? The
-- list must not contain duplicates.

-- My Solution
SELECT *
FROM (
    SELECT surname
    FROM cd.members
    LIMIT 10
) AS sn
GROUP BY surname
ORDER BY sn.surname ASC;

-- Jose Portilla Solution
SELECT DISTINCT surname
FROM cd.members
ORDER BY surname
LIMIT 10;

-- My query return exactly what was asked.
-- First grab the first 10 and then order and
-- remove the duplicates.

-- Jose Portilla solution first order the selection
-- and then grab the first 10.

-- I understood that we need to order a list with
-- ten first surnames and not order and then get
-- the first ten surnames.
