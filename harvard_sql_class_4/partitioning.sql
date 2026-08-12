DROP VIEW IF EXISTS "2022";
DROP VIEW IF EXISTS "2021";

SELECT "id", "title" FROM "books"
WHERE "year" = 2022;

CREATE VIEW "2022" AS
SELECT "id", "title" FROM "books"
WHERE "year"= 2022;

CREATE VIEW "2021" AS
SELECT "id", "title" FROM "books"
WHERE "year"= 2021;

SELECT * FROM "2021";