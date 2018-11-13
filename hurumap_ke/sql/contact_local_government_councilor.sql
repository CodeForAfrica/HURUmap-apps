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

ALTER TABLE IF EXISTS ONLY public.contact_local_government_councilor DROP CONSTRAINT IF EXISTS pk_contact_local_government_councilor;
DROP TABLE IF EXISTS public.contact_local_government_councilor;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: contact_local_government_councilor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contact_local_government_councilor (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    contact_local_government_councilor character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: contact_local_government_councilor; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.contact_local_government_councilor (geo_level, geo_code, geo_version, contact_local_government_councilor, total) FROM stdin;
county	30	2009	A few times	2
county	36	2009	A few times	4
county	39	2009	A few times	11
county	40	2009	A few times	6
county	28	2009	A few times	1
county	14	2009	A few times	5
county	7	2009	A few times	1
county	43	2009	A few times	8
county	11	2009	A few times	2
county	34	2009	A few times	2
county	37	2009	A few times	14
county	35	2009	A few times	5
county	22	2009	A few times	10
county	3	2009	A few times	12
county	20	2009	A few times	3
county	45	2009	A few times	3
county	42	2009	A few times	6
county	15	2009	A few times	2
county	2	2009	A few times	6
county	31	2009	A few times	1
county	5	2009	A few times	1
county	16	2009	A few times	10
county	17	2009	A few times	5
county	9	2009	A few times	2
county	10	2009	A few times	1
county	12	2009	A few times	7
county	44	2009	A few times	3
county	1	2009	A few times	2
county	21	2009	A few times	5
county	47	2009	A few times	9
county	32	2009	A few times	13
county	29	2009	A few times	6
county	33	2009	A few times	5
county	46	2009	A few times	6
county	18	2009	A few times	4
county	19	2009	A few times	1
county	25	2009	A few times	2
county	41	2009	A few times	4
county	4	2009	A few times	1
county	13	2009	A few times	4
county	26	2009	A few times	7
county	23	2009	A few times	8
county	27	2009	A few times	1
county	38	2009	A few times	3
county	8	2009	A few times	1
county	24	2009	A few times	7
county	26	2009	Don�t know	1
county	23	2009	Don�t know	1
county	3	2009	Missing	1
county	47	2009	Missing	1
county	30	2009	Never	26
county	36	2009	Never	32
county	39	2009	Never	59
county	40	2009	Never	32
county	28	2009	Never	10
county	14	2009	Never	29
county	7	2009	Never	26
county	43	2009	Never	40
county	11	2009	Never	4
county	34	2009	Never	42
county	37	2009	Never	77
county	35	2009	Never	24
county	22	2009	Never	94
county	3	2009	Never	46
county	20	2009	Never	29
county	45	2009	Never	64
county	42	2009	Never	42
county	15	2009	Never	49
county	2	2009	Never	32
county	31	2009	Never	22
county	5	2009	Never	6
county	16	2009	Never	53
county	17	2009	Never	44
county	9	2009	Never	44
county	10	2009	Never	11
county	12	2009	Never	63
county	44	2009	Never	35
county	1	2009	Never	62
county	21	2009	Never	52
county	47	2009	Never	209
county	32	2009	Never	75
county	29	2009	Never	29
county	33	2009	Never	31
county	46	2009	Never	32
county	18	2009	Never	30
county	19	2009	Never	40
county	25	2009	Never	5
county	41	2009	Never	38
county	6	2009	Never	14
county	4	2009	Never	7
county	13	2009	Never	12
county	26	2009	Never	30
county	23	2009	Never	25
county	27	2009	Never	44
county	38	2009	Never	24
county	8	2009	Never	28
county	24	2009	Never	12
county	36	2009	Often	2
county	39	2009	Often	3
county	40	2009	Often	1
county	14	2009	Often	1
county	43	2009	Often	2
county	37	2009	Often	2
county	35	2009	Often	1
county	22	2009	Often	4
county	20	2009	Often	1
county	45	2009	Often	1
county	42	2009	Often	1
county	16	2009	Often	1
county	17	2009	Often	1
county	10	2009	Often	1
county	44	2009	Often	2
county	21	2009	Often	4
county	47	2009	Often	10
county	32	2009	Often	1
county	29	2009	Often	2
county	18	2009	Often	2
county	19	2009	Often	1
county	41	2009	Often	2
county	13	2009	Often	1
county	26	2009	Often	4
county	23	2009	Often	1
county	38	2009	Often	1
county	8	2009	Often	1
county	24	2009	Often	1
county	30	2009	Only once	4
county	36	2009	Only once	10
county	39	2009	Only once	7
county	40	2009	Only once	1
county	28	2009	Only once	5
county	14	2009	Only once	5
county	7	2009	Only once	5
county	43	2009	Only once	6
county	11	2009	Only once	2
county	34	2009	Only once	4
county	37	2009	Only once	3
county	35	2009	Only once	10
county	22	2009	Only once	12
county	3	2009	Only once	5
county	20	2009	Only once	7
county	45	2009	Only once	4
county	42	2009	Only once	7
county	15	2009	Only once	5
county	2	2009	Only once	2
county	31	2009	Only once	1
county	5	2009	Only once	1
county	16	2009	Only once	8
county	17	2009	Only once	6
county	9	2009	Only once	2
county	10	2009	Only once	3
county	12	2009	Only once	15
county	44	2009	Only once	8
county	1	2009	Only once	8
county	21	2009	Only once	3
county	47	2009	Only once	19
county	32	2009	Only once	15
county	29	2009	Only once	11
county	33	2009	Only once	12
county	46	2009	Only once	2
county	18	2009	Only once	4
county	19	2009	Only once	6
county	25	2009	Only once	1
county	41	2009	Only once	4
county	6	2009	Only once	2
county	13	2009	Only once	7
county	26	2009	Only once	6
county	23	2009	Only once	13
county	27	2009	Only once	11
county	38	2009	Only once	4
county	8	2009	Only once	2
county	24	2009	Only once	4
\.


--
-- Name: contact_local_government_councilor pk_contact_local_government_councilor; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact_local_government_councilor
    ADD CONSTRAINT pk_contact_local_government_councilor PRIMARY KEY (geo_level, geo_code, geo_version, contact_local_government_councilor);


--
-- PostgreSQL database dump complete
--

