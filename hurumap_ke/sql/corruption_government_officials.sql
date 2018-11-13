--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.corruption_government_officials DROP CONSTRAINT IF EXISTS pk_corruption_government_officials;
DROP TABLE IF EXISTS public.corruption_government_officials;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_government_officials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_government_officials (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_government_officials character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_government_officials; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_government_officials (geo_level, geo_code, geo_version, corruption_government_officials, total) FROM stdin;
county	30	2009	All of them	2
county	36	2009	All of them	1
county	39	2009	All of them	11
county	40	2009	All of them	3
county	28	2009	All of them	3
county	14	2009	All of them	9
county	11	2009	All of them	2
county	34	2009	All of them	4
county	37	2009	All of them	12
county	35	2009	All of them	4
county	22	2009	All of them	14
county	3	2009	All of them	15
county	20	2009	All of them	2
county	45	2009	All of them	4
county	42	2009	All of them	2
county	15	2009	All of them	12
county	2	2009	All of them	5
county	31	2009	All of them	2
county	5	2009	All of them	1
county	16	2009	All of them	8
county	17	2009	All of them	5
county	9	2009	All of them	3
county	10	2009	All of them	9
county	12	2009	All of them	8
county	44	2009	All of them	3
county	1	2009	All of them	20
county	21	2009	All of them	4
county	47	2009	All of them	29
county	32	2009	All of them	6
county	29	2009	All of them	4
county	33	2009	All of them	2
county	46	2009	All of them	2
county	18	2009	All of them	4
county	19	2009	All of them	3
county	25	2009	All of them	1
county	41	2009	All of them	2
county	6	2009	All of them	1
county	13	2009	All of them	3
county	26	2009	All of them	6
county	27	2009	All of them	3
county	38	2009	All of them	7
county	8	2009	All of them	3
county	24	2009	All of them	1
county	39	2009	Don't know/ Haven't heard enough	5
county	40	2009	Don't know/ Haven't heard enough	3
county	14	2009	Don't know/ Haven't heard enough	5
county	7	2009	Don't know/ Haven't heard enough	8
county	11	2009	Don't know/ Haven't heard enough	2
county	37	2009	Don't know/ Haven't heard enough	5
county	20	2009	Don't know/ Haven't heard enough	1
county	45	2009	Don't know/ Haven't heard enough	2
county	42	2009	Don't know/ Haven't heard enough	1
county	15	2009	Don't know/ Haven't heard enough	6
county	2	2009	Don't know/ Haven't heard enough	1
county	31	2009	Don't know/ Haven't heard enough	3
county	16	2009	Don't know/ Haven't heard enough	5
county	17	2009	Don't know/ Haven't heard enough	6
county	9	2009	Don't know/ Haven't heard enough	4
county	10	2009	Don't know/ Haven't heard enough	3
county	12	2009	Don't know/ Haven't heard enough	12
county	21	2009	Don't know/ Haven't heard enough	2
county	47	2009	Don't know/ Haven't heard enough	4
county	32	2009	Don't know/ Haven't heard enough	3
county	29	2009	Don't know/ Haven't heard enough	2
county	19	2009	Don't know/ Haven't heard enough	2
county	41	2009	Don't know/ Haven't heard enough	1
county	6	2009	Don't know/ Haven't heard enough	2
county	4	2009	Don't know/ Haven't heard enough	6
county	13	2009	Don't know/ Haven't heard enough	3
county	26	2009	Don't know/ Haven't heard enough	4
county	23	2009	Don't know/ Haven't heard enough	4
county	27	2009	Don't know/ Haven't heard enough	1
county	38	2009	Don't know/ Haven't heard enough	2
county	8	2009	Don't know/ Haven't heard enough	5
county	24	2009	Don't know/ Haven't heard enough	1
county	36	2009	Missing	2
county	3	2009	Missing	1
county	30	2009	Most of them	5
county	36	2009	Most of them	16
county	39	2009	Most of them	25
county	40	2009	Most of them	12
county	28	2009	Most of them	4
county	14	2009	Most of them	16
county	7	2009	Most of them	9
county	43	2009	Most of them	28
county	11	2009	Most of them	2
county	34	2009	Most of them	10
county	37	2009	Most of them	38
county	35	2009	Most of them	16
county	22	2009	Most of them	44
county	3	2009	Most of them	24
county	20	2009	Most of them	17
county	45	2009	Most of them	39
county	42	2009	Most of them	24
county	15	2009	Most of them	16
county	2	2009	Most of them	11
county	31	2009	Most of them	10
county	5	2009	Most of them	1
county	16	2009	Most of them	27
county	17	2009	Most of them	14
county	9	2009	Most of them	17
county	12	2009	Most of them	35
county	44	2009	Most of them	18
county	1	2009	Most of them	28
county	21	2009	Most of them	20
county	47	2009	Most of them	110
county	32	2009	Most of them	26
county	29	2009	Most of them	12
county	33	2009	Most of them	13
county	46	2009	Most of them	20
county	18	2009	Most of them	19
county	19	2009	Most of them	11
county	25	2009	Most of them	2
county	41	2009	Most of them	18
county	6	2009	Most of them	8
county	4	2009	Most of them	2
county	13	2009	Most of them	6
county	26	2009	Most of them	18
county	23	2009	Most of them	17
county	27	2009	Most of them	20
county	38	2009	Most of them	12
county	8	2009	Most of them	11
county	24	2009	Most of them	4
county	30	2009	None	1
county	36	2009	None	4
county	39	2009	None	7
county	40	2009	None	2
county	28	2009	None	1
county	14	2009	None	1
county	43	2009	None	2
county	37	2009	None	4
county	35	2009	None	2
county	22	2009	None	4
county	3	2009	None	1
county	45	2009	None	1
county	42	2009	None	1
county	31	2009	None	1
county	16	2009	None	3
county	17	2009	None	2
county	9	2009	None	3
county	21	2009	None	2
county	47	2009	None	4
county	32	2009	None	6
county	29	2009	None	4
county	33	2009	None	2
county	46	2009	None	1
county	18	2009	None	1
county	19	2009	None	3
county	26	2009	None	5
county	23	2009	None	7
county	27	2009	None	5
county	24	2009	None	4
county	30	2009	Some of them	24
county	36	2009	Some of them	25
county	39	2009	Some of them	32
county	40	2009	Some of them	20
county	28	2009	Some of them	8
county	14	2009	Some of them	9
county	7	2009	Some of them	15
county	43	2009	Some of them	26
county	11	2009	Some of them	2
county	34	2009	Some of them	34
county	37	2009	Some of them	37
county	35	2009	Some of them	18
county	22	2009	Some of them	58
county	3	2009	Some of them	23
county	20	2009	Some of them	20
county	45	2009	Some of them	26
county	42	2009	Some of them	28
county	15	2009	Some of them	22
county	2	2009	Some of them	23
county	31	2009	Some of them	8
county	5	2009	Some of them	6
county	16	2009	Some of them	29
county	17	2009	Some of them	29
county	9	2009	Some of them	21
county	10	2009	Some of them	4
county	12	2009	Some of them	30
county	44	2009	Some of them	27
county	1	2009	Some of them	24
county	21	2009	Some of them	36
county	47	2009	Some of them	101
county	32	2009	Some of them	63
county	29	2009	Some of them	26
county	33	2009	Some of them	31
county	46	2009	Some of them	17
county	18	2009	Some of them	16
county	19	2009	Some of them	29
county	25	2009	Some of them	5
county	41	2009	Some of them	27
county	6	2009	Some of them	5
county	13	2009	Some of them	12
county	26	2009	Some of them	15
county	23	2009	Some of them	20
county	27	2009	Some of them	27
county	38	2009	Some of them	11
county	8	2009	Some of them	13
county	24	2009	Some of them	14
\.


--
-- Name: corruption_government_officials pk_corruption_government_officials; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_government_officials
    ADD CONSTRAINT pk_corruption_government_officials PRIMARY KEY (geo_level, geo_code, geo_version, corruption_government_officials);


--
-- PostgreSQL database dump complete
--

