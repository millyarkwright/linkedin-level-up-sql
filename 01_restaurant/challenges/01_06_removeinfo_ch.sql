-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

Select * from Reservations;

SELECT * FROM Reservations
JOIN Customers ON Reservations.CustomerID = Customers.CustomerID
WHERE Customers.FirstName = 'Norby'
AND Reservations.Date > '2022-07-24';

-- Reservations.Date column is stores as a string in the format 'yyyy-mm-dd hh:mm:ss', SQLite will compare the string values lexicographically (i.e., based on their alphabetical order).
-- The comparison operator > is used to match any rows where the Reservations.Date value is greater than '2022-07-24' (ie after the 24th July). Since the string '2022-07-24' is in the format 'yyyy-mm-dd', any Reservations.Date value with a later date will have a greater string value lexicographically, and will therefore match the condition.

DELETE FROM Reservations WHERE ReservationID = 2000;

-- All in one go

DELETE FROM Reservations 
WHERE ReservationID = (
  SELECT ReservationID FROM Reservations
  JOIN Customers ON Reservations.CustomerID = Customers.CustomerID
  WHERE Customers.FirstName = 'Norby'
  AND Reservations.Date > '2022-07-24'
  )
;


