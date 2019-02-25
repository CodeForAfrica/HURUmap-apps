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

ALTER TABLE IF EXISTS ONLY public.corruption_tax_officials DROP CONSTRAINT IF EXISTS pk_corruption_tax_officials;
DROP TABLE IF EXISTS public.corruption_tax_officials;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_tax_officials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_tax_officials (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_tax_officials character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_tax_officials; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_tax_officials (geo_level, geo_code, geo_version, corruption_tax_officials, total) FROM stdin;
region	1	2009	All of them	8
region	1	2009	Don't know/ Haven't heard enough	4
region	1	2009	Most of them	50
region	1	2009	None	4
region	1	2009	Some of them	54
region	2	2009	All of them	21
region	2	2009	Don't know/ Haven't heard enough	22
region	2	2009	Most of them	83
region	2	2009	None	19
region	2	2009	Some of them	128
region	3	2009	All of them	4
region	3	2009	Don't know/ Haven't heard enough	37
region	3	2009	Most of them	16
region	3	2009	None	15
region	3	2009	Some of them	24
region	4	2009	All of them	3
region	4	2009	Don't know/ Haven't heard enough	2
region	4	2009	Most of them	22
region	4	2009	None	18
region	4	2009	Some of them	26
region	5	2009	All of them	2
region	5	2009	Don't know/ Haven't heard enough	7
region	5	2009	Most of them	7
region	5	2009	None	4
region	5	2009	Some of them	28
region	6	2009	All of them	4
region	6	2009	Don't know/ Haven't heard enough	5
region	6	2009	Most of them	25
region	6	2009	None	8
region	6	2009	Some of them	30
region	7	2009	All of them	1
region	7	2009	Don't know/ Haven't heard enough	13
region	7	2009	Most of them	11
region	7	2009	None	10
region	7	2009	Some of them	21
region	8	2009	Don't know/ Haven't heard enough	6
region	8	2009	Most of them	7
region	8	2009	None	4
region	8	2009	Some of them	22
region	9	2009	All of them	2
region	9	2009	Most of them	5
region	9	2009	None	2
region	9	2009	Some of them	15
region	10	2009	All of them	2
region	10	2009	Don't know/ Haven't heard enough	31
region	10	2009	Most of them	32
region	10	2009	None	10
region	10	2009	Some of them	21
region	11	2009	All of them	8
region	11	2009	Don't know/ Haven't heard enough	1
region	11	2009	Most of them	33
region	11	2009	Some of them	46
region	12	2009	Don't know/ Haven't heard enough	1
region	12	2009	Most of them	2
region	12	2009	None	1
region	12	2009	Some of them	4
region	13	2009	Don't know/ Haven't heard enough	3
region	13	2009	Most of them	2
region	13	2009	None	4
region	13	2009	Some of them	15
region	14	2009	Don't know/ Haven't heard enough	2
region	14	2009	Most of them	12
region	14	2009	None	1
region	14	2009	Some of them	33
region	15	2009	All of them	12
region	15	2009	Don't know/ Haven't heard enough	3
region	15	2009	Most of them	27
region	15	2009	Some of them	22
region	16	2009	All of them	7
region	16	2009	Don't know/ Haven't heard enough	5
region	16	2009	Most of them	21
region	16	2009	None	12
region	16	2009	Some of them	35
region	17	2009	All of them	5
region	17	2009	Don't know/ Haven't heard enough	3
region	17	2009	Most of them	26
region	17	2009	None	3
region	17	2009	Some of them	27
region	30	2009	All of them	3
region	30	2009	Don't know/ Haven't heard enough	15
region	30	2009	Most of them	21
region	30	2009	None	9
region	30	2009	Some of them	64
region	18	2009	All of them	2
region	18	2009	Don't know/ Haven't heard enough	42
region	18	2009	Most of them	32
region	18	2009	None	8
region	18	2009	Some of them	36
region	19	2009	All of them	1
region	19	2009	Don't know/ Haven't heard enough	11
region	19	2009	Most of them	21
region	19	2009	None	13
region	19	2009	Some of them	25
region	20	2009	All of them	4
region	20	2009	Don't know/ Haven't heard enough	4
region	20	2009	Most of them	41
region	20	2009	None	23
region	20	2009	Some of them	52
region	21	2009	All of them	3
region	21	2009	Don't know/ Haven't heard enough	2
region	21	2009	Most of them	14
region	21	2009	None	3
region	21	2009	Some of them	18
region	22	2009	All of them	1
region	22	2009	Don't know/ Haven't heard enough	2
region	22	2009	Most of them	38
region	22	2009	None	3
region	22	2009	Some of them	28
region	23	2009	All of them	2
region	23	2009	Don't know/ Haven't heard enough	5
region	23	2009	Most of them	10
region	23	2009	None	1
region	23	2009	Some of them	21
region	24	2009	All of them	1
region	24	2009	Don't know/ Haven't heard enough	2
region	24	2009	Most of them	14
region	24	2009	None	6
region	24	2009	Some of them	49
region	25	2009	All of them	3
region	25	2009	Don't know/ Haven't heard enough	4
region	25	2009	Most of them	26
region	25	2009	None	3
region	25	2009	Some of them	36
region	26	2009	All of them	3
region	26	2009	Don't know/ Haven't heard enough	8
region	26	2009	Most of them	19
region	26	2009	None	9
region	26	2009	Some of them	25
region	27	2009	Don't know/ Haven't heard enough	1
region	27	2009	Most of them	18
region	27	2009	None	5
region	27	2009	Some of them	40
region	31	2009	All of them	3
region	31	2009	Don't know/ Haven't heard enough	4
region	31	2009	Most of them	23
region	31	2009	None	3
region	31	2009	Some of them	39
region	29	2009	All of them	4
region	29	2009	Don't know/ Haven't heard enough	35
region	29	2009	Most of them	24
region	29	2009	None	12
region	29	2009	Some of them	29
region	28	2009	All of them	10
region	28	2009	Don't know/ Haven't heard enough	3
region	28	2009	Most of them	43
region	28	2009	None	3
region	28	2009	Some of them	29
country	TZ	2009	None	216
country	TZ	2009	All of them	119
country	TZ	2009	Most of them	725
country	TZ	2009	Don't know/ Haven't heard enough	283
country	TZ	2009	Some of them	1042
\.


--
-- Name: corruption_tax_officials pk_corruption_tax_officials; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_tax_officials
    ADD CONSTRAINT pk_corruption_tax_officials PRIMARY KEY (geo_level, geo_code, geo_version, corruption_tax_officials);


--
-- PostgreSQL database dump complete
--

