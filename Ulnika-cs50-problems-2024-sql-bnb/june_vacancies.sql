/*In june_vacancies.sql, write a SQL statement to create a view named june_vacancies.
This view should contain all listings and the number of days in June of 2023 that they remained vacant. Ensure the view contains the following columns:

id, which is the id of the listing from the listings table.
property_type, from the listings table.
host_name, from the listings table.
days_vacant, which is the number of days in June of 2023, that the given listing was marked as available.

How many listings were available in June 2023? Use your june_vacancies view to find that there were 1,895 vacancies.
*/


--DROP VIEW "june_vacancies";

CREATE VIEW "june_vacancies" AS
SELECT "listings"."id", "listings"."property_type", "listings"."host_name", COUNT("availabilities"."available") AS "days_vacant" FROM "listings"
JOIN "availabilities" ON "availabilities"."listing_id" = "listings"."id"
WHERE ("availabilities"."available") = "TRUE" AND ("availabilities"."date" BETWEEN "2023-06-01" AND "2023-06-31")
GROUP BY "listings"."id"

--SELECT COUNT("id") FROM "june_vacancies"