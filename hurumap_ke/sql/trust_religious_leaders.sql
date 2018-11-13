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

ALTER TABLE IF EXISTS ONLY public.trust_religious_leaders DROP CONSTRAINT IF EXISTS pk_trust_religious_leaders;
DROP TABLE IF EXISTS public.trust_religious_leaders;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: trust_religious_leaders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trust_religious_leaders (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    trust_religious_leaders character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: trust_religious_leaders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.trust_religious_leaders (geo_level, geo_code, geo_version, trust_religious_leaders, total) FROM stdin;
county	30	2009	A lot	20
county	36	2009	A lot	32
county	39	2009	A lot	43
county	40	2009	A lot	12
county	28	2009	A lot	11
county	14	2009	A lot	15
county	7	2009	A lot	23
county	43	2009	A lot	22
county	11	2009	A lot	5
county	34	2009	A lot	13
county	37	2009	A lot	41
county	35	2009	A lot	22
county	22	2009	A lot	43
county	3	2009	A lot	27
county	20	2009	A lot	21
county	45	2009	A lot	22
county	42	2009	A lot	28
county	15	2009	A lot	24
county	2	2009	A lot	20
county	31	2009	A lot	11
county	5	2009	A lot	3
county	16	2009	A lot	35
county	17	2009	A lot	15
county	9	2009	A lot	29
county	10	2009	A lot	9
county	12	2009	A lot	30
county	44	2009	A lot	22
county	1	2009	A lot	23
county	21	2009	A lot	34
county	47	2009	A lot	77
county	32	2009	A lot	57
county	29	2009	A lot	28
county	33	2009	A lot	30
county	46	2009	A lot	14
county	18	2009	A lot	20
county	19	2009	A lot	22
county	25	2009	A lot	3
county	41	2009	A lot	27
county	6	2009	A lot	4
county	4	2009	A lot	7
county	13	2009	A lot	8
county	26	2009	A lot	33
county	23	2009	A lot	30
county	27	2009	A lot	25
county	38	2009	A lot	12
county	8	2009	A lot	23
county	24	2009	A lot	13
county	39	2009	Don't know/ Haven't heard enough	1
county	40	2009	Don't know/ Haven't heard enough	1
county	14	2009	Don't know/ Haven't heard enough	1
county	7	2009	Don't know/ Haven't heard enough	2
county	11	2009	Don't know/ Haven't heard enough	1
county	34	2009	Don't know/ Haven't heard enough	3
county	35	2009	Don't know/ Haven't heard enough	1
county	15	2009	Don't know/ Haven't heard enough	1
county	31	2009	Don't know/ Haven't heard enough	2
county	16	2009	Don't know/ Haven't heard enough	1
county	17	2009	Don't know/ Haven't heard enough	1
county	9	2009	Don't know/ Haven't heard enough	3
county	12	2009	Don't know/ Haven't heard enough	2
county	1	2009	Don't know/ Haven't heard enough	1
county	21	2009	Don't know/ Haven't heard enough	2
county	47	2009	Don't know/ Haven't heard enough	6
county	4	2009	Don't know/ Haven't heard enough	1
county	26	2009	Don't know/ Haven't heard enough	1
county	27	2009	Don't know/ Haven't heard enough	1
county	8	2009	Don't know/ Haven't heard enough	1
county	36	2009	Just a little	4
county	39	2009	Just a little	12
county	40	2009	Just a little	6
county	28	2009	Just a little	1
county	14	2009	Just a little	10
county	43	2009	Just a little	3
county	34	2009	Just a little	7
county	37	2009	Just a little	13
county	35	2009	Just a little	7
county	22	2009	Just a little	26
county	3	2009	Just a little	14
county	20	2009	Just a little	9
county	45	2009	Just a little	4
county	42	2009	Just a little	9
county	15	2009	Just a little	7
county	2	2009	Just a little	7
county	31	2009	Just a little	3
county	5	2009	Just a little	1
county	16	2009	Just a little	11
county	17	2009	Just a little	12
county	9	2009	Just a little	1
county	10	2009	Just a little	1
county	12	2009	Just a little	10
county	44	2009	Just a little	4
county	1	2009	Just a little	8
county	21	2009	Just a little	12
county	47	2009	Just a little	49
county	32	2009	Just a little	11
county	29	2009	Just a little	1
county	33	2009	Just a little	4
county	46	2009	Just a little	1
county	18	2009	Just a little	9
county	19	2009	Just a little	9
county	41	2009	Just a little	3
county	6	2009	Just a little	1
county	13	2009	Just a little	3
county	26	2009	Just a little	3
county	23	2009	Just a little	1
county	27	2009	Just a little	2
county	38	2009	Just a little	5
county	8	2009	Just a little	2
county	16	2009	Missing	1
county	12	2009	Missing	1
county	39	2009	Not at all	6
county	40	2009	Not at all	5
county	14	2009	Not at all	3
county	34	2009	Not at all	1
county	37	2009	Not at all	12
county	22	2009	Not at all	14
county	3	2009	Not at all	1
county	20	2009	Not at all	3
county	45	2009	Not at all	1
county	42	2009	Not at all	2
county	2	2009	Not at all	1
county	16	2009	Not at all	2
county	17	2009	Not at all	11
county	9	2009	Not at all	1
county	10	2009	Not at all	1
county	12	2009	Not at all	1
county	1	2009	Not at all	6
county	21	2009	Not at all	1
county	47	2009	Not at all	32
county	32	2009	Not at all	5
county	33	2009	Not at all	1
county	18	2009	Not at all	1
county	19	2009	Not at all	7
county	25	2009	Not at all	1
county	6	2009	Not at all	5
county	26	2009	Not at all	1
county	27	2009	Not at all	1
county	38	2009	Not at all	3
county	24	2009	Not at all	1
county	30	2009	Somewhat	12
county	36	2009	Somewhat	12
county	39	2009	Somewhat	18
county	40	2009	Somewhat	16
county	28	2009	Somewhat	4
county	14	2009	Somewhat	11
county	7	2009	Somewhat	7
county	43	2009	Somewhat	31
county	11	2009	Somewhat	2
county	34	2009	Somewhat	24
county	37	2009	Somewhat	30
county	35	2009	Somewhat	10
county	22	2009	Somewhat	37
county	3	2009	Somewhat	22
county	20	2009	Somewhat	7
county	45	2009	Somewhat	45
county	42	2009	Somewhat	17
county	15	2009	Somewhat	24
county	2	2009	Somewhat	12
county	31	2009	Somewhat	8
county	5	2009	Somewhat	4
county	16	2009	Somewhat	22
county	17	2009	Somewhat	17
county	9	2009	Somewhat	14
county	10	2009	Somewhat	5
county	12	2009	Somewhat	41
county	44	2009	Somewhat	22
county	1	2009	Somewhat	34
county	21	2009	Somewhat	15
county	47	2009	Somewhat	84
county	32	2009	Somewhat	31
county	29	2009	Somewhat	19
county	33	2009	Somewhat	13
county	46	2009	Somewhat	25
county	18	2009	Somewhat	10
county	19	2009	Somewhat	10
county	25	2009	Somewhat	4
county	41	2009	Somewhat	18
county	6	2009	Somewhat	6
county	13	2009	Somewhat	13
county	26	2009	Somewhat	10
county	23	2009	Somewhat	17
county	27	2009	Somewhat	27
county	38	2009	Somewhat	12
county	8	2009	Somewhat	6
county	24	2009	Somewhat	10
\.


--
-- Name: trust_religious_leaders pk_trust_religious_leaders; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trust_religious_leaders
    ADD CONSTRAINT pk_trust_religious_leaders PRIMARY KEY (geo_level, geo_code, geo_version, trust_religious_leaders);


--
-- PostgreSQL database dump complete
--

