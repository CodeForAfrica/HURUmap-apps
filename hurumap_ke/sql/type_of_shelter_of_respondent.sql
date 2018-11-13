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

ALTER TABLE IF EXISTS ONLY public.type_of_shelter_of_respondent DROP CONSTRAINT IF EXISTS pk_type_of_shelter_of_respondent;
DROP TABLE IF EXISTS public.type_of_shelter_of_respondent;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: type_of_shelter_of_respondent; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.type_of_shelter_of_respondent (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    type_of_shelter_of_respondent character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: type_of_shelter_of_respondent; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.type_of_shelter_of_respondent (geo_level, geo_code, geo_version, type_of_shelter_of_respondent, total) FROM stdin;
county	34	2009	Flat in a block of flats	2
county	22	2009	Flat in a block of flats	17
county	20	2009	Flat in a block of flats	1
county	42	2009	Flat in a block of flats	5
county	16	2009	Flat in a block of flats	2
county	12	2009	Flat in a block of flats	1
county	1	2009	Flat in a block of flats	1
county	21	2009	Flat in a block of flats	1
county	47	2009	Flat in a block of flats	75
county	33	2009	Flat in a block of flats	1
county	46	2009	Flat in a block of flats	1
county	18	2009	Flat in a block of flats	1
county	19	2009	Flat in a block of flats	2
county	38	2009	Flat in a block of flats	1
county	3	2009	Missing	1
county	30	2009	Non-traditional / formal house	24
county	36	2009	Non-traditional / formal house	36
county	39	2009	Non-traditional / formal house	33
county	40	2009	Non-traditional / formal house	18
county	28	2009	Non-traditional / formal house	12
county	14	2009	Non-traditional / formal house	37
county	7	2009	Non-traditional / formal house	14
county	43	2009	Non-traditional / formal house	48
county	11	2009	Non-traditional / formal house	3
county	34	2009	Non-traditional / formal house	33
county	37	2009	Non-traditional / formal house	38
county	35	2009	Non-traditional / formal house	30
county	22	2009	Non-traditional / formal house	93
county	3	2009	Non-traditional / formal house	34
county	20	2009	Non-traditional / formal house	32
county	45	2009	Non-traditional / formal house	71
county	42	2009	Non-traditional / formal house	43
county	15	2009	Non-traditional / formal house	43
county	2	2009	Non-traditional / formal house	26
county	31	2009	Non-traditional / formal house	15
county	5	2009	Non-traditional / formal house	4
county	16	2009	Non-traditional / formal house	63
county	17	2009	Non-traditional / formal house	46
county	9	2009	Non-traditional / formal house	15
county	10	2009	Non-traditional / formal house	4
county	12	2009	Non-traditional / formal house	78
county	44	2009	Non-traditional / formal house	45
county	1	2009	Non-traditional / formal house	64
county	21	2009	Non-traditional / formal house	61
county	47	2009	Non-traditional / formal house	100
county	32	2009	Non-traditional / formal house	77
county	29	2009	Non-traditional / formal house	46
county	33	2009	Non-traditional / formal house	26
county	46	2009	Non-traditional / formal house	39
county	18	2009	Non-traditional / formal house	32
county	19	2009	Non-traditional / formal house	39
county	41	2009	Non-traditional / formal house	35
county	6	2009	Non-traditional / formal house	10
county	13	2009	Non-traditional / formal house	22
county	26	2009	Non-traditional / formal house	18
county	23	2009	Non-traditional / formal house	9
county	27	2009	Non-traditional / formal house	48
county	38	2009	Non-traditional / formal house	9
county	8	2009	Non-traditional / formal house	5
county	24	2009	Non-traditional / formal house	11
county	30	2009	Other	1
county	37	2009	Other	1
county	30	2009	Single room in a larger dwelling structure or backyard	3
county	39	2009	Single room in a larger dwelling structure or backyard	1
county	40	2009	Single room in a larger dwelling structure or backyard	2
county	14	2009	Single room in a larger dwelling structure or backyard	1
county	34	2009	Single room in a larger dwelling structure or backyard	6
county	35	2009	Single room in a larger dwelling structure or backyard	2
county	22	2009	Single room in a larger dwelling structure or backyard	8
county	20	2009	Single room in a larger dwelling structure or backyard	4
county	42	2009	Single room in a larger dwelling structure or backyard	4
county	15	2009	Single room in a larger dwelling structure or backyard	2
county	16	2009	Single room in a larger dwelling structure or backyard	2
county	17	2009	Single room in a larger dwelling structure or backyard	3
county	47	2009	Single room in a larger dwelling structure or backyard	36
county	29	2009	Single room in a larger dwelling structure or backyard	1
county	18	2009	Single room in a larger dwelling structure or backyard	7
county	19	2009	Single room in a larger dwelling structure or backyard	4
county	6	2009	Single room in a larger dwelling structure or backyard	1
county	26	2009	Single room in a larger dwelling structure or backyard	2
county	27	2009	Single room in a larger dwelling structure or backyard	8
county	36	2009	Temporary structure / shack	2
county	39	2009	Temporary structure / shack	1
county	11	2009	Temporary structure / shack	1
county	22	2009	Temporary structure / shack	2
county	3	2009	Temporary structure / shack	6
county	15	2009	Temporary structure / shack	1
county	2	2009	Temporary structure / shack	3
county	31	2009	Temporary structure / shack	4
county	17	2009	Temporary structure / shack	7
county	10	2009	Temporary structure / shack	7
county	1	2009	Temporary structure / shack	4
county	21	2009	Temporary structure / shack	2
county	47	2009	Temporary structure / shack	31
county	32	2009	Temporary structure / shack	2
county	19	2009	Temporary structure / shack	1
county	25	2009	Temporary structure / shack	1
county	6	2009	Temporary structure / shack	1
county	26	2009	Temporary structure / shack	1
county	23	2009	Temporary structure / shack	14
county	8	2009	Temporary structure / shack	2
county	30	2009	Traditional house / hut	4
county	36	2009	Traditional house / hut	10
county	39	2009	Traditional house / hut	45
county	40	2009	Traditional house / hut	20
county	28	2009	Traditional house / hut	4
county	14	2009	Traditional house / hut	2
county	7	2009	Traditional house / hut	18
county	43	2009	Traditional house / hut	8
county	11	2009	Traditional house / hut	4
county	34	2009	Traditional house / hut	7
county	37	2009	Traditional house / hut	57
county	35	2009	Traditional house / hut	8
county	3	2009	Traditional house / hut	23
county	20	2009	Traditional house / hut	3
county	45	2009	Traditional house / hut	1
county	42	2009	Traditional house / hut	4
county	15	2009	Traditional house / hut	10
county	2	2009	Traditional house / hut	11
county	31	2009	Traditional house / hut	5
county	5	2009	Traditional house / hut	4
county	16	2009	Traditional house / hut	5
county	9	2009	Traditional house / hut	33
county	10	2009	Traditional house / hut	5
county	12	2009	Traditional house / hut	6
county	44	2009	Traditional house / hut	3
county	1	2009	Traditional house / hut	3
county	47	2009	Traditional house / hut	6
county	32	2009	Traditional house / hut	25
county	29	2009	Traditional house / hut	1
county	33	2009	Traditional house / hut	21
county	19	2009	Traditional house / hut	2
county	25	2009	Traditional house / hut	7
county	41	2009	Traditional house / hut	13
county	6	2009	Traditional house / hut	4
county	4	2009	Traditional house / hut	8
county	13	2009	Traditional house / hut	2
county	26	2009	Traditional house / hut	27
county	23	2009	Traditional house / hut	25
county	38	2009	Traditional house / hut	22
county	8	2009	Traditional house / hut	25
county	24	2009	Traditional house / hut	13
\.


--
-- Name: type_of_shelter_of_respondent pk_type_of_shelter_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.type_of_shelter_of_respondent
    ADD CONSTRAINT pk_type_of_shelter_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, type_of_shelter_of_respondent);


--
-- PostgreSQL database dump complete
--

