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

ALTER TABLE IF EXISTS ONLY public.trust_army DROP CONSTRAINT IF EXISTS pk_trust_army;
DROP TABLE IF EXISTS public.trust_army;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: trust_army; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trust_army (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    trust_army character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: trust_army; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.trust_army (geo_level, geo_code, geo_version, trust_army, total) FROM stdin;
county	30	2009	A lot	11
county	36	2009	A lot	21
county	39	2009	A lot	30
county	40	2009	A lot	7
county	28	2009	A lot	5
county	14	2009	A lot	10
county	7	2009	A lot	9
county	43	2009	A lot	7
county	11	2009	A lot	1
county	34	2009	A lot	13
county	37	2009	A lot	17
county	35	2009	A lot	15
county	22	2009	A lot	48
county	3	2009	A lot	17
county	20	2009	A lot	24
county	45	2009	A lot	11
county	42	2009	A lot	15
county	15	2009	A lot	14
county	2	2009	A lot	9
county	31	2009	A lot	12
county	5	2009	A lot	6
county	16	2009	A lot	20
county	17	2009	A lot	14
county	9	2009	A lot	11
county	10	2009	A lot	1
county	12	2009	A lot	27
county	44	2009	A lot	8
county	1	2009	A lot	12
county	21	2009	A lot	42
county	47	2009	A lot	78
county	32	2009	A lot	47
county	29	2009	A lot	16
county	33	2009	A lot	19
county	46	2009	A lot	7
county	18	2009	A lot	23
county	19	2009	A lot	28
county	25	2009	A lot	2
county	41	2009	A lot	11
county	6	2009	A lot	4
county	4	2009	A lot	3
county	13	2009	A lot	6
county	26	2009	A lot	20
county	23	2009	A lot	13
county	27	2009	A lot	20
county	38	2009	A lot	8
county	8	2009	A lot	9
county	24	2009	A lot	6
county	30	2009	Don't know/ Haven't heard enough	1
county	36	2009	Don't know/ Haven't heard enough	1
county	39	2009	Don't know/ Haven't heard enough	2
county	40	2009	Don't know/ Haven't heard enough	2
county	14	2009	Don't know/ Haven't heard enough	8
county	7	2009	Don't know/ Haven't heard enough	3
county	43	2009	Don't know/ Haven't heard enough	2
county	11	2009	Don't know/ Haven't heard enough	2
county	34	2009	Don't know/ Haven't heard enough	3
county	37	2009	Don't know/ Haven't heard enough	6
county	35	2009	Don't know/ Haven't heard enough	1
county	22	2009	Don't know/ Haven't heard enough	3
county	3	2009	Don't know/ Haven't heard enough	2
county	45	2009	Don't know/ Haven't heard enough	4
county	15	2009	Don't know/ Haven't heard enough	14
county	2	2009	Don't know/ Haven't heard enough	3
county	31	2009	Don't know/ Haven't heard enough	3
county	16	2009	Don't know/ Haven't heard enough	12
county	17	2009	Don't know/ Haven't heard enough	10
county	9	2009	Don't know/ Haven't heard enough	2
county	10	2009	Don't know/ Haven't heard enough	1
county	12	2009	Don't know/ Haven't heard enough	10
county	44	2009	Don't know/ Haven't heard enough	1
county	1	2009	Don't know/ Haven't heard enough	1
county	47	2009	Don't know/ Haven't heard enough	12
county	32	2009	Don't know/ Haven't heard enough	6
county	33	2009	Don't know/ Haven't heard enough	1
county	46	2009	Don't know/ Haven't heard enough	2
county	18	2009	Don't know/ Haven't heard enough	1
county	41	2009	Don't know/ Haven't heard enough	10
county	4	2009	Don't know/ Haven't heard enough	3
county	13	2009	Don't know/ Haven't heard enough	3
county	26	2009	Don't know/ Haven't heard enough	2
county	27	2009	Don't know/ Haven't heard enough	2
county	38	2009	Don't know/ Haven't heard enough	3
county	8	2009	Don't know/ Haven't heard enough	1
county	24	2009	Don't know/ Haven't heard enough	1
county	30	2009	Just a little	4
county	36	2009	Just a little	7
county	39	2009	Just a little	12
county	40	2009	Just a little	9
county	28	2009	Just a little	2
county	14	2009	Just a little	8
county	7	2009	Just a little	5
county	43	2009	Just a little	10
county	11	2009	Just a little	1
county	34	2009	Just a little	4
county	37	2009	Just a little	19
county	35	2009	Just a little	7
county	22	2009	Just a little	21
county	3	2009	Just a little	21
county	20	2009	Just a little	7
county	45	2009	Just a little	11
county	42	2009	Just a little	5
county	15	2009	Just a little	9
county	2	2009	Just a little	8
county	31	2009	Just a little	2
county	5	2009	Just a little	1
county	16	2009	Just a little	13
county	17	2009	Just a little	12
county	9	2009	Just a little	9
county	10	2009	Just a little	4
county	12	2009	Just a little	11
county	44	2009	Just a little	13
county	1	2009	Just a little	23
county	21	2009	Just a little	5
county	47	2009	Just a little	43
county	32	2009	Just a little	10
county	29	2009	Just a little	5
county	33	2009	Just a little	9
county	46	2009	Just a little	8
county	18	2009	Just a little	12
county	19	2009	Just a little	10
county	25	2009	Just a little	1
county	41	2009	Just a little	6
county	6	2009	Just a little	3
county	13	2009	Just a little	3
county	26	2009	Just a little	5
county	23	2009	Just a little	6
county	27	2009	Just a little	7
county	38	2009	Just a little	3
county	8	2009	Just a little	1
county	24	2009	Just a little	2
county	16	2009	Missing	1
county	32	2009	Missing	1
county	30	2009	Not at all	1
county	36	2009	Not at all	1
county	39	2009	Not at all	23
county	40	2009	Not at all	14
county	28	2009	Not at all	2
county	14	2009	Not at all	5
county	43	2009	Not at all	3
county	11	2009	Not at all	2
county	34	2009	Not at all	4
county	37	2009	Not at all	30
county	22	2009	Not at all	8
county	3	2009	Not at all	6
county	20	2009	Not at all	2
county	45	2009	Not at all	2
county	42	2009	Not at all	4
county	15	2009	Not at all	6
county	16	2009	Not at all	13
county	17	2009	Not at all	6
county	9	2009	Not at all	3
county	10	2009	Not at all	3
county	12	2009	Not at all	9
county	44	2009	Not at all	5
county	1	2009	Not at all	8
county	21	2009	Not at all	2
county	47	2009	Not at all	36
county	32	2009	Not at all	2
county	29	2009	Not at all	2
county	33	2009	Not at all	2
county	46	2009	Not at all	2
county	18	2009	Not at all	1
county	19	2009	Not at all	3
county	25	2009	Not at all	2
county	41	2009	Not at all	3
county	6	2009	Not at all	1
county	13	2009	Not at all	4
county	26	2009	Not at all	12
county	27	2009	Not at all	3
county	38	2009	Not at all	7
county	8	2009	Not at all	2
county	24	2009	Not at all	1
county	30	2009	Somewhat	15
county	36	2009	Somewhat	18
county	39	2009	Somewhat	13
county	40	2009	Somewhat	8
county	28	2009	Somewhat	7
county	14	2009	Somewhat	9
county	7	2009	Somewhat	15
county	43	2009	Somewhat	34
county	11	2009	Somewhat	2
county	34	2009	Somewhat	24
county	37	2009	Somewhat	24
county	35	2009	Somewhat	17
county	22	2009	Somewhat	40
county	3	2009	Somewhat	18
county	20	2009	Somewhat	7
county	45	2009	Somewhat	44
county	42	2009	Somewhat	32
county	15	2009	Somewhat	13
county	2	2009	Somewhat	20
county	31	2009	Somewhat	7
county	5	2009	Somewhat	1
county	16	2009	Somewhat	13
county	17	2009	Somewhat	14
county	9	2009	Somewhat	23
county	10	2009	Somewhat	7
county	12	2009	Somewhat	28
county	44	2009	Somewhat	21
county	1	2009	Somewhat	28
county	21	2009	Somewhat	15
county	47	2009	Somewhat	79
county	32	2009	Somewhat	38
county	29	2009	Somewhat	25
county	33	2009	Somewhat	17
county	46	2009	Somewhat	21
county	18	2009	Somewhat	3
county	19	2009	Somewhat	7
county	25	2009	Somewhat	3
county	41	2009	Somewhat	18
county	6	2009	Somewhat	8
county	4	2009	Somewhat	2
county	13	2009	Somewhat	8
county	26	2009	Somewhat	9
county	23	2009	Somewhat	29
county	27	2009	Somewhat	24
county	38	2009	Somewhat	11
county	8	2009	Somewhat	19
county	24	2009	Somewhat	14
\.


--
-- Name: trust_army pk_trust_army; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trust_army
    ADD CONSTRAINT pk_trust_army PRIMARY KEY (geo_level, geo_code, geo_version, trust_army);


--
-- PostgreSQL database dump complete
--

