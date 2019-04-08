-- Question 12
-- Produce a list of the total number of slots
-- booked per facility in the month of September
-- 2012. Produce an output table consisting of
-- facility id and slots, sorted by the number of
-- slots.

SELECT SUM(slots) as total_slots
FROM cd.bookings
WHERE starttime BETWEEN '2012-09-01 00:00:00' AND '2012-09-01 23:59:59'
GROUP BY facid
ORDER BY total_slots;
