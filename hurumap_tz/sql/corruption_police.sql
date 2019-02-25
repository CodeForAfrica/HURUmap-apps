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

ALTER TABLE IF EXISTS ONLY public.corruption_police DROP CONSTRAINT IF EXISTS pk_corruption_police;
DROP TABLE IF EXISTS public.corruption_police;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_police; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_police (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_police character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_police; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_police (geo_level, geo_code, geo_version, corruption_police, total) FROM stdin;
region	1	2009	All of them	10
region	1	2009	Don't know/ Haven't heard enough	3
region	1	2009	Most of them	45
region	1	2009	None	8
region	1	2009	Some of them	54
region	2	2009	All of them	32
region	2	2009	Don't know/ Haven't heard enough	22
region	2	2009	Most of them	100
region	2	2009	None	11
region	2	2009	Some of them	108
region	3	2009	All of them	11
region	3	2009	Don't know/ Haven't heard enough	7
region	3	2009	Most of them	37
region	3	2009	None	11
region	3	2009	Some of them	30
region	4	2009	All of them	8
region	4	2009	Most of them	22
region	4	2009	None	13
region	4	2009	Some of them	28
region	5	2009	All of them	3
region	5	2009	Don't know/ Haven't heard enough	4
region	5	2009	Most of them	16
region	5	2009	None	3
region	5	2009	Some of them	22
region	6	2009	All of them	6
region	6	2009	Don't know/ Haven't heard enough	2
region	6	2009	Most of them	23
region	6	2009	None	9
region	6	2009	Some of them	32
region	7	2009	All of them	9
region	7	2009	Don't know/ Haven't heard enough	12
region	7	2009	Most of them	18
region	7	2009	None	2
region	7	2009	Some of them	15
region	8	2009	All of them	1
region	8	2009	Don't know/ Haven't heard enough	3
region	8	2009	Most of them	17
region	8	2009	None	2
region	8	2009	Some of them	17
region	9	2009	All of them	2
region	9	2009	Most of them	15
region	9	2009	None	2
region	9	2009	Some of them	5
region	10	2009	All of them	4
region	10	2009	Don't know/ Haven't heard enough	24
region	10	2009	Most of them	37
region	10	2009	None	10
region	10	2009	Some of them	21
region	11	2009	All of them	5
region	11	2009	Don't know/ Haven't heard enough	1
region	11	2009	Most of them	36
region	11	2009	Some of them	46
region	12	2009	Most of them	5
region	12	2009	None	1
region	12	2009	Some of them	2
region	13	2009	Don't know/ Haven't heard enough	3
region	13	2009	Most of them	7
region	13	2009	None	2
region	13	2009	Some of them	12
region	14	2009	All of them	2
region	14	2009	Most of them	18
region	14	2009	Some of them	28
region	15	2009	All of them	12
region	15	2009	Don't know/ Haven't heard enough	1
region	15	2009	Most of them	23
region	15	2009	Some of them	28
region	16	2009	All of them	14
region	16	2009	Don't know/ Haven't heard enough	1
region	16	2009	Most of them	20
region	16	2009	None	7
region	16	2009	Some of them	38
region	17	2009	All of them	9
region	17	2009	Don't know/ Haven't heard enough	1
region	17	2009	Most of them	31
region	17	2009	None	1
region	17	2009	Some of them	22
region	30	2009	All of them	9
region	30	2009	Don't know/ Haven't heard enough	7
region	30	2009	Most of them	54
region	30	2009	None	6
region	30	2009	Some of them	36
region	18	2009	All of them	9
region	18	2009	Don't know/ Haven't heard enough	1
region	18	2009	Most of them	61
region	18	2009	None	7
region	18	2009	Some of them	42
region	19	2009	All of them	14
region	19	2009	Don't know/ Haven't heard enough	4
region	19	2009	Most of them	30
region	19	2009	None	4
region	19	2009	Some of them	19
region	20	2009	All of them	10
region	20	2009	Most of them	37
region	20	2009	None	11
region	20	2009	Some of them	66
region	21	2009	All of them	4
region	21	2009	Don't know/ Haven't heard enough	1
region	21	2009	Most of them	16
region	21	2009	None	3
region	21	2009	Some of them	16
region	22	2009	All of them	3
region	22	2009	Don't know/ Haven't heard enough	1
region	22	2009	Most of them	43
region	22	2009	None	2
region	22	2009	Some of them	23
region	23	2009	All of them	3
region	23	2009	Don't know/ Haven't heard enough	1
region	23	2009	Most of them	23
region	23	2009	Some of them	12
region	24	2009	Don't know/ Haven't heard enough	2
region	24	2009	Most of them	22
region	24	2009	None	6
region	24	2009	Some of them	42
region	25	2009	All of them	6
region	25	2009	Most of them	42
region	25	2009	None	1
region	25	2009	Some of them	23
region	26	2009	All of them	4
region	26	2009	Don't know/ Haven't heard enough	2
region	26	2009	Most of them	30
region	26	2009	None	7
region	26	2009	Some of them	21
region	27	2009	All of them	3
region	27	2009	Don't know/ Haven't heard enough	1
region	27	2009	Most of them	28
region	27	2009	None	5
region	27	2009	Some of them	27
region	31	2009	All of them	5
region	31	2009	Don't know/ Haven't heard enough	1
region	31	2009	Most of them	33
region	31	2009	Some of them	33
region	29	2009	All of them	7
region	29	2009	Don't know/ Haven't heard enough	11
region	29	2009	Most of them	45
region	29	2009	None	10
region	29	2009	Some of them	31
region	28	2009	All of them	8
region	28	2009	Don't know/ Haven't heard enough	3
region	28	2009	Most of them	38
region	28	2009	None	4
region	28	2009	Some of them	35
country	TZ	2009	None	148
country	TZ	2009	All of them	213
country	TZ	2009	Most of them	972
country	TZ	2009	Don't know/ Haven't heard enough	119
country	TZ	2009	Some of them	934
\.


--
-- Name: corruption_police pk_corruption_police; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_police
    ADD CONSTRAINT pk_corruption_police PRIMARY KEY (geo_level, geo_code, geo_version, corruption_police);


--
-- PostgreSQL database dump complete
--

