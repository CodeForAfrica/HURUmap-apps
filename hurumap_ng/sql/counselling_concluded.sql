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

ALTER TABLE IF EXISTS ONLY public.counselling_concluded DROP CONSTRAINT IF EXISTS counselling_concluded_pkey;
DROP TABLE IF EXISTS public.counselling_concluded;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: counselling_concluded; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.counselling_concluded (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: counselling_concluded; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.counselling_concluded (geo_level, geo_code, geo_version, year, total) FROM stdin;
state	1	2016	2012	108
state	1	2016	2013	67
state	1	2016	2014	77
state	1	2016	2015	76
state	1	2016	2016	27
state	2	2016	2012	189
state	2	2016	2013	1989
state	2	2016	2014	106
state	2	2016	2015	20
state	2	2016	2016	54
state	3	2016	2012	158
state	3	2016	2013	205
state	3	2016	2014	12
state	3	2016	2015	102
state	3	2016	2016	36
state	4	2016	2012	102
state	4	2016	2013	42
state	4	2016	2014	74
state	4	2016	2015	82
state	4	2016	2016	25
state	5	2016	2012	156
state	5	2016	2013	86
state	5	2016	2014	67
state	5	2016	2015	40
state	5	2016	2016	3
state	6	2016	2012	136
state	6	2016	2013	148
state	6	2016	2014	129
state	6	2016	2015	70
state	6	2016	2016	75
state	7	2016	2012	75
state	7	2016	2013	20
state	7	2016	2014	37
state	7	2016	2015	12
state	7	2016	2016	33
state	8	2016	2012	39
state	8	2016	2013	52
state	8	2016	2014	13
state	8	2016	2015	44
state	8	2016	2016	0
state	9	2016	2012	43
state	9	2016	2013	34
state	9	2016	2014	30
state	9	2016	2015	82
state	9	2016	2016	78
state	10	2016	2012	103
state	10	2016	2013	73
state	10	2016	2014	97
state	10	2016	2015	120
state	10	2016	2016	0
state	11	2016	2012	49
state	11	2016	2013	107
state	11	2016	2014	105
state	11	2016	2015	77
state	11	2016	2016	47
state	12	2016	2012	87
state	12	2016	2013	123
state	12	2016	2014	99
state	12	2016	2015	97
state	12	2016	2016	60
state	13	2016	2012	130
state	13	2016	2013	135
state	13	2016	2014	109
state	13	2016	2015	120
state	13	2016	2016	136
state	14	2016	2012	62
state	14	2016	2013	77
state	14	2016	2014	18
state	14	2016	2015	94
state	14	2016	2016	5
state	15	2016	2012	70
state	15	2016	2013	158
state	15	2016	2014	65
state	15	2016	2015	0
state	15	2016	2016	17
state	16	2016	2012	5
state	16	2016	2013	8
state	16	2016	2014	73
state	16	2016	2015	40
state	16	2016	2016	5
state	17	2016	2012	108
state	17	2016	2013	8
state	17	2016	2014	63
state	17	2016	2015	95
state	17	2016	2016	0
state	18	2016	2012	120
state	18	2016	2013	113
state	18	2016	2014	128
state	18	2016	2015	248
state	18	2016	2016	186
state	19	2016	2012	15
state	19	2016	2013	33
state	19	2016	2014	143
state	19	2016	2015	246
state	19	2016	2016	165
state	20	2016	2012	492
state	20	2016	2013	221
state	20	2016	2014	278
state	20	2016	2015	245
state	20	2016	2016	442
state	21	2016	2012	461
state	21	2016	2013	440
state	21	2016	2014	569
state	21	2016	2015	240
state	21	2016	2016	700
state	22	2016	2012	131
state	22	2016	2013	149
state	22	2016	2014	134
state	22	2016	2015	70
state	22	2016	2016	29
state	23	2016	2012	52
state	23	2016	2013	170
state	23	2016	2014	86
state	23	2016	2015	52
state	23	2016	2016	55
state	24	2016	2012	0
state	24	2016	2013	127
state	24	2016	2014	73
state	24	2016	2015	114
state	24	2016	2016	41
state	25	2016	2012	173
state	25	2016	2013	328
state	25	2016	2014	10
state	25	2016	2015	139
state	25	2016	2016	12
state	26	2016	2012	25
state	26	2016	2013	15
state	26	2016	2014	10
state	26	2016	2015	20
state	26	2016	2016	15
state	27	2016	2012	69
state	27	2016	2013	242
state	27	2016	2014	0
state	27	2016	2015	129
state	27	2016	2016	119
state	28	2016	2012	73
state	28	2016	2013	177
state	28	2016	2014	112
state	28	2016	2015	130
state	28	2016	2016	18
state	29	2016	2012	40
state	29	2016	2013	42
state	29	2016	2014	8
state	29	2016	2015	100
state	29	2016	2016	18
state	30	2016	2012	107
state	30	2016	2013	116
state	30	2016	2014	0
state	30	2016	2015	130
state	30	2016	2016	25
state	31	2016	2012	92
state	31	2016	2013	258
state	31	2016	2014	206
state	31	2016	2015	158
state	31	2016	2016	34
state	32	2016	2012	284
state	32	2016	2013	189
state	32	2016	2014	10
state	32	2016	2015	68
state	32	2016	2016	11
state	33	2016	2012	110
state	33	2016	2013	104
state	33	2016	2014	30
state	33	2016	2015	0
state	33	2016	2016	101
state	34	2016	2012	119
state	34	2016	2013	69
state	34	2016	2014	123
state	34	2016	2015	29
state	34	2016	2016	51
state	35	2016	2012	33
state	35	2016	2013	39
state	35	2016	2014	46
state	35	2016	2015	46
state	35	2016	2016	9
state	36	2016	2012	14
state	36	2016	2013	46
state	36	2016	2014	96
state	36	2016	2015	249
state	36	2016	2016	0
state	37	2016	2012	71
state	37	2016	2013	76
state	37	2016	2014	148
state	37	2016	2015	116
state	37	2016	2016	88
\.


--
-- Name: counselling_concluded counselling_concluded_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.counselling_concluded
    ADD CONSTRAINT counselling_concluded_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
