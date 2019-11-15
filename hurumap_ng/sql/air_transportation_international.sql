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

ALTER TABLE IF EXISTS ONLY public.air_transportation_international DROP CONSTRAINT IF EXISTS air_transportation_international_pkey;
DROP TABLE IF EXISTS public.air_transportation_international;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: air_transportation_international; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.air_transportation_international (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    name character varying(68) NOT NULL,
    month character varying(10) NOT NULL,
    depature_arrival character varying(12) NOT NULL,
    total integer
);


--
-- Data for Name: air_transportation_international; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.air_transportation_international (geo_level, geo_code, geo_version, name, month, depature_arrival, total) FROM stdin;
state	15	2016	Abuja	Jan	Arrival	40793
state	15	2016	Abuja	Jan	Departure	37748
state	15	2016	Abuja	Feb	Arrival	28274
state	15	2016	Abuja	Feb	Departure	31642
state	15	2016	Abuja	Mar	Arrival	35304
state	15	2016	Abuja	Mar	Departure	37863
state	15	2016	Abuja	Apr	Arrival	40808
state	15	2016	Abuja	Apr	Departure	40007
state	15	2016	Abuja	May	Arrival	36961
state	15	2016	Abuja	May	Departure	39026
state	15	2016	Abuja	Jun	Arrival	41098
state	15	2016	Abuja	Jun	Departure	42002
state	15	2016	Abuja	Jul	Arrival	46680
state	15	2016	Abuja	Jul	Departure	50571
state	15	2016	Abuja	Aug	Arrival	50629
state	15	2016	Abuja	Aug	Departure	53075
state	15	2016	Abuja	Sep	Arrival	44885
state	15	2016	Abuja	Sep	Departure	45385
state	15	2016	Abuja	Oct	Arrival	39278
state	15	2016	Abuja	Oct	Departure	41099
state	15	2016	Abuja	Nov	Arrival	41769
state	15	2016	Abuja	Nov	Departure	40888
state	15	2016	Abuja	Dec	Arrival	54489
state	15	2016	Abuja	Dec	Departure	55709
state	3	2016	Akwa Ibom	Jan	Arrival	0
state	3	2016	Akwa Ibom	Jan	Departure	0
state	3	2016	Akwa Ibom	Feb	Arrival	0
state	3	2016	Akwa Ibom	Feb	Departure	0
state	3	2016	Akwa Ibom	Mar	Arrival	0
state	3	2016	Akwa Ibom	Mar	Departure	0
state	3	2016	Akwa Ibom	Apr	Arrival	0
state	3	2016	Akwa Ibom	Apr	Departure	0
state	3	2016	Akwa Ibom	May	Arrival	51
state	3	2016	Akwa Ibom	May	Departure	57
state	3	2016	Akwa Ibom	Jun	Arrival	0
state	3	2016	Akwa Ibom	Jun	Departure	0
state	3	2016	Akwa Ibom	Jul	Arrival	0
state	3	2016	Akwa Ibom	Jul	Departure	0
state	3	2016	Akwa Ibom	Aug	Arrival	0
state	3	2016	Akwa Ibom	Aug	Departure	0
state	3	2016	Akwa Ibom	Sep	Arrival	0
state	3	2016	Akwa Ibom	Sep	Departure	0
state	3	2016	Akwa Ibom	Oct	Arrival	0
state	3	2016	Akwa Ibom	Oct	Departure	0
state	3	2016	Akwa Ibom	Nov	Arrival	0
state	3	2016	Akwa Ibom	Nov	Departure	0
state	3	2016	Akwa Ibom	Dec	Arrival	0
state	3	2016	Akwa Ibom	Dec	Departure	0
state	5	2016	Bauchi	Jan	Arrival	0
state	5	2016	Bauchi	Jan	Departure	0
state	5	2016	Bauchi	Feb	Arrival	0
state	5	2016	Bauchi	Feb	Departure	0
state	5	2016	Bauchi	Mar	Arrival	0
state	5	2016	Bauchi	Mar	Departure	0
state	5	2016	Bauchi	Apr	Arrival	0
state	5	2016	Bauchi	Apr	Departure	0
state	5	2016	Bauchi	May	Arrival	0
state	5	2016	Bauchi	May	Departure	0
state	5	2016	Bauchi	Jun	Arrival	0
state	5	2016	Bauchi	Jun	Departure	0
state	5	2016	Bauchi	Jul	Arrival	0
state	5	2016	Bauchi	Jul	Departure	0
state	5	2016	Bauchi	Aug	Arrival	0
state	5	2016	Bauchi	Aug	Departure	0
state	5	2016	Bauchi	Sep	Arrival	0
state	5	2016	Bauchi	Sep	Departure	0
state	5	2016	Bauchi	Oct	Arrival	0
state	5	2016	Bauchi	Oct	Departure	0
state	5	2016	Bauchi	Nov	Arrival	0
state	5	2016	Bauchi	Nov	Departure	0
state	5	2016	Bauchi	Dec	Arrival	0
state	5	2016	Bauchi	Dec	Departure	0
state	9	2016	Calabar	Jan	Arrival	16
state	9	2016	Calabar	Jan	Departure	12
state	9	2016	Calabar	Feb	Arrival	0
state	9	2016	Calabar	Feb	Departure	0
state	9	2016	Calabar	Mar	Arrival	0
state	9	2016	Calabar	Mar	Departure	0
state	9	2016	Calabar	Apr	Arrival	0
state	9	2016	Calabar	Apr	Departure	0
state	9	2016	Calabar	May	Arrival	0
state	9	2016	Calabar	May	Departure	0
state	9	2016	Calabar	Jun	Arrival	0
state	9	2016	Calabar	Jun	Departure	0
state	9	2016	Calabar	Jul	Arrival	0
state	9	2016	Calabar	Jul	Departure	0
state	9	2016	Calabar	Aug	Arrival	0
state	9	2016	Calabar	Aug	Departure	0
state	9	2016	Calabar	Sep	Arrival	0
state	9	2016	Calabar	Sep	Departure	0
state	9	2016	Calabar	Oct	Arrival	0
state	9	2016	Calabar	Oct	Departure	0
state	9	2016	Calabar	Nov	Arrival	0
state	9	2016	Calabar	Nov	Departure	0
state	9	2016	Calabar	Dec	Arrival	0
state	9	2016	Calabar	Dec	Departure	0
state	18	2016	Dutse	Jan	Arrival	0
state	18	2016	Dutse	Jan	Departure	0
state	18	2016	Dutse	Feb	Arrival	0
state	18	2016	Dutse	Feb	Departure	0
state	18	2016	Dutse	Mar	Arrival	0
state	18	2016	Dutse	Mar	Departure	0
state	18	2016	Dutse	Apr	Arrival	0
state	18	2016	Dutse	Apr	Departure	0
state	18	2016	Dutse	May	Arrival	0
state	18	2016	Dutse	May	Departure	0
state	18	2016	Dutse	Jun	Arrival	0
state	18	2016	Dutse	Jun	Departure	0
state	18	2016	Dutse	Jul	Arrival	0
state	18	2016	Dutse	Jul	Departure	0
state	18	2016	Dutse	Aug	Arrival	0
state	18	2016	Dutse	Aug	Departure	557
state	18	2016	Dutse	Sep	Arrival	573
state	18	2016	Dutse	Sep	Departure	0
state	18	2016	Dutse	Oct	Arrival	0
state	18	2016	Dutse	Oct	Departure	0
state	18	2016	Dutse	Nov	Arrival	0
state	18	2016	Dutse	Nov	Departure	0
state	18	2016	Dutse	Dec	Arrival	0
state	18	2016	Dutse	Dec	Departure	0
state	14	2016	Enugu	Jan	Arrival	2060
state	14	2016	Enugu	Jan	Departure	3141
state	14	2016	Enugu	Feb	Arrival	1306
state	14	2016	Enugu	Feb	Departure	1515
state	14	2016	Enugu	Mar	Arrival	1685
state	14	2016	Enugu	Mar	Departure	2134
state	14	2016	Enugu	Apr	Arrival	1807
state	14	2016	Enugu	Apr	Departure	2042
state	14	2016	Enugu	May	Arrival	1856
state	14	2016	Enugu	May	Departure	1992
state	14	2016	Enugu	Jun	Arrival	1767
state	14	2016	Enugu	Jun	Departure	1869
state	14	2016	Enugu	Jul	Arrival	1722
state	14	2016	Enugu	Jul	Departure	1899
state	14	2016	Enugu	Aug	Arrival	1855
state	14	2016	Enugu	Aug	Departure	2031
state	14	2016	Enugu	Sep	Arrival	1924
state	14	2016	Enugu	Sep	Departure	1647
state	14	2016	Enugu	Oct	Arrival	1683
state	14	2016	Enugu	Oct	Departure	1596
state	14	2016	Enugu	Nov	Arrival	2072
state	14	2016	Enugu	Nov	Departure	1967
state	14	2016	Enugu	Dec	Arrival	4895
state	14	2016	Enugu	Dec	Departure	2348
state	16	2016	Gombe	Jan	Arrival	0
state	16	2016	Gombe	Jan	Departure	0
state	16	2016	Gombe	Feb	Arrival	0
state	16	2016	Gombe	Feb	Departure	0
state	16	2016	Gombe	Mar	Arrival	0
state	16	2016	Gombe	Mar	Departure	0
state	16	2016	Gombe	Apr	Arrival	0
state	16	2016	Gombe	Apr	Departure	0
state	16	2016	Gombe	May	Arrival	0
state	16	2016	Gombe	May	Departure	0
state	16	2016	Gombe	Jun	Arrival	0
state	16	2016	Gombe	Jun	Departure	0
state	16	2016	Gombe	Jul	Arrival	0
state	16	2016	Gombe	Jul	Departure	0
state	16	2016	Gombe	Aug	Arrival	0
state	16	2016	Gombe	Aug	Departure	1224
state	16	2016	Gombe	Sep	Arrival	1115
state	16	2016	Gombe	Sep	Departure	0
state	16	2016	Gombe	Oct	Arrival	0
state	16	2016	Gombe	Oct	Departure	0
state	16	2016	Gombe	Nov	Arrival	0
state	16	2016	Gombe	Nov	Departure	0
state	16	2016	Gombe	Dec	Arrival	364
state	16	2016	Gombe	Dec	Departure	0
state	24	2016	Ilorin	Jan	Arrival	0
state	24	2016	Ilorin	Jan	Departure	0
state	24	2016	Ilorin	Feb	Arrival	0
state	24	2016	Ilorin	Feb	Departure	0
state	24	2016	Ilorin	Mar	Arrival	0
state	24	2016	Ilorin	Mar	Departure	0
state	24	2016	Ilorin	Apr	Arrival	0
state	24	2016	Ilorin	Apr	Departure	0
state	24	2016	Ilorin	May	Arrival	0
state	24	2016	Ilorin	May	Departure	0
state	24	2016	Ilorin	Jun	Arrival	0
state	24	2016	Ilorin	Jun	Departure	0
state	24	2016	Ilorin	Jul	Arrival	0
state	24	2016	Ilorin	Jul	Departure	0
state	24	2016	Ilorin	Aug	Arrival	0
state	24	2016	Ilorin	Aug	Departure	1950
state	24	2016	Ilorin	Sep	Arrival	1971
state	24	2016	Ilorin	Sep	Departure	0
state	24	2016	Ilorin	Oct	Arrival	0
state	24	2016	Ilorin	Oct	Departure	0
state	24	2016	Ilorin	Nov	Arrival	7
state	24	2016	Ilorin	Nov	Departure	7
state	24	2016	Ilorin	Dec	Arrival	0
state	24	2016	Ilorin	Dec	Departure	0
state	32	2016	Jos	Jan	Arrival	0
state	32	2016	Jos	Jan	Departure	0
state	32	2016	Jos	Feb	Arrival	0
state	32	2016	Jos	Feb	Departure	0
state	32	2016	Jos	Mar	Arrival	0
state	32	2016	Jos	Mar	Departure	0
state	32	2016	Jos	Apr	Arrival	0
state	32	2016	Jos	Apr	Departure	0
state	32	2016	Jos	May	Arrival	0
state	32	2016	Jos	May	Departure	0
state	32	2016	Jos	Jun	Arrival	0
state	32	2016	Jos	Jun	Departure	0
state	32	2016	Jos	Jul	Arrival	0
state	32	2016	Jos	Jul	Departure	0
state	32	2016	Jos	Aug	Arrival	0
state	32	2016	Jos	Aug	Departure	0
state	32	2016	Jos	Sep	Arrival	0
state	32	2016	Jos	Sep	Departure	0
state	32	2016	Jos	Oct	Arrival	0
state	32	2016	Jos	Oct	Departure	0
state	32	2016	Jos	Nov	Arrival	0
state	32	2016	Jos	Nov	Departure	0
state	32	2016	Jos	Dec	Arrival	0
state	32	2016	Jos	Dec	Departure	0
state	19	2016	Kaduna	Jan	Arrival	556
state	19	2016	Kaduna	Jan	Departure	473
state	19	2016	Kaduna	Feb	Arrival	243
state	19	2016	Kaduna	Feb	Departure	383
state	19	2016	Kaduna	Mar	Arrival	1585
state	19	2016	Kaduna	Mar	Departure	1081
state	19	2016	Kaduna	Apr	Arrival	1825
state	19	2016	Kaduna	Apr	Departure	1612
state	19	2016	Kaduna	May	Arrival	348
state	19	2016	Kaduna	May	Departure	656
state	19	2016	Kaduna	Jun	Arrival	1148
state	19	2016	Kaduna	Jun	Departure	2818
state	19	2016	Kaduna	Jul	Arrival	453
state	19	2016	Kaduna	Jul	Departure	2034
state	19	2016	Kaduna	Aug	Arrival	90
state	19	2016	Kaduna	Aug	Departure	2473
state	19	2016	Kaduna	Sep	Arrival	3464
state	19	2016	Kaduna	Sep	Departure	359
state	19	2016	Kaduna	Oct	Arrival	248
state	19	2016	Kaduna	Oct	Departure	228
state	19	2016	Kaduna	Nov	Arrival	0
state	19	2016	Kaduna	Nov	Departure	21
state	19	2016	Kaduna	Dec	Arrival	17
state	19	2016	Kaduna	Dec	Departure	20
state	20	2016	Kano	Jan	Arrival	8681
state	20	2016	Kano	Jan	Departure	5594
state	20	2016	Kano	Feb	Arrival	4590
state	20	2016	Kano	Feb	Departure	4276
state	20	2016	Kano	Mar	Arrival	6247
state	20	2016	Kano	Mar	Departure	6316
state	20	2016	Kano	Apr	Arrival	9241
state	20	2016	Kano	Apr	Departure	8855
state	20	2016	Kano	May	Arrival	8546
state	20	2016	Kano	May	Departure	11890
state	20	2016	Kano	Jun	Arrival	13155
state	20	2016	Kano	Jun	Departure	9105
state	20	2016	Kano	Jul	Arrival	4442
state	20	2016	Kano	Jul	Departure	5407
state	20	2016	Kano	Aug	Arrival	5814
state	20	2016	Kano	Aug	Departure	13233
state	20	2016	Kano	Sep	Arrival	8426
state	20	2016	Kano	Sep	Departure	4538
state	20	2016	Kano	Oct	Arrival	3259
state	20	2016	Kano	Oct	Departure	3333
state	20	2016	Kano	Nov	Arrival	6380
state	20	2016	Kano	Nov	Departure	5704
state	20	2016	Kano	Dec	Arrival	9810
state	20	2016	Kano	Dec	Departure	8210
state	21	2016	Katsina	Jan	Arrival	0
state	21	2016	Katsina	Jan	Departure	0
state	21	2016	Katsina	Feb	Arrival	0
state	21	2016	Katsina	Feb	Departure	0
state	21	2016	Katsina	Mar	Arrival	0
state	21	2016	Katsina	Mar	Departure	0
state	21	2016	Katsina	Apr	Arrival	0
state	21	2016	Katsina	Apr	Departure	0
state	21	2016	Katsina	May	Arrival	0
state	21	2016	Katsina	May	Departure	0
state	21	2016	Katsina	Jun	Arrival	0
state	21	2016	Katsina	Jun	Departure	0
state	21	2016	Katsina	Jul	Arrival	12
state	21	2016	Katsina	Jul	Departure	12
state	21	2016	Katsina	Aug	Arrival	0
state	21	2016	Katsina	Aug	Departure	1715
state	21	2016	Katsina	Sep	Arrival	2207
state	21	2016	Katsina	Sep	Departure	0
state	21	2016	Katsina	Oct	Arrival	0
state	21	2016	Katsina	Oct	Departure	0
state	21	2016	Katsina	Nov	Arrival	0
state	21	2016	Katsina	Nov	Departure	0
state	21	2016	Katsina	Dec	Arrival	0
state	21	2016	Katsina	Dec	Departure	0
state	22	2016	Kebbi	Jan	Arrival	0
state	22	2016	Kebbi	Jan	Departure	0
state	22	2016	Kebbi	Feb	Arrival	0
state	22	2016	Kebbi	Feb	Departure	0
state	22	2016	Kebbi	Mar	Arrival	0
state	22	2016	Kebbi	Mar	Departure	0
state	22	2016	Kebbi	Apr	Arrival	0
state	22	2016	Kebbi	Apr	Departure	0
state	22	2016	Kebbi	May	Arrival	0
state	22	2016	Kebbi	May	Departure	0
state	22	2016	Kebbi	Jun	Arrival	0
state	22	2016	Kebbi	Jun	Departure	0
state	22	2016	Kebbi	Jul	Arrival	0
state	22	2016	Kebbi	Jul	Departure	437
state	22	2016	Kebbi	Aug	Arrival	267
state	22	2016	Kebbi	Aug	Departure	1503
state	22	2016	Kebbi	Sep	Arrival	2341
state	22	2016	Kebbi	Sep	Departure	0
state	22	2016	Kebbi	Oct	Arrival	0
state	22	2016	Kebbi	Oct	Departure	0
state	22	2016	Kebbi	Nov	Arrival	0
state	22	2016	Kebbi	Nov	Departure	0
state	22	2016	Kebbi	Dec	Arrival	0
state	22	2016	Kebbi	Dec	Departure	0
state	25	2016	Lagos	Jan	Arrival	122376
state	25	2016	Lagos	Jan	Departure	137064
state	25	2016	Lagos	Feb	Arrival	94404
state	25	2016	Lagos	Feb	Departure	106160
state	25	2016	Lagos	Mar	Arrival	111150
state	25	2016	Lagos	Mar	Departure	124402
state	25	2016	Lagos	Apr	Arrival	120296
state	25	2016	Lagos	Apr	Departure	131093
state	25	2016	Lagos	May	Arrival	111501
state	25	2016	Lagos	May	Departure	119645
state	25	2016	Lagos	Jun	Arrival	116818
state	25	2016	Lagos	Jun	Departure	125032
state	25	2016	Lagos	Jul	Arrival	130408
state	25	2016	Lagos	Jul	Departure	142381
state	25	2016	Lagos	Aug	Arrival	126303
state	25	2016	Lagos	Aug	Departure	142316
state	25	2016	Lagos	Sep	Arrival	140646
state	25	2016	Lagos	Sep	Departure	135218
state	25	2016	Lagos	Oct	Arrival	124011
state	25	2016	Lagos	Oct	Departure	121372
state	25	2016	Lagos	Nov	Arrival	129955
state	25	2016	Lagos	Nov	Departure	123147
state	25	2016	Lagos	Dec	Arrival	167680
state	25	2016	Lagos	Dec	Departure	142005
state	8	2016	Maiduguri	Jan	Arrival	0
state	8	2016	Maiduguri	Jan	Departure	40
state	8	2016	Maiduguri	Feb	Arrival	22
state	8	2016	Maiduguri	Feb	Departure	40
state	8	2016	Maiduguri	Mar	Arrival	631
state	8	2016	Maiduguri	Mar	Departure	183
state	8	2016	Maiduguri	Apr	Arrival	2
state	8	2016	Maiduguri	Apr	Departure	0
state	8	2016	Maiduguri	May	Arrival	3
state	8	2016	Maiduguri	May	Departure	620
state	8	2016	Maiduguri	Jun	Arrival	1144
state	8	2016	Maiduguri	Jun	Departure	582
state	8	2016	Maiduguri	Jul	Arrival	5
state	8	2016	Maiduguri	Jul	Departure	14
state	8	2016	Maiduguri	Aug	Arrival	0
state	8	2016	Maiduguri	Aug	Departure	2359
state	8	2016	Maiduguri	Sep	Arrival	2476
state	8	2016	Maiduguri	Sep	Departure	9
state	8	2016	Maiduguri	Oct	Arrival	10
state	8	2016	Maiduguri	Oct	Departure	17
state	8	2016	Maiduguri	Nov	Arrival	15
state	8	2016	Maiduguri	Nov	Departure	5
state	8	2016	Maiduguri	Dec	Arrival	9
state	8	2016	Maiduguri	Dec	Departure	12
state	7	2016	Makurdi	Jan	Arrival	0
state	7	2016	Makurdi	Jan	Departure	0
state	7	2016	Makurdi	Feb	Arrival	0
state	7	2016	Makurdi	Feb	Departure	0
state	7	2016	Makurdi	Mar	Arrival	0
state	7	2016	Makurdi	Mar	Departure	0
state	7	2016	Makurdi	Apr	Arrival	0
state	7	2016	Makurdi	Apr	Departure	0
state	7	2016	Makurdi	May	Arrival	0
state	7	2016	Makurdi	May	Departure	0
state	7	2016	Makurdi	Jun	Arrival	0
state	7	2016	Makurdi	Jun	Departure	0
state	7	2016	Makurdi	Jul	Arrival	0
state	7	2016	Makurdi	Jul	Departure	0
state	7	2016	Makurdi	Aug	Arrival	0
state	7	2016	Makurdi	Aug	Departure	0
state	7	2016	Makurdi	Sep	Arrival	0
state	7	2016	Makurdi	Sep	Departure	0
state	7	2016	Makurdi	Oct	Arrival	0
state	7	2016	Makurdi	Oct	Departure	0
state	7	2016	Makurdi	Nov	Arrival	0
state	7	2016	Makurdi	Nov	Departure	0
state	7	2016	Makurdi	Dec	Arrival	0
state	7	2016	Makurdi	Dec	Departure	0
state	27	2016	Minna	Jan	Arrival	0
state	27	2016	Minna	Jan	Departure	0
state	27	2016	Minna	Feb	Arrival	0
state	27	2016	Minna	Feb	Departure	0
state	27	2016	Minna	Mar	Arrival	0
state	27	2016	Minna	Mar	Departure	0
state	27	2016	Minna	Apr	Arrival	0
state	27	2016	Minna	Apr	Departure	0
state	27	2016	Minna	May	Arrival	0
state	27	2016	Minna	May	Departure	0
state	27	2016	Minna	Jun	Arrival	0
state	27	2016	Minna	Jun	Departure	0
state	27	2016	Minna	Jul	Arrival	0
state	27	2016	Minna	Jul	Departure	0
state	27	2016	Minna	Aug	Arrival	166
state	27	2016	Minna	Aug	Departure	3374
state	27	2016	Minna	Sep	Arrival	3319
state	27	2016	Minna	Sep	Departure	285
state	27	2016	Minna	Oct	Arrival	0
state	27	2016	Minna	Oct	Departure	0
state	27	2016	Minna	Nov	Arrival	0
state	27	2016	Minna	Nov	Departure	0
state	27	2016	Minna	Dec	Arrival	0
state	27	2016	Minna	Dec	Departure	0
state	33	2016	Phc	Jan	Arrival	4540
state	33	2016	Phc	Jan	Departure	4324
state	33	2016	Phc	Feb	Arrival	2560
state	33	2016	Phc	Feb	Departure	2649
state	33	2016	Phc	Mar	Arrival	3186
state	33	2016	Phc	Mar	Departure	3162
state	33	2016	Phc	Apr	Arrival	3353
state	33	2016	Phc	Apr	Departure	4259
state	33	2016	Phc	May	Arrival	3522
state	33	2016	Phc	May	Departure	3527
state	33	2016	Phc	Jun	Arrival	1512
state	33	2016	Phc	Jun	Departure	1820
state	33	2016	Phc	Jul	Arrival	4288
state	33	2016	Phc	Jul	Departure	4560
state	33	2016	Phc	Aug	Arrival	4690
state	33	2016	Phc	Aug	Departure	4944
state	33	2016	Phc	Sep	Arrival	4131
state	33	2016	Phc	Sep	Departure	3673
state	33	2016	Phc	Oct	Arrival	4196
state	33	2016	Phc	Oct	Departure	3903
state	33	2016	Phc	Nov	Arrival	3786
state	33	2016	Phc	Nov	Departure	3382
state	33	2016	Phc	Dec	Arrival	6123
state	33	2016	Phc	Dec	Departure	4102
state	34	2016	Sokoto	Jan	Arrival	0
state	34	2016	Sokoto	Jan	Departure	0
state	34	2016	Sokoto	Feb	Arrival	0
state	34	2016	Sokoto	Feb	Departure	0
state	34	2016	Sokoto	Mar	Arrival	0
state	34	2016	Sokoto	Mar	Departure	0
state	34	2016	Sokoto	Apr	Arrival	0
state	34	2016	Sokoto	Apr	Departure	0
state	34	2016	Sokoto	May	Arrival	214
state	34	2016	Sokoto	May	Departure	556
state	34	2016	Sokoto	Jun	Arrival	554
state	34	2016	Sokoto	Jun	Departure	124
state	34	2016	Sokoto	Jul	Arrival	0
state	34	2016	Sokoto	Jul	Departure	0
state	34	2016	Sokoto	Aug	Arrival	0
state	34	2016	Sokoto	Aug	Departure	0
state	34	2016	Sokoto	Sep	Arrival	0
state	34	2016	Sokoto	Sep	Departure	0
state	34	2016	Sokoto	Oct	Arrival	0
state	34	2016	Sokoto	Oct	Departure	0
state	34	2016	Sokoto	Nov	Arrival	0
state	34	2016	Sokoto	Nov	Departure	0
state	34	2016	Sokoto	Dec	Arrival	0
state	34	2016	Sokoto	Dec	Departure	0
state	2	2016	Yola	Jan	Arrival	0
state	2	2016	Yola	Jan	Departure	0
state	2	2016	Yola	Feb	Arrival	0
state	2	2016	Yola	Feb	Departure	0
state	2	2016	Yola	Mar	Arrival	0
state	2	2016	Yola	Mar	Departure	0
state	2	2016	Yola	Apr	Arrival	0
state	2	2016	Yola	Apr	Departure	0
state	2	2016	Yola	May	Arrival	0
state	2	2016	Yola	May	Departure	0
state	2	2016	Yola	Jun	Arrival	555
state	2	2016	Yola	Jun	Departure	614
state	2	2016	Yola	Jul	Arrival	495
state	2	2016	Yola	Jul	Departure	329
state	2	2016	Yola	Aug	Arrival	0
state	2	2016	Yola	Aug	Departure	2464
state	2	2016	Yola	Sep	Arrival	2478
state	2	2016	Yola	Sep	Departure	86
state	2	2016	Yola	Oct	Arrival	0
state	2	2016	Yola	Oct	Departure	0
state	2	2016	Yola	Nov	Arrival	0
state	2	2016	Yola	Nov	Departure	0
state	2	2016	Yola	Dec	Arrival	156
state	2	2016	Yola	Dec	Departure	876
\.


--
-- Name: air_transportation_international air_transportation_international_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.air_transportation_international
    ADD CONSTRAINT air_transportation_international_pkey PRIMARY KEY (geo_level, geo_code, geo_version, name, month, depature_arrival);


--
-- PostgreSQL database dump complete
--
