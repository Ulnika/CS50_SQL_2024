--Is there a relationship between school expenditures and graduation rates?
--In 11.sql, write a SQL query to display the names of schools, their per-pupil expenditure, and their graduation rate.
--Sort the schools from greatest per-pupil expenditure to least. If two schools have the same per-pupil expenditure, sort by school name.

--You should assume a school spends the same amount per-pupil their district as a whole spends.

SELECT "schools"."name", "expenditures"."per_pupil_expenditure", "graduation_rates"."graduated" FROM "schools"
JOIN "graduation_rates" ON "graduation_rates"."school_id" ="schools"."id"
JOIN "districts" ON "districts"."id" = "schools"."district_id"
JOIN "expenditures" ON "expenditures"."district_id"= "districts"."id"
ORDER BY "expenditures"."per_pupil_expenditure" DESC, "schools"."name" ASC