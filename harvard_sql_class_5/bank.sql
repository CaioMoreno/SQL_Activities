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


-- 1. Start a global transaction
BEGIN TRANSACTION;

-- 2. First operation
INSERT INTO users (name) VALUES ('Alice');

-- 3. Set a checkpoint
SAVEPOINT checkpoint_one;

-- 4. Second operation (which we might want to undo)
INSERT INTO users (name) VALUES ('Bob');

-- 5. Something went wrong with Bob! Roll back to the checkpoint
ROLLBACK TO SAVEPOINT checkpoint_one;

-- 6. Keep going with a different operation
INSERT INTO users (name) VALUES ('Charlie');

-- 7. Permanently save Alice and Charlie
COMMIT;

