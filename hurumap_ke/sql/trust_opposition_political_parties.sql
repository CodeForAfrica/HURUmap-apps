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

ALTER TABLE IF EXISTS ONLY public.trust_opposition_political_parties DROP CONSTRAINT IF EXISTS pk_trust_opposition_political_parties;
DROP TABLE IF EXISTS public.trust_opposition_political_parties;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: trust_opposition_political_parties; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trust_opposition_political_parties (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    trust_opposition_political_parties character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: trust_opposition_political_parties; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.trust_opposition_political_parties (geo_level, geo_code, geo_version, trust_opposition_political_parties, total) FROM stdin;
county	30	2009	A lot	2
county	36	2009	A lot	8
county	39	2009	A lot	20
county	40	2009	A lot	6
county	28	2009	A lot	1
county	43	2009	A lot	11
county	11	2009	A lot	1
county	34	2009	A lot	4
county	37	2009	A lot	22
county	35	2009	A lot	12
county	22	2009	A lot	7
county	3	2009	A lot	2
county	20	2009	A lot	6
county	45	2009	A lot	10
county	42	2009	A lot	13
county	15	2009	A lot	9
county	2	2009	A lot	5
county	31	2009	A lot	3
county	16	2009	A lot	10
county	17	2009	A lot	8
county	9	2009	A lot	6
county	12	2009	A lot	8
county	44	2009	A lot	4
county	1	2009	A lot	8
county	21	2009	A lot	10
county	47	2009	A lot	50
county	32	2009	A lot	15
county	29	2009	A lot	3
county	33	2009	A lot	13
county	46	2009	A lot	11
county	18	2009	A lot	1
county	19	2009	A lot	4
county	41	2009	A lot	10
county	6	2009	A lot	2
county	13	2009	A lot	2
county	26	2009	A lot	14
county	23	2009	A lot	20
county	27	2009	A lot	5
county	38	2009	A lot	5
county	8	2009	A lot	5
county	24	2009	A lot	5
county	39	2009	Don't know/ Haven't heard enough	1
county	40	2009	Don't know/ Haven't heard enough	2
county	14	2009	Don't know/ Haven't heard enough	1
county	7	2009	Don't know/ Haven't heard enough	8
county	11	2009	Don't know/ Haven't heard enough	1
county	37	2009	Don't know/ Haven't heard enough	4
county	22	2009	Don't know/ Haven't heard enough	1
county	3	2009	Don't know/ Haven't heard enough	1
county	20	2009	Don't know/ Haven't heard enough	1
county	45	2009	Don't know/ Haven't heard enough	1
county	15	2009	Don't know/ Haven't heard enough	4
county	31	2009	Don't know/ Haven't heard enough	3
county	16	2009	Don't know/ Haven't heard enough	2
county	17	2009	Don't know/ Haven't heard enough	2
county	9	2009	Don't know/ Haven't heard enough	10
county	10	2009	Don't know/ Haven't heard enough	2
county	12	2009	Don't know/ Haven't heard enough	4
county	47	2009	Don't know/ Haven't heard enough	3
county	32	2009	Don't know/ Haven't heard enough	1
county	29	2009	Don't know/ Haven't heard enough	1
county	33	2009	Don't know/ Haven't heard enough	1
county	41	2009	Don't know/ Haven't heard enough	1
county	4	2009	Don't know/ Haven't heard enough	4
county	13	2009	Don't know/ Haven't heard enough	1
county	26	2009	Don't know/ Haven't heard enough	1
county	23	2009	Don't know/ Haven't heard enough	2
county	27	2009	Don't know/ Haven't heard enough	4
county	38	2009	Don't know/ Haven't heard enough	2
county	8	2009	Don't know/ Haven't heard enough	7
county	30	2009	Just a little	18
county	36	2009	Just a little	14
county	39	2009	Just a little	19
county	40	2009	Just a little	7
county	28	2009	Just a little	10
county	14	2009	Just a little	13
county	7	2009	Just a little	8
county	43	2009	Just a little	14
county	11	2009	Just a little	1
county	34	2009	Just a little	17
county	37	2009	Just a little	17
county	35	2009	Just a little	18
county	22	2009	Just a little	36
county	3	2009	Just a little	22
county	20	2009	Just a little	12
county	45	2009	Just a little	31
county	42	2009	Just a little	9
county	15	2009	Just a little	14
county	2	2009	Just a little	10
county	31	2009	Just a little	9
county	5	2009	Just a little	1
county	16	2009	Just a little	21
county	17	2009	Just a little	12
county	9	2009	Just a little	7
county	10	2009	Just a little	3
county	12	2009	Just a little	24
county	44	2009	Just a little	17
county	1	2009	Just a little	19
county	21	2009	Just a little	18
county	47	2009	Just a little	57
county	32	2009	Just a little	49
county	29	2009	Just a little	24
county	33	2009	Just a little	13
county	46	2009	Just a little	12
county	18	2009	Just a little	10
county	19	2009	Just a little	18
county	25	2009	Just a little	2
county	41	2009	Just a little	10
county	6	2009	Just a little	2
county	4	2009	Just a little	1
county	13	2009	Just a little	7
county	26	2009	Just a little	11
county	23	2009	Just a little	7
county	27	2009	Just a little	25
county	38	2009	Just a little	7
county	8	2009	Just a little	6
county	24	2009	Just a little	9
county	16	2009	Missing	1
county	1	2009	Missing	1
county	30	2009	Not at all	7
county	36	2009	Not at all	8
county	39	2009	Not at all	22
county	40	2009	Not at all	13
county	28	2009	Not at all	4
county	14	2009	Not at all	13
county	7	2009	Not at all	6
county	43	2009	Not at all	1
county	11	2009	Not at all	1
county	34	2009	Not at all	10
county	37	2009	Not at all	25
county	35	2009	Not at all	2
county	22	2009	Not at all	47
county	3	2009	Not at all	5
county	20	2009	Not at all	17
county	45	2009	Not at all	6
county	42	2009	Not at all	6
county	15	2009	Not at all	11
county	2	2009	Not at all	6
county	31	2009	Not at all	3
county	5	2009	Not at all	5
county	16	2009	Not at all	15
county	17	2009	Not at all	18
county	9	2009	Not at all	10
county	10	2009	Not at all	2
county	12	2009	Not at all	19
county	44	2009	Not at all	3
county	1	2009	Not at all	6
county	21	2009	Not at all	27
county	47	2009	Not at all	67
county	32	2009	Not at all	19
county	29	2009	Not at all	10
county	33	2009	Not at all	8
county	46	2009	Not at all	3
county	18	2009	Not at all	26
county	19	2009	Not at all	25
county	25	2009	Not at all	1
county	41	2009	Not at all	3
county	6	2009	Not at all	6
county	4	2009	Not at all	2
county	13	2009	Not at all	8
county	26	2009	Not at all	9
county	27	2009	Not at all	7
county	38	2009	Not at all	9
county	8	2009	Not at all	2
county	24	2009	Not at all	5
county	30	2009	Somewhat	5
county	36	2009	Somewhat	18
county	39	2009	Somewhat	18
county	40	2009	Somewhat	12
county	28	2009	Somewhat	1
county	14	2009	Somewhat	13
county	7	2009	Somewhat	10
county	43	2009	Somewhat	30
county	11	2009	Somewhat	4
county	34	2009	Somewhat	17
county	37	2009	Somewhat	28
county	35	2009	Somewhat	8
county	22	2009	Somewhat	29
county	3	2009	Somewhat	34
county	20	2009	Somewhat	4
county	45	2009	Somewhat	24
county	42	2009	Somewhat	28
county	15	2009	Somewhat	18
county	2	2009	Somewhat	19
county	31	2009	Somewhat	6
county	5	2009	Somewhat	2
county	16	2009	Somewhat	23
county	17	2009	Somewhat	16
county	9	2009	Somewhat	15
county	10	2009	Somewhat	9
county	12	2009	Somewhat	30
county	44	2009	Somewhat	24
county	1	2009	Somewhat	38
county	21	2009	Somewhat	9
county	47	2009	Somewhat	71
county	32	2009	Somewhat	20
county	29	2009	Somewhat	10
county	33	2009	Somewhat	13
county	46	2009	Somewhat	14
county	18	2009	Somewhat	3
county	19	2009	Somewhat	1
county	25	2009	Somewhat	5
county	41	2009	Somewhat	24
county	6	2009	Somewhat	6
county	4	2009	Somewhat	1
county	13	2009	Somewhat	6
county	26	2009	Somewhat	13
county	23	2009	Somewhat	19
county	27	2009	Somewhat	15
county	38	2009	Somewhat	9
county	8	2009	Somewhat	12
county	24	2009	Somewhat	5
\.


--
-- Name: trust_opposition_political_parties pk_trust_opposition_political_parties; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trust_opposition_political_parties
    ADD CONSTRAINT pk_trust_opposition_political_parties PRIMARY KEY (geo_level, geo_code, geo_version, trust_opposition_political_parties);


--
-- PostgreSQL database dump complete
--

