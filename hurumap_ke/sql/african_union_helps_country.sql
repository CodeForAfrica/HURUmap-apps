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

ALTER TABLE IF EXISTS ONLY public.african_union_helps_country DROP CONSTRAINT IF EXISTS pk_african_union_helps_country;
DROP TABLE IF EXISTS public.african_union_helps_country;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: african_union_helps_country; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.african_union_helps_country (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    african_union_helps_country character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: african_union_helps_country; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.african_union_helps_country (geo_level, geo_code, geo_version, african_union_helps_country, total) FROM stdin;
county	30	2009	Do nothing, no help	1
county	36	2009	Do nothing, no help	1
county	39	2009	Do nothing, no help	4
county	40	2009	Do nothing, no help	8
county	28	2009	Do nothing, no help	1
county	14	2009	Do nothing, no help	2
county	7	2009	Do nothing, no help	5
county	43	2009	Do nothing, no help	10
county	34	2009	Do nothing, no help	4
county	37	2009	Do nothing, no help	9
county	35	2009	Do nothing, no help	2
county	22	2009	Do nothing, no help	4
county	3	2009	Do nothing, no help	6
county	20	2009	Do nothing, no help	1
county	45	2009	Do nothing, no help	20
county	42	2009	Do nothing, no help	18
county	15	2009	Do nothing, no help	1
county	2	2009	Do nothing, no help	4
county	16	2009	Do nothing, no help	5
county	17	2009	Do nothing, no help	2
county	9	2009	Do nothing, no help	4
county	12	2009	Do nothing, no help	2
county	44	2009	Do nothing, no help	11
county	1	2009	Do nothing, no help	8
county	21	2009	Do nothing, no help	5
county	47	2009	Do nothing, no help	27
county	32	2009	Do nothing, no help	4
county	29	2009	Do nothing, no help	4
county	33	2009	Do nothing, no help	4
county	46	2009	Do nothing, no help	6
county	18	2009	Do nothing, no help	2
county	19	2009	Do nothing, no help	3
county	41	2009	Do nothing, no help	7
county	6	2009	Do nothing, no help	1
county	4	2009	Do nothing, no help	1
county	26	2009	Do nothing, no help	5
county	23	2009	Do nothing, no help	6
county	27	2009	Do nothing, no help	1
county	38	2009	Do nothing, no help	6
county	8	2009	Do nothing, no help	4
county	24	2009	Do nothing, no help	1
county	30	2009	Don't know	6
county	36	2009	Don't know	4
county	39	2009	Don't know	21
county	40	2009	Don't know	10
county	28	2009	Don't know	8
county	14	2009	Don't know	13
county	7	2009	Don't know	16
county	43	2009	Don't know	13
county	11	2009	Don't know	4
county	34	2009	Don't know	8
county	37	2009	Don't know	26
county	35	2009	Don't know	6
county	22	2009	Don't know	6
county	3	2009	Don't know	34
county	20	2009	Don't know	4
county	45	2009	Don't know	18
county	42	2009	Don't know	8
county	15	2009	Don't know	16
county	2	2009	Don't know	12
county	31	2009	Don't know	12
county	5	2009	Don't know	1
county	16	2009	Don't know	38
county	17	2009	Don't know	21
county	9	2009	Don't know	14
county	10	2009	Don't know	7
county	12	2009	Don't know	18
county	44	2009	Don't know	12
county	1	2009	Don't know	9
county	21	2009	Don't know	2
county	47	2009	Don't know	37
county	32	2009	Don't know	25
county	29	2009	Don't know	9
county	33	2009	Don't know	13
county	46	2009	Don't know	15
county	18	2009	Don't know	4
county	19	2009	Don't know	3
county	25	2009	Don't know	5
county	41	2009	Don't know	27
county	6	2009	Don't know	3
county	4	2009	Don't know	6
county	13	2009	Don't know	4
county	26	2009	Don't know	13
county	23	2009	Don't know	19
county	27	2009	Don't know	14
county	38	2009	Don't know	6
county	8	2009	Don't know	17
county	24	2009	Don't know	7
county	30	2009	Help a little bit	12
county	36	2009	Help a little bit	14
county	39	2009	Help a little bit	19
county	40	2009	Help a little bit	4
county	28	2009	Help a little bit	2
county	14	2009	Help a little bit	6
county	7	2009	Help a little bit	4
county	43	2009	Help a little bit	19
county	11	2009	Help a little bit	3
county	34	2009	Help a little bit	20
county	37	2009	Help a little bit	26
county	35	2009	Help a little bit	9
county	22	2009	Help a little bit	31
county	3	2009	Help a little bit	12
county	20	2009	Help a little bit	16
county	45	2009	Help a little bit	19
county	42	2009	Help a little bit	11
county	15	2009	Help a little bit	11
county	2	2009	Help a little bit	9
county	31	2009	Help a little bit	6
county	5	2009	Help a little bit	3
county	16	2009	Help a little bit	10
county	17	2009	Help a little bit	9
county	9	2009	Help a little bit	12
county	10	2009	Help a little bit	2
county	12	2009	Help a little bit	15
county	44	2009	Help a little bit	13
county	1	2009	Help a little bit	22
county	21	2009	Help a little bit	18
county	47	2009	Help a little bit	83
county	32	2009	Help a little bit	41
county	29	2009	Help a little bit	13
county	33	2009	Help a little bit	12
county	46	2009	Help a little bit	6
county	18	2009	Help a little bit	16
county	19	2009	Help a little bit	16
county	25	2009	Help a little bit	1
county	41	2009	Help a little bit	7
county	6	2009	Help a little bit	1
county	13	2009	Help a little bit	4
county	26	2009	Help a little bit	15
county	23	2009	Help a little bit	10
county	27	2009	Help a little bit	10
county	38	2009	Help a little bit	11
county	8	2009	Help a little bit	6
county	24	2009	Help a little bit	9
county	30	2009	Help a lot	5
county	36	2009	Help a lot	7
county	39	2009	Help a lot	18
county	40	2009	Help a lot	9
county	14	2009	Help a lot	10
county	7	2009	Help a lot	1
county	43	2009	Help a lot	1
county	34	2009	Help a lot	3
county	37	2009	Help a lot	11
county	35	2009	Help a lot	2
county	22	2009	Help a lot	47
county	3	2009	Help a lot	1
county	20	2009	Help a lot	7
county	45	2009	Help a lot	5
county	42	2009	Help a lot	9
county	15	2009	Help a lot	15
county	2	2009	Help a lot	4
county	31	2009	Help a lot	2
county	5	2009	Help a lot	4
county	16	2009	Help a lot	9
county	17	2009	Help a lot	15
county	9	2009	Help a lot	4
county	10	2009	Help a lot	1
county	12	2009	Help a lot	30
county	44	2009	Help a lot	3
county	1	2009	Help a lot	9
county	21	2009	Help a lot	19
county	47	2009	Help a lot	39
county	32	2009	Help a lot	10
county	29	2009	Help a lot	6
county	33	2009	Help a lot	8
county	46	2009	Help a lot	1
county	18	2009	Help a lot	11
county	19	2009	Help a lot	16
county	41	2009	Help a lot	1
county	6	2009	Help a lot	5
county	13	2009	Help a lot	5
county	26	2009	Help a lot	11
county	23	2009	Help a lot	3
county	27	2009	Help a lot	11
county	38	2009	Help a lot	3
county	24	2009	Help a lot	2
county	30	2009	Help somewhat	8
county	36	2009	Help somewhat	22
county	39	2009	Help somewhat	18
county	40	2009	Help somewhat	9
county	28	2009	Help somewhat	5
county	14	2009	Help somewhat	9
county	7	2009	Help somewhat	6
county	43	2009	Help somewhat	13
county	11	2009	Help somewhat	1
county	34	2009	Help somewhat	12
county	37	2009	Help somewhat	24
county	35	2009	Help somewhat	21
county	22	2009	Help somewhat	32
county	3	2009	Help somewhat	11
county	20	2009	Help somewhat	12
county	45	2009	Help somewhat	10
county	42	2009	Help somewhat	10
county	15	2009	Help somewhat	13
county	2	2009	Help somewhat	11
county	31	2009	Help somewhat	4
county	16	2009	Help somewhat	10
county	17	2009	Help somewhat	9
county	9	2009	Help somewhat	14
county	10	2009	Help somewhat	6
county	12	2009	Help somewhat	20
county	44	2009	Help somewhat	9
county	1	2009	Help somewhat	24
county	21	2009	Help somewhat	20
county	47	2009	Help somewhat	62
county	32	2009	Help somewhat	24
county	29	2009	Help somewhat	16
county	33	2009	Help somewhat	11
county	46	2009	Help somewhat	12
county	18	2009	Help somewhat	7
county	19	2009	Help somewhat	10
county	25	2009	Help somewhat	1
county	41	2009	Help somewhat	6
county	6	2009	Help somewhat	6
county	4	2009	Help somewhat	1
county	13	2009	Help somewhat	11
county	26	2009	Help somewhat	4
county	23	2009	Help somewhat	10
county	27	2009	Help somewhat	20
county	38	2009	Help somewhat	6
county	8	2009	Help somewhat	5
county	24	2009	Help somewhat	5
county	34	2009	Missing	1
county	25	2009	Missing	1
\.


--
-- Name: african_union_helps_country pk_african_union_helps_country; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.african_union_helps_country
    ADD CONSTRAINT pk_african_union_helps_country PRIMARY KEY (geo_level, geo_code, geo_version, african_union_helps_country);


--
-- PostgreSQL database dump complete
--

