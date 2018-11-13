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

ALTER TABLE IF EXISTS ONLY public.had_something_stolen_from_house DROP CONSTRAINT IF EXISTS pk_had_something_stolen_from_house;
DROP TABLE IF EXISTS public.had_something_stolen_from_house;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: had_something_stolen_from_house; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.had_something_stolen_from_house (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    had_something_stolen_from_house character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: had_something_stolen_from_house; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.had_something_stolen_from_house (geo_level, geo_code, geo_version, had_something_stolen_from_house, total) FROM stdin;
county	30	2009	No	30
county	36	2009	No	28
county	39	2009	No	60
county	40	2009	No	28
county	28	2009	No	12
county	14	2009	No	31
county	7	2009	No	30
county	43	2009	No	39
county	11	2009	No	5
county	34	2009	No	42
county	37	2009	No	75
county	35	2009	No	25
county	22	2009	No	100
county	3	2009	No	45
county	20	2009	No	28
county	45	2009	No	52
county	42	2009	No	37
county	15	2009	No	45
county	2	2009	No	24
county	31	2009	No	15
county	5	2009	No	5
county	16	2009	No	62
county	17	2009	No	42
county	9	2009	No	43
county	10	2009	No	8
county	12	2009	No	62
county	44	2009	No	23
county	1	2009	No	49
county	21	2009	No	56
county	47	2009	No	159
county	32	2009	No	68
county	29	2009	No	41
county	33	2009	No	39
county	46	2009	No	28
county	18	2009	No	28
county	19	2009	No	38
county	25	2009	No	8
county	41	2009	No	31
county	6	2009	No	6
county	4	2009	No	8
county	13	2009	No	20
county	26	2009	No	32
county	23	2009	No	25
county	27	2009	No	48
county	38	2009	No	21
county	8	2009	No	30
county	24	2009	No	23
county	30	2009	Yes, once	1
county	36	2009	Yes, once	9
county	39	2009	Yes, once	9
county	40	2009	Yes, once	6
county	14	2009	Yes, once	4
county	7	2009	Yes, once	1
county	43	2009	Yes, once	11
county	34	2009	Yes, once	3
county	37	2009	Yes, once	5
county	35	2009	Yes, once	4
county	22	2009	Yes, once	8
county	3	2009	Yes, once	13
county	20	2009	Yes, once	4
county	45	2009	Yes, once	4
county	42	2009	Yes, once	10
county	15	2009	Yes, once	7
county	2	2009	Yes, once	9
county	31	2009	Yes, once	3
county	5	2009	Yes, once	2
county	16	2009	Yes, once	2
county	17	2009	Yes, once	7
county	9	2009	Yes, once	5
county	10	2009	Yes, once	1
county	12	2009	Yes, once	15
county	44	2009	Yes, once	11
county	1	2009	Yes, once	18
county	21	2009	Yes, once	4
county	47	2009	Yes, once	49
county	32	2009	Yes, once	20
county	29	2009	Yes, once	6
county	33	2009	Yes, once	6
county	46	2009	Yes, once	3
county	18	2009	Yes, once	4
county	19	2009	Yes, once	6
county	41	2009	Yes, once	12
county	6	2009	Yes, once	9
county	13	2009	Yes, once	1
county	26	2009	Yes, once	4
county	23	2009	Yes, once	11
county	27	2009	Yes, once	6
county	38	2009	Yes, once	6
county	36	2009	Yes, three or more times	6
county	39	2009	Yes, three or more times	8
county	40	2009	Yes, three or more times	2
county	28	2009	Yes, three or more times	4
county	43	2009	Yes, three or more times	5
county	11	2009	Yes, three or more times	2
county	34	2009	Yes, three or more times	1
county	37	2009	Yes, three or more times	4
county	35	2009	Yes, three or more times	5
county	22	2009	Yes, three or more times	7
county	3	2009	Yes, three or more times	2
county	20	2009	Yes, three or more times	3
county	45	2009	Yes, three or more times	8
county	42	2009	Yes, three or more times	5
county	15	2009	Yes, three or more times	1
county	2	2009	Yes, three or more times	3
county	31	2009	Yes, three or more times	3
county	16	2009	Yes, three or more times	3
county	17	2009	Yes, three or more times	4
county	10	2009	Yes, three or more times	5
county	12	2009	Yes, three or more times	1
county	44	2009	Yes, three or more times	7
county	1	2009	Yes, three or more times	2
county	21	2009	Yes, three or more times	2
county	47	2009	Yes, three or more times	15
county	32	2009	Yes, three or more times	4
county	29	2009	Yes, three or more times	1
county	46	2009	Yes, three or more times	7
county	18	2009	Yes, three or more times	4
county	19	2009	Yes, three or more times	1
county	41	2009	Yes, three or more times	3
county	13	2009	Yes, three or more times	1
county	26	2009	Yes, three or more times	8
county	23	2009	Yes, three or more times	3
county	38	2009	Yes, three or more times	2
county	8	2009	Yes, three or more times	1
county	30	2009	Yes, twice	1
county	36	2009	Yes, twice	5
county	39	2009	Yes, twice	3
county	40	2009	Yes, twice	4
county	14	2009	Yes, twice	5
county	7	2009	Yes, twice	1
county	43	2009	Yes, twice	1
county	11	2009	Yes, twice	1
county	34	2009	Yes, twice	2
county	37	2009	Yes, twice	12
county	35	2009	Yes, twice	6
county	22	2009	Yes, twice	5
county	3	2009	Yes, twice	4
county	20	2009	Yes, twice	5
county	45	2009	Yes, twice	8
county	42	2009	Yes, twice	4
county	15	2009	Yes, twice	3
county	2	2009	Yes, twice	4
county	31	2009	Yes, twice	3
county	5	2009	Yes, twice	1
county	16	2009	Yes, twice	5
county	17	2009	Yes, twice	3
county	10	2009	Yes, twice	2
county	12	2009	Yes, twice	7
county	44	2009	Yes, twice	7
county	1	2009	Yes, twice	3
county	21	2009	Yes, twice	2
county	47	2009	Yes, twice	25
county	32	2009	Yes, twice	12
county	33	2009	Yes, twice	3
county	46	2009	Yes, twice	2
county	18	2009	Yes, twice	4
county	19	2009	Yes, twice	3
county	41	2009	Yes, twice	2
county	6	2009	Yes, twice	1
county	13	2009	Yes, twice	2
county	26	2009	Yes, twice	4
county	23	2009	Yes, twice	9
county	27	2009	Yes, twice	2
county	38	2009	Yes, twice	3
county	8	2009	Yes, twice	1
county	24	2009	Yes, twice	1
\.


--
-- Name: had_something_stolen_from_house pk_had_something_stolen_from_house; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.had_something_stolen_from_house
    ADD CONSTRAINT pk_had_something_stolen_from_house PRIMARY KEY (geo_level, geo_code, geo_version, had_something_stolen_from_house);


--
-- PostgreSQL database dump complete
--

