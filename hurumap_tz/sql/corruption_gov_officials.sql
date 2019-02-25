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

ALTER TABLE IF EXISTS ONLY public.corruption_gov_officials DROP CONSTRAINT IF EXISTS pk_corruption_gov_officials;
DROP TABLE IF EXISTS public.corruption_gov_officials;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_gov_officials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_gov_officials (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_gov_officials character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_gov_officials; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_gov_officials (geo_level, geo_code, geo_version, corruption_gov_officials, total) FROM stdin;
region	1	2009	All of them	5
region	1	2009	Don't know/ Haven't heard enough	4
region	1	2009	Most of them	41
region	1	2009	None	8
region	1	2009	Some of them	62
region	2	2009	All of them	10
region	2	2009	Don't know/ Haven't heard enough	26
region	2	2009	Most of them	66
region	2	2009	None	20
region	2	2009	Some of them	151
region	3	2009	Don't know/ Haven't heard enough	19
region	3	2009	Most of them	17
region	3	2009	None	22
region	3	2009	Some of them	38
region	4	2009	All of them	3
region	4	2009	Don't know/ Haven't heard enough	1
region	4	2009	Most of them	17
region	4	2009	None	8
region	4	2009	Some of them	42
region	5	2009	Don't know/ Haven't heard enough	5
region	5	2009	Most of them	9
region	5	2009	None	4
region	5	2009	Some of them	30
region	6	2009	All of them	2
region	6	2009	Don't know/ Haven't heard enough	3
region	6	2009	Most of them	11
region	6	2009	None	6
region	6	2009	Some of them	50
region	7	2009	Don't know/ Haven't heard enough	12
region	7	2009	Most of them	16
region	7	2009	None	10
region	7	2009	Some of them	18
region	8	2009	All of them	1
region	8	2009	Don't know/ Haven't heard enough	6
region	8	2009	Most of them	3
region	8	2009	None	4
region	8	2009	Some of them	26
region	9	2009	Most of them	5
region	9	2009	None	4
region	9	2009	Some of them	15
region	10	2009	All of them	2
region	10	2009	Don't know/ Haven't heard enough	26
region	10	2009	Most of them	16
region	10	2009	None	13
region	10	2009	Some of them	39
region	11	2009	All of them	2
region	11	2009	Don't know/ Haven't heard enough	1
region	11	2009	Most of them	30
region	11	2009	Some of them	55
region	12	2009	Don't know/ Haven't heard enough	1
region	12	2009	Most of them	2
region	12	2009	None	2
region	12	2009	Some of them	3
region	13	2009	Don't know/ Haven't heard enough	3
region	13	2009	Most of them	3
region	13	2009	None	3
region	13	2009	Some of them	15
region	14	2009	Most of them	11
region	14	2009	Some of them	37
region	15	2009	All of them	5
region	15	2009	Don't know/ Haven't heard enough	2
region	15	2009	Most of them	27
region	15	2009	Some of them	30
region	16	2009	All of them	5
region	16	2009	Most of them	12
region	16	2009	None	13
region	16	2009	Some of them	50
region	17	2009	All of them	3
region	17	2009	Don't know/ Haven't heard enough	2
region	17	2009	Most of them	15
region	17	2009	None	4
region	17	2009	Some of them	40
region	30	2009	Don't know/ Haven't heard enough	13
region	30	2009	Most of them	28
region	30	2009	None	8
region	30	2009	Some of them	63
region	18	2009	All of them	1
region	18	2009	Don't know/ Haven't heard enough	22
region	18	2009	Most of them	13
region	18	2009	None	23
region	18	2009	Some of them	61
region	19	2009	All of them	1
region	19	2009	Don't know/ Haven't heard enough	7
region	19	2009	Most of them	17
region	19	2009	None	9
region	19	2009	Some of them	37
region	20	2009	All of them	5
region	20	2009	Don't know/ Haven't heard enough	1
region	20	2009	Most of them	24
region	20	2009	None	10
region	20	2009	Some of them	84
region	21	2009	All of them	3
region	21	2009	Don't know/ Haven't heard enough	1
region	21	2009	Most of them	8
region	21	2009	None	4
region	21	2009	Some of them	24
region	22	2009	Don't know/ Haven't heard enough	4
region	22	2009	Most of them	23
region	22	2009	None	3
region	22	2009	Some of them	42
region	23	2009	Don't know/ Haven't heard enough	2
region	23	2009	Most of them	10
region	23	2009	Some of them	27
region	24	2009	Don't know/ Haven't heard enough	2
region	24	2009	Most of them	6
region	24	2009	None	7
region	24	2009	Some of them	57
region	25	2009	All of them	2
region	25	2009	Don't know/ Haven't heard enough	4
region	25	2009	Most of them	18
region	25	2009	None	3
region	25	2009	Some of them	45
region	26	2009	All of them	2
region	26	2009	Don't know/ Haven't heard enough	11
region	26	2009	Most of them	6
region	26	2009	None	8
region	26	2009	Some of them	37
region	27	2009	All of them	1
region	27	2009	Don't know/ Haven't heard enough	2
region	27	2009	Most of them	10
region	27	2009	None	6
region	27	2009	Some of them	45
region	31	2009	All of them	2
region	31	2009	Don't know/ Haven't heard enough	4
region	31	2009	Most of them	17
region	31	2009	None	2
region	31	2009	Some of them	47
region	29	2009	Don't know/ Haven't heard enough	21
region	29	2009	Most of them	11
region	29	2009	None	14
region	29	2009	Some of them	58
region	28	2009	All of them	5
region	28	2009	Don't know/ Haven't heard enough	3
region	28	2009	Most of them	31
region	28	2009	None	5
region	28	2009	Some of them	44
country	TZ	2009	None	223
country	TZ	2009	All of them	60
country	TZ	2009	Most of them	523
country	TZ	2009	Don't know/ Haven't heard enough	208
country	TZ	2009	Some of them	1372
\.


--
-- Name: corruption_gov_officials pk_corruption_gov_officials; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_gov_officials
    ADD CONSTRAINT pk_corruption_gov_officials PRIMARY KEY (geo_level, geo_code, geo_version, corruption_gov_officials);


--
-- PostgreSQL database dump complete
--

