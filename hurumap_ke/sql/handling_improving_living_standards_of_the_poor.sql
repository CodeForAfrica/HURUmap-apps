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

ALTER TABLE IF EXISTS ONLY public.handling_improving_living_standards_of_the_poor DROP CONSTRAINT IF EXISTS pk_handling_improving_living_standards_of_the_poor;
DROP TABLE IF EXISTS public.handling_improving_living_standards_of_the_poor;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: handling_improving_living_standards_of_the_poor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.handling_improving_living_standards_of_the_poor (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    handling_improving_living_standards_of_the_poor character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: handling_improving_living_standards_of_the_poor; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.handling_improving_living_standards_of_the_poor (geo_level, geo_code, geo_version, handling_improving_living_standards_of_the_poor, total) FROM stdin;
county	7	2009	Don't know / Haven't heard enough	1
county	31	2009	Don't know / Haven't heard enough	1
county	16	2009	Don't know / Haven't heard enough	1
county	17	2009	Don't know / Haven't heard enough	1
county	9	2009	Don't know / Haven't heard enough	1
county	10	2009	Don't know / Haven't heard enough	2
county	12	2009	Don't know / Haven't heard enough	1
county	44	2009	Don't know / Haven't heard enough	1
county	47	2009	Don't know / Haven't heard enough	2
county	32	2009	Don't know / Haven't heard enough	1
county	4	2009	Don't know / Haven't heard enough	1
county	13	2009	Don't know / Haven't heard enough	1
county	38	2009	Don't know / Haven't heard enough	1
county	30	2009	Fairly Badly	14
county	36	2009	Fairly Badly	19
county	39	2009	Fairly Badly	15
county	40	2009	Fairly Badly	9
county	28	2009	Fairly Badly	5
county	14	2009	Fairly Badly	20
county	7	2009	Fairly Badly	9
county	43	2009	Fairly Badly	10
county	11	2009	Fairly Badly	4
county	34	2009	Fairly Badly	21
county	37	2009	Fairly Badly	15
county	35	2009	Fairly Badly	19
county	22	2009	Fairly Badly	32
county	3	2009	Fairly Badly	22
county	20	2009	Fairly Badly	9
county	45	2009	Fairly Badly	12
county	42	2009	Fairly Badly	15
county	15	2009	Fairly Badly	26
county	2	2009	Fairly Badly	17
county	31	2009	Fairly Badly	10
county	5	2009	Fairly Badly	4
county	16	2009	Fairly Badly	26
county	17	2009	Fairly Badly	12
county	9	2009	Fairly Badly	21
county	10	2009	Fairly Badly	7
county	12	2009	Fairly Badly	37
county	44	2009	Fairly Badly	14
county	1	2009	Fairly Badly	23
county	21	2009	Fairly Badly	14
county	47	2009	Fairly Badly	81
county	32	2009	Fairly Badly	41
county	29	2009	Fairly Badly	17
county	33	2009	Fairly Badly	16
county	46	2009	Fairly Badly	11
county	18	2009	Fairly Badly	10
county	19	2009	Fairly Badly	12
county	25	2009	Fairly Badly	1
county	41	2009	Fairly Badly	19
county	6	2009	Fairly Badly	9
county	4	2009	Fairly Badly	1
county	13	2009	Fairly Badly	10
county	26	2009	Fairly Badly	9
county	23	2009	Fairly Badly	16
county	27	2009	Fairly Badly	15
county	38	2009	Fairly Badly	8
county	8	2009	Fairly Badly	13
county	24	2009	Fairly Badly	12
county	30	2009	Fairly Well	8
county	36	2009	Fairly Well	19
county	39	2009	Fairly Well	22
county	40	2009	Fairly Well	8
county	28	2009	Fairly Well	2
county	14	2009	Fairly Well	12
county	7	2009	Fairly Well	1
county	43	2009	Fairly Well	7
county	34	2009	Fairly Well	7
county	37	2009	Fairly Well	15
county	35	2009	Fairly Well	7
county	22	2009	Fairly Well	50
county	3	2009	Fairly Well	4
county	20	2009	Fairly Well	19
county	45	2009	Fairly Well	10
county	42	2009	Fairly Well	8
county	15	2009	Fairly Well	10
county	2	2009	Fairly Well	5
county	31	2009	Fairly Well	5
county	5	2009	Fairly Well	1
county	16	2009	Fairly Well	17
county	17	2009	Fairly Well	18
county	9	2009	Fairly Well	4
county	10	2009	Fairly Well	1
county	12	2009	Fairly Well	29
county	44	2009	Fairly Well	7
county	1	2009	Fairly Well	10
county	21	2009	Fairly Well	39
county	47	2009	Fairly Well	52
county	32	2009	Fairly Well	25
county	29	2009	Fairly Well	16
county	33	2009	Fairly Well	10
county	46	2009	Fairly Well	3
county	18	2009	Fairly Well	14
county	19	2009	Fairly Well	29
county	25	2009	Fairly Well	1
county	41	2009	Fairly Well	6
county	6	2009	Fairly Well	1
county	13	2009	Fairly Well	4
county	26	2009	Fairly Well	11
county	23	2009	Fairly Well	6
county	27	2009	Fairly Well	13
county	38	2009	Fairly Well	9
county	24	2009	Fairly Well	3
county	30	2009	Very Badly	10
county	36	2009	Very Badly	6
county	39	2009	Very Badly	39
county	40	2009	Very Badly	21
county	28	2009	Very Badly	9
county	14	2009	Very Badly	7
county	7	2009	Very Badly	21
county	43	2009	Very Badly	39
county	11	2009	Very Badly	4
county	34	2009	Very Badly	17
county	37	2009	Very Badly	63
county	35	2009	Very Badly	10
county	22	2009	Very Badly	31
county	3	2009	Very Badly	38
county	20	2009	Very Badly	7
county	45	2009	Very Badly	50
county	42	2009	Very Badly	33
county	15	2009	Very Badly	20
county	2	2009	Very Badly	18
county	31	2009	Very Badly	5
county	5	2009	Very Badly	1
county	16	2009	Very Badly	28
county	17	2009	Very Badly	23
county	9	2009	Very Badly	22
county	10	2009	Very Badly	6
county	12	2009	Very Badly	13
county	44	2009	Very Badly	26
county	1	2009	Very Badly	39
county	21	2009	Very Badly	10
county	47	2009	Very Badly	99
county	32	2009	Very Badly	25
county	29	2009	Very Badly	15
county	33	2009	Very Badly	13
county	46	2009	Very Badly	26
county	18	2009	Very Badly	13
county	19	2009	Very Badly	5
county	25	2009	Very Badly	6
county	41	2009	Very Badly	23
county	6	2009	Very Badly	6
county	4	2009	Very Badly	6
county	13	2009	Very Badly	6
county	26	2009	Very Badly	21
county	23	2009	Very Badly	26
county	27	2009	Very Badly	28
county	38	2009	Very Badly	14
county	8	2009	Very Badly	19
county	24	2009	Very Badly	9
county	36	2009	Very Well	4
county	39	2009	Very Well	4
county	40	2009	Very Well	2
county	14	2009	Very Well	1
county	34	2009	Very Well	3
county	37	2009	Very Well	3
county	35	2009	Very Well	4
county	22	2009	Very Well	7
county	20	2009	Very Well	5
county	31	2009	Very Well	3
county	5	2009	Very Well	2
county	17	2009	Very Well	2
county	12	2009	Very Well	5
county	21	2009	Very Well	1
county	47	2009	Very Well	14
county	32	2009	Very Well	12
county	33	2009	Very Well	9
county	18	2009	Very Well	3
county	19	2009	Very Well	2
county	13	2009	Very Well	3
county	26	2009	Very Well	7
\.


--
-- Name: handling_improving_living_standards_of_the_poor pk_handling_improving_living_standards_of_the_poor; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.handling_improving_living_standards_of_the_poor
    ADD CONSTRAINT pk_handling_improving_living_standards_of_the_poor PRIMARY KEY (geo_level, geo_code, geo_version, handling_improving_living_standards_of_the_poor);


--
-- PostgreSQL database dump complete
--

