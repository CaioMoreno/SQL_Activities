SELECT * FROM "accounts";

BEGIN TRANSACTION;
UPDATE "accounts" SET "balance" = "balance" + 10
WHERE "id" = 2;
UPDATE "accounts" SET "balance" = "balance" - 10
WHERE "id" = 1;
--ROLLBACK;
COMMIT;

SELECT * FROM "accounts";

BEGIN EXCLUSIVE TRANSACTION; -- LOCK the DataBase

SELECT * FROM "accounts"


