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

ALTER TABLE IF EXISTS ONLY public.how_often_use_the_internet DROP CONSTRAINT IF EXISTS pk_how_often_use_the_internet;
DROP TABLE IF EXISTS public.how_often_use_the_internet;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: how_often_use_the_internet; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.how_often_use_the_internet (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    how_often_use_the_internet character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: how_often_use_the_internet; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.how_often_use_the_internet (geo_level, geo_code, geo_version, how_often_use_the_internet, total) FROM stdin;
county	36	2009	A few times a month	7
county	40	2009	A few times a month	3
county	28	2009	A few times a month	1
county	14	2009	A few times a month	1
county	43	2009	A few times a month	1
county	34	2009	A few times a month	1
county	37	2009	A few times a month	9
county	35	2009	A few times a month	4
county	22	2009	A few times a month	3
county	3	2009	A few times a month	4
county	20	2009	A few times a month	1
county	45	2009	A few times a month	2
county	42	2009	A few times a month	2
county	15	2009	A few times a month	8
county	2	2009	A few times a month	1
county	16	2009	A few times a month	1
county	17	2009	A few times a month	4
county	9	2009	A few times a month	1
county	10	2009	A few times a month	1
county	12	2009	A few times a month	7
county	44	2009	A few times a month	1
county	1	2009	A few times a month	11
county	21	2009	A few times a month	1
county	47	2009	A few times a month	9
county	32	2009	A few times a month	5
county	29	2009	A few times a month	1
county	33	2009	A few times a month	1
county	46	2009	A few times a month	1
county	18	2009	A few times a month	2
county	19	2009	A few times a month	2
county	41	2009	A few times a month	4
county	6	2009	A few times a month	1
county	13	2009	A few times a month	1
county	26	2009	A few times a month	1
county	23	2009	A few times a month	1
county	30	2009	A few times a week	2
county	36	2009	A few times a week	7
county	39	2009	A few times a week	4
county	40	2009	A few times a week	3
county	28	2009	A few times a week	1
county	14	2009	A few times a week	12
county	7	2009	A few times a week	1
county	43	2009	A few times a week	4
county	34	2009	A few times a week	3
county	37	2009	A few times a week	2
county	35	2009	A few times a week	5
county	22	2009	A few times a week	25
county	3	2009	A few times a week	6
county	20	2009	A few times a week	7
county	45	2009	A few times a week	5
county	42	2009	A few times a week	5
county	15	2009	A few times a week	6
county	2	2009	A few times a week	4
county	31	2009	A few times a week	3
county	16	2009	A few times a week	6
county	17	2009	A few times a week	9
county	9	2009	A few times a week	5
county	10	2009	A few times a week	4
county	12	2009	A few times a week	19
county	44	2009	A few times a week	3
county	1	2009	A few times a week	21
county	21	2009	A few times a week	9
county	47	2009	A few times a week	42
county	32	2009	A few times a week	17
county	29	2009	A few times a week	9
county	33	2009	A few times a week	7
county	46	2009	A few times a week	4
county	18	2009	A few times a week	3
county	19	2009	A few times a week	5
county	41	2009	A few times a week	2
county	6	2009	A few times a week	3
county	13	2009	A few times a week	3
county	26	2009	A few times a week	5
county	27	2009	A few times a week	3
county	8	2009	A few times a week	1
county	28	2009	Don't know	1
county	14	2009	Don't know	2
county	43	2009	Don't know	1
county	22	2009	Don't know	1
county	20	2009	Don't know	1
county	45	2009	Don't know	2
county	42	2009	Don't know	5
county	15	2009	Don't know	1
county	16	2009	Don't know	2
county	17	2009	Don't know	3
county	12	2009	Don't know	2
county	32	2009	Don't know	2
county	19	2009	Don't know	1
county	41	2009	Don't know	1
county	8	2009	Don't know	1
county	30	2009	Everyday	7
county	36	2009	Everyday	6
county	39	2009	Everyday	4
county	40	2009	Everyday	3
county	28	2009	Everyday	1
county	14	2009	Everyday	2
county	7	2009	Everyday	1
county	43	2009	Everyday	4
county	34	2009	Everyday	13
county	37	2009	Everyday	5
county	35	2009	Everyday	10
county	22	2009	Everyday	38
county	3	2009	Everyday	4
county	20	2009	Everyday	9
county	45	2009	Everyday	4
county	42	2009	Everyday	6
county	15	2009	Everyday	4
county	2	2009	Everyday	6
county	31	2009	Everyday	5
county	16	2009	Everyday	10
county	17	2009	Everyday	6
county	9	2009	Everyday	5
county	12	2009	Everyday	20
county	44	2009	Everyday	7
county	1	2009	Everyday	10
county	21	2009	Everyday	6
county	47	2009	Everyday	93
county	32	2009	Everyday	14
county	29	2009	Everyday	7
county	33	2009	Everyday	4
county	46	2009	Everyday	6
county	18	2009	Everyday	9
county	19	2009	Everyday	10
county	6	2009	Everyday	2
county	13	2009	Everyday	8
county	26	2009	Everyday	3
county	27	2009	Everyday	8
county	38	2009	Everyday	2
county	8	2009	Everyday	3
county	24	2009	Everyday	3
county	30	2009	Less than once a month	1
county	36	2009	Less than once a month	1
county	40	2009	Less than once a month	1
county	14	2009	Less than once a month	3
county	37	2009	Less than once a month	4
county	35	2009	Less than once a month	3
county	22	2009	Less than once a month	1
county	3	2009	Less than once a month	6
county	20	2009	Less than once a month	1
county	45	2009	Less than once a month	1
county	15	2009	Less than once a month	5
county	2	2009	Less than once a month	5
county	5	2009	Less than once a month	1
county	16	2009	Less than once a month	2
county	9	2009	Less than once a month	2
county	12	2009	Less than once a month	4
county	1	2009	Less than once a month	3
county	47	2009	Less than once a month	11
county	32	2009	Less than once a month	1
county	33	2009	Less than once a month	1
county	13	2009	Less than once a month	1
county	27	2009	Less than once a month	3
county	38	2009	Less than once a month	2
county	2	2009	Missing	1
county	12	2009	Missing	1
county	1	2009	Missing	1
county	30	2009	Never	22
county	36	2009	Never	27
county	39	2009	Never	72
county	40	2009	Never	30
county	28	2009	Never	12
county	14	2009	Never	20
county	7	2009	Never	30
county	43	2009	Never	46
county	11	2009	Never	8
county	34	2009	Never	31
county	37	2009	Never	76
county	35	2009	Never	18
county	22	2009	Never	52
county	3	2009	Never	44
county	20	2009	Never	21
county	45	2009	Never	58
county	42	2009	Never	38
county	15	2009	Never	32
county	2	2009	Never	23
county	31	2009	Never	16
county	5	2009	Never	7
county	16	2009	Never	51
county	17	2009	Never	34
county	9	2009	Never	35
county	10	2009	Never	11
county	12	2009	Never	32
county	44	2009	Never	37
county	1	2009	Never	26
county	21	2009	Never	48
county	47	2009	Never	93
county	32	2009	Never	65
county	29	2009	Never	31
county	33	2009	Never	35
county	46	2009	Never	29
county	18	2009	Never	26
county	19	2009	Never	30
county	25	2009	Never	8
county	41	2009	Never	41
county	6	2009	Never	10
county	4	2009	Never	8
county	13	2009	Never	11
county	26	2009	Never	39
county	23	2009	Never	47
county	27	2009	Never	42
county	38	2009	Never	28
county	8	2009	Never	27
county	24	2009	Never	21
\.


--
-- Name: how_often_use_the_internet pk_how_often_use_the_internet; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_use_the_internet
    ADD CONSTRAINT pk_how_often_use_the_internet PRIMARY KEY (geo_level, geo_code, geo_version, how_often_use_the_internet);


--
-- PostgreSQL database dump complete
--

