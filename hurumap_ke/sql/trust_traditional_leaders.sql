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

ALTER TABLE IF EXISTS ONLY public.trust_traditional_leaders DROP CONSTRAINT IF EXISTS pk_trust_traditional_leaders;
DROP TABLE IF EXISTS public.trust_traditional_leaders;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: trust_traditional_leaders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trust_traditional_leaders (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    trust_traditional_leaders character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: trust_traditional_leaders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.trust_traditional_leaders (geo_level, geo_code, geo_version, trust_traditional_leaders, total) FROM stdin;
county	30	2009	A lot	12
county	36	2009	A lot	24
county	39	2009	A lot	28
county	40	2009	A lot	10
county	28	2009	A lot	8
county	14	2009	A lot	12
county	7	2009	A lot	15
county	43	2009	A lot	19
county	11	2009	A lot	4
county	34	2009	A lot	15
county	37	2009	A lot	24
county	35	2009	A lot	22
county	22	2009	A lot	38
county	3	2009	A lot	20
county	20	2009	A lot	17
county	45	2009	A lot	10
county	42	2009	A lot	18
county	15	2009	A lot	19
county	2	2009	A lot	15
county	31	2009	A lot	17
county	16	2009	A lot	26
county	17	2009	A lot	7
county	9	2009	A lot	19
county	10	2009	A lot	7
county	12	2009	A lot	22
county	44	2009	A lot	19
county	1	2009	A lot	15
county	21	2009	A lot	32
county	47	2009	A lot	54
county	32	2009	A lot	43
county	29	2009	A lot	21
county	33	2009	A lot	31
county	46	2009	A lot	4
county	18	2009	A lot	15
county	19	2009	A lot	19
county	25	2009	A lot	4
county	41	2009	A lot	21
county	6	2009	A lot	4
county	4	2009	A lot	7
county	13	2009	A lot	5
county	26	2009	A lot	24
county	23	2009	A lot	31
county	27	2009	A lot	15
county	38	2009	A lot	8
county	8	2009	A lot	16
county	24	2009	A lot	16
county	39	2009	Don't know/ Haven't heard enough	4
county	40	2009	Don't know/ Haven't heard enough	1
county	7	2009	Don't know/ Haven't heard enough	5
county	11	2009	Don't know/ Haven't heard enough	1
county	34	2009	Don't know/ Haven't heard enough	4
county	37	2009	Don't know/ Haven't heard enough	1
county	35	2009	Don't know/ Haven't heard enough	1
county	22	2009	Don't know/ Haven't heard enough	11
county	3	2009	Don't know/ Haven't heard enough	2
county	20	2009	Don't know/ Haven't heard enough	2
county	45	2009	Don't know/ Haven't heard enough	1
county	42	2009	Don't know/ Haven't heard enough	2
county	15	2009	Don't know/ Haven't heard enough	2
county	2	2009	Don't know/ Haven't heard enough	2
county	16	2009	Don't know/ Haven't heard enough	6
county	17	2009	Don't know/ Haven't heard enough	4
county	9	2009	Don't know/ Haven't heard enough	5
county	12	2009	Don't know/ Haven't heard enough	1
county	1	2009	Don't know/ Haven't heard enough	4
county	21	2009	Don't know/ Haven't heard enough	2
county	47	2009	Don't know/ Haven't heard enough	35
county	32	2009	Don't know/ Haven't heard enough	4
county	29	2009	Don't know/ Haven't heard enough	1
county	33	2009	Don't know/ Haven't heard enough	1
county	19	2009	Don't know/ Haven't heard enough	1
county	41	2009	Don't know/ Haven't heard enough	1
county	6	2009	Don't know/ Haven't heard enough	1
county	4	2009	Don't know/ Haven't heard enough	1
county	13	2009	Don't know/ Haven't heard enough	2
county	26	2009	Don't know/ Haven't heard enough	1
county	23	2009	Don't know/ Haven't heard enough	1
county	27	2009	Don't know/ Haven't heard enough	5
county	38	2009	Don't know/ Haven't heard enough	1
county	8	2009	Don't know/ Haven't heard enough	5
county	30	2009	Just a little	1
county	36	2009	Just a little	4
county	39	2009	Just a little	15
county	40	2009	Just a little	9
county	14	2009	Just a little	14
county	7	2009	Just a little	1
county	43	2009	Just a little	6
county	34	2009	Just a little	7
county	37	2009	Just a little	15
county	35	2009	Just a little	1
county	22	2009	Just a little	23
county	3	2009	Just a little	10
county	20	2009	Just a little	8
county	45	2009	Just a little	14
county	42	2009	Just a little	7
county	15	2009	Just a little	18
county	2	2009	Just a little	9
county	31	2009	Just a little	1
county	5	2009	Just a little	3
county	16	2009	Just a little	20
county	17	2009	Just a little	10
county	9	2009	Just a little	3
county	10	2009	Just a little	2
county	12	2009	Just a little	27
county	44	2009	Just a little	11
county	1	2009	Just a little	14
county	21	2009	Just a little	8
county	47	2009	Just a little	44
county	32	2009	Just a little	9
county	29	2009	Just a little	1
county	33	2009	Just a little	3
county	46	2009	Just a little	8
county	18	2009	Just a little	12
county	19	2009	Just a little	14
county	25	2009	Just a little	1
county	41	2009	Just a little	4
county	6	2009	Just a little	3
county	13	2009	Just a little	3
county	26	2009	Just a little	5
county	23	2009	Just a little	1
county	27	2009	Just a little	7
county	38	2009	Just a little	4
county	36	2009	Not at all	2
county	39	2009	Not at all	12
county	40	2009	Not at all	8
county	28	2009	Not at all	1
county	14	2009	Not at all	2
county	43	2009	Not at all	1
county	34	2009	Not at all	2
county	37	2009	Not at all	26
county	35	2009	Not at all	2
county	22	2009	Not at all	12
county	3	2009	Not at all	3
county	20	2009	Not at all	5
county	45	2009	Not at all	1
county	42	2009	Not at all	1
county	15	2009	Not at all	2
county	2	2009	Not at all	6
county	5	2009	Not at all	1
county	16	2009	Not at all	7
county	17	2009	Not at all	16
county	9	2009	Not at all	3
county	10	2009	Not at all	1
county	12	2009	Not at all	7
county	44	2009	Not at all	1
county	1	2009	Not at all	10
county	21	2009	Not at all	4
county	47	2009	Not at all	30
county	32	2009	Not at all	4
county	29	2009	Not at all	1
county	33	2009	Not at all	1
county	46	2009	Not at all	1
county	18	2009	Not at all	5
county	19	2009	Not at all	3
county	25	2009	Not at all	1
county	6	2009	Not at all	2
county	13	2009	Not at all	1
county	26	2009	Not at all	6
county	27	2009	Not at all	2
county	38	2009	Not at all	6
county	8	2009	Not at all	1
county	30	2009	Somewhat	19
county	36	2009	Somewhat	18
county	39	2009	Somewhat	21
county	40	2009	Somewhat	12
county	28	2009	Somewhat	7
county	14	2009	Somewhat	12
county	7	2009	Somewhat	11
county	43	2009	Somewhat	30
county	11	2009	Somewhat	3
county	34	2009	Somewhat	20
county	37	2009	Somewhat	30
county	35	2009	Somewhat	14
county	22	2009	Somewhat	36
county	3	2009	Somewhat	29
county	20	2009	Somewhat	8
county	45	2009	Somewhat	46
county	42	2009	Somewhat	28
county	15	2009	Somewhat	15
county	2	2009	Somewhat	8
county	31	2009	Somewhat	6
county	5	2009	Somewhat	4
county	16	2009	Somewhat	13
county	17	2009	Somewhat	19
county	9	2009	Somewhat	18
county	10	2009	Somewhat	6
county	12	2009	Somewhat	28
county	44	2009	Somewhat	17
county	1	2009	Somewhat	29
county	21	2009	Somewhat	18
county	47	2009	Somewhat	85
county	32	2009	Somewhat	44
county	29	2009	Somewhat	24
county	33	2009	Somewhat	12
county	46	2009	Somewhat	27
county	18	2009	Somewhat	8
county	19	2009	Somewhat	11
county	25	2009	Somewhat	2
county	41	2009	Somewhat	22
county	6	2009	Somewhat	6
county	13	2009	Somewhat	13
county	26	2009	Somewhat	12
county	23	2009	Somewhat	15
county	27	2009	Somewhat	27
county	38	2009	Somewhat	13
county	8	2009	Somewhat	10
county	24	2009	Somewhat	8
\.


--
-- Name: trust_traditional_leaders pk_trust_traditional_leaders; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trust_traditional_leaders
    ADD CONSTRAINT pk_trust_traditional_leaders PRIMARY KEY (geo_level, geo_code, geo_version, trust_traditional_leaders);


--
-- PostgreSQL database dump complete
--

