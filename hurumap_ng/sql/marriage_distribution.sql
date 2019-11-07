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

ALTER TABLE IF EXISTS ONLY public.marriage_distribution DROP CONSTRAINT IF EXISTS marriage_distribution_pkey;
DROP TABLE IF EXISTS public.marriage_distribution;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: marriage_distribution; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.marriage_distribution (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: marriage_distribution; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.marriage_distribution (geo_level, geo_code, geo_version, year, total) FROM stdin;
state	1	2016	2014	753
state	1	2016	2015	493
state	1	2016	2016	924
state	3	2016	2014	630
state	3	2016	2015	976
state	3	2016	2016	795
state	4	2016	2014	480
state	4	2016	2015	599
state	4	2016	2016	500
state	5	2016	2014	211
state	5	2016	2015	183
state	5	2016	2016	174
state	6	2016	2014	615
state	6	2016	2015	858
state	6	2016	2016	666
state	7	2016	2014	322
state	7	2016	2015	298
state	7	2016	2016	263
state	8	2016	2014	64
state	8	2016	2015	54
state	8	2016	2016	72
state	10	2016	2014	487
state	10	2016	2015	264
state	10	2016	2016	389
state	11	2016	2014	112
state	11	2016	2015	103
state	11	2016	2016	115
state	13	2016	2014	191
state	13	2016	2015	214
state	13	2016	2016	221
state	14	2016	2014	1453
state	14	2016	2015	2286
state	14	2016	2016	2577
state	17	2016	2014	110
state	17	2016	2015	213
state	17	2016	2016	141
state	19	2016	2014	693
state	19	2016	2015	423
state	19	2016	2016	646
state	20	2016	2014	140
state	20	2016	2015	151
state	20	2016	2016	128
state	24	2016	2014	1029
state	24	2016	2015	1271
state	24	2016	2016	1233
state	25	2016	2014	322
state	25	2016	2015	298
state	25	2016	2016	263
state	26	2016	2014	33
state	26	2016	2015	18
state	26	2016	2016	27
state	27	2016	2014	264
state	27	2016	2015	231
state	27	2016	2016	274
state	28	2016	2014	4530
state	28	2016	2015	3150
state	28	2016	2016	3363
state	30	2016	2014	183
state	30	2016	2015	743
state	30	2016	2016	1815
state	31	2016	2014	103
state	31	2016	2015	116
state	31	2016	2016	219
state	32	2016	2014	2300
state	32	2016	2015	2462
state	32	2016	2016	2765
state	35	2016	2014	36
state	35	2016	2015	34
state	35	2016	2016	50
\.


--
-- Name: marriage_distribution marriage_distribution_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.marriage_distribution
    ADD CONSTRAINT marriage_distribution_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
