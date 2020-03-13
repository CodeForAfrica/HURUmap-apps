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

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY pesayetu.conditional_fund DROP CONSTRAINT IF EXISTS pk_conditional_fund;
DROP TABLE IF EXISTS pesayetu.conditional_fund;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: conditional_fund; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.conditional_fund (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    conditional_fund character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: conditional_fund; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.conditional_fund (geo_level, geo_code, geo_version, conditional_fund, total) FROM stdin;
level1	KE_1_030	2009	World Bank Loan	17224300
level1	KE_1_030	2009	DANIDA Grant	25970000
level1	KE_1_030	2009	Other Conditional Allocations	0
level1	KE_1_036	2009	World Bank Loan	0
level1	KE_1_036	2009	DANIDA Grant	14950000
level1	KE_1_036	2009	Other Conditional Allocations	0
level1	KE_1_039	2009	World Bank Loan	0
level1	KE_1_039	2009	DANIDA Grant	14750000
level1	KE_1_039	2009	Other Conditional Allocations	182000000
level1	KE_1_040	2009	World Bank Loan	0
level1	KE_1_040	2009	DANIDA Grant	12990000
level1	KE_1_040	2009	Other Conditional Allocations	33250000
level1	KE_1_028	2009	World Bank Loan	20179116
level1	KE_1_028	2009	DANIDA Grant	20800000
level1	KE_1_028	2009	Other Conditional Allocations	0
level1	KE_1_014	2009	World Bank Loan	0
level1	KE_1_014	2009	DANIDA Grant	13750000
level1	KE_1_014	2009	Other Conditional Allocations	100000000
level1	KE_1_007	2009	World Bank Loan	15088268
level1	KE_1_007	2009	DANIDA Grant	17940000
level1	KE_1_007	2009	Other Conditional Allocations	0
level1	KE_1_043	2009	World Bank Loan	0
level1	KE_1_043	2009	DANIDA Grant	24770000
level1	KE_1_043	2009	Other Conditional Allocations	0
level1	KE_1_011	2009	World Bank Loan	8728052
level1	KE_1_011	2009	DANIDA Grant	7970000
level1	KE_1_011	2009	Other Conditional Allocations	0
level1	KE_1_034	2009	World Bank Loan	31643654
level1	KE_1_034	2009	DANIDA Grant	17890000
level1	KE_1_034	2009	Other Conditional Allocations	40000000
level1	KE_1_037	2009	World Bank Loan	0
level1	KE_1_037	2009	DANIDA Grant	23500000
level1	KE_1_037	2009	Other Conditional Allocations	255000000
level1	KE_1_035	2009	World Bank Loan	0
level1	KE_1_035	2009	DANIDA Grant	22600000
level1	KE_1_035	2009	Other Conditional Allocations	0
level1	KE_1_022	2009	World Bank Loan	0
level1	KE_1_022	2009	DANIDA Grant	19200000
level1	KE_1_022	2009	Other Conditional Allocations	537000000
level1	KE_1_003	2009	World Bank Loan	66776764
level1	KE_1_003	2009	DANIDA Grant	15530000
level1	KE_1_003	2009	Other Conditional Allocations	0
level1	KE_1_020	2009	World Bank Loan	0
level1	KE_1_020	2009	DANIDA Grant	12770000
level1	KE_1_020	2009	Other Conditional Allocations	324000000
level1	KE_1_045	2009	World Bank Loan	0
level1	KE_1_045	2009	DANIDA Grant	22950000
level1	KE_1_045	2009	Other Conditional Allocations	0
level1	KE_1_042	2009	World Bank Loan	0
level1	KE_1_042	2009	DANIDA Grant	16580000
level1	KE_1_042	2009	Other Conditional Allocations	48000000
level1	KE_1_015	2009	World Bank Loan	46995266
level1	KE_1_015	2009	DANIDA Grant	36990000
level1	KE_1_015	2009	Other Conditional Allocations	0
level1	KE_1_002	2009	World Bank Loan	45759322
level1	KE_1_002	2009	DANIDA Grant	13620000
level1	KE_1_002	2009	Other Conditional Allocations	0
level1	KE_1_031	2009	World Bank Loan	18845096
level1	KE_1_031	2009	DANIDA Grant	11530000
level1	KE_1_031	2009	Other Conditional Allocations	206000000
level1	KE_1_005	2009	World Bank Loan	7132526
level1	KE_1_005	2009	DANIDA Grant	7640000
level1	KE_1_005	2009	Other Conditional Allocations	0
level1	KE_1_016	2009	World Bank Loan	0
level1	KE_1_016	2009	DANIDA Grant	26700000
level1	KE_1_016	2009	Other Conditional Allocations	180000000
level1	KE_1_017	2009	World Bank Loan	0
level1	KE_1_017	2009	DANIDA Grant	24130000
level1	KE_1_017	2009	Other Conditional Allocations	220000000
level1	KE_1_009	2009	World Bank Loan	13686168
level1	KE_1_009	2009	DANIDA Grant	14620000
level1	KE_1_009	2009	Other Conditional Allocations	0
level1	KE_1_010	2009	World Bank Loan	10086676
level1	KE_1_010	2009	DANIDA Grant	15350000
level1	KE_1_010	2009	Other Conditional Allocations	0
level1	KE_1_012	2009	World Bank Loan	0
level1	KE_1_012	2009	DANIDA Grant	20590000
level1	KE_1_012	2009	Other Conditional Allocations	200000000
level1	KE_1_044	2009	World Bank Loan	67012156
level1	KE_1_044	2009	DANIDA Grant	20440000
level1	KE_1_044	2009	Other Conditional Allocations	0
level1	KE_1_001	2009	World Bank Loan	0
level1	KE_1_001	2009	DANIDA Grant	6300000
level1	KE_1_001	2009	Other Conditional Allocations	16000000
level1	KE_1_021	2009	World Bank Loan	0
level1	KE_1_021	2009	DANIDA Grant	24810000
level1	KE_1_021	2009	Other Conditional Allocations	100000000
level1	KE_1_047	2009	World Bank Loan	0
level1	KE_1_047	2009	DANIDA Grant	27800000
level1	KE_1_047	2009	Other Conditional Allocations	6200000000
level1	KE_1_032	2009	World Bank Loan	0
level1	KE_1_032	2009	DANIDA Grant	25260000
level1	KE_1_032	2009	Other Conditional Allocations	0
level1	KE_1_029	2009	World Bank Loan	0
level1	KE_1_029	2009	DANIDA Grant	18310000
level1	KE_1_029	2009	Other Conditional Allocations	0
level1	KE_1_033	2009	World Bank Loan	38137350
level1	KE_1_033	2009	DANIDA Grant	17890000
level1	KE_1_033	2009	Other Conditional Allocations	0
level1	KE_1_046	2009	World Bank Loan	0
level1	KE_1_046	2009	DANIDA Grant	23920000
level1	KE_1_046	2009	Other Conditional Allocations	0
level1	KE_1_018	2009	World Bank Loan	0
level1	KE_1_018	2009	DANIDA Grant	18860000
level1	KE_1_018	2009	Other Conditional Allocations	73000000
level1	KE_1_019	2009	World Bank Loan	0
level1	KE_1_019	2009	DANIDA Grant	22930000
level1	KE_1_019	2009	Other Conditional Allocations	160000000
level1	KE_1_025	2009	World Bank Loan	8669898
level1	KE_1_025	2009	DANIDA Grant	10990000
level1	KE_1_025	2009	Other Conditional Allocations	0
level1	KE_1_041	2009	World Bank Loan	0
level1	KE_1_041	2009	DANIDA Grant	27530000
level1	KE_1_041	2009	Other Conditional Allocations	91500000
level1	KE_1_006	2009	World Bank Loan	17242898
level1	KE_1_006	2009	DANIDA Grant	14810000
level1	KE_1_006	2009	Other Conditional Allocations	0
level1	KE_1_004	2009	World Bank Loan	8481988
level1	KE_1_004	2009	DANIDA Grant	9290000
level1	KE_1_004	2009	Other Conditional Allocations	0
level1	KE_1_013	2009	World Bank Loan	13899808
level1	KE_1_013	2009	DANIDA Grant	12330000
level1	KE_1_013	2009	Other Conditional Allocations	300000000
level1	KE_1_026	2009	World Bank Loan	0
level1	KE_1_026	2009	DANIDA Grant	11330000
level1	KE_1_026	2009	Other Conditional Allocations	0
level1	KE_1_023	2009	World Bank Loan	20486700
level1	KE_1_023	2009	DANIDA Grant	12070000
level1	KE_1_023	2009	Other Conditional Allocations	0
level1	KE_1_027	2009	World Bank Loan	0
level1	KE_1_027	2009	DANIDA Grant	17320000
level1	KE_1_027	2009	Other Conditional Allocations	0
level1	KE_1_038	2009	World Bank Loan	0
level1	KE_1_038	2009	DANIDA Grant	14170000
level1	KE_1_038	2009	Other Conditional Allocations	52500000
level1	KE_1_008	2009	World Bank Loan	16369300
level1	KE_1_008	2009	DANIDA Grant	20090000
level1	KE_1_008	2009	Other Conditional Allocations	0
level1	KE_1_024	2009	World Bank Loan	15799898
level1	KE_1_024	2009	DANIDA Grant	12180000
level1	KE_1_024	2009	Other Conditional Allocations	0
\.


--
-- Name: conditional_fund pk_conditional_fund; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.conditional_fund
    ADD CONSTRAINT pk_conditional_fund PRIMARY KEY (geo_level, geo_code, geo_version, conditional_fund);


--
-- PostgreSQL database dump complete
--

