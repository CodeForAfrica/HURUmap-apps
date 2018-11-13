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

ALTER TABLE IF EXISTS ONLY public.trust_your_elected_local_government_council DROP CONSTRAINT IF EXISTS pk_trust_your_elected_local_government_council;
DROP TABLE IF EXISTS public.trust_your_elected_local_government_council;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: trust_your_elected_local_government_council; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trust_your_elected_local_government_council (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    trust_your_elected_local_government_council character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: trust_your_elected_local_government_council; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.trust_your_elected_local_government_council (geo_level, geo_code, geo_version, trust_your_elected_local_government_council, total) FROM stdin;
county	30	2009	A lot	4
county	36	2009	A lot	15
county	39	2009	A lot	19
county	40	2009	A lot	9
county	28	2009	A lot	4
county	14	2009	A lot	6
county	7	2009	A lot	6
county	43	2009	A lot	11
county	11	2009	A lot	1
county	34	2009	A lot	5
county	37	2009	A lot	12
county	35	2009	A lot	8
county	22	2009	A lot	18
county	3	2009	A lot	3
county	20	2009	A lot	5
county	45	2009	A lot	3
county	42	2009	A lot	7
county	15	2009	A lot	12
county	2	2009	A lot	4
county	31	2009	A lot	2
county	5	2009	A lot	1
county	16	2009	A lot	17
county	17	2009	A lot	1
county	9	2009	A lot	7
county	12	2009	A lot	24
county	44	2009	A lot	7
county	1	2009	A lot	2
county	21	2009	A lot	24
county	47	2009	A lot	27
county	32	2009	A lot	15
county	29	2009	A lot	11
county	33	2009	A lot	14
county	46	2009	A lot	4
county	18	2009	A lot	8
county	19	2009	A lot	12
county	25	2009	A lot	1
county	41	2009	A lot	5
county	4	2009	A lot	1
county	13	2009	A lot	5
county	26	2009	A lot	18
county	23	2009	A lot	15
county	27	2009	A lot	3
county	38	2009	A lot	6
county	8	2009	A lot	6
county	24	2009	A lot	9
county	39	2009	Don't know/ Haven't heard enough	4
county	7	2009	Don't know/ Haven't heard enough	7
county	11	2009	Don't know/ Haven't heard enough	1
county	34	2009	Don't know/ Haven't heard enough	2
county	37	2009	Don't know/ Haven't heard enough	1
county	22	2009	Don't know/ Haven't heard enough	7
county	45	2009	Don't know/ Haven't heard enough	1
county	2	2009	Don't know/ Haven't heard enough	1
county	31	2009	Don't know/ Haven't heard enough	5
county	16	2009	Don't know/ Haven't heard enough	1
county	17	2009	Don't know/ Haven't heard enough	4
county	9	2009	Don't know/ Haven't heard enough	9
county	10	2009	Don't know/ Haven't heard enough	2
county	12	2009	Don't know/ Haven't heard enough	3
county	21	2009	Don't know/ Haven't heard enough	1
county	47	2009	Don't know/ Haven't heard enough	17
county	32	2009	Don't know/ Haven't heard enough	5
county	33	2009	Don't know/ Haven't heard enough	3
county	19	2009	Don't know/ Haven't heard enough	1
county	41	2009	Don't know/ Haven't heard enough	1
county	6	2009	Don't know/ Haven't heard enough	2
county	4	2009	Don't know/ Haven't heard enough	2
county	13	2009	Don't know/ Haven't heard enough	2
county	26	2009	Don't know/ Haven't heard enough	1
county	23	2009	Don't know/ Haven't heard enough	1
county	27	2009	Don't know/ Haven't heard enough	1
county	38	2009	Don't know/ Haven't heard enough	2
county	8	2009	Don't know/ Haven't heard enough	3
county	30	2009	Just a little	9
county	36	2009	Just a little	8
county	39	2009	Just a little	22
county	40	2009	Just a little	9
county	28	2009	Just a little	6
county	14	2009	Just a little	11
county	7	2009	Just a little	4
county	43	2009	Just a little	16
county	11	2009	Just a little	1
county	34	2009	Just a little	20
county	37	2009	Just a little	26
county	35	2009	Just a little	9
county	22	2009	Just a little	41
county	3	2009	Just a little	19
county	20	2009	Just a little	21
county	45	2009	Just a little	28
county	42	2009	Just a little	15
county	15	2009	Just a little	9
county	2	2009	Just a little	10
county	31	2009	Just a little	8
county	5	2009	Just a little	2
county	16	2009	Just a little	19
county	17	2009	Just a little	12
county	9	2009	Just a little	14
county	12	2009	Just a little	12
county	44	2009	Just a little	16
county	1	2009	Just a little	18
county	21	2009	Just a little	20
county	47	2009	Just a little	80
county	32	2009	Just a little	34
county	29	2009	Just a little	10
county	33	2009	Just a little	16
county	46	2009	Just a little	19
county	18	2009	Just a little	16
county	19	2009	Just a little	19
county	25	2009	Just a little	4
county	41	2009	Just a little	16
county	6	2009	Just a little	6
county	4	2009	Just a little	1
county	13	2009	Just a little	5
county	26	2009	Just a little	5
county	23	2009	Just a little	10
county	27	2009	Just a little	17
county	38	2009	Just a little	8
county	8	2009	Just a little	9
county	24	2009	Just a little	5
county	30	2009	Not at all	2
county	36	2009	Not at all	4
county	39	2009	Not at all	21
county	40	2009	Not at all	12
county	28	2009	Not at all	2
county	14	2009	Not at all	6
county	43	2009	Not at all	1
county	11	2009	Not at all	2
county	34	2009	Not at all	5
county	37	2009	Not at all	41
county	22	2009	Not at all	23
county	3	2009	Not at all	18
county	20	2009	Not at all	10
county	45	2009	Not at all	9
county	42	2009	Not at all	5
county	15	2009	Not at all	10
county	2	2009	Not at all	13
county	31	2009	Not at all	4
county	5	2009	Not at all	3
county	16	2009	Not at all	11
county	17	2009	Not at all	28
county	9	2009	Not at all	3
county	10	2009	Not at all	6
county	12	2009	Not at all	5
county	44	2009	Not at all	3
county	1	2009	Not at all	20
county	21	2009	Not at all	6
county	47	2009	Not at all	50
county	32	2009	Not at all	5
county	29	2009	Not at all	1
county	33	2009	Not at all	2
county	46	2009	Not at all	5
county	18	2009	Not at all	13
county	19	2009	Not at all	9
county	41	2009	Not at all	2
county	6	2009	Not at all	7
county	4	2009	Not at all	1
county	13	2009	Not at all	4
county	26	2009	Not at all	14
county	23	2009	Not at all	2
county	27	2009	Not at all	4
county	38	2009	Not at all	8
county	8	2009	Not at all	3
county	30	2009	Somewhat	17
county	36	2009	Somewhat	21
county	39	2009	Somewhat	14
county	40	2009	Somewhat	10
county	28	2009	Somewhat	4
county	14	2009	Somewhat	17
county	7	2009	Somewhat	15
county	43	2009	Somewhat	28
county	11	2009	Somewhat	3
county	34	2009	Somewhat	16
county	37	2009	Somewhat	16
county	35	2009	Somewhat	23
county	22	2009	Somewhat	31
county	3	2009	Somewhat	24
county	20	2009	Somewhat	4
county	45	2009	Somewhat	31
county	42	2009	Somewhat	29
county	15	2009	Somewhat	25
county	2	2009	Somewhat	12
county	31	2009	Somewhat	5
county	5	2009	Somewhat	2
county	16	2009	Somewhat	24
county	17	2009	Somewhat	11
county	9	2009	Somewhat	15
county	10	2009	Somewhat	8
county	12	2009	Somewhat	41
county	44	2009	Somewhat	22
county	1	2009	Somewhat	32
county	21	2009	Somewhat	13
county	47	2009	Somewhat	74
county	32	2009	Somewhat	45
county	29	2009	Somewhat	26
county	33	2009	Somewhat	13
county	46	2009	Somewhat	12
county	18	2009	Somewhat	3
county	19	2009	Somewhat	7
county	25	2009	Somewhat	3
county	41	2009	Somewhat	24
county	6	2009	Somewhat	1
county	4	2009	Somewhat	3
county	13	2009	Somewhat	8
county	26	2009	Somewhat	10
county	23	2009	Somewhat	20
county	27	2009	Somewhat	31
county	38	2009	Somewhat	8
county	8	2009	Somewhat	11
county	24	2009	Somewhat	10
\.


--
-- Name: trust_your_elected_local_government_council pk_trust_your_elected_local_government_council; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trust_your_elected_local_government_council
    ADD CONSTRAINT pk_trust_your_elected_local_government_council PRIMARY KEY (geo_level, geo_code, geo_version, trust_your_elected_local_government_council);


--
-- PostgreSQL database dump complete
--

