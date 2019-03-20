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

ALTER TABLE IF EXISTS ONLY public.number_of_erven_land_owners_per_race DROP CONSTRAINT IF EXISTS pk_number_of_erven_land_owners_per_race;
DROP TABLE IF EXISTS public.number_of_erven_land_owners_per_race;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberofervenlandownersperrace; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.number_of_erven_land_owners_per_race (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    number_of_erven_land_owners_per_race character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: numberofervenlandownersperrace; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.number_of_erven_land_owners_per_race (geo_level, geo_code, geo_version, number_of_erven_land_owners_per_race, total) FROM stdin;
level1	ZA_1_003	2016	White	169622
level1	ZA_1_002	2016	White	74287
level1	ZA_1_009	2016	White	414120
level1	ZA_1_001	2016	White	139287
level1	ZA_1_004	2016	White	54466
level1	ZA_1_007	2016	White	52034
level1	ZA_1_006	2016	White	84041
level1	ZA_1_008	2016	White	543008
level1	ZA_1_003	2016	African	361469
level1	ZA_1_002	2016	African	354461
level1	ZA_1_009	2016	African	1296797
level1	ZA_1_001	2016	African	438085
level1	ZA_1_004	2016	African	242427
level1	ZA_1_007	2016	African	198429
level1	ZA_1_006	2016	African	56926
level1	ZA_1_008	2016	African	227227
level1	ZA_1_003	2016	Coloured	62054
level1	ZA_1_002	2016	Coloured	22608
level1	ZA_1_009	2016	Coloured	118635
level1	ZA_1_001	2016	Coloured	44207
level1	ZA_1_004	2016	Coloured	12443
level1	ZA_1_007	2016	Coloured	14613
level1	ZA_1_006	2016	Coloured	29962
level1	ZA_1_008	2016	Coloured	197703
level1	ZA_1_003	2016	Indian	35939
level1	ZA_1_002	2016	Indian	11030
level1	ZA_1_009	2016	Indian	105010
level1	ZA_1_001	2016	Indian	136451
level1	ZA_1_004	2016	Indian	8555
level1	ZA_1_007	2016	Indian	8568
level1	ZA_1_006	2016	Indian	12049
level1	ZA_1_008	2016	Indian	92633
level1	ZA_1_003	2016	Other	18705
level1	ZA_1_002	2016	Other	7379
level1	ZA_1_009	2016	Other	49217
level1	ZA_1_001	2016	Other	24005
level1	ZA_1_004	2016	Other	4575
level1	ZA_1_007	2016	Other	4957
level1	ZA_1_006	2016	Other	5915
level1	ZA_1_008	2016	Other	56861
country	ZA	2016	White	1552653
country	ZA	2016	African	3321476
country	ZA	2016	Coloured	507829
country	ZA	2016	Indian	414069
country	ZA	2016	Other	173418
level1	ZA_1_005	2016	White	21788
level1	ZA_1_005	2016	African	145655
level1	ZA_1_005	2016	Coloured	5604
level1	ZA_1_005	2016	Indian	3834
level1	ZA_1_005	2016	Other	1804
\.


--
-- Name: numberofervenlandownersperrace pk_numberofervenlandownersperrace; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.number_of_erven_land_owners_per_race
    ADD CONSTRAINT pk_number_of_erven_land_owners_per_race PRIMARY KEY (geo_level, geo_code, geo_version, number_of_erven_land_owners_per_race);


--
-- PostgreSQL database dump complete
--
