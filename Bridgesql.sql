-- Column: public."Bridge"."Year Built"

-- ALTER TABLE IF EXISTS public."Bridge" DROP COLUMN IF EXISTS "Year Built";

ALTER TABLE IF EXISTS public."Bridge"
    ADD COLUMN "Year Built" numeric NOT NULL;