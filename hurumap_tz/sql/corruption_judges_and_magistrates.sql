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

ALTER TABLE IF EXISTS ONLY public.corruption_judges_and_magistrates DROP CONSTRAINT IF EXISTS pk_corruption_judges_and_magistrates;
DROP TABLE IF EXISTS public.corruption_judges_and_magistrates;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_judges_and_magistrates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_judges_and_magistrates (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_judges_and_magistrates character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_judges_and_magistrates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_judges_and_magistrates (geo_level, geo_code, geo_version, corruption_judges_and_magistrates, total) FROM stdin;
region	1	2009	All of them	6
region	1	2009	Don't know/ Haven't heard enough	3
region	1	2009	Most of them	52
region	1	2009	None	7
region	1	2009	Some of them	52
region	2	2009	All of them	17
region	2	2009	Don't know/ Haven't heard enough	27
region	2	2009	Most of them	85
region	2	2009	None	24
region	2	2009	Some of them	120
region	3	2009	All of them	2
region	3	2009	Don't know/ Haven't heard enough	15
region	3	2009	Most of them	19
region	3	2009	None	20
region	3	2009	Some of them	40
region	4	2009	All of them	2
region	4	2009	Most of them	18
region	4	2009	None	17
region	4	2009	Some of them	34
region	5	2009	All of them	1
region	5	2009	Don't know/ Haven't heard enough	6
region	5	2009	Most of them	12
region	5	2009	None	3
region	5	2009	Some of them	26
region	6	2009	All of them	4
region	6	2009	Don't know/ Haven't heard enough	3
region	6	2009	Most of them	16
region	6	2009	None	6
region	6	2009	Some of them	43
region	7	2009	All of them	2
region	7	2009	Don't know/ Haven't heard enough	13
region	7	2009	Most of them	17
region	7	2009	None	9
region	7	2009	Some of them	15
region	8	2009	Don't know/ Haven't heard enough	3
region	8	2009	Most of them	12
region	8	2009	None	8
region	8	2009	Some of them	17
region	9	2009	All of them	2
region	9	2009	Most of them	7
region	9	2009	None	1
region	9	2009	Some of them	14
region	10	2009	All of them	3
region	10	2009	Don't know/ Haven't heard enough	24
region	10	2009	Most of them	24
region	10	2009	None	11
region	10	2009	Some of them	34
region	11	2009	All of them	3
region	11	2009	Don't know/ Haven't heard enough	1
region	11	2009	Most of them	34
region	11	2009	Some of them	50
region	12	2009	Most of them	3
region	12	2009	None	3
region	12	2009	Some of them	2
region	13	2009	Don't know/ Haven't heard enough	3
region	13	2009	Most of them	6
region	13	2009	None	4
region	13	2009	Some of them	11
region	14	2009	Most of them	11
region	14	2009	None	2
region	14	2009	Some of them	35
region	15	2009	All of them	8
region	15	2009	Don't know/ Haven't heard enough	2
region	15	2009	Most of them	28
region	15	2009	None	3
region	15	2009	Some of them	23
region	16	2009	All of them	8
region	16	2009	Don't know/ Haven't heard enough	5
region	16	2009	Most of them	18
region	16	2009	None	16
region	16	2009	Some of them	33
region	17	2009	All of them	5
region	17	2009	Don't know/ Haven't heard enough	2
region	17	2009	Most of them	19
region	17	2009	None	1
region	17	2009	Some of them	37
region	30	2009	Don't know/ Haven't heard enough	13
region	30	2009	Most of them	32
region	30	2009	None	16
region	30	2009	Some of them	51
region	18	2009	All of them	1
region	18	2009	Don't know/ Haven't heard enough	24
region	18	2009	Most of them	29
region	18	2009	None	20
region	18	2009	Some of them	46
region	19	2009	All of them	3
region	19	2009	Don't know/ Haven't heard enough	2
region	19	2009	Most of them	25
region	19	2009	None	12
region	19	2009	Some of them	29
region	20	2009	All of them	3
region	20	2009	Don't know/ Haven't heard enough	3
region	20	2009	Most of them	43
region	20	2009	None	13
region	20	2009	Some of them	62
region	21	2009	All of them	3
region	21	2009	Don't know/ Haven't heard enough	1
region	21	2009	Most of them	12
region	21	2009	None	3
region	21	2009	Some of them	21
region	22	2009	All of them	1
region	22	2009	Don't know/ Haven't heard enough	1
region	22	2009	Most of them	35
region	22	2009	None	5
region	22	2009	Some of them	30
region	23	2009	All of them	2
region	23	2009	Don't know/ Haven't heard enough	2
region	23	2009	Most of them	14
region	23	2009	None	1
region	23	2009	Some of them	20
region	24	2009	All of them	1
region	24	2009	Don't know/ Haven't heard enough	2
region	24	2009	Most of them	14
region	24	2009	None	6
region	24	2009	Some of them	49
region	25	2009	All of them	3
region	25	2009	Most of them	34
region	25	2009	None	3
region	25	2009	Some of them	32
region	26	2009	Don't know/ Haven't heard enough	3
region	26	2009	Most of them	16
region	26	2009	None	14
region	26	2009	Some of them	31
region	27	2009	All of them	3
region	27	2009	Don't know/ Haven't heard enough	1
region	27	2009	Most of them	13
region	27	2009	None	7
region	27	2009	Some of them	40
region	31	2009	All of them	2
region	31	2009	Don't know/ Haven't heard enough	4
region	31	2009	Most of them	27
region	31	2009	None	1
region	31	2009	Some of them	38
region	29	2009	All of them	2
region	29	2009	Don't know/ Haven't heard enough	25
region	29	2009	Most of them	19
region	29	2009	None	17
region	29	2009	Some of them	41
region	28	2009	All of them	10
region	28	2009	Don't know/ Haven't heard enough	3
region	28	2009	Most of them	42
region	28	2009	None	2
region	28	2009	Some of them	31
country	TZ	2009	None	255
country	TZ	2009	All of them	97
country	TZ	2009	Most of them	736
country	TZ	2009	Don't know/ Haven't heard enough	191
country	TZ	2009	Some of them	1107
\.


--
-- Name: corruption_judges_and_magistrates pk_corruption_judges_and_magistrates; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_judges_and_magistrates
    ADD CONSTRAINT pk_corruption_judges_and_magistrates PRIMARY KEY (geo_level, geo_code, geo_version, corruption_judges_and_magistrates);


--
-- PostgreSQL database dump complete
--

