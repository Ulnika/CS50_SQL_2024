/*The app needs to send users a summary of their engagement.
Find the username of the most popular user, defined as the user who has had the most messages sent to them.

Ensure your query uses the search_messages_by_to_user_id index, which is defined as follows:

CREATE INDEX "search_messages_by_to_user_id"
ON "messages"("to_user_id");
*/

--EXPLAIN QUERY PLAN
SELECT "username" FROM "users" WHERE "id" IN (
    SELECT "to_user_id" FROM "messages"
    GROUP BY to_user_id
    ORDER BY COUNT("id") DESC
    LIMIT 1
    )
/*
QUERY PLAN
|--SEARCH users USING INTEGER PRIMARY KEY (rowid=?)
`--SCALAR SUBQUERY 1
   |--SCAN messages USING COVERING INDEX search_messages_by_to_user_id
   `--USE TEMP B-TREE FOR ORDER BY
*/



