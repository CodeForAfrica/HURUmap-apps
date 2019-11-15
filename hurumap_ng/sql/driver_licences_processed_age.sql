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

ALTER TABLE IF EXISTS ONLY public.driver_licences_processed_age DROP CONSTRAINT IF EXISTS driver_licences_processed_age_pkey;
DROP TABLE IF EXISTS public.driver_licences_processed_age;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: driver_licences_processed_age; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.driver_licences_processed_age (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    age_group character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: driver_licences_processed_age; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.driver_licences_processed_age (geo_level, geo_code, geo_version, year, age_group, total) FROM stdin;
state	1	2016	2018	18-25	1114
state	1	2016	2018	26-65	1710
state	1	2016	2018	above 66	401
state	2	2016	2018	18-25	295
state	2	2016	2018	26-65	503
state	2	2016	2018	above 66	295
state	3	2016	2018	18-25	975
state	3	2016	2018	26-65	1705
state	3	2016	2018	above 66	264
state	4	2016	2018	18-25	2260
state	4	2016	2018	26-65	3252
state	4	2016	2018	above 66	391
state	5	2016	2018	18-25	512
state	5	2016	2018	26-65	900
state	5	2016	2018	above 66	119
state	6	2016	2018	18-25	521
state	6	2016	2018	26-65	799
state	6	2016	2018	above 66	184
state	7	2016	2018	18-25	800
state	7	2016	2018	26-65	1113
state	7	2016	2018	above 66	221
state	8	2016	2018	18-25	489
state	8	2016	2018	26-65	1008
state	8	2016	2018	above 66	228
state	9	2016	2018	18-25	629
state	9	2016	2018	26-65	804
state	9	2016	2018	above 66	137
state	10	2016	2018	18-25	2700
state	10	2016	2018	26-65	4781
state	10	2016	2018	above 66	1000
state	11	2016	2018	18-25	416
state	11	2016	2018	26-65	830
state	11	2016	2018	above 66	250
state	12	2016	2018	18-25	2756
state	12	2016	2018	26-65	3240
state	12	2016	2018	above 66	993
state	13	2016	2018	18-25	700
state	13	2016	2018	26-65	1011
state	13	2016	2018	above 66	248
state	14	2016	2018	18-25	2583
state	14	2016	2018	26-65	2605
state	14	2016	2018	above 66	742
state	15	2016	2018	18-25	8557
state	15	2016	2018	26-65	9725
state	15	2016	2018	above 66	2291
state	16	2016	2018	18-25	510
state	16	2016	2018	26-65	820
state	16	2016	2018	above 66	194
state	17	2016	2018	18-25	937
state	17	2016	2018	26-65	1616
state	17	2016	2018	above 66	414
state	18	2016	2018	18-25	185
state	18	2016	2018	26-65	247
state	18	2016	2018	above 66	85
state	19	2016	2018	18-25	2699
state	19	2016	2018	26-65	4787
state	19	2016	2018	above 66	1454
state	20	2016	2018	18-25	1568
state	20	2016	2018	26-65	1630
state	20	2016	2018	above 66	443
state	21	2016	2018	18-25	698
state	21	2016	2018	26-65	810
state	21	2016	2018	above 66	309
state	22	2016	2018	18-25	142
state	22	2016	2018	26-65	153
state	22	2016	2018	above 66	76
state	23	2016	2018	18-25	596
state	23	2016	2018	26-65	725
state	23	2016	2018	above 66	268
state	24	2016	2018	18-25	1293
state	24	2016	2018	26-65	915
state	24	2016	2018	above 66	206
state	25	2016	2018	18-25	19011
state	25	2016	2018	26-65	17991
state	25	2016	2018	above 66	5400
state	26	2016	2018	18-25	902
state	26	2016	2018	26-65	1655
state	26	2016	2018	above 66	151
state	27	2016	2018	18-25	838
state	27	2016	2018	26-65	1160
state	27	2016	2018	above 66	340
country	NG	2016	2018	18-25	70039
country	NG	2016	2018	26-65	93204
country	NG	2016	2018	above 66	22640
state	28	2016	2018	18-25	3165
state	28	2016	2018	26-65	6602
state	28	2016	2018	above 66	1492
state	29	2016	2018	18-25	1628
state	29	2016	2018	26-65	2097
state	29	2016	2018	above 66	719
state	30	2016	2018	18-25	1867
state	30	2016	2018	26-65	2535
state	30	2016	2018	above 66	437
state	31	2016	2018	18-25	2965
state	31	2016	2018	26-65	7057
state	31	2016	2018	above 66	1735
state	32	2016	2018	18-25	1662
state	32	2016	2018	26-65	1830
state	32	2016	2018	above 66	511
state	33	2016	2018	18-25	3246
state	33	2016	2018	26-65	5506
state	33	2016	2018	above 66	239
state	34	2016	2018	18-25	320
state	34	2016	2018	26-65	507
state	34	2016	2018	above 66	57
state	35	2016	2018	18-25	216
state	35	2016	2018	26-65	209
state	35	2016	2018	above 66	154
state	36	2016	2018	18-25	166
state	36	2016	2018	26-65	208
state	36	2016	2018	above 66	101
state	37	2016	2018	18-25	118
state	37	2016	2018	26-65	158
state	37	2016	2018	above 66	91
\.


--
-- Name: driver_licences_processed_age driver_licences_processed_age_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.driver_licences_processed_age
    ADD CONSTRAINT driver_licences_processed_age_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year, age_group);


--
-- PostgreSQL database dump complete
--
