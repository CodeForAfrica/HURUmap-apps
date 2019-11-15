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

ALTER TABLE IF EXISTS ONLY public.prison_capacity DROP CONSTRAINT IF EXISTS prison_capacity_pkey;
DROP TABLE IF EXISTS public.prison_capacity;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: prison_capacity; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.prison_capacity (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: prison_capacity; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.prison_capacity (geo_level, geo_code, geo_version, year, total) FROM stdin;
state	1	2016	2013	1080
state	1	2016	2014	1080
state	1	2016	2015	1080
state	2	2016	2013	2580
state	2	2016	2014	2580
state	2	2016	2015	2580
state	3	2016	2013	1568
state	3	2016	2014	1568
state	3	2016	2015	1568
state	4	2016	2013	804
state	4	2016	2014	804
state	4	2016	2015	804
state	5	2016	2013	1468
state	5	2016	2014	1468
state	5	2016	2015	1468
state	6	2016	2013	200
state	6	2016	2014	200
state	6	2016	2015	200
state	7	2016	2013	1408
state	7	2016	2014	1408
state	7	2016	2015	1408
state	8	2016	2013	3422
state	8	2016	2014	3422
state	8	2016	2015	3422
state	9	2016	2013	1228
state	9	2016	2014	1228
state	9	2016	2015	1228
state	10	2016	2013	1098
state	10	2016	2014	1098
state	10	2016	2015	1098
state	11	2016	2013	588
state	11	2016	2014	588
state	11	2016	2015	588
state	12	2016	2013	2092
state	12	2016	2014	2092
state	12	2016	2015	2092
state	13	2016	2013	200
state	13	2016	2014	200
state	13	2016	2015	200
state	14	2016	2013	1394
state	14	2016	2014	1394
state	14	2016	2015	1394
state	15	2016	2013	720
state	15	2016	2014	720
state	15	2016	2015	720
state	16	2016	2013	638
state	16	2016	2014	638
state	16	2016	2015	638
state	17	2016	2013	1188
state	17	2016	2014	1188
state	17	2016	2015	1188
state	18	2016	2013	1464
state	18	2016	2014	1464
state	18	2016	2015	1492
state	19	2016	2013	2702
state	19	2016	2014	2702
state	19	2016	2015	2702
state	20	2016	2013	1840
state	20	2016	2014	1840
state	20	2016	2015	1840
state	21	2016	2013	1328
state	21	2016	2014	1328
state	21	2016	2015	1328
state	22	2016	2013	1526
state	22	2016	2014	1526
state	22	2016	2015	1526
state	23	2016	2013	530
state	23	2016	2014	530
state	23	2016	2015	530
state	24	2016	2013	516
state	24	2016	2014	716
state	24	2016	2015	716
state	25	2016	2013	2798
state	25	2016	2014	3897
state	25	2016	2015	3897
state	26	2016	2013	602
state	26	2016	2014	762
state	26	2016	2015	762
state	27	2016	2013	1450
state	27	2016	2014	1450
state	27	2016	2015	1450
country	NG	2016	2013	47646
country	NG	2016	2014	49825
country	NG	2016	2015	50153
state	28	2016	2013	764
state	28	2016	2014	1484
state	28	2016	2015	1784
state	29	2016	2013	726
state	29	2016	2014	726
state	29	2016	2015	726
state	30	2016	2013	906
state	30	2016	2014	906
state	30	2016	2015	906
state	31	2016	2013	596
state	31	2016	2014	596
state	31	2016	2015	596
state	32	2016	2013	1926
state	32	2016	2014	1926
state	32	2016	2015	1926
state	33	2016	2013	1354
state	33	2016	2014	1354
state	33	2016	2015	1354
state	34	2016	2013	934
state	34	2016	2014	934
state	34	2016	2015	934
state	35	2016	2013	1650
state	35	2016	2014	1650
state	35	2016	2015	1650
state	36	2016	2013	1180
state	36	2016	2014	1180
state	36	2016	2015	1180
state	37	2016	2013	1178
state	37	2016	2014	1178
state	37	2016	2015	1178
\.


--
-- Name: prison_capacity prison_capacity_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prison_capacity
    ADD CONSTRAINT prison_capacity_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
