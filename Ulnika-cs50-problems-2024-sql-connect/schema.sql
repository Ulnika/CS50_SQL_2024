/*Platform
Users
The heart of LinkedIn’s platform is its people. Your database should be able to represent the following information about LinkedIn’s users:

Their first and last name
Their username
Their password
Keep in mind that, if a company is following best practices, application passwords are “hashed.” No need to worry about hashing passwords here, though.

Schools and Universities
LinkedIn also allows for official school or university accounts, such as that for Harvard, so alumni (i.e., those who’ve attended)
can identify their affiliation. Ensure that LinkedIn’s database can store the following information about each school:

The name of the school
The type of school (e.g., “Elementary School”, “Middle School”, “High School”, “Lower School”, “Upper School”, “College”, “University”, etc.)
The school’s location
The year in which the school was founded

Companies
LinkedIn allows companies to create their own pages, like the one for LinkedIn itself, so employees can identify their past or
current employment with the company. Ensure that LinkedIn’s database can store the following information for each company:

The name of the company
The company’s industry (e.g., “Education”, “Technology, “Finance”, etc.)
The company’s location


Connections
And finally, the essence of LinkedIn is its ability to facilitate connections between people.
Ensure LinkedIn’s database can support each of the following connections.

Connections with People
LinkedIn’s database should be able to represent mutual (reciprocal, two-way) connections between users.
No need to worry about one-way connections, such as user A “following” user B without user B “following” user A.

Connections with Schools
A user should be able to create an affiliation with a given school.
And similarly, that school should be able to find its alumni. Additionally, allow a user to define:

The start date of their affiliation (i.e., when they started to attend the school)
The end date of their affiliation (i.e., when they graduated), if applicable
The type of degree earned/pursued (e.g., “BA”, “MA”, “PhD”, etc.)

Connections with Companies
A user should be able to create an affiliation with a given company.
And similarly, a company should be able to find its current and past employees. Additionally, allow a user to define:

The start date of their affiliation (i.e., the date they began work with the company)
The end date of their affiliation (i.e., when left the company), if applicable
The title they held while affiliated with the company

Sample Data
Your database should be able to represent…

A user, Alan Garber, whose username is “alan” and password is “password”.
A user, Reid Hoffman whose username is “reid” and password is “password”.
A school, Harvard University, which is a university located in Cambridge, Massachusetts, founded in 1636.
A company, LinkedIn, which is a technology company headquartered in Sunnyvale, California.
Alan Garber’s undergraduate education at Harvard, pursuing a BA from September 1st, 1973 to June 1st, 1976.
Reid Hoffman’s employment with LinkedIn as its CEO and Chairman, from January 1st, 2003 to February 1st, 2007.*/

DROP TABLE IF EXISTS "users";
DROP TABLE IF EXISTS "schools";
DROP TABLE IF EXISTS "companies";
DROP TABLE IF EXISTS "connections";

CREATE TABLE "users"(
    "id",
    "first_name" TEXT,
    "last_name" TEXT,
    "username" TEXT,
    "password" TEXT,
    "started_school",
    "graduated",
    "degree",
    "started_working",
    "left_company",
    "title_at_company",
    PRIMARY KEY("id")
);

CREATE TABLE "schools"(
    "id",
    "type" TEXT,
    "location" TEXT,
    "year" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "companies" (
    "id",
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "connections"(
    "user_id",
    "school_id",
    "company_id",
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id"),
    FOREIGN KEY("company_id") REFERENCES "companies"("id")
)