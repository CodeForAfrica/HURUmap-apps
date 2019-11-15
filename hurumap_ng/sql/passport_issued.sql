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

ALTER TABLE IF EXISTS ONLY public.passport_issued DROP CONSTRAINT IF EXISTS passport_issued_pkey;
DROP TABLE IF EXISTS public.passport_issued;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: passport_issued; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.passport_issued (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: passport_issued; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.passport_issued (geo_level, geo_code, geo_version, year, total) FROM stdin;
country	NG	2016	2015	795378
country	NG	2016	2016	838298
country	NG	2016	2017	872864
country	NG	2016	2018	1036682
state	1	2016	2015	14891
state	1	2016	2016	18789
state	1	2016	2017	21057
state	2	2016	2015	4464
state	2	2016	2016	5467
state	2	2016	2017	5499
state	3	2016	2015	7951
state	3	2016	2016	7279
state	3	2016	2017	7997
state	4	2016	2015	16363
state	4	2016	2016	20261
state	4	2016	2017	19774
state	5	2016	2015	4949
state	5	2016	2016	5333
state	5	2016	2017	5013
state	6	2016	2015	3672
state	6	2016	2016	5333
state	6	2016	2017	10357
state	7	2016	2015	3444
state	7	2016	2016	3290
state	7	2016	2017	3773
state	8	2016	2015	4939
state	8	2016	2016	5271
state	8	2016	2017	6772
state	9	2016	2015	4537
state	9	2016	2016	4650
state	9	2016	2017	6140
state	10	2016	2015	5116
state	10	2016	2016	37108
state	10	2016	2017	40499
state	11	2016	2015	2122
state	11	2016	2016	2788
state	11	2016	2017	7360
state	12	2016	2015	33242
state	12	2016	2016	37718
state	12	2016	2017	25145
state	13	2016	2015	5876
state	13	2016	2016	8534
state	13	2016	2017	13299
state	14	2016	2015	16645
state	14	2016	2016	19322
state	14	2016	2017	19014
state	15	2016	2015	97557
state	15	2016	2016	97164
state	15	2016	2017	94568
state	16	2016	2015	4402
state	16	2016	2016	6265
state	16	2016	2017	4830
state	17	2016	2015	25316
state	17	2016	2016	29507
state	17	2016	2017	23789
state	18	2016	2015	5226
state	18	2016	2016	8081
state	18	2016	2017	9673
state	19	2016	2015	20379
state	19	2016	2016	21034
state	19	2016	2017	23124
state	20	2016	2015	27961
state	20	2016	2016	36048
state	20	2016	2017	29953
state	21	2016	2015	12052
state	21	2016	2016	16520
state	21	2016	2017	11943
state	22	2016	2015	4684
state	22	2016	2016	7124
state	22	2016	2017	6372
state	23	2016	2015	3553
state	23	2016	2016	3487
state	23	2016	2017	10356
state	24	2016	2015	0
state	24	2016	2016	17827
state	24	2016	2017	14910
state	25	2016	2015	237095
state	25	2016	2016	239844
state	25	2016	2017	254897
state	26	2016	2015	2506
state	26	2016	2016	3459
state	26	2016	2017	2828
state	27	2016	2015	6656
state	27	2016	2016	7060
state	27	2016	2017	9633
state	28	2016	2015	27803
state	28	2016	2016	29952
state	28	2016	2017	30321
state	29	2016	2015	12773
state	29	2016	2016	16775
state	29	2016	2017	21640
state	30	2016	2015	14984
state	30	2016	2016	21034
state	30	2016	2017	25958
state	31	2016	2015	35842
state	31	2016	2016	39849
state	31	2016	2017	49453
state	32	2016	2015	77812
state	32	2016	2016	6685
state	32	2016	2017	7972
state	33	2016	2015	33424
state	33	2016	2016	29754
state	33	2016	2017	27998
state	34	2016	2015	7760
state	34	2016	2016	7428
state	34	2016	2017	7700
state	35	2016	2015	2463
state	35	2016	2016	3778
state	35	2016	2017	3369
state	36	2016	2015	2499
state	36	2016	2016	2757
state	36	2016	2017	2629
state	37	2016	2015	4420
state	37	2016	2016	5723
state	37	2016	2017	7249
state	1	2016	2018	21710
state	2	2016	2018	5260
state	3	2016	2018	10586
state	4	2016	2018	20860
state	5	2016	2018	4398
state	6	2016	2018	13405
state	7	2016	2018	4093
state	8	2016	2018	7724
state	9	2016	2018	6829
state	10	2016	2018	48473
state	11	2016	2018	6950
state	12	2016	2018	38612
state	13	2016	2018	14614
state	14	2016	2018	25113
state	15	2016	2018	121398
state	16	2016	2018	5203
state	17	2016	2018	27930
state	18	2016	2018	9732
state	19	2016	2018	25285
state	20	2016	2018	39931
state	21	2016	2018	11097
state	22	2016	2018	4431
state	23	2016	2018	7883
state	24	2016	2018	21001
state	25	2016	2018	292848
state	26	2016	2018	3181
state	27	2016	2018	8168
state	28	2016	2018	48892
state	29	2016	2018	23258
state	30	2016	2018	26642
state	31	2016	2018	68011
state	32	2016	2018	9862
state	33	2016	2018	36247
state	34	2016	2018	6616
state	35	2016	2018	2464
state	36	2016	2018	2713
state	37	2016	2018	5262
\.


--
-- Name: passport_issued passport_issued_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.passport_issued
    ADD CONSTRAINT passport_issued_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
