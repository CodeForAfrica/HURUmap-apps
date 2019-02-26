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

ALTER TABLE IF EXISTS ONLY public.corruption_business_executives DROP CONSTRAINT IF EXISTS pk_corruption_business_executives;
DROP TABLE IF EXISTS public.corruption_business_executives;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_business_executives; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_business_executives (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_business_executives character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_business_executives; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_business_executives (geo_level, geo_code, geo_version, corruption_business_executives, total) FROM stdin;
region	1	2009	All of them	10
region	1	2009	Don't know/ Haven't heard enough	3
region	1	2009	Most of them	46
region	1	2009	None	10
region	1	2009	Some of them	51
region	2	2009	All of them	15
region	2	2009	Don't know/ Haven't heard enough	22
region	2	2009	Most of them	79
region	2	2009	None	39
region	2	2009	Some of them	118
region	3	2009	All of them	4
region	3	2009	Don't know/ Haven't heard enough	8
region	3	2009	Most of them	22
region	3	2009	None	31
region	3	2009	Some of them	31
region	4	2009	All of them	2
region	4	2009	Don't know/ Haven't heard enough	1
region	4	2009	Most of them	11
region	4	2009	None	17
region	4	2009	Some of them	40
region	5	2009	Don't know/ Haven't heard enough	5
region	5	2009	Most of them	11
region	5	2009	None	3
region	5	2009	Some of them	29
region	6	2009	All of them	2
region	6	2009	Don't know/ Haven't heard enough	2
region	6	2009	Most of them	15
region	6	2009	None	25
region	6	2009	Some of them	28
region	7	2009	Don't know/ Haven't heard enough	12
region	7	2009	Most of them	18
region	7	2009	None	10
region	7	2009	Some of them	16
region	8	2009	Don't know/ Haven't heard enough	2
region	8	2009	Most of them	10
region	8	2009	None	12
region	8	2009	Some of them	16
region	9	2009	Don't know/ Haven't heard enough	1
region	9	2009	Most of them	4
region	9	2009	None	2
region	9	2009	Some of them	17
region	10	2009	All of them	3
region	10	2009	Don't know/ Haven't heard enough	25
region	10	2009	Most of them	24
region	10	2009	None	21
region	10	2009	Some of them	23
region	11	2009	All of them	3
region	11	2009	Don't know/ Haven't heard enough	3
region	11	2009	Most of them	36
region	11	2009	None	1
region	11	2009	Some of them	45
region	12	2009	Most of them	3
region	12	2009	None	2
region	12	2009	Some of them	3
region	13	2009	Don't know/ Haven't heard enough	3
region	13	2009	Most of them	6
region	13	2009	None	9
region	13	2009	Some of them	6
region	14	2009	Most of them	10
region	14	2009	None	5
region	14	2009	Some of them	33
region	15	2009	All of them	9
region	15	2009	Don't know/ Haven't heard enough	1
region	15	2009	Most of them	30
region	15	2009	None	2
region	15	2009	Some of them	22
region	16	2009	All of them	2
region	16	2009	Don't know/ Haven't heard enough	3
region	16	2009	Most of them	9
region	16	2009	None	23
region	16	2009	Some of them	43
region	17	2009	All of them	3
region	17	2009	Don't know/ Haven't heard enough	4
region	17	2009	Most of them	13
region	17	2009	None	7
region	17	2009	Some of them	37
region	30	2009	All of them	2
region	30	2009	Don't know/ Haven't heard enough	8
region	30	2009	Most of them	26
region	30	2009	None	30
region	30	2009	Some of them	46
region	18	2009	All of them	1
region	18	2009	Don't know/ Haven't heard enough	3
region	18	2009	Most of them	37
region	18	2009	None	44
region	18	2009	Some of them	35
region	19	2009	All of them	2
region	19	2009	Don't know/ Haven't heard enough	2
region	19	2009	Most of them	21
region	19	2009	None	24
region	19	2009	Some of them	22
region	20	2009	All of them	5
region	20	2009	Don't know/ Haven't heard enough	1
region	20	2009	Most of them	17
region	20	2009	None	36
region	20	2009	Some of them	65
region	21	2009	All of them	2
region	21	2009	Don't know/ Haven't heard enough	2
region	21	2009	Most of them	10
region	21	2009	None	5
region	21	2009	Some of them	21
region	22	2009	All of them	4
region	22	2009	Don't know/ Haven't heard enough	1
region	22	2009	Most of them	20
region	22	2009	None	14
region	22	2009	Some of them	33
region	23	2009	Don't know/ Haven't heard enough	3
region	23	2009	Most of them	14
region	23	2009	None	2
region	23	2009	Some of them	20
region	24	2009	Don't know/ Haven't heard enough	5
region	24	2009	Most of them	10
region	24	2009	None	10
region	24	2009	Some of them	47
region	25	2009	All of them	2
region	25	2009	Don't know/ Haven't heard enough	1
region	25	2009	Most of them	10
region	25	2009	None	25
region	25	2009	Some of them	34
region	26	2009	All of them	1
region	26	2009	Don't know/ Haven't heard enough	2
region	26	2009	Most of them	10
region	26	2009	None	28
region	26	2009	Some of them	23
region	27	2009	All of them	1
region	27	2009	Most of them	19
region	27	2009	None	11
region	27	2009	Some of them	33
region	31	2009	All of them	2
region	31	2009	Don't know/ Haven't heard enough	3
region	31	2009	Most of them	19
region	31	2009	None	3
region	31	2009	Some of them	45
region	29	2009	All of them	3
region	29	2009	Don't know/ Haven't heard enough	10
region	29	2009	Most of them	29
region	29	2009	None	23
region	29	2009	Some of them	39
region	28	2009	All of them	12
region	28	2009	Don't know/ Haven't heard enough	4
region	28	2009	Most of them	33
region	28	2009	None	4
region	28	2009	Some of them	35
country	TZ	2009	None	478
country	TZ	2009	All of them	90
country	TZ	2009	Most of them	622
country	TZ	2009	Don't know/ Haven't heard enough	140
country	TZ	2009	Some of them	1056
\.


--
-- Name: corruption_business_executives pk_corruption_business_executives; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_business_executives
    ADD CONSTRAINT pk_corruption_business_executives PRIMARY KEY (geo_level, geo_code, geo_version, corruption_business_executives);


--
-- PostgreSQL database dump complete
--

