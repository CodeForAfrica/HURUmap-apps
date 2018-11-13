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

ALTER TABLE IF EXISTS ONLY public.trust_tax_department DROP CONSTRAINT IF EXISTS pk_trust_tax_department;
DROP TABLE IF EXISTS public.trust_tax_department;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: trust_tax_department; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trust_tax_department (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    trust_tax_department character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: trust_tax_department; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.trust_tax_department (geo_level, geo_code, geo_version, trust_tax_department, total) FROM stdin;
county	30	2009	A lot	5
county	36	2009	A lot	10
county	39	2009	A lot	17
county	40	2009	A lot	7
county	28	2009	A lot	4
county	14	2009	A lot	5
county	43	2009	A lot	4
county	11	2009	A lot	1
county	34	2009	A lot	5
county	37	2009	A lot	10
county	35	2009	A lot	10
county	22	2009	A lot	47
county	20	2009	A lot	14
county	45	2009	A lot	2
county	42	2009	A lot	5
county	15	2009	A lot	9
county	2	2009	A lot	4
county	31	2009	A lot	6
county	5	2009	A lot	1
county	16	2009	A lot	4
county	17	2009	A lot	3
county	9	2009	A lot	2
county	12	2009	A lot	11
county	44	2009	A lot	2
county	1	2009	A lot	1
county	21	2009	A lot	31
county	47	2009	A lot	40
county	32	2009	A lot	21
county	29	2009	A lot	12
county	33	2009	A lot	12
county	46	2009	A lot	2
county	18	2009	A lot	14
county	19	2009	A lot	19
county	25	2009	A lot	1
county	41	2009	A lot	2
county	13	2009	A lot	1
county	26	2009	A lot	18
county	23	2009	A lot	9
county	27	2009	A lot	5
county	38	2009	A lot	3
county	8	2009	A lot	2
county	24	2009	A lot	4
county	30	2009	Don't know/ Haven't heard enough	1
county	36	2009	Don't know/ Haven't heard enough	2
county	39	2009	Don't know/ Haven't heard enough	11
county	40	2009	Don't know/ Haven't heard enough	9
county	28	2009	Don't know/ Haven't heard enough	2
county	14	2009	Don't know/ Haven't heard enough	11
county	7	2009	Don't know/ Haven't heard enough	15
county	43	2009	Don't know/ Haven't heard enough	5
county	11	2009	Don't know/ Haven't heard enough	3
county	34	2009	Don't know/ Haven't heard enough	2
county	37	2009	Don't know/ Haven't heard enough	15
county	35	2009	Don't know/ Haven't heard enough	4
county	22	2009	Don't know/ Haven't heard enough	3
county	3	2009	Don't know/ Haven't heard enough	5
county	45	2009	Don't know/ Haven't heard enough	6
county	42	2009	Don't know/ Haven't heard enough	3
county	15	2009	Don't know/ Haven't heard enough	17
county	2	2009	Don't know/ Haven't heard enough	3
county	31	2009	Don't know/ Haven't heard enough	5
county	5	2009	Don't know/ Haven't heard enough	2
county	16	2009	Don't know/ Haven't heard enough	19
county	17	2009	Don't know/ Haven't heard enough	12
county	9	2009	Don't know/ Haven't heard enough	20
county	10	2009	Don't know/ Haven't heard enough	6
county	12	2009	Don't know/ Haven't heard enough	27
county	44	2009	Don't know/ Haven't heard enough	5
county	1	2009	Don't know/ Haven't heard enough	4
county	21	2009	Don't know/ Haven't heard enough	1
county	47	2009	Don't know/ Haven't heard enough	21
county	32	2009	Don't know/ Haven't heard enough	9
county	29	2009	Don't know/ Haven't heard enough	5
county	33	2009	Don't know/ Haven't heard enough	7
county	46	2009	Don't know/ Haven't heard enough	1
county	18	2009	Don't know/ Haven't heard enough	1
county	25	2009	Don't know/ Haven't heard enough	2
county	41	2009	Don't know/ Haven't heard enough	13
county	6	2009	Don't know/ Haven't heard enough	5
county	4	2009	Don't know/ Haven't heard enough	7
county	13	2009	Don't know/ Haven't heard enough	3
county	26	2009	Don't know/ Haven't heard enough	7
county	23	2009	Don't know/ Haven't heard enough	14
county	27	2009	Don't know/ Haven't heard enough	4
county	38	2009	Don't know/ Haven't heard enough	4
county	8	2009	Don't know/ Haven't heard enough	10
county	24	2009	Don't know/ Haven't heard enough	6
county	30	2009	Just a little	8
county	36	2009	Just a little	14
county	39	2009	Just a little	18
county	40	2009	Just a little	10
county	28	2009	Just a little	5
county	14	2009	Just a little	7
county	7	2009	Just a little	10
county	43	2009	Just a little	21
county	34	2009	Just a little	19
county	37	2009	Just a little	20
county	35	2009	Just a little	7
county	22	2009	Just a little	23
county	3	2009	Just a little	27
county	20	2009	Just a little	12
county	45	2009	Just a little	26
county	42	2009	Just a little	17
county	15	2009	Just a little	7
county	2	2009	Just a little	13
county	31	2009	Just a little	6
county	5	2009	Just a little	2
county	16	2009	Just a little	13
county	17	2009	Just a little	7
county	9	2009	Just a little	15
county	10	2009	Just a little	2
county	12	2009	Just a little	8
county	44	2009	Just a little	12
county	1	2009	Just a little	23
county	21	2009	Just a little	16
county	47	2009	Just a little	69
county	32	2009	Just a little	20
county	29	2009	Just a little	8
county	33	2009	Just a little	12
county	46	2009	Just a little	19
county	18	2009	Just a little	14
county	19	2009	Just a little	20
county	25	2009	Just a little	1
county	41	2009	Just a little	13
county	6	2009	Just a little	4
county	13	2009	Just a little	3
county	26	2009	Just a little	5
county	23	2009	Just a little	16
county	27	2009	Just a little	17
county	38	2009	Just a little	7
county	8	2009	Just a little	10
county	24	2009	Just a little	5
county	36	2009	Not at all	4
county	39	2009	Not at all	18
county	40	2009	Not at all	5
county	28	2009	Not at all	2
county	14	2009	Not at all	5
county	43	2009	Not at all	4
county	11	2009	Not at all	2
county	34	2009	Not at all	4
county	37	2009	Not at all	36
county	22	2009	Not at all	12
county	3	2009	Not at all	18
county	20	2009	Not at all	2
county	45	2009	Not at all	11
county	42	2009	Not at all	11
county	15	2009	Not at all	6
county	2	2009	Not at all	8
county	16	2009	Not at all	8
county	17	2009	Not at all	8
county	9	2009	Not at all	4
county	10	2009	Not at all	3
county	12	2009	Not at all	5
county	44	2009	Not at all	9
county	1	2009	Not at all	17
county	21	2009	Not at all	5
county	47	2009	Not at all	39
county	32	2009	Not at all	3
county	29	2009	Not at all	2
county	33	2009	Not at all	2
county	46	2009	Not at all	4
county	18	2009	Not at all	6
county	19	2009	Not at all	5
county	25	2009	Not at all	1
county	41	2009	Not at all	4
county	6	2009	Not at all	4
county	4	2009	Not at all	1
county	13	2009	Not at all	3
county	26	2009	Not at all	9
county	23	2009	Not at all	2
county	27	2009	Not at all	3
county	38	2009	Not at all	11
county	8	2009	Not at all	3
county	30	2009	Somewhat	18
county	36	2009	Somewhat	18
county	39	2009	Somewhat	16
county	40	2009	Somewhat	9
county	28	2009	Somewhat	3
county	14	2009	Somewhat	12
county	7	2009	Somewhat	7
county	43	2009	Somewhat	22
county	11	2009	Somewhat	2
county	34	2009	Somewhat	18
county	37	2009	Somewhat	15
county	35	2009	Somewhat	19
county	22	2009	Somewhat	35
county	3	2009	Somewhat	14
county	20	2009	Somewhat	12
county	45	2009	Somewhat	27
county	42	2009	Somewhat	20
county	15	2009	Somewhat	17
county	2	2009	Somewhat	12
county	31	2009	Somewhat	7
county	5	2009	Somewhat	3
county	16	2009	Somewhat	28
county	17	2009	Somewhat	26
county	9	2009	Somewhat	7
county	10	2009	Somewhat	5
county	12	2009	Somewhat	34
county	44	2009	Somewhat	20
county	1	2009	Somewhat	27
county	21	2009	Somewhat	11
county	47	2009	Somewhat	79
county	32	2009	Somewhat	51
county	29	2009	Somewhat	21
county	33	2009	Somewhat	15
county	46	2009	Somewhat	14
county	18	2009	Somewhat	5
county	19	2009	Somewhat	4
county	25	2009	Somewhat	3
county	41	2009	Somewhat	16
county	6	2009	Somewhat	3
county	13	2009	Somewhat	14
county	26	2009	Somewhat	9
county	23	2009	Somewhat	7
county	27	2009	Somewhat	27
county	38	2009	Somewhat	7
county	8	2009	Somewhat	7
county	24	2009	Somewhat	9
\.


--
-- Name: trust_tax_department pk_trust_tax_department; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trust_tax_department
    ADD CONSTRAINT pk_trust_tax_department PRIMARY KEY (geo_level, geo_code, geo_version, trust_tax_department);


--
-- PostgreSQL database dump complete
--

