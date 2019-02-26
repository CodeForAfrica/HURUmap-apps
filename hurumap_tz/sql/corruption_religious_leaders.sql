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

ALTER TABLE IF EXISTS ONLY public.corruption_religious_leaders DROP CONSTRAINT IF EXISTS pk_corruption_religious_leaders;
DROP TABLE IF EXISTS public.corruption_religious_leaders;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_religious_leaders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_religious_leaders (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_religious_leaders character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_religious_leaders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_religious_leaders (geo_level, geo_code, geo_version, corruption_religious_leaders, total) FROM stdin;
region	1	2009	All of them	8
region	1	2009	Don't know/ Haven't heard enough	4
region	1	2009	Most of them	28
region	1	2009	None	39
region	1	2009	Some of them	41
region	2	2009	All of them	9
region	2	2009	Don't know/ Haven't heard enough	35
region	2	2009	Most of them	12
region	2	2009	None	131
region	2	2009	Some of them	86
region	3	2009	All of them	1
region	3	2009	Don't know/ Haven't heard enough	16
region	3	2009	Most of them	4
region	3	2009	None	67
region	3	2009	Some of them	8
region	4	2009	All of them	2
region	4	2009	Don't know/ Haven't heard enough	1
region	4	2009	Most of them	4
region	4	2009	None	37
region	4	2009	Some of them	27
region	5	2009	Don't know/ Haven't heard enough	3
region	5	2009	Most of them	1
region	5	2009	None	33
region	5	2009	Some of them	11
region	6	2009	All of them	1
region	6	2009	Don't know/ Haven't heard enough	2
region	6	2009	Most of them	6
region	6	2009	None	40
region	6	2009	Some of them	23
region	7	2009	All of them	1
region	7	2009	Don't know/ Haven't heard enough	11
region	7	2009	Most of them	3
region	7	2009	None	34
region	7	2009	Some of them	7
region	8	2009	Don't know/ Haven't heard enough	3
region	8	2009	None	24
region	8	2009	Some of them	13
region	9	2009	Don't know/ Haven't heard enough	4
region	9	2009	Most of them	1
region	9	2009	None	12
region	9	2009	Some of them	7
region	10	2009	All of them	4
region	10	2009	Don't know/ Haven't heard enough	21
region	10	2009	Most of them	5
region	10	2009	None	55
region	10	2009	Some of them	11
region	11	2009	Don't know/ Haven't heard enough	8
region	11	2009	Most of them	19
region	11	2009	None	16
region	11	2009	Some of them	45
region	12	2009	Most of them	1
region	12	2009	None	6
region	12	2009	Some of them	1
region	13	2009	Don't know/ Haven't heard enough	3
region	13	2009	None	16
region	13	2009	Some of them	5
region	14	2009	Most of them	1
region	14	2009	None	21
region	14	2009	Some of them	26
region	15	2009	All of them	5
region	15	2009	Don't know/ Haven't heard enough	4
region	15	2009	Most of them	12
region	15	2009	None	22
region	15	2009	Some of them	21
region	16	2009	All of them	3
region	16	2009	Don't know/ Haven't heard enough	2
region	16	2009	Most of them	4
region	16	2009	None	45
region	16	2009	Some of them	26
region	17	2009	All of them	1
region	17	2009	Don't know/ Haven't heard enough	8
region	17	2009	Most of them	2
region	17	2009	None	32
region	17	2009	Some of them	21
region	30	2009	Don't know/ Haven't heard enough	5
region	30	2009	Most of them	2
region	30	2009	None	79
region	30	2009	Some of them	26
region	18	2009	All of them	1
region	18	2009	Don't know/ Haven't heard enough	8
region	18	2009	Most of them	2
region	18	2009	None	93
region	18	2009	Some of them	16
region	19	2009	Don't know/ Haven't heard enough	2
region	19	2009	Most of them	1
region	19	2009	None	46
region	19	2009	Some of them	22
region	20	2009	All of them	5
region	20	2009	Don't know/ Haven't heard enough	7
region	20	2009	Most of them	8
region	20	2009	None	67
region	20	2009	Some of them	37
region	21	2009	All of them	1
region	21	2009	Don't know/ Haven't heard enough	1
region	21	2009	Most of them	1
region	21	2009	None	27
region	21	2009	Some of them	10
region	22	2009	All of them	3
region	22	2009	Don't know/ Haven't heard enough	2
region	22	2009	Most of them	9
region	22	2009	None	42
region	22	2009	Some of them	16
region	23	2009	Don't know/ Haven't heard enough	10
region	23	2009	Most of them	1
region	23	2009	None	19
region	23	2009	Some of them	9
region	24	2009	Don't know/ Haven't heard enough	9
region	24	2009	Most of them	4
region	24	2009	None	44
region	24	2009	Some of them	15
region	25	2009	All of them	1
region	25	2009	Don't know/ Haven't heard enough	2
region	25	2009	Most of them	1
region	25	2009	None	57
region	25	2009	Some of them	11
region	26	2009	All of them	2
region	26	2009	Don't know/ Haven't heard enough	4
region	26	2009	None	42
region	26	2009	Some of them	16
region	27	2009	All of them	1
region	27	2009	Don't know/ Haven't heard enough	1
region	27	2009	Most of them	3
region	27	2009	None	50
region	27	2009	Some of them	9
region	31	2009	Don't know/ Haven't heard enough	5
region	31	2009	Most of them	1
region	31	2009	None	38
region	31	2009	Some of them	28
region	29	2009	All of them	1
region	29	2009	Don't know/ Haven't heard enough	28
region	29	2009	None	70
region	29	2009	Some of them	5
region	28	2009	All of them	8
region	28	2009	Don't know/ Haven't heard enough	4
region	28	2009	Most of them	23
region	28	2009	None	24
region	28	2009	Some of them	29
country	TZ	2009	None	1328
country	TZ	2009	All of them	58
country	TZ	2009	Most of them	159
country	TZ	2009	Don't know/ Haven't heard enough	213
country	TZ	2009	Some of them	628
\.


--
-- Name: corruption_religious_leaders pk_corruption_religious_leaders; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_religious_leaders
    ADD CONSTRAINT pk_corruption_religious_leaders PRIMARY KEY (geo_level, geo_code, geo_version, corruption_religious_leaders);


--
-- PostgreSQL database dump complete
--

