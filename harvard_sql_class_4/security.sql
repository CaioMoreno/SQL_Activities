DROP VIEW IF EXISTS "analysis";

CREATE VIEW "analysis"AS
SELECT "id", "origin", "destination", 'Anonymous' AS "rider"
FROM "rides";

SELECT * FROM "analysis";