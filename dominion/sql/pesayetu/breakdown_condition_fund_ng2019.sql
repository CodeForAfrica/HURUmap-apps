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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_ng2019 DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_ng2019;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_ng2019;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_ng2019; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_ng2019 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_ng2019; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_ng2019 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
level1	KE_1_041	2009	Supplement for construction of county headquarters	2019/2020	1152184
level1	KE_1_005	2009	Compensation for User Fee Foregone	2019/2020	2451034
level1	KE_1_011	2009	Compensation for User Fee Foregone	2019/2020	3472461
level1	KE_1_025	2009	Compensation for User Fee Foregone	2019/2020	5235578
level1	KE_1_004	2009	Compensation for User Fee Foregone	2019/2020	5296305
level1	KE_1_013	2009	Compensation for User Fee Foregone	2019/2020	5682537
level1	KE_1_010	2009	Compensation for User Fee Foregone	2019/2020	6643714
level1	KE_1_041	2009	Compensation for User Fee Foregone	2019/2020	8218119
level1	KE_1_028	2009	Compensation for User Fee Foregone	2019/2020	8788919
level1	KE_1_031	2009	Compensation for User Fee Foregone	2019/2020	9968208
level1	KE_1_014	2009	Compensation for User Fee Foregone	2019/2020	10724225
level1	KE_1_011	2009	Rehabilitation of Village Polytechnics	2019/2020	10833298
level1	KE_1_020	2009	Compensation for User Fee Foregone	2019/2020	11282570
level1	KE_1_024	2009	Compensation for User Fee Foregone	2019/2020	12128484
level1	KE_1_038	2009	Compensation for User Fee Foregone	2019/2020	12657201
level1	KE_1_018	2009	Compensation for User Fee Foregone	2019/2020	12735922
level1	KE_1_007	2009	Compensation for User Fee Foregone	2019/2020	12964636
level1	KE_1_046	2009	Compensation for User Fee Foregone	2019/2020	13175221
level1	KE_1_030	2009	Compensation for User Fee Foregone	2019/2020	13191000
level1	KE_1_019	2009	Compensation for User Fee Foregone	2019/2020	13701379
level1	KE_1_023	2009	Rehabilitation of Village Polytechnics	2019/2020	13893298
level1	KE_1_002	2009	Compensation for User Fee Foregone	2019/2020	15209593
level1	KE_1_025	2009	Rehabilitation of Village Polytechnics	2019/2020	15483298
level1	KE_1_010	2009	Rehabilitation of Village Polytechnics	2019/2020	15558298
level1	KE_1_008	2009	Compensation for User Fee Foregone	2019/2020	15784997
level1	KE_1_036	2009	Compensation for User Fee Foregone	2019/2020	16713356
level1	KE_1_040	2009	Compensation for User Fee Foregone	2019/2020	16934085
level1	KE_1_034	2009	Compensation for User Fee Foregone	2019/2020	16955365
level1	KE_1_024	2009	Rehabilitation of Village Polytechnics	2019/2020	17313298
level1	KE_1_035	2009	Compensation for User Fee Foregone	2019/2020	18048789
level1	KE_1_029	2009	Compensation for User Fee Foregone	2019/2020	18086363
level1	KE_1_006	2009	Compensation for User Fee Foregone	2019/2020	18194808
level1	KE_1_008	2009	Rehabilitation of Village Polytechnics	2019/2020	18903298
level1	KE_1_017	2009	Compensation for User Fee Foregone	2019/2020	19435760
level1	KE_1_033	2009	Rehabilitation of Village Polytechnics	2019/2020	19488298
level1	KE_1_021	2009	Compensation for User Fee Foregone	2019/2020	20138691
level1	KE_1_033	2009	Compensation for User Fee Foregone	2019/2020	20595297
level1	KE_1_007	2009	Rehabilitation of Village Polytechnics	2019/2020	20628298
level1	KE_1_027	2009	Compensation for User Fee Foregone	2019/2020	20813065
level1	KE_1_013	2009	Rehabilitation of Village Polytechnics	2019/2020	21228298
level1	KE_1_042	2009	Compensation for User Fee Foregone	2019/2020	21299489
level1	KE_1_026	2009	Compensation for User Fee Foregone	2019/2020	21304915
level1	KE_1_044	2009	Compensation for User Fee Foregone	2019/2020	21655884
level1	KE_1_009	2009	Rehabilitation of Village Polytechnics	2019/2020	22113298
level1	KE_1_043	2009	Compensation for User Fee Foregone	2019/2020	22185346
level1	KE_1_015	2009	Compensation for User Fee Foregone	2019/2020	22499906
level1	KE_1_047	2009	Rehabilitation of Village Polytechnics	2019/2020	22998298
level1	KE_1_001	2009	Compensation for User Fee Foregone	2019/2020	23385934
level1	KE_1_016	2009	Compensation for User Fee Foregone	2019/2020	24129039
level1	KE_1_030	2009	Rehabilitation of Village Polytechnics	2019/2020	24873298
level1	KE_1_001	2009	Rehabilitation of Village Polytechnics	2019/2020	25473298
level1	KE_1_009	2009	Compensation for User Fee Foregone	2019/2020	25474920
level1	KE_1_023	2009	Compensation for User Fee Foregone	2019/2020	25634941
level1	KE_1_003	2009	Compensation for User Fee Foregone	2019/2020	25969864
level1	KE_1_045	2009	Compensation for User Fee Foregone	2019/2020	26138997
level1	KE_1_035	2009	Rehabilitation of Village Polytechnics	2019/2020	29433298
level1	KE_1_044	2009	Rehabilitation of Village Polytechnics	2019/2020	30033298
level1	KE_1_028	2009	Rehabilitation of Village Polytechnics	2019/2020	30228298
level1	KE_1_012	2009	Compensation for User Fee Foregone	2019/2020	31648428
level1	KE_1_031	2009	Rehabilitation of Village Polytechnics	2019/2020	31908298
level1	KE_1_029	2009	Rehabilitation of Village Polytechnics	2019/2020	32793298
level1	KE_1_039	2009	Compensation for User Fee Foregone	2019/2020	32837307
level1	KE_1_014	2009	Rehabilitation of Village Polytechnics	2019/2020	33603298
level1	KE_1_020	2009	Rehabilitation of Village Polytechnics	2019/2020	34503298
level1	KE_1_022	2009	Compensation for User Fee Foregone	2019/2020	34671542
level1	KE_1_043	2009	Rehabilitation of Village Polytechnics	2019/2020	35163298
level1	KE_1_034	2009	Rehabilitation of Village Polytechnics	2019/2020	35493298
level1	KE_1_037	2009	Compensation for User Fee Foregone	2019/2020	37789290
level1	KE_1_018	2009	Rehabilitation of Village Polytechnics	2019/2020	37983298
level1	KE_1_032	2009	Compensation for User Fee Foregone	2019/2020	38723265
level1	KE_1_006	2009	Rehabilitation of Village Polytechnics	2019/2020	40278298
level1	KE_1_005	2009	Rehabilitation of Village Polytechnics	2019/2020	41298298
level1	KE_1_042	2009	Rehabilitation of Village Polytechnics	2019/2020	41673298
level1	KE_1_036	2009	Rehabilitation of Village Polytechnics	2019/2020	47388298
level1	KE_1_016	2009	Rehabilitation of Village Polytechnics	2019/2020	51093298
level1	KE_1_039	2009	Rehabilitation of Village Polytechnics	2019/2020	53928298
level1	KE_1_022	2009	Rehabilitation of Village Polytechnics	2019/2020	55113298
level1	KE_1_019	2009	Rehabilitation of Village Polytechnics	2019/2020	55143298
level1	KE_1_041	2009	Rehabilitation of Village Polytechnics	2019/2020	55638298
level1	KE_1_004	2009	Rehabilitation of Village Polytechnics	2019/2020	55638298
level1	KE_1_012	2009	Rehabilitation of Village Polytechnics	2019/2020	56568298
level1	KE_1_027	2009	Rehabilitation of Village Polytechnics	2019/2020	57588298
level1	KE_1_003	2009	Rehabilitation of Village Polytechnics	2019/2020	58863298
level1	KE_1_002	2009	Rehabilitation of Village Polytechnics	2019/2020	59793298
level1	KE_1_017	2009	Rehabilitation of Village Polytechnics	2019/2020	60333298
level1	KE_1_026	2009	Rehabilitation of Village Polytechnics	2019/2020	61188298
level1	KE_1_032	2009	Rehabilitation of Village Polytechnics	2019/2020	63063298
level1	KE_1_040	2009	Rehabilitation of Village Polytechnics	2019/2020	63333298
level1	KE_1_046	2009	Rehabilitation of Village Polytechnics	2019/2020	67068298
level1	KE_1_038	2009	Rehabilitation of Village Polytechnics	2019/2020	67743298
level1	KE_1_015	2009	Rehabilitation of Village Polytechnics	2019/2020	72588298
level1	KE_1_005	2009	Road Maintenance Fuel Levy	2019/2020	73669313
level1	KE_1_045	2009	Rehabilitation of Village Polytechnics	2019/2020	74553298
level1	KE_1_037	2009	Rehabilitation of Village Polytechnics	2019/2020	76923298
level1	KE_1_047	2009	Compensation for User Fee Foregone	2019/2020	79423251
level1	KE_1_021	2009	Rehabilitation of Village Polytechnics	2019/2020	83268298
level1	KE_1_028	2009	Road Maintenance Fuel Levy	2019/2020	109605563
level1	KE_1_041	2009	Road Maintenance Fuel Levy	2019/2020	111402375
level1	KE_1_031	2009	Road Maintenance Fuel Levy	2019/2020	118589625
level1	KE_1_011	2009	Road Maintenance Fuel Levy	2019/2020	120386438
level1	KE_1_020	2009	Road Maintenance Fuel Levy	2019/2020	120386438
level1	KE_1_004	2009	Road Maintenance Fuel Levy	2019/2020	120386438
level1	KE_1_011	2009	Supplement for construction of county headquarters	2019/2020	121000000
level1	KE_1_005	2009	Supplement for construction of county headquarters	2019/2020	121000000
level1	KE_1_018	2009	Supplement for construction of county headquarters	2019/2020	121000000
level1	KE_1_013	2009	Supplement for construction of county headquarters	2019/2020	121000000
level1	KE_1_014	2009	Road Maintenance Fuel Levy	2019/2020	122183250
level1	KE_1_025	2009	Road Maintenance Fuel Levy	2019/2020	131167313
level1	KE_1_030	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_036	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_039	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_040	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_028	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_014	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_007	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_043	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_011	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_034	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_037	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_035	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_022	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_003	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_020	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_045	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_042	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_015	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_002	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_031	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_005	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_016	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_017	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_009	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_010	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_012	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_044	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_001	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_021	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_047	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_032	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_029	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_033	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_046	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_018	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_019	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_025	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_041	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_006	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_004	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_013	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_026	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_023	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_027	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_038	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_008	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_024	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_038	2009	Road Maintenance Fuel Levy	2019/2020	132065719
level1	KE_1_046	2009	Road Maintenance Fuel Levy	2019/2020	136557750
level1	KE_1_018	2009	Road Maintenance Fuel Levy	2019/2020	138354563
level1	KE_1_024	2009	Road Maintenance Fuel Levy	2019/2020	141948188
level1	KE_1_030	2009	Road Maintenance Fuel Levy	2019/2020	144643406
level1	KE_1_029	2009	Road Maintenance Fuel Levy	2019/2020	151830656
level1	KE_1_035	2009	Road Maintenance Fuel Levy	2019/2020	152729063
level1	KE_1_019	2009	Road Maintenance Fuel Levy	2019/2020	153627469
level1	KE_1_036	2009	Road Maintenance Fuel Levy	2019/2020	156322688
level1	KE_1_026	2009	Road Maintenance Fuel Levy	2019/2020	163509938
level1	KE_1_006	2009	Road Maintenance Fuel Levy	2019/2020	164408344
level1	KE_1_013	2009	Road Maintenance Fuel Levy	2019/2020	166205156
level1	KE_1_040	2009	Road Maintenance Fuel Levy	2019/2020	170697188
level1	KE_1_021	2009	Road Maintenance Fuel Levy	2019/2020	178782844
level1	KE_1_027	2009	Road Maintenance Fuel Levy	2019/2020	179681250
level1	KE_1_034	2009	Road Maintenance Fuel Levy	2019/2020	182376469
level1	KE_1_043	2009	Road Maintenance Fuel Levy	2019/2020	191360531
level1	KE_1_010	2009	Road Maintenance Fuel Levy	2019/2020	192258938
level1	KE_1_044	2009	Road Maintenance Fuel Levy	2019/2020	192258938
level1	KE_1_042	2009	Road Maintenance Fuel Levy	2019/2020	194055750
level1	KE_1_007	2009	Road Maintenance Fuel Levy	2019/2020	199446188
level1	KE_1_001	2009	Road Maintenance Fuel Levy	2019/2020	200344594
level1	KE_1_017	2009	Road Maintenance Fuel Levy	2019/2020	210227063
level1	KE_1_016	2009	Road Maintenance Fuel Levy	2019/2020	220109531
level1	KE_1_045	2009	Road Maintenance Fuel Levy	2019/2020	221007938
level1	KE_1_002	2009	Road Maintenance Fuel Levy	2019/2020	221007938
level1	KE_1_012	2009	Road Maintenance Fuel Levy	2019/2020	228195188
level1	KE_1_033	2009	Road Maintenance Fuel Levy	2019/2020	228195188
level1	KE_1_008	2009	Road Maintenance Fuel Levy	2019/2020	242569688
level1	KE_1_015	2009	Road Maintenance Fuel Levy	2019/2020	250655344
level1	KE_1_039	2009	Road Maintenance Fuel Levy	2019/2020	252452156
level1	KE_1_022	2009	Road Maintenance Fuel Levy	2019/2020	267725063
level1	KE_1_009	2009	Road Maintenance Fuel Levy	2019/2020	290185219
level1	KE_1_037	2009	Road Maintenance Fuel Levy	2019/2020	295575656
level1	KE_1_003	2009	Road Maintenance Fuel Levy	2019/2020	296474063
level1	KE_1_032	2009	Road Maintenance Fuel Levy	2019/2020	297372469
level1	KE_1_023	2009	Road Maintenance Fuel Levy	2019/2020	299169281
level1	KE_1_014	2009	Grants to Level 5 Hospitals	2019/2020	301040462
level1	KE_1_007	2009	Grants to Level 5 Hospitals	2019/2020	344739884
level1	KE_1_042	2009	Grants to Level 5 Hospitals	2019/2020	369017341
level1	KE_1_012	2009	Grants to Level 5 Hospitals	2019/2020	373872832
level1	KE_1_032	2009	Grants to Level 5 Hospitals	2019/2020	373872832
level1	KE_1_016	2009	Grants to Level 5 Hospitals	2019/2020	383583815
level1	KE_1_001	2009	Grants to Level 5 Hospitals	2019/2020	388439306
level1	KE_1_019	2009	Grants to Level 5 Hospitals	2019/2020	407861272
level1	KE_1_045	2009	Grants to Level 5 Hospitals	2019/2020	417572254
level1	KE_1_037	2009	Grants to Level 5 Hospitals	2019/2020	427283237
level1	KE_1_047	2009	Road Maintenance Fuel Levy	2019/2020	451898344
country	KE	2009	Supplement for construction of county headquarters	2019/2020	485152184
level1	KE_1_022	2009	Grants to Level 5 Hospitals	2019/2020	538716763
country	KE	2009	Compensation for User Fee Foregone	2019/2020	900000000
country	KE	2009	Rehabilitation of Village Polytechnics	2019/2020	2000000000
country	KE	2009	Grants to Level 5 Hospitals	2019/2020	4326000000
country	KE	2009	Leasing of Medical Equipment	2019/2020	6200000000
country	KE	2009	Road Maintenance Fuel Levy	2019/2020	8984062500
\.


--
-- Name: breakdown_condition_fund_ng2019 pk_breakdown_condition_fund_ng2019; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_ng2019
    ADD CONSTRAINT pk_breakdown_condition_fund_ng2019 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

