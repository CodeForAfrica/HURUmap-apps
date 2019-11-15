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

ALTER TABLE IF EXISTS ONLY public.micro_enterprises DROP CONSTRAINT IF EXISTS micro_enterprises_pkey;
DROP TABLE IF EXISTS public.micro_enterprises;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: micro_enterprises; type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.micro_enterprises (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: micro_enterprises; type: TABLE DATA; Schema: public; Owner: -
--

COPY public.micro_enterprises (geo_level, geo_code, geo_version, year, total) FROM stdin;
country	NG	2016	2017	41469947
country	NG	2016	2013	36994578
state	1	2016	2017	959803
state	1	2016	2013	904721
state	2	2016	2017	689571
state	3	2016	2017	1357412
state	3	2016	2013	1319607
state	4	2016	2017	1233676
state	4	2016	2013	1223395
state	5	2016	2017	1016997
state	5	2016	2013	944503
state	6	2016	2017	548049
state	6	2016	2013	541332
state	7	2016	2017	1578658
state	7	2016	2013	1479145
state	8	2016	2017	691111
state	9	2016	2017	1020384
state	9	2016	2013	921256
state	10	2016	2017	1560679
state	10	2016	2013	1536158
state	11	2016	2017	590355
state	11	2016	2013	577216
state	12	2016	2017	924944
state	12	2016	2013	898084
state	13	2016	2017	1017510
state	13	2016	2013	964179
state	14	2016	2017	1088620
state	14	2016	2013	1064893
state	15	2016	2017	504329
state	15	2016	2013	482365
state	16	2016	2017	538205
state	16	2016	2013	527230
state	17	2016	2017	1400848
state	17	2016	2013	1296386
state	18	2016	2017	834200
state	18	2016	2013	820001
state	19	2016	2017	1931387
state	19	2016	2013	1635453
state	20	2016	2017	1824961
state	20	2016	2013	1794358
state	21	2016	2017	1659304
state	21	2016	2013	1216604
state	22	2016	2017	708541
state	22	2016	2013	692104
state	23	2016	2017	996748
state	23	2016	2013	967431
state	24	2016	2017	802418
state	24	2016	2013	717909
state	25	2016	2017	3329156
state	25	2016	2013	3224324
state	26	2016	2017	385489
state	26	2016	2013	382086
state	27	2016	2017	1066792
state	27	2016	2013	977240
state	28	2016	2017	1178109
state	28	2016	2013	1165848
state	29	2016	2017	1058025
state	29	2016	2013	1026770
state	30	2016	2017	1370908
state	30	2016	2013	1356174
state	31	2016	2017	1909475
state	31	2016	2013	1864954
state	32	2016	2017	815430
state	32	2016	2013	786504
state	33	2016	2017	2129780
state	33	2016	2013	1749911
state	34	2016	2017	706341
state	34	2016	2013	700106
state	35	2016	2017	520759
state	35	2016	2013	513973
state	36	2016	2017	784044
state	37	2016	2017	736929
state	37	2016	2013	722360
\.


--
-- Name: micro_enterprises micro_enterprises_pkey; type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.micro_enterprises
    ADD CONSTRAINT micro_enterprises_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
