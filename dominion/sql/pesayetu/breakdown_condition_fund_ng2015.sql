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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_ng2015 DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_ng2015;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_ng2015;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_ng2015; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_ng2015 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_ng2015; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_ng2015 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
level1	KE_1_046	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	945233
level1	KE_1_005	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	2366871
level1	KE_1_011	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	3340178
level1	KE_1_025	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	5220197
level1	KE_1_004	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	5596140
level1	KE_1_006	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	6635345
level1	KE_1_010	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	6787069
level1	KE_1_013	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	8515829
level1	KE_1_028	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	8624640
level1	KE_1_031	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	9305967
level1	KE_1_033	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	9834915
level1	KE_1_040	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	11377011
level1	KE_1_024	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	11950786
level1	KE_1_014	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	12032884
level1	KE_1_020	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	12308920
level1	KE_1_038	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	12928219
level1	KE_1_030	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	12950107
level1	KE_1_018	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	13898986
level1	KE_1_044	2009	Road Maintenance Fuel Levy	2015/2016	14147432
level1	KE_1_025	2009	Grant for Free Maternal Healthcare	2015/2016	14183400
level1	KE_1_007	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	14523507
level1	KE_1_002	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	15149869
level1	KE_1_008	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	15429821
level1	KE_1_034	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	16021218
level1	KE_1_019	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	16166813
level1	KE_1_005	2009	Grant for Free Maternal Healthcare	2015/2016	16762200
level1	KE_1_036	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	16880750
level1	KE_1_029	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	17551588
level1	KE_1_035	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	17676855
level1	KE_1_026	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	19085197
level1	KE_1_010	2009	Grant for Free Maternal Healthcare	2015/2016	19341000
level1	KE_1_004	2009	Grant for Free Maternal Healthcare	2015/2016	19341000
level1	KE_1_041	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	19634071
level1	KE_1_013	2009	Road Maintenance Fuel Levy	2015/2016	19857530
level1	KE_1_023	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	19939321
level1	KE_1_046	2009	Grant for Free Maternal Healthcare	2015/2016	19942800
level1	KE_1_017	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	20618293
level1	KE_1_027	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	20843281
level1	KE_1_044	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	21379200
level1	KE_1_001	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	21896682
level1	KE_1_021	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	21971530
level1	KE_1_043	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	22466004
level1	KE_1_042	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	22585235
level1	KE_1_011	2009	Grant for Free Maternal Healthcare	2015/2016	23209200
level1	KE_1_023	2009	Grant for Free Maternal Healthcare	2015/2016	23209200
level1	KE_1_015	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	23606211
level1	KE_1_009	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	23910336
level1	KE_1_016	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	25601954
level1	KE_1_003	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	25867884
level1	KE_1_005	2009	Road Maintenance Fuel Levy	2015/2016	26065747
level1	KE_1_045	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	26859653
level1	KE_1_032	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	31373449
level1	KE_1_012	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	31615328
level1	KE_1_013	2009	Grant for Free Maternal Healthcare	2015/2016	35243600
level1	KE_1_022	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	37838646
level1	KE_1_039	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	38017014
level1	KE_1_037	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	38709716
level1	KE_1_011	2009	Road Maintenance Fuel Levy	2015/2016	38828547
level1	KE_1_024	2009	Grant for Free Maternal Healthcare	2015/2016	41260800
level1	KE_1_028	2009	Road Maintenance Fuel Levy	2015/2016	41545473
level1	KE_1_006	2009	Road Maintenance Fuel Levy	2015/2016	42042522
level1	KE_1_006	2009	Grant for Free Maternal Healthcare	2015/2016	42120400
level1	KE_1_028	2009	Grant for Free Maternal Healthcare	2015/2016	43409800
level1	KE_1_031	2009	Road Maintenance Fuel Levy	2015/2016	43820742
level1	KE_1_020	2009	Road Maintenance Fuel Levy	2015/2016	44947130
level1	KE_1_025	2009	Road Maintenance Fuel Levy	2015/2016	45125793
level1	KE_1_009	2009	Grant for Free Maternal Healthcare	2015/2016	46418000
level1	KE_1_014	2009	Road Maintenance Fuel Levy	2015/2016	48754599
level1	KE_1_038	2009	Road Maintenance Fuel Levy	2015/2016	49119806
level1	KE_1_034	2009	Grant for Free Maternal Healthcare	2015/2016	49856800
level1	KE_1_007	2009	Grant for Free Maternal Healthcare	2015/2016	50286600
level1	KE_1_008	2009	Grant for Free Maternal Healthcare	2015/2016	50286600
level1	KE_1_004	2009	Road Maintenance Fuel Levy	2015/2016	50617289
level1	KE_1_020	2009	Grant for Free Maternal Healthcare	2015/2016	50716400
level1	KE_1_018	2009	Grant for Free Maternal Healthcare	2015/2016	50716400
level1	KE_1_046	2009	Road Maintenance Fuel Levy	2015/2016	52776448
level1	KE_1_018	2009	Road Maintenance Fuel Levy	2015/2016	54714122
level1	KE_1_024	2009	Road Maintenance Fuel Levy	2015/2016	54798238
level1	KE_1_034	2009	Road Maintenance Fuel Levy	2015/2016	56055021
level1	KE_1_033	2009	Grant for Free Maternal Healthcare	2015/2016	56303800
level1	KE_1_030	2009	Road Maintenance Fuel Levy	2015/2016	56410082
level1	KE_1_019	2009	Road Maintenance Fuel Levy	2015/2016	56519885
level1	KE_1_035	2009	Road Maintenance Fuel Levy	2015/2016	57229294
level1	KE_1_014	2009	Grant for Free Maternal Healthcare	2015/2016	57593200
level1	KE_1_036	2009	Grant for Free Maternal Healthcare	2015/2016	58452800
level1	KE_1_036	2009	Road Maintenance Fuel Levy	2015/2016	59793197
level1	KE_1_029	2009	Road Maintenance Fuel Levy	2015/2016	60405657
level1	KE_1_033	2009	Road Maintenance Fuel Levy	2015/2016	61113929
level1	KE_1_041	2009	Road Maintenance Fuel Levy	2015/2016	63456905
level1	KE_1_031	2009	Grant for Free Maternal Healthcare	2015/2016	63610000
level1	KE_1_015	2009	Grant for Free Maternal Healthcare	2015/2016	63610400
level1	KE_1_026	2009	Road Maintenance Fuel Levy	2015/2016	64782039
level1	KE_1_002	2009	Road Maintenance Fuel Levy	2015/2016	65113404
level1	KE_1_030	2009	Grant for Free Maternal Healthcare	2015/2016	65759400
level1	KE_1_027	2009	Road Maintenance Fuel Levy	2015/2016	65911431
level1	KE_1_010	2009	Road Maintenance Fuel Levy	2015/2016	65923423
level1	KE_1_001	2009	Road Maintenance Fuel Levy	2015/2016	66030539
level1	KE_1_029	2009	Grant for Free Maternal Healthcare	2015/2016	67048800
level1	KE_1_026	2009	Grant for Free Maternal Healthcare	2015/2016	67908400
level1	KE_1_038	2009	Grant for Free Maternal Healthcare	2015/2016	67908400
level1	KE_1_021	2009	Road Maintenance Fuel Levy	2015/2016	68038977
level1	KE_1_040	2009	Road Maintenance Fuel Levy	2015/2016	69109240
level1	KE_1_043	2009	Road Maintenance Fuel Levy	2015/2016	71582731
level1	KE_1_042	2009	Road Maintenance Fuel Levy	2015/2016	72170965
level1	KE_1_047	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	73155271
level1	KE_1_007	2009	Road Maintenance Fuel Levy	2015/2016	73319649
level1	KE_1_017	2009	Road Maintenance Fuel Levy	2015/2016	75834678
level1	KE_1_017	2009	Grant for Free Maternal Healthcare	2015/2016	80802100
level1	KE_1_021	2009	Grant for Free Maternal Healthcare	2015/2016	80802400
level1	KE_1_019	2009	Grant for Free Maternal Healthcare	2015/2016	82091800
level1	KE_1_012	2009	Road Maintenance Fuel Levy	2015/2016	82490349
level1	KE_1_016	2009	Road Maintenance Fuel Levy	2015/2016	85984407
level1	KE_1_045	2009	Road Maintenance Fuel Levy	2015/2016	90112658
level1	KE_1_008	2009	Road Maintenance Fuel Levy	2015/2016	91879854
level1	KE_1_015	2009	Road Maintenance Fuel Levy	2015/2016	92318534
level1	KE_1_030	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_036	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_039	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_040	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_028	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_014	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_007	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_043	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_011	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_034	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_037	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_035	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_022	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_003	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_020	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_045	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_042	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_015	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_002	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_031	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_005	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_016	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_017	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_009	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_010	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_012	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_044	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_001	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_021	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_047	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_032	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_029	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_033	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_046	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_018	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_019	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_025	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_041	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_006	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_004	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_013	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_026	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_023	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_027	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_038	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_008	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_024	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_003	2009	Road Maintenance Fuel Levy	2015/2016	94528196
level1	KE_1_022	2009	Road Maintenance Fuel Levy	2015/2016	94811800
level1	KE_1_030	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_036	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_039	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_040	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_028	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_014	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_007	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_043	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_011	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_034	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_037	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_035	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_022	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_003	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_020	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_045	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_042	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_015	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_002	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_031	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_005	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_016	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_017	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_009	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_010	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_012	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_044	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_001	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_021	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_047	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_032	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_029	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_033	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_046	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_018	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_019	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_025	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_041	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_006	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_004	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_013	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_026	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_023	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_027	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_038	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_008	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_024	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_016	2009	Grant for Free Maternal Healthcare	2015/2016	97134800
level1	KE_1_039	2009	Road Maintenance Fuel Levy	2015/2016	97507257
level1	KE_1_035	2009	Grant for Free Maternal Healthcare	2015/2016	98854000
level1	KE_1_040	2009	Grant for Free Maternal Healthcare	2015/2016	99713600
level1	KE_1_032	2009	Road Maintenance Fuel Levy	2015/2016	103104393
level1	KE_1_002	2009	Grant for Free Maternal Healthcare	2015/2016	104441400
level1	KE_1_037	2009	Road Maintenance Fuel Levy	2015/2016	113164138
level1	KE_1_009	2009	Road Maintenance Fuel Levy	2015/2016	113767220
level1	KE_1_003	2009	Grant for Free Maternal Healthcare	2015/2016	117077600
level1	KE_1_027	2009	Grant for Free Maternal Healthcare	2015/2016	117335400
level1	KE_1_042	2009	Grant for Free Maternal Healthcare	2015/2016	123782400
level1	KE_1_012	2009	Grant for Free Maternal Healthcare	2015/2016	123782400
level1	KE_1_041	2009	Grant for Free Maternal Healthcare	2015/2016	128080400
level1	KE_1_043	2009	Grant for Free Maternal Healthcare	2015/2016	131089000
level1	KE_1_023	2009	Road Maintenance Fuel Levy	2015/2016	133118571
level1	KE_1_001	2009	Grant for Free Maternal Healthcare	2015/2016	136246600
level1	KE_1_044	2009	Grant for Free Maternal Healthcare	2015/2016	165043200
level1	KE_1_047	2009	Road Maintenance Fuel Levy	2015/2016	165100152
level1	KE_1_039	2009	Grant for Free Maternal Healthcare	2015/2016	170630600
level1	KE_1_014	2009	Grants to Level5 Hospitals	2015/2016	192882857
level1	KE_1_045	2009	Grant for Free Maternal Healthcare	2015/2016	194699400
level1	KE_1_037	2009	Grant for Free Maternal Healthcare	2015/2016	214900000
level1	KE_1_032	2009	Grant for Free Maternal Healthcare	2015/2016	219627800
level1	KE_1_022	2009	Grant for Free Maternal Healthcare	2015/2016	224785400
level1	KE_1_012	2009	Grants to Level5 Hospitals	2015/2016	244318286
level1	KE_1_047	2009	Grant for Free Maternal Healthcare	2015/2016	302579200
level1	KE_1_016	2009	Grants to Level5 Hospitals	2015/2016	304326286
level1	KE_1_022	2009	Grants to Level5 Hospitals	2015/2016	330044000
level1	KE_1_045	2009	Grants to Level5 Hospitals	2015/2016	338616571
level1	KE_1_042	2009	Grants to Level5 Hospitals	2015/2016	338616571
level1	KE_1_037	2009	Grants to Level5 Hospitals	2015/2016	342902857
level1	KE_1_007	2009	Grants to Level5 Hospitals	2015/2016	360048000
level1	KE_1_019	2009	Grants to Level5 Hospitals	2015/2016	368620571
level1	KE_1_032	2009	Grants to Level5 Hospitals	2015/2016	377193143
level1	KE_1_001	2009	Grants to Level5 Hospitals	2015/2016	402910857
country	KE	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	900000000
country	KE	2009	Road Maintenance Fuel Levy	2015/2016	3300000000
country	KE	2009	Grants to Level5 Hospitals	2015/2016	3600480000
country	KE	2009	Grant for Free Maternal Healthcare	2015/2016	4298000000
country	KE	2009	County Emergency Fund	2015/2016	4400000000
country	KE	2009	Leasing of Medical Equipment	2015/2016	4500000000
\.


--
-- Name: breakdown_condition_fund_ng2015 pk_breakdown_condition_fund_ng2015; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_ng2015
    ADD CONSTRAINT pk_breakdown_condition_fund_ng2015 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

