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

ALTER TABLE IF EXISTS ONLY public.contact_political_party_official DROP CONSTRAINT IF EXISTS pk_contact_political_party_official;
DROP TABLE IF EXISTS public.contact_political_party_official;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: contact_political_party_official; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contact_political_party_official (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    contact_political_party_official character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: contact_political_party_official; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.contact_political_party_official (geo_level, geo_code, geo_version, contact_political_party_official, total) FROM stdin;
county	36	2009	A few times	6
county	39	2009	A few times	3
county	40	2009	A few times	1
county	28	2009	A few times	1
county	14	2009	A few times	2
county	43	2009	A few times	3
county	34	2009	A few times	2
county	37	2009	A few times	3
county	35	2009	A few times	6
county	22	2009	A few times	4
county	20	2009	A few times	1
county	2	2009	A few times	1
county	16	2009	A few times	3
county	17	2009	A few times	2
county	12	2009	A few times	2
county	44	2009	A few times	4
county	47	2009	A few times	12
county	32	2009	A few times	1
county	33	2009	A few times	3
county	18	2009	A few times	1
county	19	2009	A few times	1
county	25	2009	A few times	1
county	41	2009	A few times	2
county	13	2009	A few times	1
county	26	2009	A few times	1
county	13	2009	Don�t know	1
county	26	2009	Don�t know	1
county	23	2009	Don�t know	2
county	30	2009	Never	29
county	36	2009	Never	38
county	39	2009	Never	75
county	40	2009	Never	38
county	28	2009	Never	15
county	14	2009	Never	34
county	7	2009	Never	31
county	43	2009	Never	51
county	11	2009	Never	8
county	34	2009	Never	46
county	37	2009	Never	89
county	35	2009	Never	32
county	22	2009	Never	113
county	3	2009	Never	62
county	20	2009	Never	36
county	45	2009	Never	72
county	42	2009	Never	52
county	15	2009	Never	50
county	2	2009	Never	38
county	31	2009	Never	24
county	5	2009	Never	8
county	16	2009	Never	61
county	17	2009	Never	51
county	9	2009	Never	44
county	10	2009	Never	15
county	12	2009	Never	76
county	44	2009	Never	44
county	1	2009	Never	65
county	21	2009	Never	61
county	47	2009	Never	222
county	32	2009	Never	96
county	29	2009	Never	45
county	33	2009	Never	39
county	46	2009	Never	40
county	18	2009	Never	38
county	19	2009	Never	44
county	25	2009	Never	6
county	41	2009	Never	44
county	6	2009	Never	15
county	4	2009	Never	8
county	13	2009	Never	20
county	26	2009	Never	46
county	23	2009	Never	45
county	27	2009	Never	56
county	38	2009	Never	30
county	8	2009	Never	32
county	24	2009	Never	23
county	14	2009	Often	1
county	37	2009	Often	1
county	22	2009	Often	2
county	20	2009	Often	1
county	15	2009	Often	2
county	16	2009	Often	1
county	17	2009	Often	1
county	12	2009	Often	2
county	21	2009	Often	2
county	47	2009	Often	4
county	32	2009	Often	1
county	18	2009	Often	1
county	19	2009	Often	1
county	6	2009	Often	1
county	30	2009	Only once	3
county	36	2009	Only once	4
county	39	2009	Only once	2
county	40	2009	Only once	1
county	14	2009	Only once	3
county	7	2009	Only once	1
county	43	2009	Only once	2
county	37	2009	Only once	3
county	35	2009	Only once	2
county	22	2009	Only once	1
county	3	2009	Only once	2
county	20	2009	Only once	2
county	42	2009	Only once	4
county	15	2009	Only once	4
county	2	2009	Only once	1
county	16	2009	Only once	7
county	17	2009	Only once	2
county	9	2009	Only once	4
county	10	2009	Only once	1
county	12	2009	Only once	5
county	1	2009	Only once	7
county	21	2009	Only once	1
county	47	2009	Only once	10
county	32	2009	Only once	6
county	29	2009	Only once	3
county	33	2009	Only once	6
county	19	2009	Only once	2
county	25	2009	Only once	1
county	41	2009	Only once	2
county	13	2009	Only once	2
county	23	2009	Only once	1
county	38	2009	Only once	2
county	24	2009	Only once	1
\.


--
-- Name: contact_political_party_official pk_contact_political_party_official; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact_political_party_official
    ADD CONSTRAINT pk_contact_political_party_official PRIMARY KEY (geo_level, geo_code, geo_version, contact_political_party_official);


--
-- PostgreSQL database dump complete
--

