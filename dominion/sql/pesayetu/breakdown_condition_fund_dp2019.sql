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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_dp2019 DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_dp2019;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_dp2019;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_dp2019; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_dp2019 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_dp2019; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_dp2019 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
level1	KE_1_030	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_036	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_039	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_040	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_028	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_014	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_007	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_043	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_011	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_034	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_037	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_035	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_022	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_003	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_020	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_045	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_042	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_015	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_002	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_031	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_005	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_016	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_017	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_009	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_010	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_012	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_044	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_001	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_021	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_032	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_029	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_033	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_046	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_018	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_019	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_025	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_041	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_006	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_004	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_013	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_026	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_023	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_027	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_038	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_008	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_024	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
level1	KE_1_005	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	10593750
level1	KE_1_013	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	10875000
level1	KE_1_028	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	11250000
level1	KE_1_006	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	12093750
level1	KE_1_020	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	12281250
level1	KE_1_031	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	12281250
level1	KE_1_025	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	13218750
level1	KE_1_014	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	13312500
level1	KE_1_038	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	13312500
level1	KE_1_046	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	14250000
level1	KE_1_005	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	14265997
level1	KE_1_020	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	14513506
level1	KE_1_018	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	14718750
level1	KE_1_024	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	14718750
level1	KE_1_019	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	15000000
level1	KE_1_030	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	15187500
level1	KE_1_019	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15187858
level1	KE_1_014	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15418468
level1	KE_1_004	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	15431865
level1	KE_1_013	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15518089
level1	KE_1_038	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15724263
level1	KE_1_018	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15987360
level1	KE_1_029	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	16031250
level1	KE_1_027	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16331289
level1	KE_1_021	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16369053
level1	KE_1_001	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16374963
level1	KE_1_035	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16415491
level1	KE_1_029	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16507185
level1	KE_1_041	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16561840
level1	KE_1_011	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	16572474
level1	KE_1_004	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	16593750
level1	KE_1_031	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16625223
level1	KE_1_028	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16632723
level1	KE_1_026	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16768813
level1	KE_1_026	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	16781250
level1	KE_1_046	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16937554
level1	KE_1_042	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17029227
level1	KE_1_006	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17060386
level1	KE_1_035	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	17062500
level1	KE_1_034	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17285908
level1	KE_1_022	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17404219
level1	KE_1_036	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17416549
level1	KE_1_012	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17575209
level1	KE_1_030	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17586468
level1	KE_1_036	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	17718750
level1	KE_1_033	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17793235
level1	KE_1_044	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17805472
level1	KE_1_040	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	17812500
level1	KE_1_043	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17858004
level1	KE_1_016	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17869663
level1	KE_1_040	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18257455
level1	KE_1_032	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18507501
level1	KE_1_045	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18527653
level1	KE_1_011	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18540513
level1	KE_1_024	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18586308
level1	KE_1_021	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	18656250
level1	KE_1_039	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18814092
level1	KE_1_025	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18994320
level1	KE_1_033	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	19031250
level1	KE_1_017	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	19051135
level1	KE_1_002	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	19348633
level1	KE_1_003	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	19723695
level1	KE_1_037	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	19811716
level1	KE_1_043	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	19968750
level1	KE_1_044	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	20062500
level1	KE_1_018	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	20223224
level1	KE_1_004	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	20358867
level1	KE_1_015	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	20392968
level1	KE_1_007	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	20520018
level1	KE_1_042	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	20625000
level1	KE_1_007	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	20718750
level1	KE_1_030	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	21118210
level1	KE_1_047	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	21183840
level1	KE_1_017	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	21281250
level1	KE_1_031	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	21345341
level1	KE_1_024	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	21495096
level1	KE_1_010	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	22466188
level1	KE_1_002	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	22500000
level1	KE_1_009	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	22822072
level1	KE_1_045	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	22968750
level1	KE_1_008	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	23548494
level1	KE_1_010	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	23851133
level1	KE_1_012	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	23906250
level1	KE_1_008	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	24481325
level1	KE_1_001	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	24562500
level1	KE_1_016	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	24843750
level1	KE_1_034	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	24844848
level1	KE_1_008	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	25312500
level1	KE_1_023	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	25346766
level1	KE_1_041	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	25932368
level1	KE_1_027	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	25961694
level1	KE_1_015	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	26062500
level1	KE_1_039	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	26718750
level1	KE_1_022	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	27937500
level1	KE_1_010	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	29133697
level1	KE_1_030	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_036	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_039	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_040	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_028	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_014	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_007	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_043	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_011	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_034	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_037	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_035	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_022	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_003	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_020	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_045	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_042	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_015	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_002	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_031	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_005	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_016	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_017	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_009	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_010	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_012	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_044	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_001	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_021	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_047	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_032	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_029	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_033	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_046	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_018	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_019	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_025	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_041	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_006	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_004	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_013	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_026	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_023	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_027	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_038	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_008	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_024	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
level1	KE_1_009	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	30281250
level1	KE_1_037	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	30843750
level1	KE_1_023	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	32156250
level1	KE_1_025	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	32159348
level1	KE_1_003	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	32343750
level1	KE_1_036	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
level1	KE_1_028	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
level1	KE_1_020	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
level1	KE_1_042	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
level1	KE_1_031	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
level1	KE_1_005	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
level1	KE_1_012	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
level1	KE_1_046	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
level1	KE_1_018	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
level1	KE_1_025	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
level1	KE_1_008	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
level1	KE_1_024	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
level1	KE_1_042	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	36068231
level1	KE_1_026	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	36686728
level1	KE_1_001	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	37921806
level1	KE_1_033	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	38282966
level1	KE_1_030	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	39175834
level1	KE_1_027	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	40028573
level1	KE_1_013	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	40049752
level1	KE_1_032	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	41107213
level1	KE_1_041	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	42327625
level1	KE_1_006	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	42394162
level1	KE_1_044	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	43668076
level1	KE_1_002	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	44360883
level1	KE_1_014	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	44569827
level1	KE_1_045	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	44696901
level1	KE_1_039	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
level1	KE_1_040	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
level1	KE_1_028	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
level1	KE_1_037	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
level1	KE_1_042	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
level1	KE_1_029	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
level1	KE_1_041	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
level1	KE_1_026	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
level1	KE_1_027	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
level1	KE_1_038	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
level1	KE_1_024	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
level1	KE_1_045	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	45697438
level1	KE_1_029	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	46342186
level1	KE_1_047	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	47156250
level1	KE_1_007	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	47421765
level1	KE_1_002	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_031	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_005	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_010	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_025	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_041	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_006	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_004	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_013	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_017	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	50180747
level1	KE_1_019	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	50181184
level1	KE_1_027	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	50223504
level1	KE_1_004	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	50849353
level1	KE_1_030	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	52360500
level1	KE_1_043	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	53812849
level1	KE_1_038	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	56065640
level1	KE_1_006	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	56942903
level1	KE_1_010	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	57240000
level1	KE_1_032	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	58346857
level1	KE_1_037	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	61794598
level1	KE_1_021	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	62437600
level1	KE_1_011	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	64373437
level1	KE_1_020	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	71302200
level1	KE_1_035	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	71544247
level1	KE_1_024	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	73392300
level1	KE_1_033	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	74905300
level1	KE_1_044	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	76811165
level1	KE_1_021	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	76894209
level1	KE_1_022	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	80079440
level1	KE_1_040	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	81106071
level1	KE_1_023	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	84141376
level1	KE_1_017	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	89179782
level1	KE_1_028	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	89802100
level1	KE_1_011	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	93968100
level1	KE_1_023	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	95023200
level1	KE_1_047	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	96359510
level1	KE_1_040	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	101071500
level1	KE_1_046	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	114705300
level1	KE_1_012	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	116890200
level1	KE_1_040	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	116993505
level1	KE_1_037	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	117000000
level1	KE_1_006	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	117024000
level1	KE_1_018	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	117268690
level1	KE_1_024	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	117291410
level1	KE_1_028	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	118422545
level1	KE_1_042	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	118482110
level1	KE_1_043	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	119361500
level1	KE_1_014	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	119892100
level1	KE_1_009	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	125791038
level1	KE_1_003	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	129114721
level1	KE_1_016	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	129858778
level1	KE_1_015	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	129886088
level1	KE_1_031	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	131027150
level1	KE_1_018	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	135543400
level1	KE_1_034	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	135621176
level1	KE_1_017	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	136261600
level1	KE_1_030	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	141097380
level1	KE_1_041	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	142126290
level1	KE_1_039	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	143042792
level1	KE_1_034	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	143531050
level1	KE_1_010	2009	German Development Bank (KfW) Drought Resilience Programme in Northern Kenya (DRPNK)	2019/2020	150000000
level1	KE_1_016	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	150156390
level1	KE_1_013	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	152374180
level1	KE_1_008	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	153172330
level1	KE_1_010	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	156114090
level1	KE_1_007	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	157422850
level1	KE_1_005	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	157507010
level1	KE_1_002	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	157706559
level1	KE_1_045	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	164053800
level1	KE_1_008	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	165643500
level1	KE_1_036	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	168334800
level1	KE_1_011	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	170794330
level1	KE_1_009	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	175819500
level1	KE_1_029	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	177231700
level1	KE_1_036	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	180000000
level1	KE_1_019	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	186033960
level1	KE_1_035	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	199459400
level1	KE_1_023	2009	German Development Bank (KfW) Drought Resilience Programme in Northern Kenya (DRPNK)	2019/2020	200000000
level1	KE_1_009	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	200000000
level1	KE_1_004	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	200000000
level1	KE_1_027	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	200000000
level1	KE_1_015	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	232374200
level1	KE_1_007	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	233506000
level1	KE_1_019	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	236639100
level1	KE_1_008	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	250000000
level1	KE_1_038	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	250950700
level1	KE_1_035	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	256299000
level1	KE_1_034	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	265950300
level1	KE_1_026	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	299106900
level1	KE_1_012	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	299971780
level1	KE_1_002	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	300000000
level1	KE_1_039	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	300977100
level1	KE_1_021	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	307623650
level1	KE_1_003	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	330534500
level1	KE_1_022	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	331195210
level1	KE_1_029	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	343929300
country	KE	2009	German Development Bank (KfW) Drought Resilience Programme in Northern Kenya (DRPNK)	2019/2020	350000000
level1	KE_1_039	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
level1	KE_1_014	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
level1	KE_1_043	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
level1	KE_1_003	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
level1	KE_1_020	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
level1	KE_1_045	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
level1	KE_1_015	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
level1	KE_1_002	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
level1	KE_1_017	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
level1	KE_1_044	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
level1	KE_1_032	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
level1	KE_1_033	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
level1	KE_1_046	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
level1	KE_1_025	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
level1	KE_1_026	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
level1	KE_1_023	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
level1	KE_1_038	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
level1	KE_1_037	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	389118800
country	KE	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	396000000
level1	KE_1_007	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	400000000
level1	KE_1_006	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	400000000
country	KE	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	492698583
country	KE	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	495000000
level1	KE_1_044	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	518367800
level1	KE_1_003	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	600000000
level1	KE_1_027	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	630147800
level1	KE_1_042	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	773573300
country	KE	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	849626237
country	KE	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	986583544
level1	KE_1_016	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	1018320500
level1	KE_1_032	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	1084843300
country	KE	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	1410000000
level1	KE_1_001	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	1550000000
level1	KE_1_022	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	1885993000
country	KE	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	2994247736
country	KE	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	3500000000
country	KE	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	3643298670
country	KE	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 2 grant	2019/2020	4890000000
country	KE	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	7232719940
country	KE	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	11464702500
\.


--
-- Name: breakdown_condition_fund_dp2019 pk_breakdown_condition_fund_dp2019; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_dp2019
    ADD CONSTRAINT pk_breakdown_condition_fund_dp2019 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

