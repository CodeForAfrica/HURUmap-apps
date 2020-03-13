--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = pesayetu, public, pg_catalog;

ALTER TABLE IF EXISTS ONLY pesayetu.conditional_fund_allocations_combined DROP CONSTRAINT IF EXISTS pk_conditional_fund_allocations_combined;
DROP TABLE IF EXISTS pesayetu.conditional_fund_allocations_combined;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: conditional_fund_allocations_combined; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.conditional_fund_allocations_combined (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    name character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: conditional_fund_allocations_combined; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.conditional_fund_allocations_combined (geo_level, geo_code, geo_version, name, year, total) FROM stdin;
country	KE	2009	Kenya	2013/2014	20000000000
country	KE	2009	Kenya	2014/2015	13898673499
level1	KE_1_030	2009	Baringo	2013/2014	382555501
level1	KE_1_030	2009	Baringo	2014/2015	182876218
level1	KE_1_036	2009	Bomet	2013/2014	272582727
level1	KE_1_036	2009	Bomet	2014/2015	150769518
level1	KE_1_039	2009	Bungoma	2013/2014	334595329
level1	KE_1_039	2009	Bungoma	2014/2015	711417035
level1	KE_1_040	2009	Busia	2013/2014	266369417
level1	KE_1_040	2009	Busia	2014/2015	661134231
level1	KE_1_028	2009	Elgeyo-Marakwet	2013/2014	744501814
level1	KE_1_028	2009	Elgeyo-Marakwet	2014/2015	139362418
level1	KE_1_014	2009	Embu	2013/2014	557198402
level1	KE_1_014	2009	Embu	2014/2015	426494990
level1	KE_1_007	2009	Garissa	2013/2014	475032960
level1	KE_1_007	2009	Garissa	2014/2015	91802418
level1	KE_1_043	2009	Homa Bay	2013/2014	1604785613
level1	KE_1_043	2009	Homa Bay	2014/2015	215462418
level1	KE_1_011	2009	Isiolo	2013/2014	187893545
level1	KE_1_011	2009	Isiolo	2014/2015	91802418
level1	KE_1_034	2009	Kajiado	2013/2014	284382199
level1	KE_1_034	2009	Kajiado	2014/2015	214154418
level1	KE_1_037	2009	Kakamega	2013/2014	840702017
level1	KE_1_037	2009	Kakamega	2014/2015	955696758
level1	KE_1_035	2009	Kericho	2013/2014	317792977
level1	KE_1_035	2009	Kericho	2014/2015	120827418
level1	KE_1_022	2009	Kiambu	2013/2014	805574808
level1	KE_1_022	2009	Kiambu	2014/2015	148204518
level1	KE_1_003	2009	Kilifi	2013/2014	377885641
level1	KE_1_003	2009	Kilifi	2014/2015	142602418
level1	KE_1_020	2009	Kirinyaga	2013/2014	242055751
level1	KE_1_020	2009	Kirinyaga	2014/2015	277576292
level1	KE_1_045	2009	Kisii	2013/2014	635954331
level1	KE_1_045	2009	Kisii	2014/2015	155899518
level1	KE_1_042	2009	Kisumu	2013/2014	711380679
level1	KE_1_042	2009	Kisumu	2014/2015	210529518
level1	KE_1_015	2009	Kitui	2013/2014	519086118
level1	KE_1_015	2009	Kitui	2014/2015	299716518
level1	KE_1_002	2009	Kwale	2013/2014	280447997
level1	KE_1_002	2009	Kwale	2014/2015	168482418
level1	KE_1_031	2009	Laikipia	2013/2014	234821897
level1	KE_1_031	2009	Laikipia	2014/2015	155224518
level1	KE_1_005	2009	Lamu	2013/2014	99237004
level1	KE_1_005	2009	Lamu	2014/2015	91802418
level1	KE_1_016	2009	Machakos	2013/2014	523080848
level1	KE_1_016	2009	Machakos	2014/2015	302987289
level1	KE_1_017	2009	Makueni	2013/2014	354912725
level1	KE_1_017	2009	Makueni	2014/2015	309133344
level1	KE_1_009	2009	Mandera	2013/2014	230310408
level1	KE_1_009	2009	Mandera	2014/2015	91802418
level1	KE_1_010	2009	Marsabit	2013/2014	272856567
level1	KE_1_010	2009	Marsabit	2014/2015	91802418
level1	KE_1_012	2009	Meru	2013/2014	758421849
level1	KE_1_012	2009	Meru	2014/2015	1584004384
level1	KE_1_044	2009	Migori	2013/2014	490967787
level1	KE_1_044	2009	Migori	2014/2015	216486618
level1	KE_1_001	2009	Mombasa	2013/2014	545817618
level1	KE_1_001	2009	Mombasa	2014/2015	131729518
level1	KE_1_021	2009	Murang'a	2013/2014	404431503
level1	KE_1_021	2009	Murang'a	2014/2015	334012785
level1	KE_1_047	2009	Nairobi	2013/2014	390470421
level1	KE_1_047	2009	Nairobi	2014/2015	1605339854
level1	KE_1_032	2009	Nakuru	2013/2014	1024998693
level1	KE_1_032	2009	Nakuru	2014/2015	138214518
level1	KE_1_029	2009	Nandi	2013/2014	408946759
level1	KE_1_029	2009	Nandi	2014/2015	120799518
level1	KE_1_033	2009	Narok	2013/2014	278791611
level1	KE_1_033	2009	Narok	2014/2015	205416618
level1	KE_1_046	2009	Nyamira	2013/2014	278440754
level1	KE_1_046	2009	Nyamira	2014/2015	153902418
level1	KE_1_018	2009	Nyandarua	2013/2014	284911755
level1	KE_1_018	2009	Nyandarua	2014/2015	145774518
level1	KE_1_019	2009	Nyeri	2013/2014	817147697
level1	KE_1_019	2009	Nyeri	2014/2015	316867785
level1	KE_1_025	2009	Samburu	2013/2014	206938875
level1	KE_1_025	2009	Samburu	2014/2015	91802418
level1	KE_1_041	2009	Siaya	2013/2014	318012871
level1	KE_1_041	2009	Siaya	2014/2015	653606711
level1	KE_1_006	2009	Taita-Taveta	2013/2014	205852212
level1	KE_1_006	2009	Taita-Taveta	2014/2015	91802418
level1	KE_1_004	2009	Tana River	2013/2014	204478573
level1	KE_1_004	2009	Tana River	2014/2015	123797418
level1	KE_1_013	2009	Tharaka-Nithi	2013/2014	139762124
level1	KE_1_013	2009	Tharaka-Nithi	2014/2015	698823239
level1	KE_1_026	2009	Trans Nzoia	2013/2014	193134230
level1	KE_1_026	2009	Trans Nzoia	2014/2015	91802418
level1	KE_1_023	2009	Turkana	2013/2014	229995474
level1	KE_1_023	2009	Turkana	2014/2015	91802418
level1	KE_1_027	2009	Uasin Gishu	2013/2014	270261206
level1	KE_1_027	2009	Uasin Gishu	2014/2015	96432418
level1	KE_1_038	2009	Vihiga	2013/2014	196974298
level1	KE_1_038	2009	Vihiga	2014/2015	410456808
level1	KE_1_008	2009	Wajir	2013/2014	357469372
level1	KE_1_008	2009	Wajir	2014/2015	91802418
level1	KE_1_024	2009	West Pokot	2013/2014	437777043
level1	KE_1_024	2009	West Pokot	2014/2015	96432418
\.


--
-- Name: conditional_fund_allocations_combined pk_conditional_fund_allocations_combined; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.conditional_fund_allocations_combined
    ADD CONSTRAINT pk_conditional_fund_allocations_combined PRIMARY KEY (geo_level, geo_code, geo_version, name, year);


--
-- PostgreSQL database dump complete
--

