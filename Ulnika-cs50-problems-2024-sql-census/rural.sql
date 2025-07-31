--In rural.sql, write a SQL statement to create a view named rural.
--This view should contain all census records relating to a rural municipality (identified by including “rural” in their name).
--Ensure the view contains all of the columns from the census table.

--How many rural districts are there? How many families live in rural districts?
--Using your rural view, you should find there are 461 rural districts with 2,229,834 families.


CREATE VIEW "rural" AS
SELECT * FROM "census"
WHERE "locality" LIKE "%rural%"

--SELECT COUNT("district"), SUM("families")  FROM "rural"
