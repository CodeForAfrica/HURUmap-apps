-- -------------------------------------------------------------
-- TablePlus 2.12(282)
--
-- https://tableplus.com/
--
-- Database: dominion_api
-- Generation Time: 2020-03-27 09:55:38.1550
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."global_health_security_index" (
    "geo_level" text NOT NULL,
    "geo_code" text NOT NULL,
    "parent_level" text NOT NULL,
    "parent_code" text NOT NULL,
    "category" text,
    "score" numeric,
    "geo_version" numeric
);

INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'KE', 'continent', 'AFR', 'Rank', '55', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'KE', 'continent', 'AFR', 'Overall Score', '47.1', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'KE', 'continent', 'AFR', 'Prevention of the Emergence or Release of Pathogens', '45.9', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'KE', 'continent', 'AFR', 'Early Detection & Reporting for Epidemics of Potential International Concern', '68.6', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'KE', 'continent', 'AFR', 'Rapid Response to And Mitigation of The Spread of an Epidemic', '37.1', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'KE', 'continent', 'AFR', 'Sufficient & Robust Health System to Treat The Sick & Protect Health Workers', '20.7', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'KE', 'continent', 'AFR', 'Commitments to Improving National Capacity, Financing and Adherence to Norms', '67.1', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'KE', 'continent', 'AFR', 'Overall Risk Environment And Country Vulnerability to Biological Threats', '40.7', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'ZA', 'continent', 'AFR', 'Rank', '34', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'ZA', 'continent', 'AFR', 'Overall Score', '54.8', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'ZA', 'continent', 'AFR', 'Prevention of the Emergence or Release of Pathogens', '44.8', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'ZA', 'continent', 'AFR', 'Early Detection & Reporting for Epidemics of Potential International Concern', '81.5', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'ZA', 'continent', 'AFR', 'Rapid Response to And Mitigation of The Spread of an Epidemic', '57.7', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'ZA', 'continent', 'AFR', 'Sufficient & Robust Health System to Treat The Sick & Protect Health Workers', '33', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'ZA', 'continent', 'AFR', 'Commitments to Improving National Capacity, Financing and Adherence to Norms', '46.3', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'ZA', 'continent', 'AFR', 'Overall Risk Environment And Country Vulnerability to Biological Threats', '61.8', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'GH', 'continent', 'AFR', 'Rank', '105', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'GH', 'continent', 'AFR', 'Overall Score', '35.5', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'GH', 'continent', 'AFR', 'Prevention of the Emergence or Release of Pathogens', '32.2', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'GH', 'continent', 'AFR', 'Early Detection & Reporting for Epidemics of Potential International Concern', '40.5', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'GH', 'continent', 'AFR', 'Rapid Response to And Mitigation of The Spread of an Epidemic', '31.5', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'GH', 'continent', 'AFR', 'Sufficient & Robust Health System to Treat The Sick & Protect Health Workers', '23.4', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'GH', 'continent', 'AFR', 'Commitments to Improving National Capacity, Financing and Adherence to Norms', '38', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'GH', 'continent', 'AFR', 'Overall Risk Environment And Country Vulnerability to Biological Threats', '51', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'ET', 'continent', 'AFR', 'Rank', '84', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'ET', 'continent', 'AFR', 'Overall Score', '40.6', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'ET', 'continent', 'AFR', 'Prevention of the Emergence or Release of Pathogens', '36.8', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'ET', 'continent', 'AFR', 'Early Detection & Reporting for Epidemics of Potential International Concern', '33.7', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'ET', 'continent', 'AFR', 'Rapid Response to And Mitigation of The Spread of an Epidemic', '44.7', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'ET', 'continent', 'AFR', 'Sufficient & Robust Health System to Treat The Sick & Protect Health Workers', '29', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'ET', 'continent', 'AFR', 'Commitments to Improving National Capacity, Financing and Adherence to Norms', '65.8', NULL);
INSERT INTO "public"."global_health_security_index" ("geo_level", "geo_code", "parent_level", "parent_code", "category", "score", "geo_version") VALUES ('country', 'ET', 'continent', 'AFR', 'Overall Risk Environment And Country Vulnerability to Biological Threats', '33.6', NULL);
