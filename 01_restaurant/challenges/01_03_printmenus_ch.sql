-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).

SELECT * FROM Dishes
ORDER BY Price;

SELECT Type, Name, Description, Price FROM Dishes
ORDER BY Price;

-- Create a report showing appetizers and beverages.

SELECT * FROM Dishes
WHERE type = "Beverage" OR type = "Appetizer";

SELECT Type, Name, Description, Price FROM Dishes
WHERE type = "Beverage" OR type = "Appetizer";

-- Create a report with all items except beverages.

SELECT * FROM Dishes
WHERE type != "Beverage";

SELECT Type, Name, Description, Price FROM Dishes
WHERE type != "Beverage";