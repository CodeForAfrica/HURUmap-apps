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

ALTER TABLE IF EXISTS ONLY public.corruption_local_gov_councilors DROP CONSTRAINT IF EXISTS pk_corruption_local_gov_councilors;
DROP TABLE IF EXISTS public.corruption_local_gov_councilors;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_local_gov_councilors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_local_gov_councilors (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_local_gov_councilors character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_local_gov_councilors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_local_gov_councilors (geo_level, geo_code, geo_version, corruption_local_gov_councilors, total) FROM stdin;
region	1	2009	All of them	5
region	1	2009	Don't know/ Haven't heard enough	3
region	1	2009	Most of them	39
region	1	2009	None	14
region	1	2009	Some of them	59
region	2	2009	All of them	11
region	2	2009	Don't know/ Haven't heard enough	28
region	2	2009	Most of them	71
region	2	2009	None	21
region	2	2009	Some of them	142
region	3	2009	Don't know/ Haven't heard enough	15
region	3	2009	Most of them	20
region	3	2009	None	25
region	3	2009	Some of them	36
region	4	2009	All of them	2
region	4	2009	Don't know/ Haven't heard enough	1
region	4	2009	Most of them	18
region	4	2009	None	15
region	4	2009	Some of them	35
region	5	2009	Don't know/ Haven't heard enough	5
region	5	2009	Most of them	8
region	5	2009	None	7
region	5	2009	Some of them	28
region	6	2009	All of them	1
region	6	2009	Don't know/ Haven't heard enough	1
region	6	2009	Most of them	9
region	6	2009	None	10
region	6	2009	Some of them	50
region	7	2009	All of them	1
region	7	2009	Don't know/ Haven't heard enough	12
region	7	2009	Most of them	16
region	7	2009	None	10
region	7	2009	Some of them	17
region	8	2009	Don't know/ Haven't heard enough	5
region	8	2009	Most of them	5
region	8	2009	None	5
region	8	2009	Some of them	25
region	9	2009	Most of them	4
region	9	2009	None	3
region	9	2009	Some of them	17
region	10	2009	All of them	1
region	10	2009	Don't know/ Haven't heard enough	25
region	10	2009	Most of them	16
region	10	2009	None	11
region	10	2009	Some of them	43
region	11	2009	All of them	2
region	11	2009	Don't know/ Haven't heard enough	1
region	11	2009	Most of them	27
region	11	2009	Some of them	58
region	12	2009	Don't know/ Haven't heard enough	1
region	12	2009	Most of them	2
region	12	2009	None	2
region	12	2009	Some of them	3
region	13	2009	Don't know/ Haven't heard enough	3
region	13	2009	Most of them	2
region	13	2009	None	2
region	13	2009	Some of them	17
region	14	2009	Most of them	15
region	14	2009	Some of them	33
region	15	2009	All of them	9
region	15	2009	Don't know/ Haven't heard enough	2
region	15	2009	Most of them	19
region	15	2009	None	1
region	15	2009	Some of them	33
region	16	2009	All of them	5
region	16	2009	Don't know/ Haven't heard enough	2
region	16	2009	Most of them	14
region	16	2009	None	17
region	16	2009	Some of them	42
region	17	2009	All of them	4
region	17	2009	Don't know/ Haven't heard enough	3
region	17	2009	Most of them	11
region	17	2009	None	5
region	17	2009	Some of them	41
region	30	2009	Don't know/ Haven't heard enough	11
region	30	2009	Most of them	29
region	30	2009	None	10
region	30	2009	Some of them	62
region	18	2009	All of them	1
region	18	2009	Don't know/ Haven't heard enough	9
region	18	2009	Most of them	15
region	18	2009	None	24
region	18	2009	Some of them	71
region	19	2009	All of them	3
region	19	2009	Don't know/ Haven't heard enough	2
region	19	2009	Most of them	22
region	19	2009	None	6
region	19	2009	Some of them	38
region	20	2009	All of them	2
region	20	2009	Don't know/ Haven't heard enough	4
region	20	2009	Most of them	25
region	20	2009	None	15
region	20	2009	Some of them	78
region	21	2009	All of them	4
region	21	2009	Don't know/ Haven't heard enough	1
region	21	2009	Most of them	5
region	21	2009	None	5
region	21	2009	Some of them	25
region	22	2009	Don't know/ Haven't heard enough	2
region	22	2009	Most of them	28
region	22	2009	None	2
region	22	2009	Some of them	40
region	23	2009	Don't know/ Haven't heard enough	2
region	23	2009	Most of them	8
region	23	2009	None	2
region	23	2009	Some of them	27
region	24	2009	Don't know/ Haven't heard enough	2
region	24	2009	Most of them	7
region	24	2009	None	7
region	24	2009	Some of them	56
region	25	2009	All of them	1
region	25	2009	Don't know/ Haven't heard enough	6
region	25	2009	Most of them	13
region	25	2009	None	6
region	25	2009	Some of them	46
region	26	2009	All of them	2
region	26	2009	Don't know/ Haven't heard enough	6
region	26	2009	Most of them	12
region	26	2009	None	10
region	26	2009	Some of them	34
region	27	2009	Don't know/ Haven't heard enough	2
region	27	2009	Most of them	7
region	27	2009	None	5
region	27	2009	Some of them	50
region	31	2009	All of them	2
region	31	2009	Don't know/ Haven't heard enough	4
region	31	2009	Most of them	12
region	31	2009	None	2
region	31	2009	Some of them	52
region	29	2009	Don't know/ Haven't heard enough	22
region	29	2009	Most of them	15
region	29	2009	None	22
region	29	2009	Some of them	45
region	28	2009	All of them	7
region	28	2009	Don't know/ Haven't heard enough	3
region	28	2009	Most of them	29
region	28	2009	None	7
region	28	2009	Some of them	42
country	TZ	2009	None	271
country	TZ	2009	All of them	63
country	TZ	2009	Most of them	523
country	TZ	2009	Don't know/ Haven't heard enough	183
country	TZ	2009	Some of them	1345
\.


--
-- Name: corruption_local_gov_councilors pk_corruption_local_gov_councilors; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_local_gov_councilors
    ADD CONSTRAINT pk_corruption_local_gov_councilors PRIMARY KEY (geo_level, geo_code, geo_version, corruption_local_gov_councilors);


--
-- PostgreSQL database dump complete
--

