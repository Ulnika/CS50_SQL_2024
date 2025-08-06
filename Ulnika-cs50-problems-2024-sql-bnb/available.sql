/*Available
In available.sql, write a SQL statement to create a view named available.
This view should contain all dates that are available at all listings. Ensure the view contains the following columns:

id, which is the id of the listing from the listings table.
property_type, from the listings table.
host_name, from the listings table.
date, from the availabilities table, which is the date of the availability.

How many listings have availability for December 31st, 2023 (i.e., “2023-12-31”)? Use your available view to find that there are 2,251.
How many of those are available on any type of boat? You should find that there are 7. Enjoy your New Year’s Eve afloat!*/

--DROP VIEW "available";

CREATE VIEW "available" AS
SELECT "listings"."id", "listings"."property_type", "listings"."host_name", "availabilities"."date" FROM "listings"
JOIN "availabilities"  ON "availabilities"."listing_id" = "listings"."id"
WHERE "availabilities"."available" = "TRUE"

--SELECT COUNT(DISTINCT("id"))  FROM "available"
--WHERE "date"= "2023-12-31" AND "property_type" LIKE "%boat%"




