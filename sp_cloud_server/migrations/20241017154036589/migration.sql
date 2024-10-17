BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "todo" (
    "id" bigserial PRIMARY KEY,
    "taskName" text NOT NULL,
    "isCompleted" boolean NOT NULL
);


--
-- MIGRATION VERSION FOR sp_cloud
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('sp_cloud', '20241017154036589', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241017154036589', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
