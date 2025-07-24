--In 10.sql, write SQL query to answer a question of your choice. This query should:
-- Make use of AS to rename a column
-- Involve at least condition, using WHERE
-- Sort by at least one column using ORDER BY

--Write a single SQL query to list the first and last names of all players of above average height, sorted tallest to shortest,
--then by first and last name.


SELECT "first_name", "last_name", "height" AS "above avg height", (SELECT AVG("height") FROM "players") AS avg_height FROM "players"
WHERE "height" > (SELECT AVG("height") FROM "players")
ORDER BY "first_name" ASC, "last_name" ASC