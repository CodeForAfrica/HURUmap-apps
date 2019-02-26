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

ALTER TABLE IF EXISTS ONLY public.corruption_president_office DROP CONSTRAINT IF EXISTS pk_corruption_president_office;
DROP TABLE IF EXISTS public.corruption_president_office;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_president_office; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_president_office (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_president_office character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_president_office; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_president_office (geo_level, geo_code, geo_version, corruption_president_office, total) FROM stdin;
region	1	2009	All of them	6
region	1	2009	Don't know/ Haven't heard enough	4
region	1	2009	Most of them	40
region	1	2009	None	15
region	1	2009	Some of them	55
region	2	2009	All of them	7
region	2	2009	Don't know/ Haven't heard enough	42
region	2	2009	Most of them	24
region	2	2009	None	57
region	2	2009	Some of them	143
region	3	2009	Don't know/ Haven't heard enough	23
region	3	2009	Most of them	2
region	3	2009	None	42
region	3	2009	Some of them	29
region	4	2009	All of them	1
region	4	2009	Don't know/ Haven't heard enough	1
region	4	2009	Most of them	10
region	4	2009	None	22
region	4	2009	Some of them	37
region	5	2009	All of them	1
region	5	2009	Don't know/ Haven't heard enough	5
region	5	2009	Most of them	6
region	5	2009	None	12
region	5	2009	Some of them	24
region	6	2009	All of them	1
region	6	2009	Don't know/ Haven't heard enough	3
region	6	2009	Most of them	4
region	6	2009	None	27
region	6	2009	Some of them	37
region	7	2009	All of them	1
region	7	2009	Don't know/ Haven't heard enough	17
region	7	2009	Most of them	4
region	7	2009	None	8
region	7	2009	Some of them	26
region	8	2009	Don't know/ Haven't heard enough	10
region	8	2009	None	6
region	8	2009	Some of them	24
region	9	2009	Most of them	4
region	9	2009	None	6
region	9	2009	Some of them	14
region	10	2009	All of them	3
region	10	2009	Don't know/ Haven't heard enough	31
region	10	2009	Most of them	9
region	10	2009	None	18
region	10	2009	Some of them	35
region	11	2009	All of them	5
region	11	2009	Don't know/ Haven't heard enough	2
region	11	2009	Most of them	22
region	11	2009	None	1
region	11	2009	Some of them	58
region	12	2009	Don't know/ Haven't heard enough	1
region	12	2009	Most of them	1
region	12	2009	None	3
region	12	2009	Some of them	3
region	13	2009	Don't know/ Haven't heard enough	3
region	13	2009	Most of them	2
region	13	2009	None	6
region	13	2009	Some of them	13
region	14	2009	Don't know/ Haven't heard enough	1
region	14	2009	Most of them	5
region	14	2009	None	9
region	14	2009	Some of them	33
region	15	2009	All of them	5
region	15	2009	Don't know/ Haven't heard enough	4
region	15	2009	Most of them	22
region	15	2009	None	5
region	15	2009	Some of them	28
region	16	2009	All of them	4
region	16	2009	Don't know/ Haven't heard enough	9
region	16	2009	Most of them	9
region	16	2009	None	21
region	16	2009	Some of them	37
region	17	2009	All of them	3
region	17	2009	Don't know/ Haven't heard enough	3
region	17	2009	Most of them	10
region	17	2009	None	9
region	17	2009	Some of them	39
region	30	2009	Don't know/ Haven't heard enough	16
region	30	2009	Most of them	9
region	30	2009	None	31
region	30	2009	Some of them	56
region	18	2009	Don't know/ Haven't heard enough	45
region	18	2009	Most of them	5
region	18	2009	None	38
region	18	2009	Some of them	32
region	19	2009	All of them	3
region	19	2009	Don't know/ Haven't heard enough	7
region	19	2009	Most of them	10
region	19	2009	None	25
region	19	2009	Some of them	26
region	20	2009	All of them	1
region	20	2009	Don't know/ Haven't heard enough	7
region	20	2009	Most of them	15
region	20	2009	None	28
region	20	2009	Some of them	73
region	21	2009	All of them	3
region	21	2009	Don't know/ Haven't heard enough	2
region	21	2009	Most of them	1
region	21	2009	None	9
region	21	2009	Some of them	25
region	22	2009	Don't know/ Haven't heard enough	6
region	22	2009	Most of them	8
region	22	2009	None	6
region	22	2009	Some of them	52
region	23	2009	Don't know/ Haven't heard enough	6
region	23	2009	Most of them	6
region	23	2009	None	7
region	23	2009	Some of them	20
region	24	2009	Don't know/ Haven't heard enough	3
region	24	2009	Most of them	2
region	24	2009	None	14
region	24	2009	Some of them	53
region	25	2009	All of them	2
region	25	2009	Don't know/ Haven't heard enough	12
region	25	2009	Most of them	3
region	25	2009	None	13
region	25	2009	Some of them	42
region	26	2009	All of them	2
region	26	2009	Don't know/ Haven't heard enough	15
region	26	2009	Most of them	4
region	26	2009	None	23
region	26	2009	Some of them	20
region	27	2009	All of them	1
region	27	2009	Don't know/ Haven't heard enough	7
region	27	2009	Most of them	2
region	27	2009	None	12
region	27	2009	Some of them	42
region	31	2009	All of them	1
region	31	2009	Don't know/ Haven't heard enough	8
region	31	2009	Most of them	11
region	31	2009	None	11
region	31	2009	Some of them	41
region	29	2009	Don't know/ Haven't heard enough	39
region	29	2009	Most of them	1
region	29	2009	None	45
region	29	2009	Some of them	19
region	28	2009	All of them	3
region	28	2009	Don't know/ Haven't heard enough	3
region	28	2009	Most of them	32
region	28	2009	None	11
region	28	2009	Some of them	39
country	TZ	2009	None	540
country	TZ	2009	All of them	53
country	TZ	2009	Most of them	283
country	TZ	2009	Don't know/ Haven't heard enough	335
country	TZ	2009	Some of them	1175
\.


--
-- Name: corruption_president_office pk_corruption_president_office; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_president_office
    ADD CONSTRAINT pk_corruption_president_office PRIMARY KEY (geo_level, geo_code, geo_version, corruption_president_office);


--
-- PostgreSQL database dump complete
--

