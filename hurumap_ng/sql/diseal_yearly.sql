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

ALTER TABLE IF EXISTS ONLY public.diseal_yearly DROP CONSTRAINT IF EXISTS diseal_yearly_pkey;
DROP TABLE IF EXISTS public.diseal_yearly;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: diseal_yearly; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.diseal_yearly (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    diseal_year character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: diseal_yearly; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.diseal_yearly (geo_level, geo_code, geo_version, diseal_year, total) FROM stdin;
country	NG	2016	2015	154.53
country	NG	2016	2016	176.13
country	NG	2016	2017	212.8
country	NG	2016	2018	210.79
country	NG	2016	2019	227.71
state	1	2016	2015	144.15
state	1	2016	2016	173.21
state	1	2016	2017	208.44
state	1	2016	2018	203.9
state	1	2016	2019	237.41
state	2	2016	2015	147.01
state	2	2016	2016	170.33
state	2	2016	2017	223.96
state	2	2016	2018	206.69
state	2	2016	2019	219.65
state	3	2016	2015	146.28
state	3	2016	2016	173.79
state	3	2016	2017	203.92
state	3	2016	2018	210.99
state	3	2016	2019	224.29
state	4	2016	2015	140.43
state	4	2016	2016	165.7
state	4	2016	2017	207.42
state	4	2016	2018	211.33
state	4	2016	2019	233.48
state	5	2016	2015	154.21
state	5	2016	2016	175.27
state	5	2016	2017	213.12
state	5	2016	2018	212.22
state	5	2016	2019	222.88
state	6	2016	2015	170.14
state	6	2016	2016	185.14
state	6	2016	2017	200.67
state	6	2016	2018	193.79
state	6	2016	2019	220.12
state	7	2016	2015	178.68
state	7	2016	2016	177.9
state	7	2016	2017	221.27
state	7	2016	2018	209.84
state	7	2016	2019	220.13
state	8	2016	2015	174.01
state	8	2016	2016	188.24
state	8	2016	2017	215.77
state	8	2016	2018	224.66
state	8	2016	2019	250.03
state	9	2016	2015	159.69
state	9	2016	2016	185.59
state	9	2016	2017	215.54
state	9	2016	2018	209.56
state	9	2016	2019	235.88
state	10	2016	2015	149.05
state	10	2016	2016	169.64
state	10	2016	2017	209.96
state	10	2016	2018	204.09
state	10	2016	2019	226.29
state	11	2016	2015	152.64
state	11	2016	2016	174.7
state	11	2016	2017	208.39
state	11	2016	2018	206.78
state	11	2016	2019	237.15
state	12	2016	2015	144.92
state	12	2016	2016	173.12
state	12	2016	2017	207.91
state	12	2016	2018	205.12
state	12	2016	2019	227.34
state	13	2016	2015	151.85
state	13	2016	2016	176.62
state	13	2016	2017	214.13
state	13	2016	2018	203.24
state	13	2016	2019	204.86
state	14	2016	2015	142.01
state	14	2016	2016	172.19
state	14	2016	2017	205.13
state	14	2016	2018	205.28
state	14	2016	2019	227.71
state	15	2016	2015	151.84
state	15	2016	2016	172.41
state	15	2016	2017	211.64
state	15	2016	2018	202.14
state	15	2016	2019	230.66
state	16	2016	2015	135.81
state	16	2016	2016	169.54
state	16	2016	2017	207.39
state	16	2016	2018	217.79
state	16	2016	2019	230.55
state	17	2016	2015	144.01
state	17	2016	2016	173.87
state	17	2016	2017	217.33
state	17	2016	2018	212.69
state	17	2016	2019	234.01
state	18	2016	2015	147.2
state	18	2016	2016	176.48
state	18	2016	2017	212.94
state	18	2016	2018	213.06
state	18	2016	2019	223.92
state	19	2016	2015	154.41
state	19	2016	2016	177.28
state	19	2016	2017	209.94
state	19	2016	2018	207.21
state	19	2016	2019	233.71
state	20	2016	2015	157.32
state	20	2016	2016	178.31
state	20	2016	2017	219
state	20	2016	2018	212.64
state	20	2016	2019	224.14
state	21	2016	2015	142.96
state	21	2016	2016	174.05
state	21	2016	2017	214.91
state	21	2016	2018	219.37
state	21	2016	2019	224.44
state	22	2016	2015	189.42
state	22	2016	2016	198.6
state	22	2016	2017	220.5
state	22	2016	2018	229.23
state	22	2016	2019	229.13
state	23	2016	2015	155.36
state	23	2016	2016	173.33
state	23	2016	2017	220.35
state	23	2016	2018	207.79
state	23	2016	2019	221.59
state	24	2016	2015	159.15
state	24	2016	2016	176.66
state	24	2016	2017	215.5
state	24	2016	2018	208.23
state	24	2016	2019	236.32
state	25	2016	2015	137.78
state	25	2016	2016	173.18
state	25	2016	2017	213.7
state	25	2016	2018	217.79
state	25	2016	2019	233.93
state	26	2016	2015	171.73
state	26	2016	2016	181.18
state	26	2016	2017	218.66
state	26	2016	2018	199.49
state	26	2016	2019	215
state	27	2016	2015	173.55
state	27	2016	2016	183.35
state	27	2016	2017	219.85
state	27	2016	2018	207.6
state	27	2016	2019	228.77
state	28	2016	2015	138.14
state	28	2016	2016	169.74
state	28	2016	2017	205.14
state	28	2016	2018	203.1
state	28	2016	2019	222.3
state	29	2016	2015	152.97
state	29	2016	2016	173.59
state	29	2016	2017	213.37
state	29	2016	2018	204
state	29	2016	2019	230.9
state	30	2016	2015	140.88
state	30	2016	2016	171.2
state	30	2016	2017	207.5
state	30	2016	2018	212.94
state	30	2016	2019	236.78
state	31	2016	2015	151.59
state	31	2016	2016	171.94
state	31	2016	2017	205.21
state	31	2016	2018	210.02
state	31	2016	2019	230.26
state	32	2016	2015	143.9
state	32	2016	2016	173.76
state	32	2016	2017	208.24
state	32	2016	2018	204.86
state	32	2016	2019	216.09
state	33	2016	2015	160.77
state	33	2016	2016	181.34
state	33	2016	2017	210.3
state	33	2016	2018	204.83
state	33	2016	2019	212.32
state	34	2016	2015	149.89
state	34	2016	2016	176.4
state	34	2016	2017	227.4
state	34	2016	2018	237.05
state	34	2016	2019	233.28
state	35	2016	2015	189.56
state	35	2016	2016	180.41
state	35	2016	2017	221.91
state	35	2016	2018	240.15
state	35	2016	2019	232.96
state	36	2016	2015	162.17
state	36	2016	2016	168.16
state	36	2016	2017	204.41
state	36	2016	2018	213.66
state	36	2016	2019	233.16
state	37	2016	2015	152.24
state	37	2016	2016	180.71
state	37	2016	2017	212.64
state	37	2016	2018	206.17
state	37	2016	2019	223.75
\.


--
-- Name: diseal_yearly diseal_yearly_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.diseal_yearly
    ADD CONSTRAINT diseal_yearly_pkey PRIMARY KEY (geo_level, geo_code, geo_version, diseal_year);


--
-- PostgreSQL database dump complete
--
