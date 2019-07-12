--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.workers_hostel_population DROP CONSTRAINT IF EXISTS pk_workers_hostel_population;
DROP TABLE IF EXISTS public.workers_hostel_population;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_population; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_population (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_population_year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_population; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_population (geo_level, geo_code, geo_version, workers_hostel_population_year, total) FROM stdin;
level1	ZA_1_008	2009	2018	26439
level1	ZA_1_008	2009	2017	33212
level1	ZA_1_008	2009	2016	29746
level1	ZA_1_008	2009	2015	36219
level1	ZA_1_008	2009	2014	23209
level1	ZA_1_008	2009	2013	14521
level1	ZA_1_008	2009	2012	32649
level1	ZA_1_008	2009	2011	28479
level1	ZA_1_008	2009	2010	28111
level1	ZA_1_008	2009	2009	23155
level1	ZA_1_008	2009	2008	35396
level1	ZA_1_008	2009	2007	30864
country	ZA	2009	2018	429085
country	ZA	2009	2017	472640
country	ZA	2009	2016	464427
country	ZA	2009	2015	423585
country	ZA	2009	2014	366225
country	ZA	2009	2013	322567
country	ZA	2009	2012	515465
country	ZA	2009	2011	262696
country	ZA	2009	2010	258129
country	ZA	2009	2009	358743
country	ZA	2009	2008	534350
country	ZA	2009	2007	648237
level1	ZA_1_006	2009	2018	30110
level1	ZA_1_006	2009	2017	21013
level1	ZA_1_006	2009	2016	17218
level1	ZA_1_006	2009	2015	16822
level1	ZA_1_006	2009	2014	19476
level1	ZA_1_006	2009	2013	12502
level1	ZA_1_006	2009	2012	24498
level1	ZA_1_006	2009	2011	22101
level1	ZA_1_006	2009	2010	3797
level1	ZA_1_006	2009	2009	7802
level1	ZA_1_006	2009	2008	31350
level1	ZA_1_006	2009	2007	20634
level1	ZA_1_007	2009	2018	18801
level1	ZA_1_007	2009	2017	16628
level1	ZA_1_007	2009	2016	33091
level1	ZA_1_007	2009	2015	41240
level1	ZA_1_007	2009	2014	10127
level1	ZA_1_007	2009	2013	14102
level1	ZA_1_007	2009	2012	24056
level1	ZA_1_007	2009	2011	12400
level1	ZA_1_007	2009	2010	23761
level1	ZA_1_007	2009	2009	17653
level1	ZA_1_007	2009	2008	95935
level1	ZA_1_007	2009	2007	47691
level1	ZA_1_004	2009	2018	54914
level1	ZA_1_004	2009	2017	42922
level1	ZA_1_004	2009	2016	50683
level1	ZA_1_004	2009	2015	30167
level1	ZA_1_004	2009	2014	38591
level1	ZA_1_004	2009	2013	29446
level1	ZA_1_004	2009	2012	36135
level1	ZA_1_004	2009	2011	43677
level1	ZA_1_004	2009	2010	38670
level1	ZA_1_004	2009	2009	92007
level1	ZA_1_004	2009	2008	70080
level1	ZA_1_004	2009	2007	62464
level1	ZA_1_005	2009	2018	40903
level1	ZA_1_005	2009	2017	57365
level1	ZA_1_005	2009	2016	66233
level1	ZA_1_005	2009	2015	58867
level1	ZA_1_005	2009	2014	65612
level1	ZA_1_005	2009	2013	39453
level1	ZA_1_005	2009	2012	78528
level1	ZA_1_005	2009	2011	15574
level1	ZA_1_005	2009	2010	2527
level1	ZA_1_005	2009	2009	12269
level1	ZA_1_005	2009	2008	44933
level1	ZA_1_005	2009	2007	53409
level1	ZA_1_001	2009	2018	78506
level1	ZA_1_001	2009	2017	66753
level1	ZA_1_001	2009	2016	83522
level1	ZA_1_001	2009	2015	87078
level1	ZA_1_001	2009	2014	76310
level1	ZA_1_001	2009	2013	66730
level1	ZA_1_001	2009	2012	132437
level1	ZA_1_001	2009	2011	44461
level1	ZA_1_001	2009	2010	92347
level1	ZA_1_001	2009	2009	117925
level1	ZA_1_001	2009	2008	120315
level1	ZA_1_001	2009	2007	104997
level1	ZA_1_009	2009	2018	141846
level1	ZA_1_009	2009	2017	169124
level1	ZA_1_009	2009	2016	150321
level1	ZA_1_009	2009	2015	125290
level1	ZA_1_009	2009	2014	100933
level1	ZA_1_009	2009	2013	112721
level1	ZA_1_009	2009	2012	128690
level1	ZA_1_009	2009	2011	75546
level1	ZA_1_009	2009	2010	40683
level1	ZA_1_009	2009	2009	69818
level1	ZA_1_009	2009	2008	105388
level1	ZA_1_009	2009	2007	265845
level1	ZA_1_002	2009	2018	5195
level1	ZA_1_002	2009	2017	33499
level1	ZA_1_002	2009	2016	20132
level1	ZA_1_002	2009	2015	8765
level1	ZA_1_002	2009	2014	7978
level1	ZA_1_002	2009	2013	15392
level1	ZA_1_002	2009	2012	24256
level1	ZA_1_002	2009	2011	4516
level1	ZA_1_002	2009	2010	3420
level1	ZA_1_002	2009	2009	4669
level1	ZA_1_002	2009	2008	13459
level1	ZA_1_002	2009	2007	59185
level1	ZA_1_003	2009	2018	32372
level1	ZA_1_003	2009	2017	32123
level1	ZA_1_003	2009	2016	13482
level1	ZA_1_003	2009	2015	19136
level1	ZA_1_003	2009	2014	23989
level1	ZA_1_003	2009	2013	17698
level1	ZA_1_003	2009	2012	34215
level1	ZA_1_003	2009	2011	15942
level1	ZA_1_003	2009	2010	24815
level1	ZA_1_003	2009	2009	13446
level1	ZA_1_003	2009	2008	17493
level1	ZA_1_003	2009	2007	3148
\.


--
-- Name: workers_hostel_population pk_workers_hostel_population; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_population
    ADD CONSTRAINT pk_workers_hostel_population PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_population_year);


--
-- PostgreSQL database dump complete
--
