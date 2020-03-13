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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_dp2017 DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_dp2017;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_dp2017;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_dp2017; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_dp2017 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_dp2017; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_dp2017 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
level1	KE_1_001	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	5007422
level1	KE_1_005	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	5921224
level1	KE_1_011	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	8824955
level1	KE_1_013	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	9058820
level1	KE_1_028	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	9442450
level1	KE_1_006	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	9555425
level1	KE_1_031	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	9959579
level1	KE_1_020	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	10215585
level1	KE_1_025	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	10256191
level1	KE_1_014	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11080940
level1	KE_1_038	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11177587
level1	KE_1_004	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	11224457
level1	KE_1_003	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11484371
level1	KE_1_004	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11504299
level1	KE_1_005	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	11785000
level1	KE_1_044	2009	Other Loans & Grants	2017/2018	11991777
level1	KE_1_046	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11995032
level1	KE_1_039	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12161151
level1	KE_1_018	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12435427
level1	KE_1_024	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12454549
level1	KE_1_011	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	12607500
level1	KE_1_030	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12820885
level1	KE_1_019	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12845841
level1	KE_1_035	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	13007075
level1	KE_1_036	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	13589799
level1	KE_1_029	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	13728991
level1	KE_1_041	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	14422487
level1	KE_1_026	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	14723664
level1	KE_1_002	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	14798976
level1	KE_1_013	2009	Other Loans & Grants	2017/2018	14982351
level1	KE_1_027	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	14987172
level1	KE_1_033	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	15267291
level1	KE_1_021	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	15463900
level1	KE_1_020	2009	Other Loans & Grants	2017/2018	15618572
level1	KE_1_040	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	15707150
level1	KE_1_037	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	15719948
level1	KE_1_014	2009	Other Loans & Grants	2017/2018	16091521
level1	KE_1_005	2009	Other Loans & Grants	2017/2018	16251730
level1	KE_1_043	2009	Other Loans & Grants	2017/2018	16266980
level1	KE_1_043	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	16269325
level1	KE_1_042	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	16312993
level1	KE_1_042	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	16403010
level1	KE_1_007	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	16664092
level1	KE_1_044	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	16852230
level1	KE_1_019	2009	Other Loans & Grants	2017/2018	17065212
level1	KE_1_017	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	17235701
level1	KE_1_026	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	18322590
level1	KE_1_012	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	18748409
level1	KE_1_013	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	18767500
level1	KE_1_028	2009	Other Loans & Grants	2017/2018	18956691
level1	KE_1_001	2009	Other Loans & Grants	2017/2018	18990114
level1	KE_1_046	2009	Other Loans & Grants	2017/2018	19530441
level1	KE_1_016	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	19542538
level1	KE_1_006	2009	Other Loans & Grants	2017/2018	20118951
level1	KE_1_045	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	20480801
level1	KE_1_008	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	20882455
level1	KE_1_015	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	20982159
level1	KE_1_022	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	21548821
level1	KE_1_022	2009	Other Loans & Grants	2017/2018	21851856
level1	KE_1_014	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
level1	KE_1_022	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
level1	KE_1_020	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
level1	KE_1_021	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
level1	KE_1_018	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
level1	KE_1_019	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
level1	KE_1_013	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
level1	KE_1_032	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	23133561
level1	KE_1_001	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	23619271
level1	KE_1_023	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	24195000
level1	KE_1_004	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	24725000
level1	KE_1_031	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	25255000
level1	KE_1_011	2009	Other Loans & Grants	2017/2018	25550510
level1	KE_1_034	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	25719948
level1	KE_1_018	2009	Other Loans & Grants	2017/2018	25839485
level1	KE_1_009	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	25857016
level1	KE_1_035	2009	Other Loans & Grants	2017/2018	26375133
level1	KE_1_031	2009	Other Loans & Grants	2017/2018	26439559
level1	KE_1_009	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	28305000
level1	KE_1_046	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	28452981
level1	KE_1_005	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	28585490
level1	KE_1_012	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	29524087
level1	KE_1_042	2009	Other Loans & Grants	2017/2018	30073021
level1	KE_1_023	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	30255192
level1	KE_1_028	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	30279354
level1	KE_1_045	2009	Other Loans & Grants	2017/2018	31439291
level1	KE_1_005	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	31560240
level1	KE_1_030	2009	Other Loans & Grants	2017/2018	31707536
level1	KE_1_006	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	31797500
level1	KE_1_014	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	31912879
level1	KE_1_006	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	32699643
level1	KE_1_034	2009	Other Loans & Grants	2017/2018	33670568
level1	KE_1_027	2009	Other Loans & Grants	2017/2018	33834647
level1	KE_1_036	2009	Other Loans & Grants	2017/2018	34476132
level1	KE_1_040	2009	Other Loans & Grants	2017/2018	35708101
level1	KE_1_013	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	35989344
level1	KE_1_025	2009	Other Loans & Grants	2017/2018	35998283
level1	KE_1_028	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	36005074
level1	KE_1_011	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	36113321
level1	KE_1_006	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	36728875
level1	KE_1_025	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	36731596
level1	KE_1_010	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	36800000
level1	KE_1_002	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	37075000
level1	KE_1_047	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	37420064
level1	KE_1_047	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	37523967
level1	KE_1_034	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	37645000
level1	KE_1_029	2009	Other Loans & Grants	2017/2018	37935161
level1	KE_1_020	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	38364051
level1	KE_1_031	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	38403461
level1	KE_1_007	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	38645000
level1	KE_1_004	2009	Other Loans & Grants	2017/2018	38702117
level1	KE_1_002	2009	Other Loans & Grants	2017/2018	38819201
level1	KE_1_038	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	38854627
level1	KE_1_041	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	39021230
level1	KE_1_046	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	39582751
level1	KE_1_024	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	40081255
level1	KE_1_018	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	40222990
level1	KE_1_016	2009	Other Loans & Grants	2017/2018	40561481
level1	KE_1_044	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	40625000
level1	KE_1_030	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	40839509
level1	KE_1_019	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	40850289
level1	KE_1_004	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	41095762
level1	KE_1_035	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	41594910
level1	KE_1_029	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	41606801
level1	KE_1_033	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	41780000
level1	KE_1_036	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	41921669
level1	KE_1_017	2009	Other Loans & Grants	2017/2018	42068481
level1	KE_1_035	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	42286732
level1	KE_1_021	2009	Other Loans & Grants	2017/2018	42505145
level1	KE_1_032	2009	Other Loans & Grants	2017/2018	42587323
level1	KE_1_034	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	42829641
level1	KE_1_034	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	42954113
level1	KE_1_041	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	43031378
level1	KE_1_026	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	43386482
level1	KE_1_027	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	43650314
level1	KE_1_026	2009	Other Loans & Grants	2017/2018	43699195
level1	KE_1_040	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	44261335
level1	KE_1_007	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	44599121
level1	KE_1_024	2009	Other Loans & Grants	2017/2018	44669544
level1	KE_1_008	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	45040000
level1	KE_1_021	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	45056255
level1	KE_1_010	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	45148545
level1	KE_1_011	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	45533001
level1	KE_1_038	2009	Other Loans & Grants	2017/2018	45759161
level1	KE_1_033	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	45796321
level1	KE_1_031	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	46115937
level1	KE_1_043	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	46229189
level1	KE_1_044	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	46330991
level1	KE_1_042	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	46361941
level1	KE_1_033	2009	Other Loans & Grants	2017/2018	46406308
level1	KE_1_002	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	47394010
level1	KE_1_017	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	47396651
level1	KE_1_028	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	47990000
level1	KE_1_001	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	49809062
level1	KE_1_008	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	49871995
level1	KE_1_016	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	49893161
level1	KE_1_039	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_014	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_043	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_022	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_003	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_020	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_045	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_015	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_002	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_017	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_012	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_044	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_021	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_032	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_029	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_033	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_046	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_025	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_026	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_023	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_038	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_045	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	50373481
level1	KE_1_012	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	50375116
level1	KE_1_038	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	50845284
level1	KE_1_007	2009	Other Loans & Grants	2017/2018	50874733
level1	KE_1_045	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	50984665
level1	KE_1_025	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	53125000
level1	KE_1_015	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	53665060
level1	KE_1_030	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	54243300
level1	KE_1_039	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	54474504
level1	KE_1_010	2009	Other Loans & Grants	2017/2018	54542181
level1	KE_1_009	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	54795930
level1	KE_1_032	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	56299041
level1	KE_1_027	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	56301747
level1	KE_1_003	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	57107014
level1	KE_1_015	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	58210000
level1	KE_1_015	2009	Other Loans & Grants	2017/2018	58554011
level1	KE_1_043	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	59001481
level1	KE_1_037	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	59311725
level1	KE_1_036	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	59403836
level1	KE_1_040	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	59552830
level1	KE_1_023	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	61120888
level1	KE_1_037	2009	Other Loans & Grants	2017/2018	61145971
level1	KE_1_008	2009	Other Loans & Grants	2017/2018	61485350
level1	KE_1_010	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	61800000
level1	KE_1_039	2009	Other Loans & Grants	2017/2018	62188791
level1	KE_1_041	2009	Other Loans & Grants	2017/2018	63669291
level1	KE_1_009	2009	Other Loans & Grants	2017/2018	64221359
level1	KE_1_032	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	65337491
level1	KE_1_016	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	65588781
level1	KE_1_030	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
level1	KE_1_045	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
level1	KE_1_042	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
level1	KE_1_002	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
level1	KE_1_031	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
level1	KE_1_017	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
level1	KE_1_044	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
level1	KE_1_018	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
level1	KE_1_025	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
level1	KE_1_006	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
level1	KE_1_004	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
level1	KE_1_027	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
level1	KE_1_008	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
level1	KE_1_024	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
level1	KE_1_023	2009	Other Loans & Grants	2017/2018	66640350
level1	KE_1_025	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	66786111
level1	KE_1_029	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	66845279
level1	KE_1_002	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	67495490
level1	KE_1_024	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	67985000
level1	KE_1_017	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	71695461
level1	KE_1_047	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	71910897
level1	KE_1_044	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	71990710
level1	KE_1_003	2009	Other Loans & Grants	2017/2018	74392884
level1	KE_1_024	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	83202997
level1	KE_1_033	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	83620453
level1	KE_1_007	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	91760861
level1	KE_1_003	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	93668250
level1	KE_1_030	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	94210000
level1	KE_1_003	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	96840000
level1	KE_1_010	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	101892430
level1	KE_1_015	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	103430429
level1	KE_1_039	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
level1	KE_1_037	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
level1	KE_1_009	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
level1	KE_1_023	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
level1	KE_1_008	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
level1	KE_1_010	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	149513995
level1	KE_1_022	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	561591351
country	KE	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	762979751
country	KE	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	873407500
country	KE	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	985800000
country	KE	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	1050000000
level1	KE_1_047	2009	Other Loans & Grants	2017/2018	2137641302
country	KE	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	2148000009
country	KE	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	2750000000
level1	KE_1_012	2009	Other Loans & Grants	2017/2018	3943731665
country	KE	2009	Other Loans & Grants	2017/2018	7837638872
\.


--
-- Name: breakdown_condition_fund_dp2017 pk_breakdown_condition_fund_dp2017; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_dp2017
    ADD CONSTRAINT pk_breakdown_condition_fund_dp2017 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

