--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.elections_ensure_voters_views_are_reflected DROP CONSTRAINT IF EXISTS pk_elections_ensure_voters_views_are_reflected;
DROP TABLE IF EXISTS public.elections_ensure_voters_views_are_reflected;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: elections_ensure_voters_views_are_reflected; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.elections_ensure_voters_views_are_reflected (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    elections_ensure_voters_views_are_reflected character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: elections_ensure_voters_views_are_reflected; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.elections_ensure_voters_views_are_reflected (geo_level, geo_code, geo_version, elections_ensure_voters_views_are_reflected, total) FROM stdin;
region	1	2009	Don't know	9
region	1	2009	Not at all well	15
region	1	2009	Not very well	46
region	1	2009	Very well	8
region	1	2009	Well	42
region	2	2009	Don't know	7
region	2	2009	Not at all well	18
region	2	2009	Not very well	155
region	2	2009	Very well	12
region	2	2009	Well	81
region	3	2009	Don't know	11
region	3	2009	Not at all well	23
region	3	2009	Not very well	44
region	3	2009	Well	18
region	4	2009	Don't know	1
region	4	2009	Not at all well	12
region	4	2009	Not very well	26
region	4	2009	Very well	5
region	4	2009	Well	27
region	5	2009	Don't know	7
region	5	2009	Not at all well	7
region	5	2009	Not very well	17
region	5	2009	Very well	3
region	5	2009	Well	14
region	6	2009	Don't know	4
region	6	2009	Not at all well	8
region	6	2009	Not very well	22
region	6	2009	Very well	4
region	6	2009	Well	34
region	7	2009	Not at all well	18
region	7	2009	Not very well	33
region	7	2009	Well	5
region	8	2009	Not at all well	6
region	8	2009	Not very well	33
region	8	2009	Well	1
region	9	2009	Don't know	1
region	9	2009	Not very well	15
region	9	2009	Very well	2
region	9	2009	Well	6
region	10	2009	Don't know	6
region	10	2009	Not at all well	9
region	10	2009	Not very well	32
region	10	2009	Well	49
region	11	2009	Don't know	6
region	11	2009	Not at all well	5
region	11	2009	Not very well	46
region	11	2009	Very well	6
region	11	2009	Well	24
region	12	2009	Not at all well	3
region	12	2009	Not very well	4
region	12	2009	Well	1
region	13	2009	Not at all well	3
region	13	2009	Not very well	19
region	13	2009	Well	2
region	14	2009	Not at all well	4
region	14	2009	Not very well	29
region	14	2009	Well	15
region	15	2009	Don't know	3
region	15	2009	Not at all well	13
region	15	2009	Not very well	33
region	15	2009	Very well	1
region	15	2009	Well	14
region	16	2009	Not at all well	6
region	16	2009	Not very well	27
region	16	2009	Very well	12
region	16	2009	Well	35
region	17	2009	Don't know	2
region	17	2009	Not at all well	7
region	17	2009	Not very well	35
region	17	2009	Very well	5
region	17	2009	Well	15
region	30	2009	Don't know	1
region	30	2009	Not at all well	36
region	30	2009	Not very well	72
region	30	2009	Well	3
region	18	2009	Don't know	27
region	18	2009	Not at all well	32
region	18	2009	Not very well	44
region	18	2009	Very well	1
region	18	2009	Well	16
region	19	2009	Not at all well	9
region	19	2009	Not very well	32
region	19	2009	Very well	4
region	19	2009	Well	26
region	20	2009	Don't know	1
region	20	2009	Not at all well	6
region	20	2009	Not very well	45
region	20	2009	Very well	15
region	20	2009	Well	57
region	21	2009	Don't know	1
region	21	2009	Not at all well	8
region	21	2009	Not very well	21
region	21	2009	Very well	4
region	21	2009	Well	6
region	22	2009	Not at all well	5
region	22	2009	Not very well	28
region	22	2009	Very well	8
region	22	2009	Well	31
region	23	2009	Don't know	3
region	23	2009	Not at all well	5
region	23	2009	Not very well	14
region	23	2009	Very well	4
region	23	2009	Well	13
region	24	2009	Don't know	2
region	24	2009	Not at all well	9
region	24	2009	Not very well	22
region	24	2009	Very well	7
region	24	2009	Well	32
region	25	2009	Not at all well	1
region	25	2009	Not very well	39
region	25	2009	Very well	5
region	25	2009	Well	27
region	26	2009	Don't know	2
region	26	2009	Not at all well	4
region	26	2009	Not very well	29
region	26	2009	Very well	1
region	26	2009	Well	28
region	27	2009	Not at all well	3
region	27	2009	Not very well	34
region	27	2009	Very well	3
region	27	2009	Well	24
region	31	2009	Don't know	4
region	31	2009	Not at all well	7
region	31	2009	Not very well	35
region	31	2009	Very well	6
region	31	2009	Well	20
region	29	2009	Don't know	9
region	29	2009	Not at all well	17
region	29	2009	Not very well	59
region	29	2009	Well	19
region	28	2009	Don't know	7
region	28	2009	Not at all well	18
region	28	2009	Not very well	30
region	28	2009	Very well	6
region	28	2009	Well	27
country	TZ	2009	Not very well	1120
country	TZ	2009	Well	712
country	TZ	2009	Don't know	114
country	TZ	2009	Not at all well	317
country	TZ	2009	Very well	122
\.


--
-- Name: elections_ensure_voters_views_are_reflected pk_elections_ensure_voters_views_are_reflected; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elections_ensure_voters_views_are_reflected
    ADD CONSTRAINT pk_elections_ensure_voters_views_are_reflected PRIMARY KEY (geo_level, geo_code, geo_version, elections_ensure_voters_views_are_reflected);


--
-- PostgreSQL database dump complete
--

