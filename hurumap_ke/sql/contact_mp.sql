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

ALTER TABLE IF EXISTS ONLY public.contact_mp DROP CONSTRAINT IF EXISTS pk_contact_mp;
DROP TABLE IF EXISTS public.contact_mp;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: contact_mp; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contact_mp (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    contact_mp character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: contact_mp; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.contact_mp (geo_level, geo_code, geo_version, contact_mp, total) FROM stdin;
county	30	2009	A few times	1
county	36	2009	A few times	3
county	39	2009	A few times	4
county	40	2009	A few times	2
county	28	2009	A few times	1
county	14	2009	A few times	2
county	43	2009	A few times	3
county	34	2009	A few times	4
county	37	2009	A few times	4
county	35	2009	A few times	1
county	22	2009	A few times	6
county	20	2009	A few times	2
county	45	2009	A few times	1
county	42	2009	A few times	2
county	15	2009	A few times	3
county	16	2009	A few times	2
county	12	2009	A few times	1
county	44	2009	A few times	3
county	1	2009	A few times	3
county	21	2009	A few times	2
county	47	2009	A few times	5
county	32	2009	A few times	5
county	29	2009	A few times	5
county	33	2009	A few times	1
county	19	2009	A few times	1
county	41	2009	A few times	4
county	13	2009	A few times	1
county	26	2009	A few times	2
county	23	2009	A few times	4
county	27	2009	A few times	2
county	24	2009	A few times	3
county	26	2009	Don�t know	1
county	23	2009	Don�t know	1
county	30	2009	Never	25
county	36	2009	Never	37
county	39	2009	Never	74
county	40	2009	Never	36
county	28	2009	Never	12
county	14	2009	Never	34
county	7	2009	Never	30
county	43	2009	Never	44
county	11	2009	Never	7
county	34	2009	Never	41
county	37	2009	Never	85
county	35	2009	Never	32
county	22	2009	Never	104
county	3	2009	Never	64
county	20	2009	Never	34
county	45	2009	Never	70
county	42	2009	Never	48
county	15	2009	Never	48
county	2	2009	Never	38
county	31	2009	Never	20
county	5	2009	Never	8
county	16	2009	Never	65
county	17	2009	Never	53
county	9	2009	Never	45
county	10	2009	Never	14
county	12	2009	Never	78
county	44	2009	Never	43
county	1	2009	Never	66
county	21	2009	Never	57
county	47	2009	Never	225
county	32	2009	Never	88
county	29	2009	Never	36
county	33	2009	Never	45
county	46	2009	Never	38
county	18	2009	Never	38
county	19	2009	Never	43
county	25	2009	Never	7
county	41	2009	Never	44
county	6	2009	Never	16
county	4	2009	Never	7
county	13	2009	Never	17
county	26	2009	Never	41
county	23	2009	Never	33
county	27	2009	Never	49
county	38	2009	Never	30
county	8	2009	Never	31
county	24	2009	Never	16
county	30	2009	Often	1
county	36	2009	Often	1
county	39	2009	Often	1
county	14	2009	Often	2
county	43	2009	Often	1
county	37	2009	Often	3
county	22	2009	Often	2
county	20	2009	Often	2
county	45	2009	Often	1
county	16	2009	Often	1
county	44	2009	Often	1
county	21	2009	Often	1
county	47	2009	Often	6
county	32	2009	Often	1
county	46	2009	Often	1
county	19	2009	Often	1
county	13	2009	Often	1
county	26	2009	Often	4
county	23	2009	Often	1
county	8	2009	Often	1
county	30	2009	Only once	5
county	36	2009	Only once	7
county	39	2009	Only once	1
county	40	2009	Only once	2
county	28	2009	Only once	3
county	14	2009	Only once	2
county	7	2009	Only once	2
county	43	2009	Only once	8
county	11	2009	Only once	1
county	34	2009	Only once	3
county	37	2009	Only once	4
county	35	2009	Only once	7
county	22	2009	Only once	8
county	20	2009	Only once	2
county	42	2009	Only once	6
county	15	2009	Only once	5
county	2	2009	Only once	2
county	31	2009	Only once	4
county	16	2009	Only once	4
county	17	2009	Only once	3
county	9	2009	Only once	3
county	10	2009	Only once	2
county	12	2009	Only once	6
county	44	2009	Only once	1
county	1	2009	Only once	3
county	21	2009	Only once	4
county	47	2009	Only once	12
county	32	2009	Only once	10
county	29	2009	Only once	7
county	33	2009	Only once	2
county	46	2009	Only once	1
county	18	2009	Only once	2
county	19	2009	Only once	3
county	25	2009	Only once	1
county	4	2009	Only once	1
county	13	2009	Only once	5
county	23	2009	Only once	9
county	27	2009	Only once	5
county	38	2009	Only once	2
county	24	2009	Only once	5
\.


--
-- Name: contact_mp pk_contact_mp; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact_mp
    ADD CONSTRAINT pk_contact_mp PRIMARY KEY (geo_level, geo_code, geo_version, contact_mp);


--
-- PostgreSQL database dump complete
--

