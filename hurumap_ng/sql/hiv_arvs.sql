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

ALTER TABLE IF EXISTS ONLY public.hiv_arvs DROP CONSTRAINT IF EXISTS hiv_arvs_pkey;
DROP TABLE IF EXISTS public.hiv_arvs;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: hiv_arvs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hiv_arvs (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: hiv_arvs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.hiv_arvs (geo_level, geo_code, geo_version, year, gender, total) FROM stdin;
country	NG	2016	2015	Female	591303
country	NG	2016	2015	Male	262689
country	NG	2016	2016	Female	679429
country	NG	2016	2016	Male	304551
state	1	2016	2015	Female	8907
state	1	2016	2015	Male	4813
state	1	2016	2016	Female	10263
state	1	2016	2016	Male	5103
state	2	2016	2015	Female	18203
state	2	2016	2015	Male	8390
state	2	2016	2016	Female	21312
state	2	2016	2016	Male	10308
state	3	2016	2015	Female	26590
state	3	2016	2015	Male	15035
state	3	2016	2016	Female	37822
state	3	2016	2016	Male	19018
state	4	2016	2015	Female	15541
state	4	2016	2015	Male	7368
state	4	2016	2016	Female	17695
state	4	2016	2016	Male	8468
state	5	2016	2015	Female	9494
state	5	2016	2015	Male	3762
state	5	2016	2016	Female	9183
state	5	2016	2016	Male	4320
state	6	2016	2015	Female	2671
state	6	2016	2015	Male	1100
state	6	2016	2016	Female	2925
state	6	2016	2016	Male	1303
state	7	2016	2015	Female	107911
state	7	2016	2015	Male	29088
state	7	2016	2016	Female	110206
state	7	2016	2016	Male	30409
state	8	2016	2015	Female	5889
state	8	2016	2015	Male	3058
state	8	2016	2016	Female	7213
state	8	2016	2016	Male	3551
state	9	2016	2015	Female	15909
state	9	2016	2015	Male	7070
state	9	2016	2016	Female	16016
state	9	2016	2016	Male	7235
state	10	2016	2015	Female	15230
state	10	2016	2015	Male	5630
state	10	2016	2016	Female	18830
state	10	2016	2016	Male	7151
state	11	2016	2015	Female	3921
state	11	2016	2015	Male	1985
state	11	2016	2016	Female	4789
state	11	2016	2016	Male	2221
state	12	2016	2015	Female	15208
state	12	2016	2015	Male	8140
state	12	2016	2016	Female	17326
state	12	2016	2016	Male	8404
state	13	2016	2015	Female	2191
state	13	2016	2015	Male	911
state	13	2016	2016	Female	2430
state	13	2016	2016	Male	997
state	14	2016	2015	Female	17894
state	14	2016	2015	Male	7377
state	14	2016	2016	Female	19774
state	14	2016	2016	Male	8024
state	15	2016	2015	Female	30323
state	15	2016	2015	Male	14426
state	15	2016	2016	Female	37015
state	15	2016	2016	Male	18316
state	16	2016	2015	Female	16016
state	16	2016	2015	Male	7604
state	16	2016	2016	Female	17307
state	16	2016	2016	Male	8350
state	17	2016	2015	Female	10746
state	17	2016	2015	Male	5497
state	17	2016	2016	Female	12842
state	17	2016	2016	Male	6407
state	18	2016	2015	Female	3410
state	18	2016	2015	Male	1731
state	18	2016	2016	Female	4052
state	18	2016	2016	Male	1966
state	19	2016	2015	Female	28560
state	19	2016	2015	Male	14420
state	19	2016	2016	Female	29324
state	19	2016	2016	Male	15699
state	20	2016	2015	Female	16987
state	20	2016	2015	Male	9832
state	20	2016	2016	Female	18772
state	20	2016	2016	Male	10702
state	21	2016	2015	Female	7342
state	21	2016	2015	Male	4707
state	21	2016	2016	Female	8062
state	21	2016	2016	Male	5069
state	22	2016	2015	Female	4736
state	22	2016	2015	Male	2677
state	22	2016	2016	Female	5463
state	22	2016	2016	Male	3055
state	23	2016	2015	Female	13267
state	23	2016	2015	Male	5807
state	23	2016	2016	Female	15047
state	23	2016	2016	Male	6680
state	24	2016	2015	Female	5536
state	24	2016	2015	Male	2254
state	24	2016	2016	Female	5246
state	24	2016	2016	Male	1693
state	25	2016	2015	Female	32492
state	25	2016	2015	Male	14911
state	25	2016	2016	Female	40499
state	25	2016	2016	Male	18451
state	26	2016	2015	Female	15055
state	26	2016	2015	Male	8204
state	26	2016	2016	Female	31180
state	26	2016	2016	Male	14957
state	27	2016	2015	Female	11871
state	27	2016	2015	Male	5330
state	27	2016	2016	Female	13448
state	27	2016	2016	Male	6077
state	28	2016	2015	Female	8692
state	28	2016	2015	Male	3573
state	28	2016	2016	Female	9779
state	28	2016	2016	Male	3721
state	29	2016	2015	Female	5676
state	29	2016	2015	Male	2191
state	29	2016	2016	Female	6244
state	29	2016	2016	Male	2388
state	30	2016	2015	Female	3684
state	30	2016	2015	Male	1489
state	30	2016	2016	Female	4367
state	30	2016	2016	Male	1731
state	31	2016	2015	Female	10874
state	31	2016	2015	Male	4739
state	31	2016	2016	Female	11329
state	31	2016	2016	Male	4979
state	32	2016	2015	Female	24517
state	32	2016	2015	Male	10588
state	32	2016	2016	Female	26428
state	32	2016	2016	Male	12204
state	33	2016	2015	Female	20981
state	33	2016	2015	Male	9431
state	33	2016	2016	Female	26932
state	33	2016	2016	Male	12105
state	34	2016	2015	Female	5511
state	34	2016	2015	Male	3615
state	34	2016	2016	Female	5430
state	34	2016	2016	Male	3778
state	35	2016	2015	Female	28362
state	35	2016	2015	Male	13559
state	35	2016	2016	Female	31736
state	35	2016	2016	Male	16814
state	36	2016	2015	Female	3108
state	36	2016	2015	Male	1883
state	36	2016	2016	Female	3749
state	36	2016	2016	Male	2273
state	37	2016	2015	Female	2045
state	37	2016	2015	Male	1322
state	37	2016	2016	Female	2422
state	37	2016	2016	Male	1508
\.


--
-- Name: hiv_arvs hiv_arvs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hiv_arvs
    ADD CONSTRAINT hiv_arvs_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year, gender);


--
-- PostgreSQL database dump complete
--
