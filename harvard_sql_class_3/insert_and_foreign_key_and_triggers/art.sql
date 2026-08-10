PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS "created";
DROP TABLE IF EXISTS "collections";
DROP TABLE IF EXISTS "artists";
DROP TABLE IF EXISTS "transactions";


CREATE TABLE "collections"(
    "id" INTEGER PRIMARY KEY,
    "title" TEXT NOT NULL,
    "accession_number" TEXT NOT NULL UNIQUE,
    "acquired" NUMERIC
);
CREATE TABLE "artists"(
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL
);
CREATE TABLE "created"(
    "artist_id" INTEGER,
    "collection_id" INTEGER,
    PRIMARY KEY("artist_id", "collection_id"),
    FOREIGN KEY("artist_id") REFERENCES "artists"("id") ON DELETE CASCADE, --ON DELETE (RESTRICT, NO ACTION, SET NULL, CASCADE)
    FOREIGN KEY("collection_id") REFERENCES "collections"("id")
);
CREATE TABLE "transactions"(
    "id" INTEGER,
    "title" TEXT NOT NULL,
    "action" TEXT,
    PRIMARY KEY("id")
);

CREATE TRIGGER "sell"
BEFORE DELETE ON "collections"
FOR EACH ROW
BEGIN
    INSERT INTO "transactions" ("title", "action")
    VALUES (OLD."title", 'sold');
END;

CREATE TRIGGER "buy"
AFTER INSERT ON "collections"
FOR EACH ROW BEGIN  
    INSERT INTO "transactions" ("title", "action")
    VALUES (NEW."title", 'bought');
END;

INSERT INTO "collections" ("title", "accession_number", "acquired")
VALUES ('Shit', '20.876', '2001-07-03'),
('Alone', '00.001', NULL),
('Flowers', '56.257', '1969-11-01'),
('Food', '11.6152', '1971-06-09'),
('Spring', '14.76', '2004-02-05'),
('China', '18.569', '2003-12-15'),
('Love', '15.695', '2026-01-01');

INSERT INTO "artists"("name")
VALUES ('Caio'),
('Me'),
('Dad'),
('Mom'),
('Lu'),
('Friend');

INSERT INTO "created"("artist_id", "collection_id")
VALUES (1, 3),
(2, 2),
(3, 5),
(4, 1),
(5, 4),
(6, 6),
(1, 7);

INSERT INTO "transactions"("title", "action")
VALUES ('Anime', 'sold');

--DELETE FROM "created" WHERE "artist_id" = (
--    SELECT "id" FROM "artists" WHERE "name" = 'Me'
--);

DELETE FROM "artists" WHERE "name" = 'Me';

UPDATE "created" SET "artist_id" =(
    SELECT "id" FROM "artists"
    WHERE "name" = 'Friend'
)
WHERE "collection_id" = (
    SELECT "id" FROM "collections"
    WHERE "title" = 'Love'
);

DELETE FROM "collections" WHERE "title" = 'Alone';

ALTER TABLE "collections" ADD COLUMN "deleted" INTEGER DEFAULT 0;
UPDATE "collections" SET "deleted" = 1 WHERE "title" = 'Shit';

SELECT * FROM "collections";
SELECT * FROM "artists";
SELECT * FROM "created";
SELECT * FROM "transactions";
 