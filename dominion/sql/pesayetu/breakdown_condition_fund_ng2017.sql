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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_ng2017 DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_ng2017;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_ng2017;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_ng2017; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_ng2017 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_ng2017; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_ng2017 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
level1	KE_1_005	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	2451034
level1	KE_1_011	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	3472461
level1	KE_1_025	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	5235578
level1	KE_1_006	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	5296305
level1	KE_1_004	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	5682537
level1	KE_1_010	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	6643714
level1	KE_1_013	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	8218119
level1	KE_1_028	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	8788919
level1	KE_1_031	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	9968208
level1	KE_1_014	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	10724225
level1	KE_1_020	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	11282570
level1	KE_1_024	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	12128484
level1	KE_1_038	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	12657201
level1	KE_1_018	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	12735922
level1	KE_1_007	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	12964636
level1	KE_1_046	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	13175221
level1	KE_1_030	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	13191000
level1	KE_1_019	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	13701379
level1	KE_1_002	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	15209593
level1	KE_1_008	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	15784997
level1	KE_1_036	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	16713356
level1	KE_1_040	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	16934085
level1	KE_1_034	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	16955365
level1	KE_1_035	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	18048789
level1	KE_1_029	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	18086363
level1	KE_1_041	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	18194808
level1	KE_1_017	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	19435760
level1	KE_1_021	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	20138691
level1	KE_1_033	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	20595297
level1	KE_1_027	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	20813065
level1	KE_1_042	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	21299489
level1	KE_1_026	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	21304915
level1	KE_1_044	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	21655884
level1	KE_1_043	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	22185346
level1	KE_1_015	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	22499906
level1	KE_1_001	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	23385934
level1	KE_1_016	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	24129039
level1	KE_1_009	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	25474920
level1	KE_1_023	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	25634941
level1	KE_1_003	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	25969864
level1	KE_1_045	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	26138997
level1	KE_1_012	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	31648428
level1	KE_1_039	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	32837307
level1	KE_1_022	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	34671542
level1	KE_1_037	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	37789290
level1	KE_1_032	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	38723265
level1	KE_1_047	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	79423251
level1	KE_1_011	2009	Supplement for construction of county headquarters	2017/2018	121000000
level1	KE_1_005	2009	Supplement for construction of county headquarters	2017/2018	121000000
level1	KE_1_018	2009	Supplement for construction of county headquarters	2017/2018	121000000
level1	KE_1_004	2009	Supplement for construction of county headquarters	2017/2018	121000000
level1	KE_1_013	2009	Supplement for construction of county headquarters	2017/2018	121000000
level1	KE_1_014	2009	Grants to Level5 Hospitals	2017/2018	301040462
level1	KE_1_012	2009	Grants to Level5 Hospitals	2017/2018	313872832
level1	KE_1_007	2009	Grants to Level5 Hospitals	2017/2018	344739884
level1	KE_1_042	2009	Grants to Level5 Hospitals	2017/2018	369017341
level1	KE_1_032	2009	Grants to Level5 Hospitals	2017/2018	373872832
level1	KE_1_016	2009	Grants to Level5 Hospitals	2017/2018	383583815
level1	KE_1_001	2009	Grants to Level5 Hospitals	2017/2018	388439306
level1	KE_1_019	2009	Grants to Level5 Hospitals	2017/2018	407861272
level1	KE_1_035	2009	Grants to Level5 Hospitals	2017/2018	412716763
level1	KE_1_045	2009	Grants to Level5 Hospitals	2017/2018	417572254
level1	KE_1_037	2009	Grants to Level5 Hospitals	2017/2018	427283237
country	KE	2009	Supplement for construction of county headquarters	2017/2018	605000000
country	KE	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	900000000
country	KE	2009	Grants to Level5 Hospitals	2017/2018	4200000000
\.


--
-- Name: breakdown_condition_fund_ng2017 pk_breakdown_condition_fund_ng2017; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_ng2017
    ADD CONSTRAINT pk_breakdown_condition_fund_ng2017 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

