-- .import --csv movies.csv temp
DROP TABLE "movies";

CREATE TABLE movies (
    "id" INTEGER PRIMARY KEY,
    "title" TEXT,
    "original_title" TEXT,
    "url" TEXT,
    "title_type" TEXT,
    "imdb_rating" REAL,
    "my_rating" REAL
);


INSERT INTO "movies" ("title", "original_title", "url", "title_type", "imdb_rating", "my_rating")
SELECT "Title","Original Title","URL","Title Type","IMDb Rating", "Your Rating" FROM "temp"; 

DELETE FROM "movies" WHERE "title" = 'O Pequeno Stuart Little';
--DELETE FROM "movies" WHERE "title" IS NULL;
DELETE FROM "movies" WHERE "my_rating" < '7.0';

SELECT * FROM "movies" LIMIT 5;