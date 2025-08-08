/*The app needs to rank a user’s “best friends,” similar to Snapchat’s “Friend Emojis” feature.
Find the user IDs of the top 3 users to whom creativewisdom377 sends messages most frequently.
Order the user IDs by the number of messages creativewisdom377 has sent to those users, most to least.

Ensure your query uses the search_messages_by_from_user_id index, which is defined as follows:

CREATE INDEX "search_messages_by_from_user_id"
ON "messages"("from_user_id"); */

--EXPLAIN QUERY PLAN
SELECT "to_user_id" FROM "messages" WHERE "from_user_id" IN (
    SELECT "id" FROM "users" WHERE "username" =  "creativewisdom377")
GROUP BY "to_user_id"
ORDER BY COUNT("to_user_id") DESC
LIMIT 3

/*
QUERY PLAN
|--SEARCH messages USING INDEX search_messages_by_from_user_id (from_user_id=?)
|--SCALAR SUBQUERY 1
|  `--SEARCH users USING COVERING INDEX sqlite_autoindex_users_1 (username=?)
|--USE TEMP B-TREE FOR GROUP BY
`--USE TEMP B-TREE FOR ORDER BY
*/