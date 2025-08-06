/*Frequently Reviewed
In frequently_reviewed.sql, write a SQL statement to create a view named frequently_reviewed.
This view should contain the 100 most frequently reviewed listings, sorted from most- to least-frequently reviewed.
Ensure the view contains the following columns:

id, which is the id of the listing from the listings table.
property_type, from the listings table.
host_name, from the listings table.
reviews, which is the number of reviews the listing has received.

If any two listings have the same number of reviews, sort by property_type (in alphabetical order), followed by host_name (in alphabetical order).
How many reviews does the most frequently reviewed property have?
And who is the host of that property? Use your frequently_reviewed view to find that Tiffany’s property has 860 reviews.*/

--DROP VIEW "frequently_reviewed";

CREATE VIEW "frequently_reviewed" AS
SELECT "listings"."id", "listings"."property_type", "listings"."host_name", COUNT("reviews"."listing_id") AS "reviews"  FROM "listings"
JOIN "reviews" ON "reviews"."listing_id"= "listings"."id"
GROUP BY "reviews"."listing_id"
ORDER BY "reviews" DESC, "listings"."property_type" ASC
LIMIT 100

--SELECT * FROM "frequently_reviewed"
--LIMIT 1