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

ALTER TABLE IF EXISTS ONLY public.conviction_secured DROP CONSTRAINT IF EXISTS conviction_secured_pkey;
DROP TABLE IF EXISTS public.conviction_secured;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: conviction_secured; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.conviction_secured (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: conviction_secured; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.conviction_secured (geo_level, geo_code, geo_version, year, total) FROM stdin;
state	1	2016	2012	21
state	1	2016	2013	6
state	1	2016	2014	13
state	1	2016	2015	42
state	1	2016	2016	46
state	2	2016	2012	73
state	2	2016	2013	127
state	2	2016	2014	98
state	2	2016	2015	84
state	2	2016	2016	120
state	3	2016	2012	44
state	3	2016	2013	45
state	3	2016	2014	30
state	3	2016	2015	30
state	3	2016	2016	14
state	4	2016	2012	7
state	4	2016	2013	9
state	4	2016	2014	38
state	4	2016	2015	20
state	4	2016	2016	50
state	5	2016	2012	33
state	5	2016	2013	23
state	5	2016	2014	96
state	5	2016	2015	95
state	5	2016	2016	46
state	6	2016	2012	9
state	6	2016	2013	5
state	6	2016	2014	19
state	6	2016	2015	28
state	6	2016	2016	20
state	7	2016	2012	73
state	7	2016	2013	11
state	7	2016	2014	68
state	7	2016	2015	44
state	7	2016	2016	43
state	8	2016	2012	6
state	8	2016	2013	10
state	8	2016	2014	2
state	8	2016	2015	3
state	8	2016	2016	11
state	9	2016	2012	50
state	9	2016	2013	21
state	9	2016	2014	24
state	9	2016	2015	54
state	9	2016	2016	22
state	10	2016	2012	22
state	10	2016	2013	39
state	10	2016	2014	40
state	10	2016	2015	17
state	10	2016	2016	57
state	11	2016	2012	9
state	11	2016	2013	30
state	11	2016	2014	59
state	11	2016	2015	43
state	11	2016	2016	35
state	12	2016	2012	44
state	12	2016	2013	42
state	12	2016	2014	47
state	12	2016	2015	24
state	12	2016	2016	62
state	13	2016	2012	68
state	13	2016	2013	29
state	13	2016	2014	19
state	13	2016	2015	24
state	13	2016	2016	62
state	14	2016	2012	28
state	14	2016	2013	26
state	14	2016	2014	18
state	14	2016	2015	13
state	14	2016	2016	53
state	15	2016	2012	64
state	15	2016	2013	77
state	15	2016	2014	115
state	15	2016	2015	92
state	15	2016	2016	146
state	16	2016	2012	58
state	16	2016	2013	37
state	16	2016	2014	47
state	16	2016	2015	58
state	16	2016	2016	95
state	17	2016	2012	14
state	17	2016	2013	22
state	17	2016	2014	24
state	17	2016	2015	18
state	17	2016	2016	5
state	18	2016	2012	80
state	18	2016	2013	61
state	18	2016	2014	62
state	18	2016	2015	10
state	18	2016	2016	84
state	19	2016	2012	57
state	19	2016	2013	65
state	19	2016	2014	151
state	19	2016	2015	29
state	19	2016	2016	33
state	20	2016	2012	192
state	20	2016	2013	217
state	20	2016	2014	182
state	20	2016	2015	156
state	20	2016	2016	338
state	21	2016	2012	51
state	21	2016	2013	74
state	21	2016	2014	104
state	21	2016	2015	72
state	21	2016	2016	16
state	22	2016	2012	118
state	22	2016	2013	108
state	22	2016	2014	59
state	22	2016	2015	42
state	22	2016	2016	56
state	23	2016	2012	13
state	23	2016	2013	34
state	23	2016	2014	16
state	23	2016	2015	12
state	23	2016	2016	20
state	24	2016	2012	19
state	24	2016	2013	24
state	24	2016	2014	17
state	24	2016	2015	11
state	24	2016	2016	17
state	25	2016	2012	67
state	25	2016	2013	76
state	25	2016	2014	125
state	25	2016	2015	142
state	25	2016	2016	211
state	26	2016	2012	5
state	26	2016	2013	2
state	26	2016	2014	22
state	26	2016	2015	28
state	26	2016	2016	36
state	27	2016	2012	43
state	27	2016	2013	46
state	27	2016	2014	24
state	27	2016	2015	45
state	27	2016	2016	22
state	28	2016	2012	34
state	28	2016	2013	51
state	28	2016	2014	31
state	28	2016	2015	19
state	28	2016	2016	20
state	29	2016	2012	30
state	29	2016	2013	29
state	29	2016	2014	31
state	29	2016	2015	35
state	29	2016	2016	44
state	30	2016	2012	76
state	30	2016	2013	80
state	30	2016	2014	60
state	30	2016	2015	27
state	30	2016	2016	47
state	31	2016	2012	65
state	31	2016	2013	65
state	31	2016	2014	55
state	31	2016	2015	56
state	31	2016	2016	63
state	32	2016	2012	115
state	32	2016	2013	122
state	32	2016	2014	90
state	32	2016	2015	82
state	32	2016	2016	96
state	33	2016	2012	13
state	33	2016	2013	60
state	33	2016	2014	76
state	33	2016	2015	51
state	33	2016	2016	61
state	34	2016	2012	12
state	34	2016	2013	28
state	34	2016	2014	18
state	34	2016	2015	11
state	34	2016	2016	33
state	35	2016	2012	26
state	35	2016	2013	16
state	35	2016	2014	39
state	35	2016	2015	31
state	35	2016	2016	53
state	36	2016	2012	2
state	36	2016	2013	7
state	36	2016	2014	10
state	36	2016	2015	0
state	36	2016	2016	19
state	37	2016	2012	18
state	37	2016	2013	42
state	37	2016	2014	36
state	37	2016	2015	41
state	37	2016	2016	56
\.


--
-- Name: conviction_secured conviction_secured_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.conviction_secured
    ADD CONSTRAINT conviction_secured_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
