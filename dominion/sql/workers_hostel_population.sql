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
province	ZA_1_008	2009	2018	26439
province	ZA_1_008	2009	2017	33212
province	ZA_1_008	2009	2016	29746
province	ZA_1_008	2009	2015	36219
province	ZA_1_008	2009	2014	23209
province	ZA_1_008	2009	2013	14521
province	ZA_1_008	2009	2012	32649
province	ZA_1_008	2009	2011	28479
province	ZA_1_008	2009	2010	28111
province	ZA_1_008	2009	2009	23155
province	ZA_1_008	2009	2008	35396
province	ZA_1_008	2009	2007	30864
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
province	ZA_1_006	2009	2018	30110
province	ZA_1_006	2009	2017	21013
province	ZA_1_006	2009	2016	17218
province	ZA_1_006	2009	2015	16822
province	ZA_1_006	2009	2014	19476
province	ZA_1_006	2009	2013	12502
province	ZA_1_006	2009	2012	24498
province	ZA_1_006	2009	2011	22101
province	ZA_1_006	2009	2010	3797
province	ZA_1_006	2009	2009	7802
province	ZA_1_006	2009	2008	31350
province	ZA_1_006	2009	2007	20634
province	ZA_1_007	2009	2018	18801
province	ZA_1_007	2009	2017	16628
province	ZA_1_007	2009	2016	33091
province	ZA_1_007	2009	2015	41240
province	ZA_1_007	2009	2014	10127
province	ZA_1_007	2009	2013	14102
province	ZA_1_007	2009	2012	24056
province	ZA_1_007	2009	2011	12400
province	ZA_1_007	2009	2010	23761
province	ZA_1_007	2009	2009	17653
province	ZA_1_007	2009	2008	95935
province	ZA_1_007	2009	2007	47691
province	ZA_1_004	2009	2018	54914
province	ZA_1_004	2009	2017	42922
province	ZA_1_004	2009	2016	50683
province	ZA_1_004	2009	2015	30167
province	ZA_1_004	2009	2014	38591
province	ZA_1_004	2009	2013	29446
province	ZA_1_004	2009	2012	36135
province	ZA_1_004	2009	2011	43677
province	ZA_1_004	2009	2010	38670
province	ZA_1_004	2009	2009	92007
province	ZA_1_004	2009	2008	70080
province	ZA_1_004	2009	2007	62464
province	ZA_1_005	2009	2018	40903
province	ZA_1_005	2009	2017	57365
province	ZA_1_005	2009	2016	66233
province	ZA_1_005	2009	2015	58867
province	ZA_1_005	2009	2014	65612
province	ZA_1_005	2009	2013	39453
province	ZA_1_005	2009	2012	78528
province	ZA_1_005	2009	2011	15574
province	ZA_1_005	2009	2010	2527
province	ZA_1_005	2009	2009	12269
province	ZA_1_005	2009	2008	44933
province	ZA_1_005	2009	2007	53409
province	ZA_1_001	2009	2018	78506
province	ZA_1_001	2009	2017	66753
province	ZA_1_001	2009	2016	83522
province	ZA_1_001	2009	2015	87078
province	ZA_1_001	2009	2014	76310
province	ZA_1_001	2009	2013	66730
province	ZA_1_001	2009	2012	132437
province	ZA_1_001	2009	2011	44461
province	ZA_1_001	2009	2010	92347
province	ZA_1_001	2009	2009	117925
province	ZA_1_001	2009	2008	120315
province	ZA_1_001	2009	2007	104997
province	ZA_1_009	2009	2018	141846
province	ZA_1_009	2009	2017	169124
province	ZA_1_009	2009	2016	150321
province	ZA_1_009	2009	2015	125290
province	ZA_1_009	2009	2014	100933
province	ZA_1_009	2009	2013	112721
province	ZA_1_009	2009	2012	128690
province	ZA_1_009	2009	2011	75546
province	ZA_1_009	2009	2010	40683
province	ZA_1_009	2009	2009	69818
province	ZA_1_009	2009	2008	105388
province	ZA_1_009	2009	2007	265845
province	ZA_1_002	2009	2018	5195
province	ZA_1_002	2009	2017	33499
province	ZA_1_002	2009	2016	20132
province	ZA_1_002	2009	2015	8765
province	ZA_1_002	2009	2014	7978
province	ZA_1_002	2009	2013	15392
province	ZA_1_002	2009	2012	24256
province	ZA_1_002	2009	2011	4516
province	ZA_1_002	2009	2010	3420
province	ZA_1_002	2009	2009	4669
province	ZA_1_002	2009	2008	13459
province	ZA_1_002	2009	2007	59185
province	ZA_1_003	2009	2018	32372
province	ZA_1_003	2009	2017	32123
province	ZA_1_003	2009	2016	13482
province	ZA_1_003	2009	2015	19136
province	ZA_1_003	2009	2014	23989
province	ZA_1_003	2009	2013	17698
province	ZA_1_003	2009	2012	34215
province	ZA_1_003	2009	2011	15942
province	ZA_1_003	2009	2010	24815
province	ZA_1_003	2009	2009	13446
province	ZA_1_003	2009	2008	17493
province	ZA_1_003	2009	2007	3148
\.


--
-- Name: workers_hostel_population pk_workers_hostel_population; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_population
    ADD CONSTRAINT pk_workers_hostel_population PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_population_year);


--
-- PostgreSQL database dump complete
--
