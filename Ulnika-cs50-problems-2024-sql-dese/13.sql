--In 13.sql, write a SQL query to answer a question you have about the data! The query should:

--Involve at least one JOIN or subquery

SELECT "districts"."name", "staff_evaluations"."unsatisfactory", "staff_evaluations"."exemplary" FROM "districts"
JOIN "staff_evaluations" ON "districts"."id"= "staff_evaluations"."district_id"

WHERE "staff_evaluations"."unsatisfactory">0