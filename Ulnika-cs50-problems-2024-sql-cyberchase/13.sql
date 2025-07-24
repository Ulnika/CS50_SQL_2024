--In 13.sql, write a SQL query to explore a question of your choice. This query should:
--Involve at least one condition, using WHERE with AND or OR

SELECT "episode_in_season", "season", "title", "topic" FROM "episodes"
WHERE "title" LIKE "%Math%" OR "topic" LIKE "%Math%"