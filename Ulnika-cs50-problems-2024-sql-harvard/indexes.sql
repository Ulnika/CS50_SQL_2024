/*In indexes.sql, write a set of SQL statements that create indexes which will speed up typical queries on the harvard.db database.
The number of indexes you create, as well as the columns they include, is entirely up to you.
Be sure to balance speed with disk space, only creating indexes you need.

When engineers optimize a database, they often care about the typical queries run on the database.
Such queries highlight patterns with which a database is accessed,
thus revealing the best columns and tables on which to create indexes.
Click the spoiler tag below to see the set of typical SELECT queries run on harvard.db.*/


CREATE INDEX "index_enrollments_course_id" ON "enrollments"("course_id");
CREATE INDEX "index_enrollments_student_id" ON "enrollments"("student_id")


/*
Typical SELECT queries on harvard.db
Find a student’s historical course enrollments, based on their ID:

SELECT "courses"."title", "courses"."semester"
FROM "enrollments"
JOIN "courses" ON "enrollments"."course_id" = "courses"."id"
JOIN "students" ON "enrollments"."student_id" = "students"."id"
WHERE "students"."id" = 3;
Find all students who enrolled in Computer Science 50 in Fall 2023:

SELECT "id", "name"
FROM "students"
WHERE "id" IN (
    SELECT "student_id"
    FROM "enrollments"
    WHERE "course_id" = (
        SELECT "id"
        FROM "courses"
        WHERE "courses"."department" = 'Computer Science'
        AND "courses"."number" = 50
        AND "courses"."semester" = 'Fall 2023'
    )
);
Sort courses by most- to least-enrolled in Fall 2023:

SELECT "courses"."id", "courses"."department", "courses"."number", "courses"."title", COUNT(*) AS "enrollment"
FROM "courses"
JOIN "enrollments" ON "enrollments"."course_id" = "courses"."id"
WHERE "courses"."semester" = 'Fall 2023'
GROUP BY "courses"."id"
ORDER BY "enrollment" DESC;
Find all computer science courses taught in Spring 2024:

SELECT "courses"."id", "courses"."department", "courses"."number", "courses"."title"
FROM "courses"
WHERE "courses"."department" = 'Computer Science'
AND "courses"."semester" = 'Spring 2024';
Find the requirement satisfied by “Advanced Databases” in Fall 2023:

SELECT "requirements"."name"
FROM "requirements"
WHERE "requirements"."id" = (
    SELECT "requirement_id"
    FROM "satisfies"
    WHERE "course_id" = (
        SELECT "id"
        FROM "courses"
        WHERE "title" = 'Advanced Databases'
        AND "semester" = 'Fall 2023'
    )
);
Find how many courses in each requirement a student has satisfied:

SELECT "requirements"."name", COUNT(*) AS "courses"
FROM "requirements"
JOIN "satisfies" ON "requirements"."id" = "satisfies"."requirement_id"
WHERE "satisfies"."course_id" IN (
    SELECT "course_id"
    FROM "enrollments"
    WHERE "enrollments"."student_id" = 8
)
GROUP BY "requirements"."name";
Search for a course by title and semester:

SELECT "department", "number", "title"
FROM "courses"
WHERE "title" LIKE "History%"
AND "semester" = 'Fall 2023';*/
