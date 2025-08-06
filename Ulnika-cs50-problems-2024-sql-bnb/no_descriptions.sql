/*No Descriptions
You might notice that when running

SELECT * FROM "listings" LIMIT 5;
the results look quite wonky! The description column contains descriptions with many line breaks, each of which are printed to your terminal.

In no_descriptions.sql, write a SQL statement to create a view named no_descriptions that includes all of the columns
in the listings table except for description.

How many listings are there in total? Use your no_descriptions view to find that there are 3,973.*/

--DROP VIEW "no_descriptions";

CREATE VIEW "no_descriptions" AS
SELECT "id", "property_type", "host_name", "accommodates",  "bedrooms" FROM "listings"

--SELECT COUNT("id") FROM "no_descriptions"