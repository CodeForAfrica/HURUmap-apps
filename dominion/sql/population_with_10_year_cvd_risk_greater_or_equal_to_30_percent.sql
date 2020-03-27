-- -------------------------------------------------------------
-- TablePlus 2.12(282)
--
-- https://tableplus.com/
--
-- Database: dominion_api
-- Generation Time: 2020-03-27 08:17:14.0530
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."population_with_10_year_cvd_risk_greater_or_equal_to_30_percent" (
    "geo_level" text NOT NULL,
    "geo_code" text NOT NULL,
    "parent_level" text NOT NULL,
    "parent_code" text NOT NULL,
    "age_range" text,
    "male" numeric,
    "female" numeric
);

INSERT INTO "public"."population_with_10_year_cvd_risk_greater_or_equal_to_30_percent" ("geo_level", "geo_code", "parent_level", "parent_code", "age_range", "male", "female") VALUES ('country', 'KE', 'continent', 'AFR', '40-54', '6.5', '7.9');
INSERT INTO "public"."population_with_10_year_cvd_risk_greater_or_equal_to_30_percent" ("geo_level", "geo_code", "parent_level", "parent_code", "age_range", "male", "female") VALUES ('country', 'KE', 'continent', 'AFR', '55-69', '6.7', '10.5');
