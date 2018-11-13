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

ALTER TABLE IF EXISTS ONLY public.handling_reducing_crime DROP CONSTRAINT IF EXISTS pk_handling_reducing_crime;
DROP TABLE IF EXISTS public.handling_reducing_crime;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: handling_reducing_crime; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.handling_reducing_crime (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    handling_reducing_crime character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: handling_reducing_crime; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.handling_reducing_crime (geo_level, geo_code, geo_version, handling_reducing_crime, total) FROM stdin;
county	39	2009	Don't know / Haven't heard enough	2
county	14	2009	Don't know / Haven't heard enough	1
county	7	2009	Don't know / Haven't heard enough	3
county	37	2009	Don't know / Haven't heard enough	2
county	22	2009	Don't know / Haven't heard enough	1
county	31	2009	Don't know / Haven't heard enough	1
county	9	2009	Don't know / Haven't heard enough	1
county	4	2009	Don't know / Haven't heard enough	1
county	13	2009	Don't know / Haven't heard enough	1
county	23	2009	Don't know / Haven't heard enough	2
county	8	2009	Don't know / Haven't heard enough	1
county	30	2009	Fairly Badly	10
county	36	2009	Fairly Badly	9
county	39	2009	Fairly Badly	17
county	40	2009	Fairly Badly	16
county	28	2009	Fairly Badly	5
county	14	2009	Fairly Badly	12
county	7	2009	Fairly Badly	12
county	43	2009	Fairly Badly	15
county	11	2009	Fairly Badly	4
county	34	2009	Fairly Badly	20
county	37	2009	Fairly Badly	30
county	35	2009	Fairly Badly	7
county	22	2009	Fairly Badly	23
county	3	2009	Fairly Badly	28
county	20	2009	Fairly Badly	5
county	45	2009	Fairly Badly	26
county	42	2009	Fairly Badly	14
county	15	2009	Fairly Badly	9
county	2	2009	Fairly Badly	15
county	31	2009	Fairly Badly	4
county	16	2009	Fairly Badly	12
county	17	2009	Fairly Badly	13
county	9	2009	Fairly Badly	26
county	10	2009	Fairly Badly	6
county	12	2009	Fairly Badly	31
county	44	2009	Fairly Badly	10
county	1	2009	Fairly Badly	20
county	21	2009	Fairly Badly	9
county	47	2009	Fairly Badly	77
county	32	2009	Fairly Badly	19
county	29	2009	Fairly Badly	9
county	33	2009	Fairly Badly	6
county	46	2009	Fairly Badly	8
county	18	2009	Fairly Badly	6
county	19	2009	Fairly Badly	10
county	25	2009	Fairly Badly	3
county	41	2009	Fairly Badly	15
county	6	2009	Fairly Badly	2
county	4	2009	Fairly Badly	2
county	13	2009	Fairly Badly	8
county	26	2009	Fairly Badly	7
county	23	2009	Fairly Badly	17
county	27	2009	Fairly Badly	18
county	38	2009	Fairly Badly	11
county	8	2009	Fairly Badly	9
county	24	2009	Fairly Badly	5
county	30	2009	Fairly Well	13
county	36	2009	Fairly Well	26
county	39	2009	Fairly Well	32
county	40	2009	Fairly Well	8
county	28	2009	Fairly Well	5
county	14	2009	Fairly Well	20
county	7	2009	Fairly Well	6
county	43	2009	Fairly Well	14
county	11	2009	Fairly Well	2
county	34	2009	Fairly Well	11
county	37	2009	Fairly Well	30
county	35	2009	Fairly Well	25
county	22	2009	Fairly Well	65
county	3	2009	Fairly Well	12
county	20	2009	Fairly Well	26
county	45	2009	Fairly Well	23
county	42	2009	Fairly Well	17
county	15	2009	Fairly Well	29
county	2	2009	Fairly Well	10
county	31	2009	Fairly Well	14
county	5	2009	Fairly Well	5
county	16	2009	Fairly Well	38
county	17	2009	Fairly Well	27
county	9	2009	Fairly Well	4
county	10	2009	Fairly Well	5
county	12	2009	Fairly Well	40
county	44	2009	Fairly Well	14
county	1	2009	Fairly Well	19
county	21	2009	Fairly Well	37
county	47	2009	Fairly Well	84
county	32	2009	Fairly Well	54
county	29	2009	Fairly Well	25
county	33	2009	Fairly Well	24
county	46	2009	Fairly Well	12
county	18	2009	Fairly Well	24
county	19	2009	Fairly Well	28
county	25	2009	Fairly Well	1
county	41	2009	Fairly Well	18
county	6	2009	Fairly Well	10
county	4	2009	Fairly Well	2
county	13	2009	Fairly Well	6
county	26	2009	Fairly Well	17
county	23	2009	Fairly Well	9
county	27	2009	Fairly Well	15
county	38	2009	Fairly Well	4
county	8	2009	Fairly Well	3
county	24	2009	Fairly Well	7
county	15	2009	Missing	1
county	47	2009	Missing	1
county	30	2009	Very Badly	9
county	36	2009	Very Badly	1
county	39	2009	Very Badly	22
county	40	2009	Very Badly	14
county	28	2009	Very Badly	6
county	14	2009	Very Badly	5
county	7	2009	Very Badly	11
county	43	2009	Very Badly	26
county	11	2009	Very Badly	2
county	34	2009	Very Badly	15
county	37	2009	Very Badly	31
county	35	2009	Very Badly	4
county	22	2009	Very Badly	20
county	3	2009	Very Badly	24
county	20	2009	Very Badly	5
county	45	2009	Very Badly	23
county	42	2009	Very Badly	22
county	15	2009	Very Badly	10
county	2	2009	Very Badly	15
county	31	2009	Very Badly	5
county	5	2009	Very Badly	2
county	16	2009	Very Badly	17
county	17	2009	Very Badly	15
county	9	2009	Very Badly	17
county	10	2009	Very Badly	5
county	12	2009	Very Badly	7
county	44	2009	Very Badly	22
county	1	2009	Very Badly	33
county	21	2009	Very Badly	13
county	47	2009	Very Badly	73
county	32	2009	Very Badly	12
county	29	2009	Very Badly	14
county	33	2009	Very Badly	4
county	46	2009	Very Badly	20
county	18	2009	Very Badly	7
county	19	2009	Very Badly	3
county	25	2009	Very Badly	4
county	41	2009	Very Badly	12
county	6	2009	Very Badly	3
county	4	2009	Very Badly	3
county	13	2009	Very Badly	5
county	26	2009	Very Badly	16
county	23	2009	Very Badly	19
county	27	2009	Very Badly	22
county	38	2009	Very Badly	16
county	8	2009	Very Badly	19
county	24	2009	Very Badly	9
county	36	2009	Very Well	12
county	39	2009	Very Well	7
county	40	2009	Very Well	2
county	14	2009	Very Well	2
county	43	2009	Very Well	1
county	34	2009	Very Well	2
county	37	2009	Very Well	3
county	35	2009	Very Well	4
county	22	2009	Very Well	11
county	20	2009	Very Well	4
county	42	2009	Very Well	3
county	15	2009	Very Well	7
county	5	2009	Very Well	1
county	16	2009	Very Well	5
county	17	2009	Very Well	1
county	12	2009	Very Well	7
county	44	2009	Very Well	2
county	21	2009	Very Well	5
county	47	2009	Very Well	13
county	32	2009	Very Well	19
county	33	2009	Very Well	14
county	18	2009	Very Well	3
county	19	2009	Very Well	7
county	41	2009	Very Well	3
county	6	2009	Very Well	1
county	13	2009	Very Well	4
county	26	2009	Very Well	8
county	23	2009	Very Well	1
county	27	2009	Very Well	1
county	38	2009	Very Well	1
county	24	2009	Very Well	3
\.


--
-- Name: handling_reducing_crime pk_handling_reducing_crime; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.handling_reducing_crime
    ADD CONSTRAINT pk_handling_reducing_crime PRIMARY KEY (geo_level, geo_code, geo_version, handling_reducing_crime);


--
-- PostgreSQL database dump complete
--

