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

ALTER TABLE IF EXISTS ONLY public.handling_narrowing_income_gaps DROP CONSTRAINT IF EXISTS pk_handling_narrowing_income_gaps;
DROP TABLE IF EXISTS public.handling_narrowing_income_gaps;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: handling_narrowing_income_gaps; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.handling_narrowing_income_gaps (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    handling_narrowing_income_gaps character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: handling_narrowing_income_gaps; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.handling_narrowing_income_gaps (geo_level, geo_code, geo_version, handling_narrowing_income_gaps, total) FROM stdin;
county	36	2009	Don't know / Haven't heard enough	3
county	28	2009	Don't know / Haven't heard enough	1
county	7	2009	Don't know / Haven't heard enough	4
county	43	2009	Don't know / Haven't heard enough	1
county	35	2009	Don't know / Haven't heard enough	2
county	45	2009	Don't know / Haven't heard enough	1
county	42	2009	Don't know / Haven't heard enough	3
county	31	2009	Don't know / Haven't heard enough	2
county	16	2009	Don't know / Haven't heard enough	3
county	17	2009	Don't know / Haven't heard enough	3
county	9	2009	Don't know / Haven't heard enough	1
county	10	2009	Don't know / Haven't heard enough	1
county	12	2009	Don't know / Haven't heard enough	5
county	47	2009	Don't know / Haven't heard enough	5
county	32	2009	Don't know / Haven't heard enough	1
county	25	2009	Don't know / Haven't heard enough	1
county	41	2009	Don't know / Haven't heard enough	4
county	6	2009	Don't know / Haven't heard enough	1
county	4	2009	Don't know / Haven't heard enough	1
county	13	2009	Don't know / Haven't heard enough	1
county	26	2009	Don't know / Haven't heard enough	1
county	23	2009	Don't know / Haven't heard enough	1
county	38	2009	Don't know / Haven't heard enough	1
county	30	2009	Fairly Badly	12
county	36	2009	Fairly Badly	11
county	39	2009	Fairly Badly	17
county	40	2009	Fairly Badly	9
county	28	2009	Fairly Badly	7
county	14	2009	Fairly Badly	17
county	7	2009	Fairly Badly	11
county	43	2009	Fairly Badly	14
county	11	2009	Fairly Badly	3
county	34	2009	Fairly Badly	16
county	37	2009	Fairly Badly	11
county	35	2009	Fairly Badly	12
county	22	2009	Fairly Badly	30
county	3	2009	Fairly Badly	22
county	20	2009	Fairly Badly	4
county	45	2009	Fairly Badly	20
county	42	2009	Fairly Badly	14
county	15	2009	Fairly Badly	23
county	2	2009	Fairly Badly	18
county	31	2009	Fairly Badly	11
county	5	2009	Fairly Badly	3
county	16	2009	Fairly Badly	32
county	17	2009	Fairly Badly	11
county	9	2009	Fairly Badly	19
county	10	2009	Fairly Badly	7
county	12	2009	Fairly Badly	38
county	44	2009	Fairly Badly	8
county	1	2009	Fairly Badly	27
county	21	2009	Fairly Badly	16
county	47	2009	Fairly Badly	76
county	32	2009	Fairly Badly	37
county	29	2009	Fairly Badly	20
county	33	2009	Fairly Badly	15
county	46	2009	Fairly Badly	11
county	18	2009	Fairly Badly	5
county	19	2009	Fairly Badly	8
county	41	2009	Fairly Badly	23
county	6	2009	Fairly Badly	6
county	13	2009	Fairly Badly	10
county	26	2009	Fairly Badly	6
county	23	2009	Fairly Badly	9
county	27	2009	Fairly Badly	13
county	38	2009	Fairly Badly	11
county	8	2009	Fairly Badly	9
county	24	2009	Fairly Badly	9
county	30	2009	Fairly Well	5
county	36	2009	Fairly Well	14
county	39	2009	Fairly Well	8
county	40	2009	Fairly Well	3
county	14	2009	Fairly Well	5
county	43	2009	Fairly Well	1
county	34	2009	Fairly Well	7
county	37	2009	Fairly Well	7
county	35	2009	Fairly Well	8
county	22	2009	Fairly Well	28
county	3	2009	Fairly Well	2
county	20	2009	Fairly Well	17
county	45	2009	Fairly Well	5
county	42	2009	Fairly Well	4
county	15	2009	Fairly Well	7
county	2	2009	Fairly Well	3
county	31	2009	Fairly Well	5
county	5	2009	Fairly Well	3
county	16	2009	Fairly Well	6
county	17	2009	Fairly Well	12
county	9	2009	Fairly Well	4
county	12	2009	Fairly Well	17
county	44	2009	Fairly Well	6
county	1	2009	Fairly Well	8
county	21	2009	Fairly Well	22
county	47	2009	Fairly Well	22
county	32	2009	Fairly Well	20
county	29	2009	Fairly Well	7
county	33	2009	Fairly Well	11
county	18	2009	Fairly Well	13
county	19	2009	Fairly Well	20
county	41	2009	Fairly Well	2
county	6	2009	Fairly Well	1
county	13	2009	Fairly Well	4
county	26	2009	Fairly Well	6
county	23	2009	Fairly Well	1
county	27	2009	Fairly Well	7
county	38	2009	Fairly Well	1
county	24	2009	Fairly Well	1
county	47	2009	Missing	1
county	30	2009	Very Badly	15
county	36	2009	Very Badly	16
county	39	2009	Very Badly	51
county	40	2009	Very Badly	26
county	28	2009	Very Badly	8
county	14	2009	Very Badly	15
county	7	2009	Very Badly	17
county	43	2009	Very Badly	40
county	11	2009	Very Badly	5
county	34	2009	Very Badly	24
county	37	2009	Very Badly	77
county	35	2009	Very Badly	15
county	22	2009	Very Badly	59
county	3	2009	Very Badly	40
county	20	2009	Very Badly	17
county	45	2009	Very Badly	46
county	42	2009	Very Badly	35
county	15	2009	Very Badly	26
county	2	2009	Very Badly	19
county	31	2009	Very Badly	5
county	5	2009	Very Badly	1
county	16	2009	Very Badly	30
county	17	2009	Very Badly	29
county	9	2009	Very Badly	24
county	10	2009	Very Badly	8
county	12	2009	Very Badly	24
county	44	2009	Very Badly	34
county	1	2009	Very Badly	37
county	21	2009	Very Badly	24
county	47	2009	Very Badly	137
county	32	2009	Very Badly	35
county	29	2009	Very Badly	21
county	33	2009	Very Badly	18
county	46	2009	Very Badly	29
county	18	2009	Very Badly	21
county	19	2009	Very Badly	18
county	25	2009	Very Badly	7
county	41	2009	Very Badly	19
county	6	2009	Very Badly	8
county	4	2009	Very Badly	7
county	13	2009	Very Badly	8
county	26	2009	Very Badly	29
county	23	2009	Very Badly	37
county	27	2009	Very Badly	36
county	38	2009	Very Badly	19
county	8	2009	Very Badly	23
county	24	2009	Very Badly	14
county	36	2009	Very Well	4
county	39	2009	Very Well	4
county	40	2009	Very Well	2
county	14	2009	Very Well	3
county	34	2009	Very Well	1
county	37	2009	Very Well	1
county	35	2009	Very Well	3
county	22	2009	Very Well	3
county	20	2009	Very Well	2
county	31	2009	Very Well	1
county	5	2009	Very Well	1
county	16	2009	Very Well	1
county	17	2009	Very Well	1
county	12	2009	Very Well	1
county	21	2009	Very Well	2
county	47	2009	Very Well	7
county	32	2009	Very Well	11
county	33	2009	Very Well	4
county	18	2009	Very Well	1
county	19	2009	Very Well	2
county	13	2009	Very Well	1
county	26	2009	Very Well	6
\.


--
-- Name: handling_narrowing_income_gaps pk_handling_narrowing_income_gaps; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.handling_narrowing_income_gaps
    ADD CONSTRAINT pk_handling_narrowing_income_gaps PRIMARY KEY (geo_level, geo_code, geo_version, handling_narrowing_income_gaps);


--
-- PostgreSQL database dump complete
--

