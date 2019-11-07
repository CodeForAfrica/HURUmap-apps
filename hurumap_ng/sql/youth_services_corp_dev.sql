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

ALTER TABLE IF EXISTS ONLY public.youth_services_corp_dev DROP CONSTRAINT IF EXISTS youth_services_corp_dev_pkey;
DROP TABLE IF EXISTS public.youth_services_corp_dev;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: youth_services_corp_dev; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.youth_services_corp_dev (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: youth_services_corp_dev; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.youth_services_corp_dev (geo_level, geo_code, geo_version, year, gender, total) FROM stdin;
country	NG	2016	2015	Female	112780
country	NG	2016	2015	Male	133737
country	NG	2016	2016	Female	143142
country	NG	2016	2016	Male	158198
state	1	2016	2015	Female	2761
state	1	2016	2015	Male	3755
state	1	2016	2016	Female	3945
state	1	2016	2016	Male	4302
state	2	2016	2015	Female	508
state	2	2016	2015	Male	885
state	2	2016	2016	Female	867
state	2	2016	2016	Male	1292
state	3	2016	2015	Female	4295
state	3	2016	2015	Male	5079
state	3	2016	2016	Female	5294
state	3	2016	2016	Male	4725
state	4	2016	2015	Female	3481
state	4	2016	2015	Male	3843
state	4	2016	2016	Female	4850
state	4	2016	2016	Male	4112
state	5	2016	2015	Female	1347
state	5	2016	2015	Male	2439
state	5	2016	2016	Female	2134
state	5	2016	2016	Male	4133
state	6	2016	2015	Female	2471
state	6	2016	2015	Male	2768
state	6	2016	2016	Female	2777
state	6	2016	2016	Male	3371
state	7	2016	2015	Female	3624
state	7	2016	2015	Male	4650
state	7	2016	2016	Female	3782
state	7	2016	2016	Male	4644
state	8	2016	2015	Female	419
state	8	2016	2015	Male	366
state	8	2016	2016	Female	523
state	8	2016	2016	Male	817
state	9	2016	2015	Female	2960
state	9	2016	2015	Male	3764
state	9	2016	2016	Female	3397
state	9	2016	2016	Male	4048
state	10	2016	2015	Female	4863
state	10	2016	2015	Male	5181
state	10	2016	2016	Female	5732
state	10	2016	2016	Male	5073
state	11	2016	2015	Female	2507
state	11	2016	2015	Male	3608
state	11	2016	2016	Female	2927
state	11	2016	2016	Male	4414
state	12	2016	2015	Female	3061
state	12	2016	2015	Male	3797
state	12	2016	2016	Female	3707
state	12	2016	2016	Male	3715
state	13	2016	2015	Female	3020
state	13	2016	2015	Male	3907
state	13	2016	2016	Female	3063
state	13	2016	2016	Male	4106
state	14	2016	2015	Female	4662
state	14	2016	2015	Male	3908
state	14	2016	2016	Female	5487
state	14	2016	2016	Male	4530
state	15	2016	2015	Female	7533
state	15	2016	2015	Male	5708
state	15	2016	2016	Female	9482
state	15	2016	2016	Male	6835
state	16	2016	2015	Female	779
state	16	2016	2015	Male	1665
state	16	2016	2016	Female	1529
state	16	2016	2016	Male	2620
state	17	2016	2015	Female	2852
state	17	2016	2015	Male	4050
state	17	2016	2016	Female	3423
state	17	2016	2016	Male	3144
state	18	2016	2015	Female	1348
state	18	2016	2015	Male	3200
state	18	2016	2016	Female	2491
state	18	2016	2016	Male	6078
state	19	2016	2015	Female	3927
state	19	2016	2015	Male	4544
state	19	2016	2016	Female	4928
state	19	2016	2016	Male	5102
state	20	2016	2015	Female	2868
state	20	2016	2015	Male	4466
state	20	2016	2016	Female	3688
state	20	2016	2016	Male	4884
state	21	2016	2015	Female	1341
state	21	2016	2015	Male	2836
state	21	2016	2016	Female	3327
state	21	2016	2016	Male	5794
state	22	2016	2015	Female	1450
state	22	2016	2015	Male	2885
state	22	2016	2016	Female	2200
state	22	2016	2016	Male	3817
state	23	2016	2015	Female	2385
state	23	2016	2015	Male	3571
state	23	2016	2016	Female	3511
state	23	2016	2016	Male	4105
state	24	2016	2015	Female	2960
state	24	2016	2015	Male	3780
state	24	2016	2016	Female	4050
state	24	2016	2016	Male	3871
state	25	2016	2015	Female	7869
state	25	2016	2015	Male	4556
state	25	2016	2016	Female	10556
state	25	2016	2016	Male	5628
state	26	2016	2015	Female	2717
state	26	2016	2015	Male	3425
state	26	2016	2016	Female	3215
state	26	2016	2016	Male	3610
state	27	2016	2015	Female	3467
state	27	2016	2015	Male	5196
state	27	2016	2016	Female	3951
state	27	2016	2016	Male	4658
state	28	2016	2015	Female	5941
state	28	2016	2015	Male	5590
state	28	2016	2016	Female	6794
state	28	2016	2016	Male	5846
state	29	2016	2015	Female	3334
state	29	2016	2015	Male	4453
state	29	2016	2016	Female	3918
state	29	2016	2016	Male	4359
state	30	2016	2015	Female	4090
state	30	2016	2015	Male	4774
state	30	2016	2016	Female	4109
state	30	2016	2016	Male	4416
state	31	2016	2015	Female	5544
state	31	2016	2015	Male	4763
state	31	2016	2016	Female	6814
state	31	2016	2016	Male	5459
state	32	2016	2015	Female	3115
state	32	2016	2015	Male	4141
state	32	2016	2016	Female	4058
state	32	2016	2016	Male	5731
state	33	2016	2015	Female	5031
state	33	2016	2015	Male	3543
state	33	2016	2016	Female	5911
state	33	2016	2016	Male	4381
state	34	2016	2015	Female	1652
state	34	2016	2015	Male	3709
state	34	2016	2016	Female	2466
state	34	2016	2016	Male	4502
state	35	2016	2015	Female	1182
state	35	2016	2015	Male	1757
state	35	2016	2016	Female	2128
state	35	2016	2016	Male	3396
state	36	2016	2015	Female	244
state	36	2016	2015	Male	609
state	36	2016	2016	Female	439
state	36	2016	2016	Male	1252
state	37	2016	2015	Female	1172
state	37	2016	2015	Male	2566
state	37	2016	2016	Female	1669
state	37	2016	2016	Male	5428
\.


--
-- Name: youth_services_corp_dev youth_services_corp_dev_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.youth_services_corp_dev
    ADD CONSTRAINT youth_services_corp_dev_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year, gender);


--
-- PostgreSQL database dump complete
--
