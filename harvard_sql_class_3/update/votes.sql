SELECT "title", COUNT("title") FROM "mfa" 
GROUP BY "title";

UPDATE "mfa" SET "title" = trim("title"); --removing whitespace from the beggining
UPDATE "mfa" SET "title" = upper("title"); --Gets everything capitalized
UPDATE "mfa" SET "title" = 'SPRING' WHERE "title" = 'SSSPRING';
UPDATE "mfa" SET "title" = 'FLOWERS' WHERE "title" = 'FOWERS';
UPDATE "mfa" SET "title" = 'LOVE' WHERE "title" LIKE 'Lo%';

SELECT "title", COUNT("title") FROM "mfa" 
GROUP BY "title";