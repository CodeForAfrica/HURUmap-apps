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

ALTER TABLE IF EXISTS ONLY public.roof_of_respondents_home DROP CONSTRAINT IF EXISTS pk_roof_of_respondents_home;
DROP TABLE IF EXISTS public.roof_of_respondents_home;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: roof_of_respondents_home; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.roof_of_respondents_home (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    roof_of_respondents_home character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: roof_of_respondents_home; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.roof_of_respondents_home (geo_level, geo_code, geo_version, roof_of_respondents_home, total) FROM stdin;
county	35	2009	Asbestos	1
county	42	2009	Asbestos	1
county	31	2009	Asbestos	1
county	47	2009	Asbestos	2
county	32	2009	Asbestos	2
county	22	2009	Concrete	4
county	42	2009	Concrete	2
county	16	2009	Concrete	3
county	1	2009	Concrete	3
county	47	2009	Concrete	30
county	32	2009	Concrete	2
county	22	2009	Could not tell / could not see	2
county	20	2009	Could not tell / could not see	1
county	42	2009	Could not tell / could not see	1
county	1	2009	Could not tell / could not see	3
county	47	2009	Could not tell / could not see	23
county	19	2009	Could not tell / could not see	1
county	30	2009	Metal, tin or zinc	26
county	36	2009	Metal, tin or zinc	35
county	39	2009	Metal, tin or zinc	69
county	40	2009	Metal, tin or zinc	31
county	28	2009	Metal, tin or zinc	11
county	14	2009	Metal, tin or zinc	39
county	7	2009	Metal, tin or zinc	17
county	43	2009	Metal, tin or zinc	48
county	11	2009	Metal, tin or zinc	3
county	34	2009	Metal, tin or zinc	39
county	37	2009	Metal, tin or zinc	77
county	35	2009	Metal, tin or zinc	36
county	22	2009	Metal, tin or zinc	108
county	3	2009	Metal, tin or zinc	40
county	20	2009	Metal, tin or zinc	38
county	45	2009	Metal, tin or zinc	71
county	42	2009	Metal, tin or zinc	43
county	15	2009	Metal, tin or zinc	52
county	2	2009	Metal, tin or zinc	30
county	31	2009	Metal, tin or zinc	14
county	5	2009	Metal, tin or zinc	6
county	16	2009	Metal, tin or zinc	64
county	17	2009	Metal, tin or zinc	56
county	9	2009	Metal, tin or zinc	25
county	10	2009	Metal, tin or zinc	4
county	12	2009	Metal, tin or zinc	81
county	44	2009	Metal, tin or zinc	46
county	1	2009	Metal, tin or zinc	64
county	21	2009	Metal, tin or zinc	63
county	47	2009	Metal, tin or zinc	164
county	32	2009	Metal, tin or zinc	88
county	29	2009	Metal, tin or zinc	48
county	33	2009	Metal, tin or zinc	33
county	46	2009	Metal, tin or zinc	40
county	18	2009	Metal, tin or zinc	40
county	19	2009	Metal, tin or zinc	47
county	41	2009	Metal, tin or zinc	44
county	6	2009	Metal, tin or zinc	12
county	13	2009	Metal, tin or zinc	23
county	26	2009	Metal, tin or zinc	38
county	23	2009	Metal, tin or zinc	9
county	27	2009	Metal, tin or zinc	54
county	38	2009	Metal, tin or zinc	27
county	8	2009	Metal, tin or zinc	7
county	24	2009	Metal, tin or zinc	12
county	7	2009	Missing	1
county	2	2009	Missing	1
county	31	2009	Multiple materials	6
county	10	2009	Multiple materials	3
county	12	2009	Multiple materials	1
county	47	2009	Multiple materials	1
county	32	2009	Multiple materials	2
county	33	2009	Multiple materials	3
county	26	2009	Multiple materials	1
county	23	2009	Multiple materials	5
county	27	2009	Multiple materials	1
county	24	2009	Multiple materials	1
county	22	2009	Plastic sheets	1
county	39	2009	Shingles	1
county	3	2009	Shingles	18
county	2	2009	Shingles	2
county	1	2009	Shingles	2
county	13	2009	Shingles	1
county	8	2009	Shingles	1
county	11	2009	Some other material	1
county	31	2009	Some other material	2
county	10	2009	Some other material	3
county	47	2009	Some other material	1
county	33	2009	Some other material	2
county	30	2009	Thatch or grass	4
county	36	2009	Thatch or grass	4
county	39	2009	Thatch or grass	10
county	40	2009	Thatch or grass	8
county	28	2009	Thatch or grass	5
county	14	2009	Thatch or grass	1
county	7	2009	Thatch or grass	14
county	43	2009	Thatch or grass	8
county	11	2009	Thatch or grass	4
county	34	2009	Thatch or grass	7
county	37	2009	Thatch or grass	16
county	35	2009	Thatch or grass	1
county	3	2009	Thatch or grass	5
county	45	2009	Thatch or grass	1
county	42	2009	Thatch or grass	4
county	15	2009	Thatch or grass	4
county	2	2009	Thatch or grass	7
county	5	2009	Thatch or grass	2
county	16	2009	Thatch or grass	2
county	9	2009	Thatch or grass	22
county	10	2009	Thatch or grass	6
county	12	2009	Thatch or grass	2
county	44	2009	Thatch or grass	2
county	32	2009	Thatch or grass	7
county	33	2009	Thatch or grass	10
county	25	2009	Thatch or grass	8
county	41	2009	Thatch or grass	4
county	6	2009	Thatch or grass	4
county	4	2009	Thatch or grass	8
county	26	2009	Thatch or grass	9
county	23	2009	Thatch or grass	34
county	38	2009	Thatch or grass	5
county	8	2009	Thatch or grass	24
county	24	2009	Thatch or grass	11
county	30	2009	Tiles	2
county	36	2009	Tiles	9
county	40	2009	Tiles	1
county	34	2009	Tiles	2
county	37	2009	Tiles	3
county	35	2009	Tiles	2
county	22	2009	Tiles	5
county	3	2009	Tiles	1
county	20	2009	Tiles	1
county	42	2009	Tiles	5
county	31	2009	Tiles	1
county	16	2009	Tiles	3
county	9	2009	Tiles	1
county	12	2009	Tiles	1
county	21	2009	Tiles	1
county	47	2009	Tiles	27
county	32	2009	Tiles	3
county	27	2009	Tiles	1
\.


--
-- Name: roof_of_respondents_home pk_roof_of_respondents_home; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roof_of_respondents_home
    ADD CONSTRAINT pk_roof_of_respondents_home PRIMARY KEY (geo_level, geo_code, geo_version, roof_of_respondents_home);


--
-- PostgreSQL database dump complete
--

