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

ALTER TABLE IF EXISTS ONLY public.contact_traditional_leader DROP CONSTRAINT IF EXISTS pk_contact_traditional_leader;
DROP TABLE IF EXISTS public.contact_traditional_leader;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: contact_traditional_leader; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contact_traditional_leader (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    contact_traditional_leader character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: contact_traditional_leader; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.contact_traditional_leader (geo_level, geo_code, geo_version, contact_traditional_leader, total) FROM stdin;
county	30	2009	A few times	6
county	36	2009	A few times	16
county	39	2009	A few times	10
county	40	2009	A few times	6
county	28	2009	A few times	4
county	14	2009	A few times	5
county	7	2009	A few times	3
county	43	2009	A few times	17
county	11	2009	A few times	2
county	34	2009	A few times	8
county	37	2009	A few times	16
county	35	2009	A few times	11
county	22	2009	A few times	11
county	3	2009	A few times	19
county	20	2009	A few times	2
county	45	2009	A few times	17
county	42	2009	A few times	17
county	15	2009	A few times	10
county	2	2009	A few times	10
county	31	2009	A few times	5
county	5	2009	A few times	3
county	16	2009	A few times	11
county	17	2009	A few times	5
county	9	2009	A few times	2
county	10	2009	A few times	5
county	12	2009	A few times	5
county	44	2009	A few times	16
county	1	2009	A few times	17
county	21	2009	A few times	10
county	47	2009	A few times	20
county	32	2009	A few times	30
county	29	2009	A few times	11
county	33	2009	A few times	12
county	46	2009	A few times	7
county	18	2009	A few times	2
county	19	2009	A few times	6
county	25	2009	A few times	4
county	41	2009	A few times	11
county	6	2009	A few times	4
county	4	2009	A few times	1
county	13	2009	A few times	5
county	26	2009	A few times	8
county	23	2009	A few times	20
county	27	2009	A few times	5
county	38	2009	A few times	6
county	8	2009	A few times	4
county	24	2009	A few times	13
county	34	2009	Don�t know	1
county	3	2009	Don�t know	1
county	2	2009	Don�t know	1
county	17	2009	Don�t know	3
county	47	2009	Don�t know	4
county	32	2009	Don�t know	1
county	6	2009	Don�t know	1
county	13	2009	Don�t know	1
county	26	2009	Don�t know	1
county	23	2009	Don�t know	1
county	27	2009	Don�t know	1
county	47	2009	Missing	1
county	30	2009	Never	16
county	36	2009	Never	11
county	39	2009	Never	56
county	40	2009	Never	30
county	28	2009	Never	4
county	14	2009	Never	24
county	7	2009	Never	21
county	43	2009	Never	21
county	11	2009	Never	2
county	34	2009	Never	27
county	37	2009	Never	58
county	35	2009	Never	14
county	22	2009	Never	92
county	3	2009	Never	36
county	20	2009	Never	29
county	45	2009	Never	35
county	42	2009	Never	30
county	15	2009	Never	33
county	2	2009	Never	21
county	31	2009	Never	12
county	5	2009	Never	4
county	16	2009	Never	37
county	17	2009	Never	39
county	9	2009	Never	32
county	10	2009	Never	3
county	12	2009	Never	57
county	44	2009	Never	22
county	1	2009	Never	46
county	21	2009	Never	46
county	47	2009	Never	188
county	32	2009	Never	46
county	29	2009	Never	18
county	33	2009	Never	14
county	46	2009	Never	20
county	18	2009	Never	29
county	19	2009	Never	37
county	25	2009	Never	1
county	41	2009	Never	21
county	6	2009	Never	11
county	4	2009	Never	5
county	13	2009	Never	11
county	26	2009	Never	35
county	23	2009	Never	13
county	27	2009	Never	32
county	38	2009	Never	17
county	8	2009	Never	21
county	24	2009	Never	3
county	36	2009	Often	16
county	39	2009	Often	10
county	40	2009	Often	4
county	28	2009	Often	2
county	14	2009	Often	3
county	43	2009	Often	13
county	11	2009	Often	2
county	34	2009	Often	1
county	37	2009	Often	18
county	35	2009	Often	9
county	22	2009	Often	7
county	3	2009	Often	5
county	20	2009	Often	4
county	45	2009	Often	8
county	42	2009	Often	6
county	15	2009	Often	6
county	2	2009	Often	3
county	31	2009	Often	5
county	16	2009	Often	12
county	17	2009	Often	7
county	10	2009	Often	4
county	12	2009	Often	1
county	44	2009	Often	8
county	1	2009	Often	4
county	21	2009	Often	7
county	47	2009	Often	14
county	32	2009	Often	16
county	29	2009	Often	4
county	33	2009	Often	17
county	46	2009	Often	11
county	18	2009	Often	2
county	19	2009	Often	2
county	41	2009	Often	10
county	4	2009	Often	1
county	13	2009	Often	2
county	26	2009	Often	2
county	23	2009	Often	4
county	27	2009	Often	1
county	38	2009	Often	5
county	8	2009	Often	1
county	24	2009	Often	2
county	30	2009	Only once	10
county	36	2009	Only once	5
county	39	2009	Only once	4
county	28	2009	Only once	6
county	14	2009	Only once	8
county	7	2009	Only once	8
county	43	2009	Only once	5
county	11	2009	Only once	2
county	34	2009	Only once	11
county	37	2009	Only once	4
county	35	2009	Only once	6
county	22	2009	Only once	10
county	3	2009	Only once	3
county	20	2009	Only once	5
county	45	2009	Only once	12
county	42	2009	Only once	3
county	15	2009	Only once	7
county	2	2009	Only once	5
county	31	2009	Only once	2
county	5	2009	Only once	1
county	16	2009	Only once	12
county	17	2009	Only once	2
county	9	2009	Only once	14
county	10	2009	Only once	4
county	12	2009	Only once	22
county	44	2009	Only once	2
county	1	2009	Only once	5
county	21	2009	Only once	1
county	47	2009	Only once	21
county	32	2009	Only once	11
county	29	2009	Only once	15
county	33	2009	Only once	5
county	46	2009	Only once	2
county	18	2009	Only once	7
county	19	2009	Only once	3
county	25	2009	Only once	3
county	41	2009	Only once	6
county	4	2009	Only once	1
county	13	2009	Only once	5
county	26	2009	Only once	2
county	23	2009	Only once	10
county	27	2009	Only once	17
county	38	2009	Only once	4
county	8	2009	Only once	6
county	24	2009	Only once	6
\.


--
-- Name: contact_traditional_leader pk_contact_traditional_leader; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contact_traditional_leader
    ADD CONSTRAINT pk_contact_traditional_leader PRIMARY KEY (geo_level, geo_code, geo_version, contact_traditional_leader);


--
-- PostgreSQL database dump complete
--

