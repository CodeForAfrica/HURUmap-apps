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

ALTER TABLE IF EXISTS ONLY public.contact_with_government_court_or_tribunal DROP CONSTRAINT IF EXISTS pk_contact_with_government_court_or_tribunal;
DROP TABLE IF EXISTS public.contact_with_government_court_or_tribunal;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: contact_with_government_court_or_tribunal; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contact_with_government_court_or_tribunal (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    contact_with_government_court_or_tribunal character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: contact_with_government_court_or_tribunal; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.contact_with_government_court_or_tribunal (geo_level, geo_code, geo_version, contact_with_government_court_or_tribunal, total) FROM stdin;
county	36	2009	Don't know / Can't remember	1
county	7	2009	Don't know / Can't remember	1
county	1	2009	Don't know / Can't remember	1
county	47	2009	Don't know / Can't remember	10
county	32	2009	Don't know / Can't remember	1
county	33	2009	Don't know / Can't remember	1
county	41	2009	Don't know / Can't remember	1
county	13	2009	Don't know / Can't remember	1
county	38	2009	Don't know / Can't remember	1
county	39	2009	Missing	1
county	34	2009	Missing	2
county	15	2009	Missing	1
county	12	2009	Missing	1
county	47	2009	Missing	2
county	29	2009	Missing	1
county	13	2009	Missing	1
county	26	2009	Missing	1
county	30	2009	Never	30
county	36	2009	Never	38
county	39	2009	Never	70
county	40	2009	Never	36
county	28	2009	Never	16
county	14	2009	Never	33
county	7	2009	Never	31
county	43	2009	Never	53
county	11	2009	Never	7
county	34	2009	Never	36
county	37	2009	Never	90
county	35	2009	Never	37
county	22	2009	Never	109
county	3	2009	Never	60
county	20	2009	Never	32
county	45	2009	Never	67
county	42	2009	Never	52
county	15	2009	Never	43
county	2	2009	Never	38
county	31	2009	Never	24
county	5	2009	Never	5
county	16	2009	Never	57
county	17	2009	Never	44
county	9	2009	Never	48
county	10	2009	Never	16
county	12	2009	Never	67
county	44	2009	Never	46
county	1	2009	Never	67
county	21	2009	Never	60
county	47	2009	Never	202
county	32	2009	Never	93
county	29	2009	Never	42
county	33	2009	Never	45
county	46	2009	Never	35
county	18	2009	Never	36
county	19	2009	Never	43
county	25	2009	Never	8
county	41	2009	Never	45
county	6	2009	Never	14
county	4	2009	Never	7
county	13	2009	Never	15
county	26	2009	Never	44
county	23	2009	Never	46
county	27	2009	Never	50
county	38	2009	Never	31
county	8	2009	Never	31
county	24	2009	Never	22
county	30	2009	Once	2
county	36	2009	Once	5
county	39	2009	Once	7
county	40	2009	Once	1
county	14	2009	Once	5
county	43	2009	Once	3
county	34	2009	Once	7
county	37	2009	Once	5
county	35	2009	Once	3
county	22	2009	Once	7
county	3	2009	Once	3
county	20	2009	Once	6
county	45	2009	Once	2
county	42	2009	Once	3
county	15	2009	Once	8
county	2	2009	Once	1
county	5	2009	Once	3
county	16	2009	Once	10
county	17	2009	Once	8
county	12	2009	Once	11
county	44	2009	Once	2
county	1	2009	Once	3
county	21	2009	Once	3
county	47	2009	Once	24
county	32	2009	Once	5
county	29	2009	Once	4
county	33	2009	Once	1
county	46	2009	Once	4
county	18	2009	Once	3
county	19	2009	Once	2
county	41	2009	Once	2
county	6	2009	Once	2
county	13	2009	Once	7
county	26	2009	Once	3
county	23	2009	Once	1
county	27	2009	Once	6
county	8	2009	Once	1
county	24	2009	Once	1
county	36	2009	Three or more times	2
county	40	2009	Three or more times	2
county	34	2009	Three or more times	1
county	22	2009	Three or more times	1
county	45	2009	Three or more times	3
county	42	2009	Three or more times	1
county	15	2009	Three or more times	1
county	2	2009	Three or more times	1
county	17	2009	Three or more times	3
county	12	2009	Three or more times	3
county	47	2009	Three or more times	4
county	32	2009	Three or more times	1
county	29	2009	Three or more times	1
county	46	2009	Three or more times	1
county	18	2009	Three or more times	1
county	19	2009	Three or more times	3
county	4	2009	Three or more times	1
county	36	2009	Twice	2
county	39	2009	Twice	2
county	40	2009	Twice	1
county	14	2009	Twice	2
county	11	2009	Twice	1
county	34	2009	Twice	2
county	37	2009	Twice	1
county	22	2009	Twice	3
county	3	2009	Twice	1
county	20	2009	Twice	2
county	15	2009	Twice	3
county	16	2009	Twice	5
county	17	2009	Twice	1
county	12	2009	Twice	3
county	1	2009	Twice	1
county	21	2009	Twice	1
county	47	2009	Twice	6
county	32	2009	Twice	4
county	33	2009	Twice	1
county	23	2009	Twice	1
county	24	2009	Twice	1
\.


--
-- Name: contact_with_government_court_or_tribunal pk_contact_with_government_court_or_tribunal; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact_with_government_court_or_tribunal
    ADD CONSTRAINT pk_contact_with_government_court_or_tribunal PRIMARY KEY (geo_level, geo_code, geo_version, contact_with_government_court_or_tribunal);


--
-- PostgreSQL database dump complete
--

