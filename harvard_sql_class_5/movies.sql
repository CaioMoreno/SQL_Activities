DROP INDEX IF EXISTS "title_index";
DROP INDEX IF EXISTS "person_index";
DROP INDEX IF EXISTS "name_index";
DROP INDEX IF EXISTS "recents";

CREATE INDEX "title_index" ON "movies" ("title");
CREATE INDEX "person_index" ON "stars" ("person_id", "movie_id");
CREATE INDEX "name_index" On "people" ("name");

CREATE INDEX "recents" ON "movies" ("title") WHERE "year" = 2023;

SELECT * FROM "movies" WHERE "title" = 'Cars';

EXPLAIN QUERY PLAN 
SELECT * FROM "movies" WHERE "title" = 'Cars';

SELECT "title" FROM "movies" WHERE "id" IN (
    SELECT "movie_id" FROM "stars" WHERE "person_id" = (
        SELECT "id" FROM "people" WHERE "name" = 'Tom Hanks'
    )
);

EXPLAIN QUERY PLAN
SELECT "title" FROM "movies" WHERE "id" IN (
    SELECT "movie_id" FROM "stars" WHERE "person_id" = (
        SELECT "id" FROM "people" WHERE "name" = 'Tom Hanks'
    )
);

SELECT "title" FROM "movies" WHERE "year" = 2023 LIMIT 100;

EXPLAIN QUERY PLAN
SELECT "title" FROM "movies" WHERE "year" = 2023;

--THESE COMMANDS IS TO CLEAN THE MEMORY OF DROPED INDEX
--DROP INDEX ...
--VACUMM;