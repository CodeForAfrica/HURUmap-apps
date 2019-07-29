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

ALTER TABLE IF EXISTS ONLY public.driver_licences_processed DROP CONSTRAINT IF EXISTS driver_licences_processed_pkey;
DROP TABLE IF EXISTS public.driver_licences_processed;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: driver_licences_processed; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.driver_licences_processed (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: driver_licences_processed; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.driver_licences_processed (geo_level, geo_code, geo_version, year, total) FROM stdin;
country	NG	2016	2013	395539
country	NG	2016	2014	653046
country	NG	2016	2015	1151906
state	1	2016	2013	6859
state	1	2016	2014	14677
state	1	2016	2015	36316
state	2	2016	2013	3288
state	2	2016	2014	2670
state	2	2016	2015	4961
state	3	2016	2013	1888
state	3	2016	2014	8804
state	3	2016	2015	17623
state	4	2016	2013	4691
state	4	2016	2014	18720
state	4	2016	2015	49527
state	5	2016	2013	2524
state	5	2016	2014	3107
state	5	2016	2015	7493
state	6	2016	2013	4576
state	6	2016	2014	10809
state	6	2016	2015	15056
state	7	2016	2013	2270
state	7	2016	2014	3027
state	7	2016	2015	9503
state	8	2016	2013	6083
state	8	2016	2014	4595
state	8	2016	2015	8916
state	9	2016	2013	2927
state	9	2016	2014	4626
state	9	2016	2015	9399
state	10	2016	2013	6366
state	10	2016	2014	24817
state	10	2016	2015	64482
state	11	2016	2013	2778
state	11	2016	2014	5054
state	11	2016	2015	8684
state	12	2016	2013	10365
state	12	2016	2014	11980
state	12	2016	2015	23793
state	13	2016	2013	5940
state	13	2016	2014	7954
state	13	2016	2015	14466
state	14	2016	2013	9725
state	14	2016	2014	21714
state	14	2016	2015	28358
state	15	2016	2013	42613
state	15	2016	2014	54532
state	15	2016	2015	106946
state	16	2016	2013	2699
state	16	2016	2014	3337
state	16	2016	2015	31303
state	17	2016	2013	8936
state	17	2016	2014	13253
state	17	2016	2015	28088
state	18	2016	2013	1495
state	18	2016	2014	2167
state	18	2016	2015	9427
state	19	2016	2013	8726
state	19	2016	2014	9565
state	19	2016	2015	22567
state	20	2016	2013	4000
state	20	2016	2014	7053
state	20	2016	2015	20666
state	21	2016	2013	3936
state	21	2016	2014	3529
state	21	2016	2015	5500
state	22	2016	2013	1274
state	22	2016	2014	1349
state	22	2016	2015	3734
state	23	2016	2013	3331
state	23	2016	2014	3464
state	23	2016	2015	2861
state	24	2016	2013	6972
state	24	2016	2014	9315
state	24	2016	2015	16198
state	25	2016	2013	127261
state	25	2016	2014	225284
state	25	2016	2015	298319
state	26	2016	2013	2886
state	26	2016	2014	6218
state	26	2016	2015	32293
state	27	2016	2013	2435
state	27	2016	2014	4379
state	27	2016	2015	10504
state	28	2016	2013	27805
state	28	2016	2014	49521
state	28	2016	2015	51438
state	29	2016	2013	8339
state	29	2016	2014	12646
state	29	2016	2015	20812
state	30	2016	2013	11898
state	30	2016	2014	10975
state	30	2016	2015	25072
state	31	2016	2013	24297
state	31	2016	2014	35666
state	31	2016	2015	53755
state	32	2016	2013	6234
state	32	2016	2014	10092
state	32	2016	2015	16640
state	33	2016	2013	21425
state	33	2016	2014	38804
state	33	2016	2015	63421
state	34	2016	2013	2384
state	34	2016	2014	4022
state	34	2016	2015	22156
state	35	2016	2013	2588
state	35	2016	2014	1876
state	35	2016	2015	5821
state	36	2016	2013	2286
state	36	2016	2014	1732
state	36	2016	2015	2375
state	37	2016	2013	1439
state	37	2016	2014	1713
state	37	2016	2015	3433
\.


--
-- Name: driver_licences_processed driver_licences_processed_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.driver_licences_processed
    ADD CONSTRAINT driver_licences_processed_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
