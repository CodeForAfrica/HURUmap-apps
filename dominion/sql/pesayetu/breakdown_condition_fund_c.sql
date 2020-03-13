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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_c DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_c;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_c;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_c; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_c (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_c; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_c (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
level1	KE_1_001	2009	Grant to supplement financing for county health facilities	2014/2015	3920000
level1	KE_1_005	2009	Grant to supplement financing for county health facilities	2014/2015	5260000
level1	KE_1_011	2009	Grant to supplement financing for county health facilities	2014/2015	5590000
level1	KE_1_004	2009	Grant to supplement financing for county health facilities	2014/2015	7110000
level1	KE_1_025	2009	Grant to supplement financing for county health facilities	2014/2015	8610000
level1	KE_1_026	2009	Grant to supplement financing for county health facilities	2014/2015	8950000
level1	KE_1_031	2009	Grant to supplement financing for county health facilities	2014/2015	9350000
level1	KE_1_023	2009	Grant to supplement financing for county health facilities	2014/2015	9890000
level1	KE_1_013	2009	Grant to supplement financing for county health facilities	2014/2015	9950000
level1	KE_1_024	2009	Grant to supplement financing for county health facilities	2014/2015	10000000
level1	KE_1_040	2009	Grant to supplement financing for county health facilities	2014/2015	10310000
level1	KE_1_020	2009	Grant to supplement financing for county health facilities	2014/2015	10390000
level1	KE_1_002	2009	Grant to supplement financing for county health facilities	2014/2015	11240000
level1	KE_1_014	2009	Grant to supplement financing for county health facilities	2014/2015	11370000
level1	KE_1_038	2009	Grant to supplement financing for county health facilities	2014/2015	11790000
level1	KE_1_039	2009	Grant to supplement financing for county health facilities	2014/2015	12370000
level1	KE_1_006	2009	Grant to supplement financing for county health facilities	2014/2015	12430000
level1	KE_1_009	2009	Grant to supplement financing for county health facilities	2014/2015	12440000
level1	KE_1_036	2009	Grant to supplement financing for county health facilities	2014/2015	12570000
level1	KE_1_003	2009	Grant to supplement financing for county health facilities	2014/2015	13150000
level1	KE_1_010	2009	Grant to supplement financing for county health facilities	2014/2015	13170000
level1	KE_1_042	2009	Grant to supplement financing for county health facilities	2014/2015	14200000
level1	KE_1_027	2009	Grant to supplement financing for county health facilities	2014/2015	14940000
level1	KE_1_034	2009	Grant to supplement financing for county health facilities	2014/2015	15510000
level1	KE_1_033	2009	Grant to supplement financing for county health facilities	2014/2015	15510000
level1	KE_1_007	2009	Grant to supplement financing for county health facilities	2014/2015	15560000
level1	KE_1_029	2009	Grant to supplement financing for county health facilities	2014/2015	15930000
level1	KE_1_018	2009	Grant to supplement financing for county health facilities	2014/2015	16480000
level1	KE_1_022	2009	Grant to supplement financing for county health facilities	2014/2015	16820000
level1	KE_1_008	2009	Grant to supplement financing for county health facilities	2014/2015	17710000
level1	KE_1_044	2009	Grant to supplement financing for county health facilities	2014/2015	18060000
level1	KE_1_012	2009	Grant to supplement financing for county health facilities	2014/2015	18410000
level1	KE_1_028	2009	Grant to supplement financing for county health facilities	2014/2015	18420000
level1	KE_1_035	2009	Grant to supplement financing for county health facilities	2014/2015	20220000
level1	KE_1_019	2009	Grant to supplement financing for county health facilities	2014/2015	20550000
level1	KE_1_045	2009	Grant to supplement financing for county health facilities	2014/2015	20570000
level1	KE_1_037	2009	Grant to supplement financing for county health facilities	2014/2015	21120000
level1	KE_1_046	2009	Grant to supplement financing for county health facilities	2014/2015	21540000
level1	KE_1_017	2009	Grant to supplement financing for county health facilities	2014/2015	21750000
level1	KE_1_043	2009	Grant to supplement financing for county health facilities	2014/2015	22390000
level1	KE_1_021	2009	Grant to supplement financing for county health facilities	2014/2015	22430000
level1	KE_1_032	2009	Grant to supplement financing for county health facilities	2014/2015	22880000
level1	KE_1_030	2009	Grant to supplement financing for county health facilities	2014/2015	23790000
level1	KE_1_016	2009	Grant to supplement financing for county health facilities	2014/2015	24320000
level1	KE_1_047	2009	Grant to supplement financing for county health facilities	2014/2015	24920000
level1	KE_1_041	2009	Grant to supplement financing for county health facilities	2014/2015	25150000
level1	KE_1_015	2009	Grant to supplement financing for county health facilities	2014/2015	34610000
level1	KE_1_008	2009	Loans and Grants to supplement financing for county functions	2014/2015	74092418
level1	KE_1_007	2009	Loans and Grants to supplement financing for county functions	2014/2015	76242418
level1	KE_1_010	2009	Loans and Grants to supplement financing for county functions	2014/2015	78632418
level1	KE_1_009	2009	Loans and Grants to supplement financing for county functions	2014/2015	79362418
level1	KE_1_006	2009	Loans and Grants to supplement financing for county functions	2014/2015	79372418
level1	KE_1_027	2009	Loans and Grants to supplement financing for county functions	2014/2015	81492418
level1	KE_1_023	2009	Loans and Grants to supplement financing for county functions	2014/2015	81912418
level1	KE_1_026	2009	Loans and Grants to supplement financing for county functions	2014/2015	82852418
level1	KE_1_025	2009	Loans and Grants to supplement financing for county functions	2014/2015	83192418
level1	KE_1_011	2009	Loans and Grants to supplement financing for county functions	2014/2015	86212418
level1	KE_1_024	2009	Loans and Grants to supplement financing for county functions	2014/2015	86432418
level1	KE_1_005	2009	Loans and Grants to supplement financing for county functions	2014/2015	86542418
level1	KE_1_007	2009	Total Conditional Additional Allocation	2014/2015	91802418
level1	KE_1_011	2009	Total Conditional Additional Allocation	2014/2015	91802418
level1	KE_1_005	2009	Total Conditional Additional Allocation	2014/2015	91802418
level1	KE_1_009	2009	Total Conditional Additional Allocation	2014/2015	91802418
level1	KE_1_010	2009	Total Conditional Additional Allocation	2014/2015	91802418
level1	KE_1_025	2009	Total Conditional Additional Allocation	2014/2015	91802418
level1	KE_1_006	2009	Total Conditional Additional Allocation	2014/2015	91802418
level1	KE_1_026	2009	Total Conditional Additional Allocation	2014/2015	91802418
level1	KE_1_023	2009	Total Conditional Additional Allocation	2014/2015	91802418
level1	KE_1_008	2009	Total Conditional Additional Allocation	2014/2015	91802418
level1	KE_1_027	2009	Total Conditional Additional Allocation	2014/2015	96432418
level1	KE_1_024	2009	Total Conditional Additional Allocation	2014/2015	96432418
level1	KE_1_005	2009	Total Conditional Additional Allocation	2013/2014	99237004
level1	KE_1_035	2009	Loans and Grants to supplement financing for county functions	2014/2015	100607418
level1	KE_1_029	2009	Loans and Grants to supplement financing for county functions	2014/2015	104869518
level1	KE_1_032	2009	Loans and Grants to supplement financing for county functions	2014/2015	115334518
level1	KE_1_004	2009	Loans and Grants to supplement financing for county functions	2014/2015	116687418
level1	KE_1_029	2009	Total Conditional Additional Allocation	2014/2015	120799518
level1	KE_1_035	2009	Total Conditional Additional Allocation	2014/2015	120827418
level1	KE_1_028	2009	Loans and Grants to supplement financing for county functions	2014/2015	120942418
level1	KE_1_004	2009	Total Conditional Additional Allocation	2014/2015	123797418
level1	KE_1_001	2009	Loans and Grants to supplement financing for county functions	2014/2015	127809518
level1	KE_1_018	2009	Loans and Grants to supplement financing for county functions	2014/2015	129294518
level1	KE_1_003	2009	Loans and Grants to supplement financing for county functions	2014/2015	129452418
level1	KE_1_022	2009	Loans and Grants to supplement financing for county functions	2014/2015	131384518
level1	KE_1_001	2009	Total Conditional Additional Allocation	2014/2015	131729518
level1	KE_1_046	2009	Loans and Grants to supplement financing for county functions	2014/2015	132362418
level1	KE_1_045	2009	Loans and Grants to supplement financing for county functions	2014/2015	135329518
level1	KE_1_036	2009	Loans and Grants to supplement financing for county functions	2014/2015	138199518
level1	KE_1_032	2009	Total Conditional Additional Allocation	2014/2015	138214518
level1	KE_1_028	2009	Total Conditional Additional Allocation	2014/2015	139362418
level1	KE_1_013	2009	Total Conditional Additional Allocation	2013/2014	139762124
level1	KE_1_003	2009	Total Conditional Additional Allocation	2014/2015	142602418
level1	KE_1_018	2009	Total Conditional Additional Allocation	2014/2015	145774518
level1	KE_1_031	2009	Loans and Grants to supplement financing for county functions	2014/2015	145874518
level1	KE_1_022	2009	Total Conditional Additional Allocation	2014/2015	148204518
level1	KE_1_036	2009	Total Conditional Additional Allocation	2014/2015	150769518
level1	KE_1_046	2009	Total Conditional Additional Allocation	2014/2015	153902418
level1	KE_1_031	2009	Total Conditional Additional Allocation	2014/2015	155224518
level1	KE_1_045	2009	Total Conditional Additional Allocation	2014/2015	155899518
level1	KE_1_002	2009	Loans and Grants to supplement financing for county functions	2014/2015	157242418
level1	KE_1_030	2009	Loans and Grants to supplement financing for county functions	2014/2015	159086218
level1	KE_1_002	2009	Total Conditional Additional Allocation	2014/2015	168482418
level1	KE_1_030	2009	Total Conditional Additional Allocation	2014/2015	182876218
level1	KE_1_011	2009	Total Conditional Additional Allocation	2013/2014	187893545
level1	KE_1_033	2009	Loans and Grants to supplement financing for county functions	2014/2015	189906618
level1	KE_1_043	2009	Loans and Grants to supplement financing for county functions	2014/2015	193072418
level1	KE_1_026	2009	Total Conditional Additional Allocation	2013/2014	193134230
level1	KE_1_042	2009	Loans and Grants to supplement financing for county functions	2014/2015	196329518
level1	KE_1_038	2009	Total Conditional Additional Allocation	2013/2014	196974298
level1	KE_1_044	2009	Loans and Grants to supplement financing for county functions	2014/2015	198426618
level1	KE_1_034	2009	Loans and Grants to supplement financing for county functions	2014/2015	198644418
level1	KE_1_004	2009	Total Conditional Additional Allocation	2013/2014	204478573
level1	KE_1_033	2009	Total Conditional Additional Allocation	2014/2015	205416618
level1	KE_1_006	2009	Total Conditional Additional Allocation	2013/2014	205852212
level1	KE_1_025	2009	Total Conditional Additional Allocation	2013/2014	206938875
level1	KE_1_042	2009	Total Conditional Additional Allocation	2014/2015	210529518
level1	KE_1_034	2009	Total Conditional Additional Allocation	2014/2015	214154418
level1	KE_1_043	2009	Total Conditional Additional Allocation	2014/2015	215462418
level1	KE_1_044	2009	Total Conditional Additional Allocation	2014/2015	216486618
level1	KE_1_023	2009	Total Conditional Additional Allocation	2013/2014	229995474
level1	KE_1_009	2009	Total Conditional Additional Allocation	2013/2014	230310408
level1	KE_1_031	2009	Total Conditional Additional Allocation	2013/2014	234821897
level1	KE_1_020	2009	Total Conditional Additional Allocation	2013/2014	242055751
level1	KE_1_015	2009	Loans and Grants to supplement financing for county functions	2014/2015	265106518
level1	KE_1_040	2009	Total Conditional Additional Allocation	2013/2014	266369417
level1	KE_1_020	2009	Loans and Grants to supplement financing for county functions	2014/2015	267186292
level1	KE_1_027	2009	Total Conditional Additional Allocation	2013/2014	270261206
level1	KE_1_036	2009	Total Conditional Additional Allocation	2013/2014	272582727
level1	KE_1_010	2009	Total Conditional Additional Allocation	2013/2014	272856567
level1	KE_1_020	2009	Total Conditional Additional Allocation	2014/2015	277576292
level1	KE_1_046	2009	Total Conditional Additional Allocation	2013/2014	278440754
level1	KE_1_016	2009	Loans and Grants to supplement financing for county functions	2014/2015	278667289
level1	KE_1_033	2009	Total Conditional Additional Allocation	2013/2014	278791611
level1	KE_1_002	2009	Total Conditional Additional Allocation	2013/2014	280447997
level1	KE_1_034	2009	Total Conditional Additional Allocation	2013/2014	284382199
level1	KE_1_018	2009	Total Conditional Additional Allocation	2013/2014	284911755
level1	KE_1_017	2009	Loans and Grants to supplement financing for county functions	2014/2015	287383344
level1	KE_1_019	2009	Loans and Grants to supplement financing for county functions	2014/2015	296317785
level1	KE_1_015	2009	Total Conditional Additional Allocation	2014/2015	299716518
level1	KE_1_016	2009	Total Conditional Additional Allocation	2014/2015	302987289
level1	KE_1_017	2009	Total Conditional Additional Allocation	2014/2015	309133344
level1	KE_1_021	2009	Loans and Grants to supplement financing for county functions	2014/2015	311582785
level1	KE_1_019	2009	Total Conditional Additional Allocation	2014/2015	316867785
level1	KE_1_035	2009	Total Conditional Additional Allocation	2013/2014	317792977
level1	KE_1_041	2009	Total Conditional Additional Allocation	2013/2014	318012871
level1	KE_1_021	2009	Total Conditional Additional Allocation	2014/2015	334012785
level1	KE_1_039	2009	Total Conditional Additional Allocation	2013/2014	334595329
level1	KE_1_017	2009	Total Conditional Additional Allocation	2013/2014	354912725
level1	KE_1_008	2009	Total Conditional Additional Allocation	2013/2014	357469372
level1	KE_1_003	2009	Total Conditional Additional Allocation	2013/2014	377885641
level1	KE_1_030	2009	Total Conditional Additional Allocation	2013/2014	382555501
level1	KE_1_047	2009	Total Conditional Additional Allocation	2013/2014	390470421
level1	KE_1_038	2009	Loans and Grants to supplement financing for county functions	2014/2015	398666808
level1	KE_1_021	2009	Total Conditional Additional Allocation	2013/2014	404431503
level1	KE_1_029	2009	Total Conditional Additional Allocation	2013/2014	408946759
level1	KE_1_038	2009	Total Conditional Additional Allocation	2014/2015	410456808
level1	KE_1_014	2009	Loans and Grants to supplement financing for county functions	2014/2015	415124990
level1	KE_1_014	2009	Total Conditional Additional Allocation	2014/2015	426494990
level1	KE_1_024	2009	Total Conditional Additional Allocation	2013/2014	437777043
level1	KE_1_007	2009	Total Conditional Additional Allocation	2013/2014	475032960
level1	KE_1_044	2009	Total Conditional Additional Allocation	2013/2014	490967787
level1	KE_1_015	2009	Total Conditional Additional Allocation	2013/2014	519086118
level1	KE_1_016	2009	Total Conditional Additional Allocation	2013/2014	523080848
level1	KE_1_001	2009	Total Conditional Additional Allocation	2013/2014	545817618
level1	KE_1_014	2009	Total Conditional Additional Allocation	2013/2014	557198402
level1	KE_1_041	2009	Loans and Grants to supplement financing for county functions	2014/2015	628456711
level1	KE_1_045	2009	Total Conditional Additional Allocation	2013/2014	635954331
level1	KE_1_040	2009	Loans and Grants to supplement financing for county functions	2014/2015	650824231
level1	KE_1_041	2009	Total Conditional Additional Allocation	2014/2015	653606711
level1	KE_1_040	2009	Total Conditional Additional Allocation	2014/2015	661134231
level1	KE_1_013	2009	Loans and Grants to supplement financing for county functions	2014/2015	688873239
level1	KE_1_013	2009	Total Conditional Additional Allocation	2014/2015	698823239
level1	KE_1_039	2009	Loans and Grants to supplement financing for county functions	2014/2015	699047035
level1	KE_1_042	2009	Total Conditional Additional Allocation	2013/2014	711380679
level1	KE_1_039	2009	Total Conditional Additional Allocation	2014/2015	711417035
country	KE	2009	Grant to supplement financing for county health facilities	2014/2015	733650000
level1	KE_1_028	2009	Total Conditional Additional Allocation	2013/2014	744501814
level1	KE_1_012	2009	Total Conditional Additional Allocation	2013/2014	758421849
level1	KE_1_022	2009	Total Conditional Additional Allocation	2013/2014	805574808
level1	KE_1_019	2009	Total Conditional Additional Allocation	2013/2014	817147697
level1	KE_1_037	2009	Total Conditional Additional Allocation	2013/2014	840702017
level1	KE_1_037	2009	Loans and Grants to supplement financing for county functions	2014/2015	934576758
level1	KE_1_037	2009	Total Conditional Additional Allocation	2014/2015	955696758
level1	KE_1_032	2009	Total Conditional Additional Allocation	2013/2014	1024998693
level1	KE_1_012	2009	Loans and Grants to supplement financing for county functions	2014/2015	1565594384
level1	KE_1_047	2009	Loans and Grants to supplement financing for county functions	2014/2015	1580419854
level1	KE_1_012	2009	Total Conditional Additional Allocation	2014/2015	1584004384
level1	KE_1_043	2009	Total Conditional Additional Allocation	2013/2014	1604785613
level1	KE_1_047	2009	Total Conditional Additional Allocation	2014/2015	1605339854
country	KE	2009	Loans and Grants to supplement financing for county functions	2014/2015	13165023499
country	KE	2009	Total Conditional Additional Allocation	2014/2015	13898673499
country	KE	2009	Total Conditional Additional Allocation	2013/2014	20000000000
\.


--
-- Name: breakdown_condition_fund_c pk_breakdown_condition_fund_c; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_c
    ADD CONSTRAINT pk_breakdown_condition_fund_c PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

