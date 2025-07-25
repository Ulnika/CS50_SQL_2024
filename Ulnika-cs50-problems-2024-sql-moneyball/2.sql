--Your general manager (i.e., the person who makes decisions about player contracts)
--asks you whether the team should trade a current player for Cal Ripken Jr.,
--a star player who’s likely nearing his retirement. In 2.sql, write a SQL query to find Cal Ripken Jr.’s salary history.

--Sort by year in descending order.
--Your query should return a table with two columns, one for year and one for salary.

SELECT "salaries"."year", "salaries"."salary" FROM "salaries"
JOIN "players" ON "salaries"."player_id"="players"."id"
WHERE "players"."first_name" LIKE "Cal%" AND "players"."last_name" LIKE "%Ripken%"

ORDER BY "salaries"."year" DESC
