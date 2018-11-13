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

ALTER TABLE IF EXISTS ONLY public.problems_with_courts_too_expensive DROP CONSTRAINT IF EXISTS pk_problems_with_courts_too_expensive;
DROP TABLE IF EXISTS public.problems_with_courts_too_expensive;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: problems_with_courts_too_expensive; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.problems_with_courts_too_expensive (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    problems_with_courts_too_expensive character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: problems_with_courts_too_expensive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.problems_with_courts_too_expensive (geo_level, geo_code, geo_version, problems_with_courts_too_expensive, total) FROM stdin;
county	30	2009	A Few times	1
county	39	2009	A Few times	1
county	40	2009	A Few times	1
county	11	2009	A Few times	1
county	34	2009	A Few times	1
county	20	2009	A Few times	1
county	45	2009	A Few times	1
county	42	2009	A Few times	1
county	15	2009	A Few times	6
county	16	2009	A Few times	2
county	12	2009	A Few times	4
county	47	2009	A Few times	3
county	32	2009	A Few times	1
county	19	2009	A Few times	1
county	13	2009	A Few times	1
county	26	2009	A Few times	1
county	36	2009	Don't know	1
county	12	2009	Don't know	1
county	38	2009	Don't know	1
county	15	2009	Missing	2
county	13	2009	Missing	1
county	30	2009	Never	1
county	36	2009	Never	4
county	39	2009	Never	3
county	40	2009	Never	2
county	14	2009	Never	2
county	43	2009	Never	1
county	34	2009	Never	6
county	37	2009	Never	4
county	35	2009	Never	2
county	22	2009	Never	8
county	3	2009	Never	2
county	20	2009	Never	6
county	45	2009	Never	3
county	42	2009	Never	2
county	15	2009	Never	2
county	2	2009	Never	2
county	5	2009	Never	2
county	16	2009	Never	2
county	17	2009	Never	9
county	12	2009	Never	4
county	44	2009	Never	1
county	1	2009	Never	3
county	21	2009	Never	2
county	47	2009	Never	17
county	32	2009	Never	3
county	29	2009	Never	4
county	33	2009	Never	1
county	46	2009	Never	3
county	18	2009	Never	2
county	19	2009	Never	1
county	6	2009	Never	1
county	4	2009	Never	1
county	13	2009	Never	1
county	26	2009	Never	1
county	27	2009	Never	5
county	24	2009	Never	1
county	30	2009	No experience with government courts in last 5 years	30
county	36	2009	No experience with government courts in last 5 years	40
county	39	2009	No experience with government courts in last 5 years	73
county	40	2009	No experience with government courts in last 5 years	36
county	28	2009	No experience with government courts in last 5 years	16
county	14	2009	No experience with government courts in last 5 years	34
county	7	2009	No experience with government courts in last 5 years	32
county	43	2009	No experience with government courts in last 5 years	53
county	11	2009	No experience with government courts in last 5 years	7
county	34	2009	No experience with government courts in last 5 years	37
county	37	2009	No experience with government courts in last 5 years	90
county	35	2009	No experience with government courts in last 5 years	37
county	22	2009	No experience with government courts in last 5 years	111
county	3	2009	No experience with government courts in last 5 years	60
county	20	2009	No experience with government courts in last 5 years	33
county	45	2009	No experience with government courts in last 5 years	68
county	42	2009	No experience with government courts in last 5 years	52
county	15	2009	No experience with government courts in last 5 years	43
county	2	2009	No experience with government courts in last 5 years	38
county	31	2009	No experience with government courts in last 5 years	24
county	5	2009	No experience with government courts in last 5 years	5
county	16	2009	No experience with government courts in last 5 years	59
county	17	2009	No experience with government courts in last 5 years	44
county	9	2009	No experience with government courts in last 5 years	48
county	10	2009	No experience with government courts in last 5 years	16
county	12	2009	No experience with government courts in last 5 years	70
county	44	2009	No experience with government courts in last 5 years	47
county	1	2009	No experience with government courts in last 5 years	68
county	21	2009	No experience with government courts in last 5 years	60
county	47	2009	No experience with government courts in last 5 years	213
county	32	2009	No experience with government courts in last 5 years	95
county	29	2009	No experience with government courts in last 5 years	42
county	33	2009	No experience with government courts in last 5 years	46
county	46	2009	No experience with government courts in last 5 years	36
county	18	2009	No experience with government courts in last 5 years	36
county	19	2009	No experience with government courts in last 5 years	43
county	25	2009	No experience with government courts in last 5 years	8
county	41	2009	No experience with government courts in last 5 years	47
county	6	2009	No experience with government courts in last 5 years	15
county	4	2009	No experience with government courts in last 5 years	7
county	13	2009	No experience with government courts in last 5 years	17
county	26	2009	No experience with government courts in last 5 years	46
county	23	2009	No experience with government courts in last 5 years	47
county	27	2009	No experience with government courts in last 5 years	50
county	38	2009	No experience with government courts in last 5 years	31
county	8	2009	No experience with government courts in last 5 years	32
county	24	2009	No experience with government courts in last 5 years	22
county	14	2009	Often	1
county	43	2009	Often	2
county	16	2009	Often	3
county	21	2009	Often	1
county	47	2009	Often	2
county	18	2009	Often	1
county	19	2009	Often	1
county	36	2009	Once or Twice	3
county	39	2009	Once or Twice	3
county	40	2009	Once or Twice	1
county	14	2009	Once or Twice	3
county	34	2009	Once or Twice	4
county	37	2009	Once or Twice	2
county	35	2009	Once or Twice	1
county	22	2009	Once or Twice	1
county	3	2009	Once or Twice	2
county	42	2009	Once or Twice	1
county	15	2009	Once or Twice	3
county	5	2009	Once or Twice	1
county	16	2009	Once or Twice	6
county	17	2009	Once or Twice	3
county	12	2009	Once or Twice	6
county	1	2009	Once or Twice	1
county	21	2009	Once or Twice	1
county	47	2009	Once or Twice	13
county	32	2009	Once or Twice	5
county	29	2009	Once or Twice	2
county	33	2009	Once or Twice	1
county	46	2009	Once or Twice	1
county	18	2009	Once or Twice	1
county	19	2009	Once or Twice	2
county	41	2009	Once or Twice	1
county	13	2009	Once or Twice	4
county	23	2009	Once or Twice	1
county	27	2009	Once or Twice	1
county	24	2009	Once or Twice	1
\.


--
-- Name: problems_with_courts_too_expensive pk_problems_with_courts_too_expensive; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.problems_with_courts_too_expensive
    ADD CONSTRAINT pk_problems_with_courts_too_expensive PRIMARY KEY (geo_level, geo_code, geo_version, problems_with_courts_too_expensive);


--
-- PostgreSQL database dump complete
--

