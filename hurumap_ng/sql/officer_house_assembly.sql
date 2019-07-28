--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.officer_house_assembly DROP CONSTRAINT IF EXISTS officer_house_assembly_pkey;
DROP TABLE IF EXISTS public.officer_house_assembly;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: officer_house_assembly; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.officer_house_assembly (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    position character varying(128) NOT NULL,
    gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: officer_house_assembly; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.officer_house_assembly (geo_level, geo_code, geo_version, position, gender, total) FROM stdin;
state	1	2016	Committee Chairpersons	Female	2
state	1	2016	Committee Chairpersons	Male	29
state	1	2016	Deputy House Chief Whip	Female	0
state	1	2016	Deputy House Chief Whip	Male	0
state	1	2016	Deputy House Majority Leader	Female	0
state	1	2016	Deputy House Majority Leader	Male	1
state	1	2016	Deputy House Minority Leader	Female	0
state	1	2016	Deputy House Minority Leader	Male	1
state	1	2016	Deputy House Minority Whip	Female	0
state	1	2016	Deputy House Minority Whip	Male	0
state	1	2016	Deputy Speaker	Female	0
state	1	2016	Deputy Speaker	Male	1
state	1	2016	House Chief Whip	Female	0
state	1	2016	House Chief Whip	Male	1
state	1	2016	House Majority Leader	Female	0
state	1	2016	House Majority Leader	Male	1
state	1	2016	House Minority Leader	Female	0
state	1	2016	House Minority Leader	Male	2
state	1	2016	House Minority Whip	Female	0
state	1	2016	House Minority Whip	Male	0
state	1	2016	Other Members	Female	1
state	1	2016	Other Members	Male	13
state	1	2016	Speaker	Female	0
state	1	2016	Speaker	Male	3
state	2	2016	Committee Chairpersons	Female	2
state	2	2016	Committee Chairpersons	Male	23
state	2	2016	Deputy House Chief Whip	Female	0
state	2	2016	Deputy House Chief Whip	Male	1
state	2	2016	Deputy House Majority Leader	Female	0
state	2	2016	Deputy House Majority Leader	Male	1
state	2	2016	Deputy House Minority Leader	Female	0
state	2	2016	Deputy House Minority Leader	Male	1
state	2	2016	Deputy House Minority Whip	Female	0
state	2	2016	Deputy House Minority Whip	Male	1
state	2	2016	Deputy Speaker	Female	0
state	2	2016	Deputy Speaker	Male	1
state	2	2016	House Chief Whip	Female	0
state	2	2016	House Chief Whip	Male	1
state	2	2016	House Majority Leader	Female	0
state	2	2016	House Majority Leader	Male	1
state	2	2016	House Minority Leader	Female	1
state	2	2016	House Minority Leader	Male	0
state	2	2016	House Minority Whip	Female	0
state	2	2016	House Minority Whip	Male	1
state	2	2016	Other Members	Female	1
state	2	2016	Other Members	Male	14
state	2	2016	Speaker	Female	0
state	2	2016	Speaker	Male	1
state	3	2016	Committee Chairpersons	Female	1
state	3	2016	Committee Chairpersons	Male	14
state	3	2016	Deputy House Chief Whip	Female	0
state	3	2016	Deputy House Chief Whip	Male	2
state	3	2016	Deputy House Majority Leader	Female	0
state	3	2016	Deputy House Majority Leader	Male	2
state	3	2016	Deputy House Minority Leader	Female	0
state	3	2016	Deputy House Minority Leader	Male	0
state	3	2016	Deputy House Minority Whip	Female	0
state	3	2016	Deputy House Minority Whip	Male	0
state	3	2016	Deputy Speaker	Female	1
state	3	2016	Deputy Speaker	Male	1
state	3	2016	House Chief Whip	Female	0
state	3	2016	House Chief Whip	Male	1
state	3	2016	House Majority Leader	Female	0
state	3	2016	House Majority Leader	Male	1
state	3	2016	House Minority Leader	Female	0
state	3	2016	House Minority Leader	Male	1
state	3	2016	House Minority Whip	Female	0
state	3	2016	House Minority Whip	Male	0
state	3	2016	Other Members	Female	0
state	3	2016	Other Members	Male	0
state	3	2016	Speaker	Female	0
state	3	2016	Speaker	Male	2
state	4	2016	Committee Chairpersons	Female	3
state	4	2016	Committee Chairpersons	Male	0
state	4	2016	Deputy House Chief Whip	Female	0
state	4	2016	Deputy House Chief Whip	Male	1
state	4	2016	Deputy House Majority Leader	Female	0
state	4	2016	Deputy House Majority Leader	Male	1
state	4	2016	Deputy House Minority Leader	Female	0
state	4	2016	Deputy House Minority Leader	Male	1
state	4	2016	Deputy House Minority Whip	Female	0
state	4	2016	Deputy House Minority Whip	Male	1
state	4	2016	Deputy Speaker	Female	0
state	4	2016	Deputy Speaker	Male	1
state	4	2016	House Chief Whip	Female	0
state	4	2016	House Chief Whip	Male	1
state	4	2016	House Majority Leader	Female	0
state	4	2016	House Majority Leader	Male	1
state	4	2016	House Minority Leader	Female	0
state	4	2016	House Minority Leader	Male	1
state	4	2016	House Minority Whip	Female	0
state	4	2016	House Minority Whip	Male	1
state	4	2016	Other Members	Female	0
state	4	2016	Other Members	Male	17
state	4	2016	Speaker	Female	1
state	4	2016	Speaker	Male	0
state	5	2016	Committee Chairpersons	Female	1
state	5	2016	Committee Chairpersons	Male	30
state	5	2016	Deputy House Chief Whip	Female	0
state	5	2016	Deputy House Chief Whip	Male	1
state	5	2016	Deputy House Majority Leader	Female	0
state	5	2016	Deputy House Majority Leader	Male	1
state	5	2016	Deputy House Minority Leader	Female	0
state	5	2016	Deputy House Minority Leader	Male	1
state	5	2016	Deputy House Minority Whip	Female	0
state	5	2016	Deputy House Minority Whip	Male	1
state	5	2016	Deputy Speaker	Female	0
state	5	2016	Deputy Speaker	Male	1
state	5	2016	House Chief Whip	Female	0
state	5	2016	House Chief Whip	Male	1
state	5	2016	House Majority Leader	Female	0
state	5	2016	House Majority Leader	Male	1
state	5	2016	House Minority Leader	Female	0
state	5	2016	House Minority Leader	Male	1
state	5	2016	House Minority Whip	Female	0
state	5	2016	House Minority Whip	Male	1
state	5	2016	Other Members	Female	1
state	5	2016	Other Members	Male	30
state	5	2016	Speaker	Female	0
state	5	2016	Speaker	Male	1
state	6	2016	Committee Chairpersons	Female	0
state	6	2016	Committee Chairpersons	Male	3
state	6	2016	Deputy House Chief Whip	Female	0
state	6	2016	Deputy House Chief Whip	Male	1
state	6	2016	Deputy House Majority Leader	Female	0
state	6	2016	Deputy House Majority Leader	Male	1
state	6	2016	Deputy House Minority Leader	Female	0
state	6	2016	Deputy House Minority Leader	Male	1
state	6	2016	Deputy House Minority Whip	Female	0
state	6	2016	Deputy House Minority Whip	Male	1
state	6	2016	Deputy Speaker	Female	0
state	6	2016	Deputy Speaker	Male	1
state	6	2016	House Chief Whip	Female	0
state	6	2016	House Chief Whip	Male	1
state	6	2016	House Majority Leader	Female	0
state	6	2016	House Majority Leader	Male	1
state	6	2016	House Minority Leader	Female	0
state	6	2016	House Minority Leader	Male	1
state	6	2016	House Minority Whip	Female	0
state	6	2016	House Minority Whip	Male	1
state	6	2016	Other Members	Female	0
state	6	2016	Other Members	Male	11
state	6	2016	Speaker	Female	0
state	6	2016	Speaker	Male	1
state	7	2016	Committee Chairpersons	Female	2
state	7	2016	Committee Chairpersons	Male	22
state	7	2016	Deputy House Chief Whip	Female	0
state	7	2016	Deputy House Chief Whip	Male	0
state	7	2016	Deputy House Majority Leader	Female	0
state	7	2016	Deputy House Majority Leader	Male	1
state	7	2016	Deputy House Minority Leader	Female	0
state	7	2016	Deputy House Minority Leader	Male	0
state	7	2016	Deputy House Minority Whip	Female	0
state	7	2016	Deputy House Minority Whip	Male	0
state	7	2016	Deputy Speaker	Female	0
state	7	2016	Deputy Speaker	Male	1
state	7	2016	House Chief Whip	Female	0
state	7	2016	House Chief Whip	Male	1
state	7	2016	House Majority Leader	Female	0
state	7	2016	House Majority Leader	Male	1
state	7	2016	House Minority Leader	Female	0
state	7	2016	House Minority Leader	Male	1
state	7	2016	House Minority Whip	Female	0
state	7	2016	House Minority Whip	Male	1
state	7	2016	Other Members	Female	0
state	7	2016	Other Members	Male	0
state	7	2016	Speaker	Female	0
state	7	2016	Speaker	Male	1
state	8	2016	Committee Chairpersons	Female	0
state	8	2016	Committee Chairpersons	Male	28
state	8	2016	Deputy House Chief Whip	Female	0
state	8	2016	Deputy House Chief Whip	Male	1
state	8	2016	Deputy House Majority Leader	Female	0
state	8	2016	Deputy House Majority Leader	Male	1
state	8	2016	Deputy House Minority Leader	Female	0
state	8	2016	Deputy House Minority Leader	Male	1
state	8	2016	Deputy House Minority Whip	Female	0
state	8	2016	Deputy House Minority Whip	Male	0
state	8	2016	Deputy Speaker	Female	0
state	8	2016	Deputy Speaker	Male	1
state	8	2016	House Chief Whip	Female	0
state	8	2016	House Chief Whip	Male	1
state	8	2016	House Majority Leader	Female	0
state	8	2016	House Majority Leader	Male	1
state	8	2016	House Minority Leader	Female	0
state	8	2016	House Minority Leader	Male	1
state	8	2016	House Minority Whip	Female	0
state	8	2016	House Minority Whip	Male	0
state	8	2016	Other Members	Female	0
state	8	2016	Other Members	Male	0
state	8	2016	Speaker	Female	0
state	8	2016	Speaker	Male	1
state	9	2016	Committee Chairpersons	Female	3
state	9	2016	Committee Chairpersons	Male	16
state	9	2016	Deputy House Chief Whip	Female	0
state	9	2016	Deputy House Chief Whip	Male	1
state	9	2016	Deputy House Majority Leader	Female	0
state	9	2016	Deputy House Majority Leader	Male	1
state	9	2016	Deputy House Minority Leader	Female	0
state	9	2016	Deputy House Minority Leader	Male	0
state	9	2016	Deputy House Minority Whip	Female	0
state	9	2016	Deputy House Minority Whip	Male	0
state	9	2016	Deputy Speaker	Female	0
state	9	2016	Deputy Speaker	Male	1
state	9	2016	House Chief Whip	Female	0
state	9	2016	House Chief Whip	Male	1
state	9	2016	House Majority Leader	Female	0
state	9	2016	House Majority Leader	Male	1
state	9	2016	House Minority Leader	Female	0
state	9	2016	House Minority Leader	Male	0
state	9	2016	House Minority Whip	Female	0
state	9	2016	House Minority Whip	Male	0
state	9	2016	Other Members	Female	0
state	9	2016	Other Members	Male	0
state	9	2016	Speaker	Female	0
state	9	2016	Speaker	Male	1
state	10	2016	Committee Chairpersons	Female	4
state	10	2016	Committee Chairpersons	Male	17
state	10	2016	Deputy House Chief Whip	Female	0
state	10	2016	Deputy House Chief Whip	Male	1
state	10	2016	Deputy House Majority Leader	Female	0
state	10	2016	Deputy House Majority Leader	Male	1
state	10	2016	Deputy House Minority Leader	Female	0
state	10	2016	Deputy House Minority Leader	Male	0
state	10	2016	Deputy House Minority Whip	Female	0
state	10	2016	Deputy House Minority Whip	Male	0
state	10	2016	Deputy Speaker	Female	0
state	10	2016	Deputy Speaker	Male	1
state	10	2016	House Chief Whip	Female	1
state	10	2016	House Chief Whip	Male	0
state	10	2016	House Majority Leader	Female	0
state	10	2016	House Majority Leader	Male	1
state	10	2016	House Minority Leader	Female	0
state	10	2016	House Minority Leader	Male	1
state	10	2016	House Minority Whip	Female	0
state	10	2016	House Minority Whip	Male	1
state	10	2016	Other Members	Female	0
state	10	2016	Other Members	Male	0
state	10	2016	Speaker	Female	0
state	10	2016	Speaker	Male	1
state	11	2016	Committee Chairpersons	Female	2
state	11	2016	Committee Chairpersons	Male	14
state	11	2016	Deputy House Chief Whip	Female	0
state	11	2016	Deputy House Chief Whip	Male	1
state	11	2016	Deputy House Majority Leader	Female	0
state	11	2016	Deputy House Majority Leader	Male	1
state	11	2016	Deputy House Minority Leader	Female	0
state	11	2016	Deputy House Minority Leader	Male	0
state	11	2016	Deputy House Minority Whip	Female	0
state	11	2016	Deputy House Minority Whip	Male	0
state	11	2016	Deputy Speaker	Female	0
state	11	2016	Deputy Speaker	Male	1
state	11	2016	House Chief Whip	Female	0
state	11	2016	House Chief Whip	Male	1
state	11	2016	House Majority Leader	Female	0
state	11	2016	House Majority Leader	Male	1
state	11	2016	House Minority Leader	Female	1
state	11	2016	House Minority Leader	Male	0
state	11	2016	House Minority Whip	Female	0
state	11	2016	House Minority Whip	Male	0
state	11	2016	Other Members	Female	0
state	11	2016	Other Members	Male	0
state	11	2016	Speaker	Female	0
state	11	2016	Speaker	Male	1
state	12	2016	Committee Chairpersons	Female	1
state	12	2016	Committee Chairpersons	Male	23
state	12	2016	Deputy House Chief Whip	Female	2
state	12	2016	Deputy House Chief Whip	Male	0
state	12	2016	Deputy House Majority Leader	Female	0
state	12	2016	Deputy House Majority Leader	Male	3
state	12	2016	Deputy House Minority Leader	Female	0
state	12	2016	Deputy House Minority Leader	Male	0
state	12	2016	Deputy House Minority Whip	Female	0
state	12	2016	Deputy House Minority Whip	Male	2
state	12	2016	Deputy Speaker	Female	1
state	12	2016	Deputy Speaker	Male	3
state	12	2016	House Chief Whip	Female	0
state	12	2016	House Chief Whip	Male	3
state	12	2016	House Majority Leader	Female	0
state	12	2016	House Majority Leader	Male	2
state	12	2016	House Minority Leader	Female	0
state	12	2016	House Minority Leader	Male	2
state	12	2016	House Minority Whip	Female	0
state	12	2016	House Minority Whip	Male	0
state	12	2016	Other Members	Female	0
state	12	2016	Other Members	Male	5
state	12	2016	Speaker	Female	1
state	12	2016	Speaker	Male	3
state	13	2016	Committee Chairpersons	Female	2
state	13	2016	Committee Chairpersons	Male	24
state	13	2016	Deputy House Chief Whip	Female	0
state	13	2016	Deputy House Chief Whip	Male	1
state	13	2016	Deputy House Majority Leader	Female	0
state	13	2016	Deputy House Majority Leader	Male	1
state	13	2016	Deputy House Minority Leader	Female	0
state	13	2016	Deputy House Minority Leader	Male	0
state	13	2016	Deputy House Minority Whip	Female	0
state	13	2016	Deputy House Minority Whip	Male	0
state	13	2016	Deputy Speaker	Female	0
state	13	2016	Deputy Speaker	Male	1
state	13	2016	House Chief Whip	Female	0
state	13	2016	House Chief Whip	Male	11
state	13	2016	House Majority Leader	Female	0
state	13	2016	House Majority Leader	Male	1
state	13	2016	House Minority Leader	Female	0
state	13	2016	House Minority Leader	Male	0
state	13	2016	House Minority Whip	Female	0
state	13	2016	House Minority Whip	Male	0
state	13	2016	Other Members	Female	0
state	13	2016	Other Members	Male	0
state	13	2016	Speaker	Female	0
state	13	2016	Speaker	Male	1
state	14	2016	Committee Chairpersons	Female	3
state	14	2016	Committee Chairpersons	Male	19
state	14	2016	Deputy House Chief Whip	Female	1
state	14	2016	Deputy House Chief Whip	Male	0
state	14	2016	Deputy House Majority Leader	Female	1
state	14	2016	Deputy House Majority Leader	Male	0
state	14	2016	Deputy House Minority Leader	Female	0
state	14	2016	Deputy House Minority Leader	Male	0
state	14	2016	Deputy House Minority Whip	Female	0
state	14	2016	Deputy House Minority Whip	Male	0
state	14	2016	Deputy Speaker	Female	0
state	14	2016	Deputy Speaker	Male	1
state	14	2016	House Chief Whip	Female	0
state	14	2016	House Chief Whip	Male	1
state	14	2016	House Majority Leader	Female	0
state	14	2016	House Majority Leader	Male	1
state	14	2016	House Minority Leader	Female	0
state	14	2016	House Minority Leader	Male	0
state	14	2016	House Minority Whip	Female	0
state	14	2016	House Minority Whip	Male	0
state	14	2016	Other Members	Female	0
state	14	2016	Other Members	Male	0
state	14	2016	Speaker	Female	0
state	14	2016	Speaker	Male	1
state	15	2016	Committee Chairpersons	Female	0
state	15	2016	Committee Chairpersons	Male	0
state	15	2016	Deputy House Chief Whip	Female	0
state	15	2016	Deputy House Chief Whip	Male	0
state	15	2016	Deputy House Majority Leader	Female	0
state	15	2016	Deputy House Majority Leader	Male	0
state	15	2016	Deputy House Minority Leader	Female	0
state	15	2016	Deputy House Minority Leader	Male	0
state	15	2016	Deputy House Minority Whip	Female	0
state	15	2016	Deputy House Minority Whip	Male	0
state	15	2016	Deputy Speaker	Female	0
state	15	2016	Deputy Speaker	Male	0
state	15	2016	House Chief Whip	Female	0
state	15	2016	House Chief Whip	Male	0
state	15	2016	House Majority Leader	Female	0
state	15	2016	House Majority Leader	Male	0
state	15	2016	House Minority Leader	Female	0
state	15	2016	House Minority Leader	Male	0
state	15	2016	House Minority Whip	Female	0
state	15	2016	House Minority Whip	Male	0
state	15	2016	Other Members	Female	0
state	15	2016	Other Members	Male	0
state	15	2016	Speaker	Female	0
state	15	2016	Speaker	Male	0
state	16	2016	Committee Chairpersons	Female	0
state	16	2016	Committee Chairpersons	Male	0
state	16	2016	Deputy House Chief Whip	Female	0
state	16	2016	Deputy House Chief Whip	Male	1
state	16	2016	Deputy House Majority Leader	Female	0
state	16	2016	Deputy House Majority Leader	Male	1
state	16	2016	Deputy House Minority Leader	Female	0
state	16	2016	Deputy House Minority Leader	Male	1
state	16	2016	Deputy House Minority Whip	Female	0
state	16	2016	Deputy House Minority Whip	Male	1
state	16	2016	Deputy Speaker	Female	0
state	16	2016	Deputy Speaker	Male	1
state	16	2016	House Chief Whip	Female	0
state	16	2016	House Chief Whip	Male	1
state	16	2016	House Majority Leader	Female	0
state	16	2016	House Majority Leader	Male	1
state	16	2016	House Minority Leader	Female	0
state	16	2016	House Minority Leader	Male	1
state	16	2016	House Minority Whip	Female	0
state	16	2016	House Minority Whip	Male	1
state	16	2016	Other Members	Female	0
state	16	2016	Other Members	Male	14
state	16	2016	Speaker	Female	0
state	16	2016	Speaker	Male	1
state	17	2016	Committee Chairpersons	Female	0
state	17	2016	Committee Chairpersons	Male	0
state	17	2016	Deputy House Chief Whip	Female	0
state	17	2016	Deputy House Chief Whip	Male	1
state	17	2016	Deputy House Majority Leader	Female	0
state	17	2016	Deputy House Majority Leader	Male	2
state	17	2016	Deputy House Minority Leader	Female	0
state	17	2016	Deputy House Minority Leader	Male	2
state	17	2016	Deputy House Minority Whip	Female	0
state	17	2016	Deputy House Minority Whip	Male	1
state	17	2016	Deputy Speaker	Female	0
state	17	2016	Deputy Speaker	Male	1
state	17	2016	House Chief Whip	Female	0
state	17	2016	House Chief Whip	Male	2
state	17	2016	House Majority Leader	Female	0
state	17	2016	House Majority Leader	Male	1
state	17	2016	House Minority Leader	Female	1
state	17	2016	House Minority Leader	Male	1
state	17	2016	House Minority Whip	Female	0
state	17	2016	House Minority Whip	Male	1
state	17	2016	Other Members	Female	0
state	17	2016	Other Members	Male	13
state	17	2016	Speaker	Female	0
state	17	2016	Speaker	Male	1
state	18	2016	Committee Chairpersons	Female	0
state	18	2016	Committee Chairpersons	Male	21
state	18	2016	Deputy House Chief Whip	Female	0
state	18	2016	Deputy House Chief Whip	Male	1
state	18	2016	Deputy House Majority Leader	Female	0
state	18	2016	Deputy House Majority Leader	Male	1
state	18	2016	Deputy House Minority Leader	Female	0
state	18	2016	Deputy House Minority Leader	Male	0
state	18	2016	Deputy House Minority Whip	Female	0
state	18	2016	Deputy House Minority Whip	Male	0
state	18	2016	Deputy Speaker	Female	0
state	18	2016	Deputy Speaker	Male	1
state	18	2016	House Chief Whip	Female	0
state	18	2016	House Chief Whip	Male	1
state	18	2016	House Majority Leader	Female	0
state	18	2016	House Majority Leader	Male	1
state	18	2016	House Minority Leader	Female	0
state	18	2016	House Minority Leader	Male	0
state	18	2016	House Minority Whip	Female	0
state	18	2016	House Minority Whip	Male	1
state	18	2016	Other Members	Female	0
state	18	2016	Other Members	Male	0
state	18	2016	Speaker	Female	0
state	18	2016	Speaker	Male	2
state	19	2016	Committee Chairpersons	Female	0
state	19	2016	Committee Chairpersons	Male	34
state	19	2016	Deputy House Chief Whip	Female	0
state	19	2016	Deputy House Chief Whip	Male	0
state	19	2016	Deputy House Majority Leader	Female	0
state	19	2016	Deputy House Majority Leader	Male	1
state	19	2016	Deputy House Minority Leader	Female	0
state	19	2016	Deputy House Minority Leader	Male	1
state	19	2016	Deputy House Minority Whip	Female	0
state	19	2016	Deputy House Minority Whip	Male	0
state	19	2016	Deputy Speaker	Female	0
state	19	2016	Deputy Speaker	Male	1
state	19	2016	House Chief Whip	Female	0
state	19	2016	House Chief Whip	Male	1
state	19	2016	House Majority Leader	Female	0
state	19	2016	House Majority Leader	Male	1
state	19	2016	House Minority Leader	Female	0
state	19	2016	House Minority Leader	Male	1
state	19	2016	House Minority Whip	Female	0
state	19	2016	House Minority Whip	Male	1
state	19	2016	Other Members	Female	0
state	19	2016	Other Members	Male	0
state	19	2016	Speaker	Female	0
state	19	2016	Speaker	Male	1
state	20	2016	Committee Chairpersons	Female	0
state	20	2016	Committee Chairpersons	Male	0
state	20	2016	Deputy House Chief Whip	Female	0
state	20	2016	Deputy House Chief Whip	Male	0
state	20	2016	Deputy House Majority Leader	Female	0
state	20	2016	Deputy House Majority Leader	Male	1
state	20	2016	Deputy House Minority Leader	Female	0
state	20	2016	Deputy House Minority Leader	Male	1
state	20	2016	Deputy House Minority Whip	Female	0
state	20	2016	Deputy House Minority Whip	Male	34
state	20	2016	Deputy Speaker	Female	0
state	20	2016	Deputy Speaker	Male	1
state	20	2016	House Chief Whip	Female	0
state	20	2016	House Chief Whip	Male	2
state	20	2016	House Majority Leader	Female	0
state	20	2016	House Majority Leader	Male	2
state	20	2016	House Minority Leader	Female	0
state	20	2016	House Minority Leader	Male	0
state	20	2016	House Minority Whip	Female	0
state	20	2016	House Minority Whip	Male	0
state	20	2016	Other Members	Female	0
state	20	2016	Other Members	Male	45
state	20	2016	Speaker	Female	0
state	20	2016	Speaker	Male	2
state	21	2016	Committee Chairpersons	Female	0
state	21	2016	Committee Chairpersons	Male	21
state	21	2016	Deputy House Chief Whip	Female	0
state	21	2016	Deputy House Chief Whip	Male	1
state	21	2016	Deputy House Majority Leader	Female	0
state	21	2016	Deputy House Majority Leader	Male	1
state	21	2016	Deputy House Minority Leader	Female	0
state	21	2016	Deputy House Minority Leader	Male	1
state	21	2016	Deputy House Minority Whip	Female	0
state	21	2016	Deputy House Minority Whip	Male	1
state	21	2016	Deputy Speaker	Female	0
state	21	2016	Deputy Speaker	Male	1
state	21	2016	House Chief Whip	Female	0
state	21	2016	House Chief Whip	Male	1
state	21	2016	House Majority Leader	Female	0
state	21	2016	House Majority Leader	Male	1
state	21	2016	House Minority Leader	Female	0
state	21	2016	House Minority Leader	Male	1
state	21	2016	House Minority Whip	Female	0
state	21	2016	House Minority Whip	Male	1
state	21	2016	Other Members	Female	0
state	21	2016	Other Members	Male	0
state	21	2016	Speaker	Female	0
state	21	2016	Speaker	Male	1
state	22	2016	Committee Chairpersons	Female	0
state	22	2016	Committee Chairpersons	Male	1
state	22	2016	Deputy House Chief Whip	Female	0
state	22	2016	Deputy House Chief Whip	Male	1
state	22	2016	Deputy House Majority Leader	Female	0
state	22	2016	Deputy House Majority Leader	Male	1
state	22	2016	Deputy House Minority Leader	Female	0
state	22	2016	Deputy House Minority Leader	Male	0
state	22	2016	Deputy House Minority Whip	Female	0
state	22	2016	Deputy House Minority Whip	Male	0
state	22	2016	Deputy Speaker	Female	0
state	22	2016	Deputy Speaker	Male	1
state	22	2016	House Chief Whip	Female	0
state	22	2016	House Chief Whip	Male	1
state	22	2016	House Majority Leader	Female	0
state	22	2016	House Majority Leader	Male	1
state	22	2016	House Minority Leader	Female	0
state	22	2016	House Minority Leader	Male	0
state	22	2016	House Minority Whip	Female	0
state	22	2016	House Minority Whip	Male	0
state	22	2016	Other Members	Female	0
state	22	2016	Other Members	Male	1
state	22	2016	Speaker	Female	0
state	22	2016	Speaker	Male	1
state	23	2016	Committee Chairpersons	Female	0
state	23	2016	Committee Chairpersons	Male	25
state	23	2016	Deputy House Chief Whip	Female	0
state	23	2016	Deputy House Chief Whip	Male	0
state	23	2016	Deputy House Majority Leader	Female	0
state	23	2016	Deputy House Majority Leader	Male	3
state	23	2016	Deputy House Minority Leader	Female	0
state	23	2016	Deputy House Minority Leader	Male	2
state	23	2016	Deputy House Minority Whip	Female	0
state	23	2016	Deputy House Minority Whip	Male	2
state	23	2016	Deputy Speaker	Female	0
state	23	2016	Deputy Speaker	Male	3
state	23	2016	House Chief Whip	Female	0
state	23	2016	House Chief Whip	Male	5
state	23	2016	House Majority Leader	Female	0
state	23	2016	House Majority Leader	Male	3
state	23	2016	House Minority Leader	Female	0
state	23	2016	House Minority Leader	Male	2
state	23	2016	House Minority Whip	Female	0
state	23	2016	House Minority Whip	Male	2
state	23	2016	Other Members	Female	0
state	23	2016	Other Members	Male	0
state	23	2016	Speaker	Female	0
state	23	2016	Speaker	Male	3
state	24	2016	Committee Chairpersons	Female	0
state	24	2016	Committee Chairpersons	Male	0
state	24	2016	Deputy House Chief Whip	Female	0
state	24	2016	Deputy House Chief Whip	Male	1
state	24	2016	Deputy House Majority Leader	Female	0
state	24	2016	Deputy House Majority Leader	Male	2
state	24	2016	Deputy House Minority Leader	Female	0
state	24	2016	Deputy House Minority Leader	Male	0
state	24	2016	Deputy House Minority Whip	Female	0
state	24	2016	Deputy House Minority Whip	Male	0
state	24	2016	Deputy Speaker	Female	0
state	24	2016	Deputy Speaker	Male	1
state	24	2016	House Chief Whip	Female	0
state	24	2016	House Chief Whip	Male	1
state	24	2016	House Majority Leader	Female	0
state	24	2016	House Majority Leader	Male	1
state	24	2016	House Minority Leader	Female	0
state	24	2016	House Minority Leader	Male	0
state	24	2016	House Minority Whip	Female	0
state	24	2016	House Minority Whip	Male	0
state	24	2016	Other Members	Female	16
state	24	2016	Other Members	Male	16
state	24	2016	Speaker	Female	0
state	24	2016	Speaker	Male	1
state	25	2016	Committee Chairpersons	Female	2
state	25	2016	Committee Chairpersons	Male	27
state	25	2016	Deputy House Chief Whip	Female	0
state	25	2016	Deputy House Chief Whip	Male	0
state	25	2016	Deputy House Majority Leader	Female	0
state	25	2016	Deputy House Majority Leader	Male	1
state	25	2016	Deputy House Minority Leader	Female	0
state	25	2016	Deputy House Minority Leader	Male	0
state	25	2016	Deputy House Minority Whip	Female	0
state	25	2016	Deputy House Minority Whip	Male	0
state	25	2016	Deputy Speaker	Female	0
state	25	2016	Deputy Speaker	Male	1
state	25	2016	House Chief Whip	Female	0
state	25	2016	House Chief Whip	Male	1
state	25	2016	House Majority Leader	Female	0
state	25	2016	House Majority Leader	Male	1
state	25	2016	House Minority Leader	Female	0
state	25	2016	House Minority Leader	Male	1
state	25	2016	House Minority Whip	Female	0
state	25	2016	House Minority Whip	Male	0
state	25	2016	Other Members	Female	1
state	25	2016	Other Members	Male	4
state	25	2016	Speaker	Female	0
state	25	2016	Speaker	Male	1
state	26	2016	Committee Chairpersons	Female	0
state	26	2016	Committee Chairpersons	Male	24
state	26	2016	Deputy House Chief Whip	Female	1
state	26	2016	Deputy House Chief Whip	Male	0
state	26	2016	Deputy House Majority Leader	Female	0
state	26	2016	Deputy House Majority Leader	Male	1
state	26	2016	Deputy House Minority Leader	Female	0
state	26	2016	Deputy House Minority Leader	Male	1
state	26	2016	Deputy House Minority Whip	Female	0
state	26	2016	Deputy House Minority Whip	Male	1
state	26	2016	Deputy Speaker	Female	0
state	26	2016	Deputy Speaker	Male	1
state	26	2016	House Chief Whip	Female	0
state	26	2016	House Chief Whip	Male	1
state	26	2016	House Majority Leader	Female	0
state	26	2016	House Majority Leader	Male	1
state	26	2016	House Minority Leader	Female	0
state	26	2016	House Minority Leader	Male	2
state	26	2016	House Minority Whip	Female	0
state	26	2016	House Minority Whip	Male	1
state	26	2016	Other Members	Female	0
state	26	2016	Other Members	Male	5
state	26	2016	Speaker	Female	0
state	26	2016	Speaker	Male	1
state	27	2016	Committee Chairpersons	Female	0
state	27	2016	Committee Chairpersons	Male	1
state	27	2016	Deputy House Chief Whip	Female	0
state	27	2016	Deputy House Chief Whip	Male	0
state	27	2016	Deputy House Majority Leader	Female	0
state	27	2016	Deputy House Majority Leader	Male	0
state	27	2016	Deputy House Minority Leader	Female	0
state	27	2016	Deputy House Minority Leader	Male	0
state	27	2016	Deputy House Minority Whip	Female	0
state	27	2016	Deputy House Minority Whip	Male	0
state	27	2016	Deputy Speaker	Female	0
state	27	2016	Deputy Speaker	Male	1
state	27	2016	House Chief Whip	Female	0
state	27	2016	House Chief Whip	Male	1
state	27	2016	House Majority Leader	Female	0
state	27	2016	House Majority Leader	Male	1
state	27	2016	House Minority Leader	Female	0
state	27	2016	House Minority Leader	Male	1
state	27	2016	House Minority Whip	Female	0
state	27	2016	House Minority Whip	Male	1
state	27	2016	Other Members	Female	0
state	27	2016	Other Members	Male	0
state	27	2016	Speaker	Female	0
state	27	2016	Speaker	Male	1
country	NG	2016	Committee Chairpersons	Female	33
country	NG	2016	Committee Chairpersons	Male	574
country	NG	2016	Deputy House Chief Whip	Female	4
country	NG	2016	Deputy House Chief Whip	Male	26
country	NG	2016	Deputy House Majority Leader	Female	1
country	NG	2016	Deputy House Majority Leader	Male	40
country	NG	2016	Deputy House Minority Leader	Female	0
country	NG	2016	Deputy House Minority Leader	Male	20
country	NG	2016	Deputy House Minority Whip	Female	0
country	NG	2016	Deputy House Minority Whip	Male	73
country	NG	2016	Deputy Speaker	Female	2
country	NG	2016	Deputy Speaker	Male	41
country	NG	2016	House Chief Whip	Female	2
country	NG	2016	House Chief Whip	Male	52
country	NG	2016	House Majority Leader	Female	0
country	NG	2016	House Majority Leader	Male	40
country	NG	2016	House Minority Leader	Female	3
country	NG	2016	House Minority Leader	Male	29
country	NG	2016	House Minority Whip	Female	0
country	NG	2016	House Minority Whip	Male	20
country	NG	2016	Other Members	Female	22
country	NG	2016	Other Members	Male	287
country	NG	2016	Speaker	Female	3
country	NG	2016	Speaker	Male	44
state	28	2016	Committee Chairpersons	Female	0
state	28	2016	Committee Chairpersons	Male	21
state	28	2016	Deputy House Chief Whip	Female	0
state	28	2016	Deputy House Chief Whip	Male	1
state	28	2016	Deputy House Majority Leader	Female	0
state	28	2016	Deputy House Majority Leader	Male	0
state	28	2016	Deputy House Minority Leader	Female	0
state	28	2016	Deputy House Minority Leader	Male	0
state	28	2016	Deputy House Minority Whip	Female	0
state	28	2016	Deputy House Minority Whip	Male	0
state	28	2016	Deputy Speaker	Female	0
state	28	2016	Deputy Speaker	Male	1
state	28	2016	House Chief Whip	Female	0
state	28	2016	House Chief Whip	Male	1
state	28	2016	House Majority Leader	Female	0
state	28	2016	House Majority Leader	Male	1
state	28	2016	House Minority Leader	Female	0
state	28	2016	House Minority Leader	Male	1
state	28	2016	House Minority Whip	Female	0
state	28	2016	House Minority Whip	Male	1
state	28	2016	Other Members	Female	0
state	28	2016	Other Members	Male	19
state	28	2016	Speaker	Female	0
state	28	2016	Speaker	Male	1
state	29	2016	Committee Chairpersons	Female	2
state	29	2016	Committee Chairpersons	Male	24
state	29	2016	Deputy House Chief Whip	Female	0
state	29	2016	Deputy House Chief Whip	Male	1
state	29	2016	Deputy House Majority Leader	Female	0
state	29	2016	Deputy House Majority Leader	Male	1
state	29	2016	Deputy House Minority Leader	Female	0
state	29	2016	Deputy House Minority Leader	Male	1
state	29	2016	Deputy House Minority Whip	Female	0
state	29	2016	Deputy House Minority Whip	Male	1
state	29	2016	Deputy Speaker	Female	0
state	29	2016	Deputy Speaker	Male	1
state	29	2016	House Chief Whip	Female	1
state	29	2016	House Chief Whip	Male	0
state	29	2016	House Majority Leader	Female	0
state	29	2016	House Majority Leader	Male	1
state	29	2016	House Minority Leader	Female	0
state	29	2016	House Minority Leader	Male	1
state	29	2016	House Minority Whip	Female	0
state	29	2016	House Minority Whip	Male	1
state	29	2016	Other Members	Female	0
state	29	2016	Other Members	Male	0
state	29	2016	Speaker	Female	1
state	29	2016	Speaker	Male	0
state	30	2016	Committee Chairpersons	Female	0
state	30	2016	Committee Chairpersons	Male	23
state	30	2016	Deputy House Chief Whip	Female	0
state	30	2016	Deputy House Chief Whip	Male	1
state	30	2016	Deputy House Majority Leader	Female	0
state	30	2016	Deputy House Majority Leader	Male	1
state	30	2016	Deputy House Minority Leader	Female	0
state	30	2016	Deputy House Minority Leader	Male	0
state	30	2016	Deputy House Minority Whip	Female	0
state	30	2016	Deputy House Minority Whip	Male	0
state	30	2016	Deputy Speaker	Female	0
state	30	2016	Deputy Speaker	Male	1
state	30	2016	House Chief Whip	Female	0
state	30	2016	House Chief Whip	Male	1
state	30	2016	House Majority Leader	Female	0
state	30	2016	House Majority Leader	Male	1
state	30	2016	House Minority Leader	Female	0
state	30	2016	House Minority Leader	Male	1
state	30	2016	House Minority Whip	Female	0
state	30	2016	House Minority Whip	Male	0
state	30	2016	Other Members	Female	0
state	30	2016	Other Members	Male	3
state	30	2016	Speaker	Female	0
state	30	2016	Speaker	Male	1
state	31	2016	Committee Chairpersons	Female	2
state	31	2016	Committee Chairpersons	Male	22
state	31	2016	Deputy House Chief Whip	Female	0
state	31	2016	Deputy House Chief Whip	Male	1
state	31	2016	Deputy House Majority Leader	Female	0
state	31	2016	Deputy House Majority Leader	Male	1
state	31	2016	Deputy House Minority Leader	Female	0
state	31	2016	Deputy House Minority Leader	Male	1
state	31	2016	Deputy House Minority Whip	Female	0
state	31	2016	Deputy House Minority Whip	Male	1
state	31	2016	Deputy Speaker	Female	0
state	31	2016	Deputy Speaker	Male	1
state	31	2016	House Chief Whip	Female	0
state	31	2016	House Chief Whip	Male	1
state	31	2016	House Majority Leader	Female	0
state	31	2016	House Majority Leader	Male	1
state	31	2016	House Minority Leader	Female	0
state	31	2016	House Minority Leader	Male	1
state	31	2016	House Minority Whip	Female	0
state	31	2016	House Minority Whip	Male	1
state	31	2016	Other Members	Female	0
state	31	2016	Other Members	Male	0
state	31	2016	Speaker	Female	0
state	31	2016	Speaker	Male	1
state	32	2016	Committee Chairpersons	Female	1
state	32	2016	Committee Chairpersons	Male	13
state	32	2016	Deputy House Chief Whip	Female	0
state	32	2016	Deputy House Chief Whip	Male	1
state	32	2016	Deputy House Majority Leader	Female	0
state	32	2016	Deputy House Majority Leader	Male	1
state	32	2016	Deputy House Minority Leader	Female	0
state	32	2016	Deputy House Minority Leader	Male	1
state	32	2016	Deputy House Minority Whip	Female	0
state	32	2016	Deputy House Minority Whip	Male	0
state	32	2016	Deputy Speaker	Female	0
state	32	2016	Deputy Speaker	Male	2
state	32	2016	House Chief Whip	Female	0
state	32	2016	House Chief Whip	Male	1
state	32	2016	House Majority Leader	Female	0
state	32	2016	House Majority Leader	Male	1
state	32	2016	House Minority Leader	Female	0
state	32	2016	House Minority Leader	Male	1
state	32	2016	House Minority Whip	Female	0
state	32	2016	House Minority Whip	Male	1
state	32	2016	Other Members	Female	1
state	32	2016	Other Members	Male	23
state	32	2016	Speaker	Female	0
state	32	2016	Speaker	Male	1
state	33	2016	Committee Chairpersons	Female	0
state	33	2016	Committee Chairpersons	Male	25
state	33	2016	Deputy House Chief Whip	Female	0
state	33	2016	Deputy House Chief Whip	Male	1
state	33	2016	Deputy House Majority Leader	Female	0
state	33	2016	Deputy House Majority Leader	Male	1
state	33	2016	Deputy House Minority Leader	Female	0
state	33	2016	Deputy House Minority Leader	Male	0
state	33	2016	Deputy House Minority Whip	Female	0
state	33	2016	Deputy House Minority Whip	Male	0
state	33	2016	Deputy Speaker	Female	0
state	33	2016	Deputy Speaker	Male	1
state	33	2016	House Chief Whip	Female	0
state	33	2016	House Chief Whip	Male	1
state	33	2016	House Majority Leader	Female	0
state	33	2016	House Majority Leader	Male	1
state	33	2016	House Minority Leader	Female	0
state	33	2016	House Minority Leader	Male	1
state	33	2016	House Minority Whip	Female	0
state	33	2016	House Minority Whip	Male	0
state	33	2016	Other Members	Female	1
state	33	2016	Other Members	Male	6
state	33	2016	Speaker	Female	0
state	33	2016	Speaker	Male	2
state	34	2016	Committee Chairpersons	Female	0
state	34	2016	Committee Chairpersons	Male	30
state	34	2016	Deputy House Chief Whip	Female	0
state	34	2016	Deputy House Chief Whip	Male	1
state	34	2016	Deputy House Majority Leader	Female	0
state	34	2016	Deputy House Majority Leader	Male	1
state	34	2016	Deputy House Minority Leader	Female	0
state	34	2016	Deputy House Minority Leader	Male	0
state	34	2016	Deputy House Minority Whip	Female	0
state	34	2016	Deputy House Minority Whip	Male	0
state	34	2016	Deputy Speaker	Female	0
state	34	2016	Deputy Speaker	Male	1
state	34	2016	House Chief Whip	Female	0
state	34	2016	House Chief Whip	Male	1
state	34	2016	House Majority Leader	Female	0
state	34	2016	House Majority Leader	Male	1
state	34	2016	House Minority Leader	Female	0
state	34	2016	House Minority Leader	Male	0
state	34	2016	House Minority Whip	Female	0
state	34	2016	House Minority Whip	Male	0
state	34	2016	Other Members	Female	0
state	34	2016	Other Members	Male	30
state	34	2016	Speaker	Female	0
state	34	2016	Speaker	Male	1
state	35	2016	Committee Chairpersons	Female	0
state	35	2016	Committee Chairpersons	Male	0
state	35	2016	Deputy House Chief Whip	Female	0
state	35	2016	Deputy House Chief Whip	Male	0
state	35	2016	Deputy House Majority Leader	Female	0
state	35	2016	Deputy House Majority Leader	Male	1
state	35	2016	Deputy House Minority Leader	Female	0
state	35	2016	Deputy House Minority Leader	Male	1
state	35	2016	Deputy House Minority Whip	Female	0
state	35	2016	Deputy House Minority Whip	Male	24
state	35	2016	Deputy Speaker	Female	0
state	35	2016	Deputy Speaker	Male	1
state	35	2016	House Chief Whip	Female	0
state	35	2016	House Chief Whip	Male	1
state	35	2016	House Majority Leader	Female	0
state	35	2016	House Majority Leader	Male	1
state	35	2016	House Minority Leader	Female	0
state	35	2016	House Minority Leader	Male	1
state	35	2016	House Minority Whip	Female	0
state	35	2016	House Minority Whip	Male	0
state	35	2016	Other Members	Female	0
state	35	2016	Other Members	Male	0
state	35	2016	Speaker	Female	0
state	35	2016	Speaker	Male	1
state	36	2016	Committee Chairpersons	Female	0
state	36	2016	Committee Chairpersons	Male	0
state	36	2016	Deputy House Chief Whip	Female	0
state	36	2016	Deputy House Chief Whip	Male	1
state	36	2016	Deputy House Majority Leader	Female	0
state	36	2016	Deputy House Majority Leader	Male	1
state	36	2016	Deputy House Minority Leader	Female	0
state	36	2016	Deputy House Minority Leader	Male	1
state	36	2016	Deputy House Minority Whip	Female	0
state	36	2016	Deputy House Minority Whip	Male	1
state	36	2016	Deputy Speaker	Female	0
state	36	2016	Deputy Speaker	Male	1
state	36	2016	House Chief Whip	Female	0
state	36	2016	House Chief Whip	Male	1
state	36	2016	House Majority Leader	Female	0
state	36	2016	House Majority Leader	Male	1
state	36	2016	House Minority Leader	Female	0
state	36	2016	House Minority Leader	Male	1
state	36	2016	House Minority Whip	Female	0
state	36	2016	House Minority Whip	Male	1
state	36	2016	Other Members	Female	0
state	36	2016	Other Members	Male	0
state	36	2016	Speaker	Female	0
state	36	2016	Speaker	Male	1
state	37	2016	Committee Chairpersons	Female	0
state	37	2016	Committee Chairpersons	Male	0
state	37	2016	Deputy House Chief Whip	Female	0
state	37	2016	Deputy House Chief Whip	Male	1
state	37	2016	Deputy House Majority Leader	Female	0
state	37	2016	Deputy House Majority Leader	Male	1
state	37	2016	Deputy House Minority Leader	Female	0
state	37	2016	Deputy House Minority Leader	Male	0
state	37	2016	Deputy House Minority Whip	Female	0
state	37	2016	Deputy House Minority Whip	Male	0
state	37	2016	Deputy Speaker	Female	0
state	37	2016	Deputy Speaker	Male	1
state	37	2016	House Chief Whip	Female	0
state	37	2016	House Chief Whip	Male	1
state	37	2016	House Majority Leader	Female	0
state	37	2016	House Majority Leader	Male	1
state	37	2016	House Minority Leader	Female	0
state	37	2016	House Minority Leader	Male	0
state	37	2016	House Minority Whip	Female	0
state	37	2016	House Minority Whip	Male	0
state	37	2016	Other Members	Female	0
state	37	2016	Other Members	Male	18
state	37	2016	Speaker	Female	0
state	37	2016	Speaker	Male	1
\.


--
-- Name: officer_house_assembly officer_house_assembly_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.officer_house_assembly
    ADD CONSTRAINT officer_house_assembly_pkey PRIMARY KEY (geo_level, geo_code, geo_version, position, gender);


--
-- PostgreSQL database dump complete
--
