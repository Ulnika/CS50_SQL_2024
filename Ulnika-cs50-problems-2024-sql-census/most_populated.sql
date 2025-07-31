/*In most_populated.sql, write a SQL statement to create a view named most_populated.
This view should contain, in order from greatest to least, the most populated districts in Nepal.
Ensure the view contains each of the following columns:

district, which is the name of the district.
families, which is the total number of families in the district.
households, which is the total number of households in the district.
population, which is the total population of the district.
male, which is the total number of people identifying as male in the district.
female, which is the total number of people identifying as female in the district.

Which district has the highest population? And how many households are in that district?
Using your most_populated view, you should find that the most populated is Kathmandu with 275,806 households.*/


CREATE VIEW "most_populated" AS
SELECT "district", SUM("families"), SUM("households"), SUM("population") AS "total_population", SUM("male"), SUM("female") FROM "census"
GROUP BY "district"
ORDER BY "total_population" DESC

--SELECT * FROM "most_populated" LIMIT 1

