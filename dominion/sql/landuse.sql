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

ALTER TABLE IF EXISTS ONLY public.landuse DROP CONSTRAINT IF EXISTS pk_landuse;
DROP TABLE IF EXISTS public.landuse;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landuse; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.landuse (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    land_use character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: landuse; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.landuse (geo_level, geo_code, geo_version, land_use, total) FROM stdin;
level1	ZA_1_007	2009	Agriculture & Fisheries	23249
level1	ZA_1_007	2009	Commercial	2264
level1	ZA_1_007	2009	Community Services	6111
level1	ZA_1_007	2009	Conservation	6383
level1	ZA_1_007	2009	Forestry	4549
level1	ZA_1_007	2009	Industrial & Storage	292
level1	ZA_1_007	2009	Mining	1254
level1	ZA_1_007	2009	Recreation and Leisure	99174
level1	ZA_1_007	2009	Residential	26837
level1	ZA_1_007	2009	Transport	17143
level1	ZA_1_007	2009	Undeveloped Land	31824
level1	ZA_1_007	2009	Utilities & Infrastructure	51
level1	ZA_1_003	2009	Agriculture & Fisheries	777021
level1	ZA_1_003	2009	Commercial	137457
level1	ZA_1_003	2009	Community Services	129221
level1	ZA_1_003	2009	Conservation	394149
level1	ZA_1_003	2009	Forestry	2380
level1	ZA_1_003	2009	Industrial & Storage	11765
level1	ZA_1_003	2009	Mining	13134
level1	ZA_1_003	2009	Recreation and Leisure	260472
level1	ZA_1_003	2009	Residential	703659
level1	ZA_1_003	2009	Transport	84372
level1	ZA_1_003	2009	Undeveloped Land	106441
level1	ZA_1_003	2009	Utilities & Infrastructure	40747
level1	ZA_1_001	2009	Agriculture & Fisheries	32266
level1	ZA_1_001	2009	Commercial	1932
level1	ZA_1_001	2009	Community Services	19448
level1	ZA_1_001	2009	Conservation	579029
level1	ZA_1_001	2009	Forestry	82491
level1	ZA_1_001	2009	Industrial & Storage	942
level1	ZA_1_001	2009	Mining	690
level1	ZA_1_001	2009	Recreation and Leisure	82524
level1	ZA_1_001	2009	Residential	23420
level1	ZA_1_001	2009	Transport	85126
level1	ZA_1_001	2009	Undeveloped Land	117290
level1	ZA_1_001	2009	Utilities & Infrastructure	40526
level1	ZA_1_006	2009	Agriculture & Fisheries	1215025
level1	ZA_1_006	2009	Commercial	17946
level1	ZA_1_006	2009	Community Services	94037
level1	ZA_1_006	2009	Conservation	161587
level1	ZA_1_006	2009	Forestry	145579
level1	ZA_1_006	2009	Industrial & Storage	4173
level1	ZA_1_006	2009	Mining	23640
level1	ZA_1_006	2009	Recreation and Leisure	595127
level1	ZA_1_006	2009	Residential	537567
level1	ZA_1_006	2009	Transport	22023
level1	ZA_1_006	2009	Undeveloped Land	448646
level1	ZA_1_006	2009	Utilities & Infrastructure	55072
level1	ZA_1_008	2009	Agriculture & Fisheries	153748
level1	ZA_1_008	2009	Commercial	7732
level1	ZA_1_008	2009	Community Services	22363
level1	ZA_1_008	2009	Conservation	66297
level1	ZA_1_008	2009	Forestry	150574
level1	ZA_1_008	2009	Industrial & Storage	9783
level1	ZA_1_008	2009	Mining	2897
level1	ZA_1_008	2009	Recreation and Leisure	318243
level1	ZA_1_008	2009	Residential	229299
level1	ZA_1_008	2009	Transport	19647
level1	ZA_1_008	2009	Undeveloped Land	36066
level1	ZA_1_008	2009	Utilities & Infrastructure	13376
level1	ZA_1_009	2009	Agriculture & Fisheries	20701
level1	ZA_1_009	2009	Commercial	8352
level1	ZA_1_009	2009	Community Services	8174
level1	ZA_1_009	2009	Conservation	73719
level1	ZA_1_009	2009	Forestry	85039
level1	ZA_1_009	2009	Industrial & Storage	1006
level1	ZA_1_009	2009	Mining	6
level1	ZA_1_009	2009	Recreation and Leisure	14671
level1	ZA_1_009	2009	Residential	35
level1	ZA_1_009	2009	Transport	34318
level1	ZA_1_009	2009	Undeveloped Land	292668
level1	ZA_1_009	2009	Utilities & Infrastructure	5962
level1	ZA_1_002	2009	Agriculture & Fisheries	132968
level1	ZA_1_002	2009	Commercial	19995
level1	ZA_1_002	2009	Community Services	34261
level1	ZA_1_002	2009	Conservation	231635
level1	ZA_1_002	2009	Forestry	239397
level1	ZA_1_002	2009	Industrial & Storage	1306
level1	ZA_1_002	2009	Mining	6975
level1	ZA_1_002	2009	Recreation and Leisure	272154
level1	ZA_1_002	2009	Residential	147790
level1	ZA_1_002	2009	Transport	40394
level1	ZA_1_002	2009	Undeveloped Land	389567
level1	ZA_1_002	2009	Utilities & Infrastructure	8482
level1	ZA_1_005	2009	Agriculture & Fisheries	1466030
level1	ZA_1_005	2009	Commercial	939810
level1	ZA_1_005	2009	Community Services	1414370
level1	ZA_1_005	2009	Conservation	165559
level1	ZA_1_005	2009	Forestry	829207
level1	ZA_1_005	2009	Industrial & Storage	17201
level1	ZA_1_005	2009	Mining	2221
level1	ZA_1_005	2009	Recreation and Leisure	937929
level1	ZA_1_005	2009	Residential	1197261
level1	ZA_1_005	2009	Transport	165729
level1	ZA_1_005	2009	Undeveloped Land	539662
level1	ZA_1_005	2009	Utilities & Infrastructure	283534
level1	ZA_1_004	2009	Agriculture & Fisheries	206043
level1	ZA_1_004	2009	Commercial	88783
level1	ZA_1_004	2009	Community Services	85142
level1	ZA_1_004	2009	Conservation	189350
level1	ZA_1_004	2009	Forestry	1052
level1	ZA_1_004	2009	Industrial & Storage	14407
level1	ZA_1_004	2009	Mining	2222
level1	ZA_1_004	2009	Recreation and Leisure	136016
level1	ZA_1_004	2009	Residential	238986
level1	ZA_1_004	2009	Transport	99473
level1	ZA_1_004	2009	Undeveloped Land	99499
level1	ZA_1_004	2009	Utilities & Infrastructure	44499
country	ZA	2009	Agriculture & Fisheries	4006350
country	ZA	2009	Commercial	1215919
country	ZA	2009	Community Services	1804953
country	ZA	2009	Conservation	1793989
country	ZA	2009	Forestry	1455229
country	ZA	2009	Industrial & Storage	59869
country	ZA	2009	Mining	53033
country	ZA	2009	Recreation and Leisure	2701639
country	ZA	2009	Residential	3104819
country	ZA	2009	Transport	533907
country	ZA	2009	Undeveloped Land	1768995
country	ZA	2009	Utilities & Infrastructure	486287
\.


--
-- Name: landuse pk_landuse; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.landuse
    ADD CONSTRAINT pk_landuse PRIMARY KEY (geo_level, geo_code, geo_version, land_use);


--
-- PostgreSQL database dump complete
--

