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
province	WC	2009	2018	26439
province	WC	2009	2017	33212
province	WC	2009	2016	29746
province	WC	2009	2015	36219
province	WC	2009	2014	23209
province	WC	2009	2013	14521
province	WC	2009	2012	32649
province	WC	2009	2011	28479
province	WC	2009	2010	28111
province	WC	2009	2009	23155
province	WC	2009	2008	35396
province	WC	2009	2007	30864
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
province	NC	2009	2018	30110
province	NC	2009	2017	21013
province	NC	2009	2016	17218
province	NC	2009	2015	16822
province	NC	2009	2014	19476
province	NC	2009	2013	12502
province	NC	2009	2012	24498
province	NC	2009	2011	22101
province	NC	2009	2010	3797
province	NC	2009	2009	7802
province	NC	2009	2008	31350
province	NC	2009	2007	20634
province	NW	2009	2018	18801
province	NW	2009	2017	16628
province	NW	2009	2016	33091
province	NW	2009	2015	41240
province	NW	2009	2014	10127
province	NW	2009	2013	14102
province	NW	2009	2012	24056
province	NW	2009	2011	12400
province	NW	2009	2010	23761
province	NW	2009	2009	17653
province	NW	2009	2008	95935
province	NW	2009	2007	47691
province	MP	2009	2018	54914
province	MP	2009	2017	42922
province	MP	2009	2016	50683
province	MP	2009	2015	30167
province	MP	2009	2014	38591
province	MP	2009	2013	29446
province	MP	2009	2012	36135
province	MP	2009	2011	43677
province	MP	2009	2010	38670
province	MP	2009	2009	92007
province	MP	2009	2008	70080
province	MP	2009	2007	62464
province	LIM	2009	2018	40903
province	LIM	2009	2017	57365
province	LIM	2009	2016	66233
province	LIM	2009	2015	58867
province	LIM	2009	2014	65612
province	LIM	2009	2013	39453
province	LIM	2009	2012	78528
province	LIM	2009	2011	15574
province	LIM	2009	2010	2527
province	LIM	2009	2009	12269
province	LIM	2009	2008	44933
province	LIM	2009	2007	53409
province	KZN	2009	2018	78506
province	KZN	2009	2017	66753
province	KZN	2009	2016	83522
province	KZN	2009	2015	87078
province	KZN	2009	2014	76310
province	KZN	2009	2013	66730
province	KZN	2009	2012	132437
province	KZN	2009	2011	44461
province	KZN	2009	2010	92347
province	KZN	2009	2009	117925
province	KZN	2009	2008	120315
province	KZN	2009	2007	104997
province	GT	2009	2018	141846
province	GT	2009	2017	169124
province	GT	2009	2016	150321
province	GT	2009	2015	125290
province	GT	2009	2014	100933
province	GT	2009	2013	112721
province	GT	2009	2012	128690
province	GT	2009	2011	75546
province	GT	2009	2010	40683
province	GT	2009	2009	69818
province	GT	2009	2008	105388
province	GT	2009	2007	265845
province	FS	2009	2018	5195
province	FS	2009	2017	33499
province	FS	2009	2016	20132
province	FS	2009	2015	8765
province	FS	2009	2014	7978
province	FS	2009	2013	15392
province	FS	2009	2012	24256
province	FS	2009	2011	4516
province	FS	2009	2010	3420
province	FS	2009	2009	4669
province	FS	2009	2008	13459
province	FS	2009	2007	59185
province	EC	2009	2018	32372
province	EC	2009	2017	32123
province	EC	2009	2016	13482
province	EC	2009	2015	19136
province	EC	2009	2014	23989
province	EC	2009	2013	17698
province	EC	2009	2012	34215
province	EC	2009	2011	15942
province	EC	2009	2010	24815
province	EC	2009	2009	13446
province	EC	2009	2008	17493
province	EC	2009	2007	3148
\.


--
-- Name: workers_hostel_population pk_workers_hostel_population; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_population
    ADD CONSTRAINT pk_workers_hostel_population PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_population_year);


--
-- PostgreSQL database dump complete
--
