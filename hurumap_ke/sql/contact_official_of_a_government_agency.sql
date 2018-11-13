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

ALTER TABLE IF EXISTS ONLY public.contact_official_of_a_government_agency DROP CONSTRAINT IF EXISTS pk_contact_official_of_a_government_agency;
DROP TABLE IF EXISTS public.contact_official_of_a_government_agency;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: contact_official_of_a_government_agency; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contact_official_of_a_government_agency (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    contact_official_of_a_government_agency character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: contact_official_of_a_government_agency; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.contact_official_of_a_government_agency (geo_level, geo_code, geo_version, contact_official_of_a_government_agency, total) FROM stdin;
county	36	2009	A few times	8
county	39	2009	A few times	4
county	40	2009	A few times	2
county	14	2009	A few times	10
county	7	2009	A few times	3
county	43	2009	A few times	4
county	11	2009	A few times	2
county	34	2009	A few times	2
county	37	2009	A few times	2
county	35	2009	A few times	7
county	22	2009	A few times	9
county	20	2009	A few times	2
county	45	2009	A few times	11
county	42	2009	A few times	2
county	15	2009	A few times	10
county	2	2009	A few times	2
county	5	2009	A few times	2
county	16	2009	A few times	13
county	17	2009	A few times	9
county	9	2009	A few times	4
county	10	2009	A few times	3
county	12	2009	A few times	11
county	44	2009	A few times	11
county	1	2009	A few times	1
county	21	2009	A few times	5
county	47	2009	A few times	20
county	32	2009	A few times	7
county	29	2009	A few times	6
county	33	2009	A few times	4
county	46	2009	A few times	6
county	18	2009	A few times	4
county	19	2009	A few times	6
county	41	2009	A few times	4
county	6	2009	A few times	1
county	4	2009	A few times	1
county	13	2009	A few times	1
county	26	2009	A few times	4
county	23	2009	A few times	2
county	8	2009	A few times	3
county	41	2009	Don�t know	1
county	26	2009	Don�t know	1
county	23	2009	Don�t know	1
county	12	2009	Missing	1
county	32	2009	Missing	1
county	30	2009	Never	24
county	36	2009	Never	30
county	39	2009	Never	73
county	40	2009	Never	37
county	28	2009	Never	13
county	14	2009	Never	25
county	7	2009	Never	26
county	43	2009	Never	45
county	11	2009	Never	5
county	34	2009	Never	40
county	37	2009	Never	93
county	35	2009	Never	25
county	22	2009	Never	101
county	3	2009	Never	63
county	20	2009	Never	30
county	45	2009	Never	53
county	42	2009	Never	47
county	15	2009	Never	38
county	2	2009	Never	34
county	31	2009	Never	22
county	5	2009	Never	6
county	16	2009	Never	45
county	17	2009	Never	44
county	9	2009	Never	32
county	10	2009	Never	11
county	12	2009	Never	71
county	44	2009	Never	31
county	1	2009	Never	65
county	21	2009	Never	46
county	47	2009	Never	201
county	32	2009	Never	80
county	29	2009	Never	35
county	33	2009	Never	39
county	46	2009	Never	27
county	18	2009	Never	30
county	19	2009	Never	36
county	25	2009	Never	7
county	41	2009	Never	33
county	6	2009	Never	14
county	4	2009	Never	6
county	13	2009	Never	19
county	26	2009	Never	40
county	23	2009	Never	40
county	27	2009	Never	47
county	38	2009	Never	31
county	8	2009	Never	24
county	24	2009	Never	18
county	30	2009	Often	1
county	36	2009	Often	2
county	39	2009	Often	1
county	40	2009	Often	1
county	14	2009	Often	2
county	43	2009	Often	1
county	22	2009	Often	1
county	20	2009	Often	3
county	45	2009	Often	2
county	15	2009	Often	4
county	2	2009	Often	1
county	16	2009	Often	9
county	17	2009	Often	1
county	9	2009	Often	1
county	10	2009	Often	1
county	44	2009	Often	3
county	21	2009	Often	8
county	47	2009	Often	2
county	32	2009	Often	1
county	29	2009	Often	1
county	33	2009	Often	1
county	46	2009	Often	5
county	18	2009	Often	3
county	19	2009	Often	2
county	6	2009	Often	1
county	4	2009	Often	1
county	13	2009	Often	1
county	26	2009	Often	2
county	27	2009	Often	1
county	8	2009	Often	2
county	30	2009	Only once	7
county	36	2009	Only once	8
county	39	2009	Only once	2
county	28	2009	Only once	3
county	14	2009	Only once	3
county	7	2009	Only once	3
county	43	2009	Only once	6
county	11	2009	Only once	1
county	34	2009	Only once	6
county	37	2009	Only once	1
county	35	2009	Only once	8
county	22	2009	Only once	9
county	3	2009	Only once	1
county	20	2009	Only once	5
county	45	2009	Only once	6
county	42	2009	Only once	7
county	15	2009	Only once	4
county	2	2009	Only once	3
county	31	2009	Only once	2
county	16	2009	Only once	5
county	17	2009	Only once	2
county	9	2009	Only once	11
county	10	2009	Only once	1
county	12	2009	Only once	2
county	44	2009	Only once	3
county	1	2009	Only once	6
county	21	2009	Only once	5
county	47	2009	Only once	25
county	32	2009	Only once	15
county	29	2009	Only once	6
county	33	2009	Only once	4
county	46	2009	Only once	2
county	18	2009	Only once	3
county	19	2009	Only once	4
county	25	2009	Only once	1
county	41	2009	Only once	10
county	13	2009	Only once	3
county	26	2009	Only once	1
county	23	2009	Only once	5
county	27	2009	Only once	8
county	38	2009	Only once	1
county	8	2009	Only once	3
county	24	2009	Only once	6
\.


--
-- Name: contact_official_of_a_government_agency pk_contact_official_of_a_government_agency; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact_official_of_a_government_agency
    ADD CONSTRAINT pk_contact_official_of_a_government_agency PRIMARY KEY (geo_level, geo_code, geo_version, contact_official_of_a_government_agency);


--
-- PostgreSQL database dump complete
--

