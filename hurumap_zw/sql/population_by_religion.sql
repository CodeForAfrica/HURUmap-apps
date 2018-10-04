--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.population_by_religion DROP CONSTRAINT IF EXISTS pk_population_by_religion;
DROP TABLE IF EXISTS public.population_by_religion;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: population_by_religion; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.population_by_religion (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    religion character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: population_by_religion; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.population_by_religion (geo_level, geo_code, geo_version, religion, total) FROM stdin;
province	11	2009	Tradition	5249720
province	12	2009	Tradition	8118298
province	13	2009	Tradition	3576509
province	14	2009	Tradition	7546353
province	15	2009	Tradition	3592124
province	16	2009	Tradition	1941317
province	17	2009	Tradition	1947310
province	18	2009	Tradition	3134941
province	19	2009	Tradition	1050807
province	10	2009	Tradition	501012
country	ZW	2009	Tradition	36324801
province	11	2009	Roman Catholic	5879686
province	12	2009	Roman Catholic	3096670
province	13	2009	Roman Catholic	7803292
province	14	2009	Roman Catholic	6257951
province	15	2009	Roman Catholic	1551144
province	16	2009	Roman Catholic	1562523
province	17	2009	Roman Catholic	12126431
province	18	2009	Roman Catholic	8708170
province	19	2009	Roman Catholic	13791844
province	10	2009	Roman Catholic	3907893
country	ZW	2009	Roman Catholic	64577424
province	11	2009	Protestant	21838835
province	12	2009	Protestant	7030279
province	13	2009	Protestant	12680350
province	14	2009	Protestant	10399243
province	15	2009	Protestant	6245398
province	16	2009	Protestant	8428157
province	17	2009	Protestant	18764989
province	18	2009	Protestant	10536885
province	19	2009	Protestant	21147494
province	10	2009	Protestant	10821859
country	ZW	2009	Protestant	127540412
province	11	2009	Pentecostal	17429070
province	12	2009	Pentecostal	9290011
province	13	2009	Pentecostal	12761635
province	14	2009	Pentecostal	16381108
province	15	2009	Pentecostal	8204739
province	16	2009	Pentecostal	5634554
province	17	2009	Pentecostal	15047397
province	18	2009	Pentecostal	15935951
province	19	2009	Pentecostal	42032288
province	10	2009	Pentecostal	14479246
country	ZW	2009	Pentecostal	157407471
province	11	2009	Apostolic	43782664
province	12	2009	Apostolic	38917617
province	13	2009	Apostolic	31782161
province	14	2009	Apostolic	32946274
province	15	2009	Apostolic	14613416
province	16	2009	Apostolic	18134743
province	17	2009	Apostolic	27085314
province	18	2009	Apostolic	29433614
province	19	2009	Apostolic	27320987
province	10	2009	Apostolic	9519228
country	ZW	2009	Apostolic	273646834
province	11	2009	Other Christian	4619753
province	12	2009	Other Christian	1673876
province	13	2009	Other Christian	1706970
province	14	2009	Other Christian	5153607
province	15	2009	Other Christian	2285897
province	16	2009	Other Christian	5019015
province	17	2009	Other Christian	6195987
province	18	2009	Other Christian	13584745
province	19	2009	Other Christian	10770773
province	10	2009	Other Christian	5010120
country	ZW	2009	Other Christian	55698028
province	11	2009	Muslim	524972
province	12	2009	Muslim	753244
province	13	2009	Muslim	894127
province	14	2009	Muslim	644200
province	15	2009	Muslim	0
province	16	2009	Muslim	0
province	17	2009	Muslim	796626
province	18	2009	Muslim	261245
province	19	2009	Muslim	1707561
province	10	2009	Muslim	100202
country	ZW	2009	Muslim	5650524
province	11	2009	Other	104994
province	12	2009	Other	0
province	13	2009	Other	325137
province	14	2009	Other	368114
province	15	2009	Other	449015
province	16	2009	Other	378793
province	17	2009	Other	177028
province	18	2009	Other	87081
province	19	2009	Other	1576210
province	10	2009	Other	350708
country	ZW	2009	Other	4036089
province	11	2009	None	5564703
province	12	2009	None	14813802
province	13	2009	None	9835400
province	14	2009	None	12331845
province	15	2009	None	3918681
province	16	2009	None	6250094
province	17	2009	None	6373015
province	18	2009	None	5399065
province	19	2009	None	11821581
province	10	2009	None	5461030
country	ZW	2009	None	82336215
\.


--
-- Name: population_by_religion pk_population_by_religion; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.population_by_religion
    ADD CONSTRAINT pk_population_by_religion PRIMARY KEY (geo_level, geo_code, geo_version, religion);


--
-- PostgreSQL database dump complete
--

