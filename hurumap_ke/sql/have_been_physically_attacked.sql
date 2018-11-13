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

ALTER TABLE IF EXISTS ONLY public.have_been_physically_attacked DROP CONSTRAINT IF EXISTS pk_have_been_physically_attacked;
DROP TABLE IF EXISTS public.have_been_physically_attacked;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: have_been_physically_attacked; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.have_been_physically_attacked (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    have_been_physically_attacked character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: have_been_physically_attacked; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.have_been_physically_attacked (geo_level, geo_code, geo_version, have_been_physically_attacked, total) FROM stdin;
county	47	2009	Missing	1
county	30	2009	No	32
county	36	2009	No	40
county	39	2009	No	77
county	40	2009	No	37
county	28	2009	No	12
county	14	2009	No	33
county	7	2009	No	30
county	43	2009	No	54
county	11	2009	No	7
county	34	2009	No	43
county	37	2009	No	85
county	35	2009	No	32
county	22	2009	No	112
county	3	2009	No	62
county	20	2009	No	37
county	45	2009	No	70
county	42	2009	No	54
county	15	2009	No	52
county	2	2009	No	36
county	31	2009	No	19
county	5	2009	No	8
county	16	2009	No	63
county	17	2009	No	52
county	9	2009	No	44
county	10	2009	No	11
county	12	2009	No	73
county	44	2009	No	48
county	1	2009	No	68
county	21	2009	No	61
county	47	2009	No	204
county	32	2009	No	95
county	29	2009	No	47
county	33	2009	No	44
county	46	2009	No	38
county	18	2009	No	39
county	19	2009	No	42
county	25	2009	No	8
county	41	2009	No	46
county	6	2009	No	15
county	4	2009	No	8
county	13	2009	No	23
county	26	2009	No	46
county	23	2009	No	42
county	27	2009	No	52
county	38	2009	No	29
county	8	2009	No	31
county	24	2009	No	24
county	36	2009	Yes, once	3
county	39	2009	Yes, once	1
county	40	2009	Yes, once	2
county	14	2009	Yes, once	5
county	7	2009	Yes, once	2
county	34	2009	Yes, once	4
county	37	2009	Yes, once	6
county	35	2009	Yes, once	7
county	22	2009	Yes, once	6
county	3	2009	Yes, once	2
county	20	2009	Yes, once	2
county	45	2009	Yes, once	1
county	42	2009	Yes, once	2
county	15	2009	Yes, once	1
county	2	2009	Yes, once	3
county	31	2009	Yes, once	2
county	16	2009	Yes, once	6
county	17	2009	Yes, once	3
county	9	2009	Yes, once	2
county	10	2009	Yes, once	1
county	12	2009	Yes, once	8
county	1	2009	Yes, once	3
county	21	2009	Yes, once	3
county	47	2009	Yes, once	24
county	32	2009	Yes, once	4
county	29	2009	Yes, once	1
county	33	2009	Yes, once	3
county	46	2009	Yes, once	1
county	18	2009	Yes, once	1
county	19	2009	Yes, once	3
county	41	2009	Yes, once	1
county	6	2009	Yes, once	1
county	13	2009	Yes, once	1
county	26	2009	Yes, once	1
county	23	2009	Yes, once	4
county	27	2009	Yes, once	3
county	38	2009	Yes, once	1
county	8	2009	Yes, once	1
county	36	2009	Yes, three or more times	2
county	39	2009	Yes, three or more times	1
county	40	2009	Yes, three or more times	1
county	28	2009	Yes, three or more times	2
county	14	2009	Yes, three or more times	1
county	43	2009	Yes, three or more times	2
county	11	2009	Yes, three or more times	1
county	34	2009	Yes, three or more times	1
county	37	2009	Yes, three or more times	1
county	22	2009	Yes, three or more times	2
county	20	2009	Yes, three or more times	1
county	45	2009	Yes, three or more times	1
county	15	2009	Yes, three or more times	1
county	2	2009	Yes, three or more times	1
county	31	2009	Yes, three or more times	3
county	16	2009	Yes, three or more times	1
county	17	2009	Yes, three or more times	1
county	10	2009	Yes, three or more times	3
county	12	2009	Yes, three or more times	1
county	47	2009	Yes, three or more times	6
county	32	2009	Yes, three or more times	1
county	46	2009	Yes, three or more times	1
county	19	2009	Yes, three or more times	2
county	41	2009	Yes, three or more times	1
county	26	2009	Yes, three or more times	1
county	23	2009	Yes, three or more times	1
county	27	2009	Yes, three or more times	1
county	38	2009	Yes, three or more times	1
county	36	2009	Yes, twice	3
county	39	2009	Yes, twice	1
county	28	2009	Yes, twice	2
county	14	2009	Yes, twice	1
county	37	2009	Yes, twice	4
county	35	2009	Yes, twice	1
county	15	2009	Yes, twice	2
county	16	2009	Yes, twice	2
county	9	2009	Yes, twice	2
county	10	2009	Yes, twice	1
county	12	2009	Yes, twice	3
county	1	2009	Yes, twice	1
county	47	2009	Yes, twice	13
county	32	2009	Yes, twice	4
county	33	2009	Yes, twice	1
county	19	2009	Yes, twice	1
county	23	2009	Yes, twice	1
county	38	2009	Yes, twice	1
\.


--
-- Name: have_been_physically_attacked pk_have_been_physically_attacked; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.have_been_physically_attacked
    ADD CONSTRAINT pk_have_been_physically_attacked PRIMARY KEY (geo_level, geo_code, geo_version, have_been_physically_attacked);


--
-- PostgreSQL database dump complete
--

