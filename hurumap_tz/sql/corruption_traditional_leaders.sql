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

ALTER TABLE IF EXISTS ONLY public.corruption_traditional_leaders DROP CONSTRAINT IF EXISTS pk_corruption_traditional_leaders;
DROP TABLE IF EXISTS public.corruption_traditional_leaders;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_traditional_leaders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_traditional_leaders (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_traditional_leaders character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_traditional_leaders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_traditional_leaders (geo_level, geo_code, geo_version, corruption_traditional_leaders, total) FROM stdin;
region	1	2009	All of them	6
region	1	2009	Don't know/ Haven't heard enough	11
region	1	2009	Most of them	32
region	1	2009	None	30
region	1	2009	Some of them	41
region	2	2009	All of them	7
region	2	2009	Don't know/ Haven't heard enough	79
region	2	2009	Most of them	21
region	2	2009	None	72
region	2	2009	Some of them	93
region	3	2009	All of them	1
region	3	2009	Don't know/ Haven't heard enough	42
region	3	2009	Most of them	2
region	3	2009	None	44
region	3	2009	Some of them	7
region	4	2009	All of them	2
region	4	2009	Don't know/ Haven't heard enough	2
region	4	2009	Most of them	11
region	4	2009	None	32
region	4	2009	Some of them	24
region	5	2009	All of them	1
region	5	2009	Don't know/ Haven't heard enough	10
region	5	2009	Most of them	4
region	5	2009	None	16
region	5	2009	Some of them	17
region	6	2009	All of them	2
region	6	2009	Don't know/ Haven't heard enough	15
region	6	2009	Most of them	5
region	6	2009	None	22
region	6	2009	Some of them	28
region	7	2009	Don't know/ Haven't heard enough	15
region	7	2009	Most of them	3
region	7	2009	None	30
region	7	2009	Some of them	8
region	8	2009	Don't know/ Haven't heard enough	3
region	8	2009	None	22
region	8	2009	Some of them	15
region	9	2009	Don't know/ Haven't heard enough	4
region	9	2009	Most of them	1
region	9	2009	None	7
region	9	2009	Some of them	12
region	10	2009	All of them	1
region	10	2009	Don't know/ Haven't heard enough	48
region	10	2009	Most of them	8
region	10	2009	None	31
region	10	2009	Some of them	8
region	11	2009	Don't know/ Haven't heard enough	17
region	11	2009	Most of them	21
region	11	2009	None	7
region	11	2009	Some of them	43
region	12	2009	None	5
region	12	2009	Some of them	3
region	13	2009	Don't know/ Haven't heard enough	4
region	13	2009	None	15
region	13	2009	Some of them	5
region	14	2009	Most of them	1
region	14	2009	None	19
region	14	2009	Some of them	28
region	15	2009	All of them	4
region	15	2009	Don't know/ Haven't heard enough	8
region	15	2009	Most of them	13
region	15	2009	None	19
region	15	2009	Some of them	20
region	16	2009	All of them	5
region	16	2009	Don't know/ Haven't heard enough	10
region	16	2009	Most of them	6
region	16	2009	None	28
region	16	2009	Some of them	31
region	17	2009	All of them	1
region	17	2009	Don't know/ Haven't heard enough	18
region	17	2009	Most of them	5
region	17	2009	None	11
region	17	2009	Some of them	29
region	30	2009	Don't know/ Haven't heard enough	11
region	30	2009	Most of them	1
region	30	2009	None	73
region	30	2009	Some of them	27
region	18	2009	Don't know/ Haven't heard enough	61
region	18	2009	None	54
region	18	2009	Some of them	5
region	19	2009	Don't know/ Haven't heard enough	2
region	19	2009	Most of them	4
region	19	2009	None	42
region	19	2009	Some of them	23
region	20	2009	All of them	8
region	20	2009	Don't know/ Haven't heard enough	12
region	20	2009	Most of them	11
region	20	2009	None	55
region	20	2009	Some of them	38
region	21	2009	All of them	3
region	21	2009	Don't know/ Haven't heard enough	8
region	21	2009	Most of them	2
region	21	2009	None	13
region	21	2009	Some of them	14
region	22	2009	All of them	3
region	22	2009	Don't know/ Haven't heard enough	14
region	22	2009	Most of them	14
region	22	2009	None	29
region	22	2009	Some of them	12
region	23	2009	Don't know/ Haven't heard enough	9
region	23	2009	Most of them	2
region	23	2009	None	14
region	23	2009	Some of them	14
region	24	2009	All of them	1
region	24	2009	Don't know/ Haven't heard enough	10
region	24	2009	Most of them	8
region	24	2009	None	23
region	24	2009	Some of them	30
region	25	2009	All of them	2
region	25	2009	Don't know/ Haven't heard enough	6
region	25	2009	Most of them	4
region	25	2009	None	47
region	25	2009	Some of them	13
region	26	2009	All of them	1
region	26	2009	Don't know/ Haven't heard enough	23
region	26	2009	None	33
region	26	2009	Some of them	7
region	27	2009	All of them	1
region	27	2009	Don't know/ Haven't heard enough	28
region	27	2009	Most of them	3
region	27	2009	None	19
region	27	2009	Some of them	13
region	31	2009	All of them	1
region	31	2009	Don't know/ Haven't heard enough	12
region	31	2009	Most of them	9
region	31	2009	None	15
region	31	2009	Some of them	35
region	29	2009	Don't know/ Haven't heard enough	62
region	29	2009	None	35
region	29	2009	Some of them	7
region	28	2009	All of them	10
region	28	2009	Don't know/ Haven't heard enough	9
region	28	2009	Most of them	30
region	28	2009	None	16
region	28	2009	Some of them	23
country	TZ	2009	None	878
country	TZ	2009	All of them	60
country	TZ	2009	Most of them	221
country	TZ	2009	Don't know/ Haven't heard enough	553
country	TZ	2009	Some of them	673
\.


--
-- Name: corruption_traditional_leaders pk_corruption_traditional_leaders; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_traditional_leaders
    ADD CONSTRAINT pk_corruption_traditional_leaders PRIMARY KEY (geo_level, geo_code, geo_version, corruption_traditional_leaders);


--
-- PostgreSQL database dump complete
--

