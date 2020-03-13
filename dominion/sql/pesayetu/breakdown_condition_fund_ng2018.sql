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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_ng2018 DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_ng2018;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_ng2018;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_ng2018; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_ng2018 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_ng2018; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_ng2018 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
level1	KE_1_025	2009	Rehabilitation of Village Polytechnics	2018/2019	20905000
level1	KE_1_011	2009	Rehabilitation of Village Polytechnics	2018/2019	21235000
level1	KE_1_008	2009	Rehabilitation of Village Polytechnics	2018/2019	21295000
level1	KE_1_004	2009	Rehabilitation of Village Polytechnics	2018/2019	24490000
level1	KE_1_023	2009	Rehabilitation of Village Polytechnics	2018/2019	25285000
level1	KE_1_010	2009	Rehabilitation of Village Polytechnics	2018/2019	26275000
level1	KE_1_031	2009	Rehabilitation of Village Polytechnics	2018/2019	28525000
level1	KE_1_019	2009	Rehabilitation of Village Polytechnics	2018/2019	28795000
level1	KE_1_024	2009	Rehabilitation of Village Polytechnics	2018/2019	28885000
level1	KE_1_033	2009	Rehabilitation of Village Polytechnics	2018/2019	30820000
level1	KE_1_005	2009	Rehabilitation of Village Polytechnics	2018/2019	31210000
level1	KE_1_009	2009	Rehabilitation of Village Polytechnics	2018/2019	31240000
level1	KE_1_017	2009	Rehabilitation of Village Polytechnics	2018/2019	31570000
level1	KE_1_044	2009	Rehabilitation of Village Polytechnics	2018/2019	31750000
level1	KE_1_027	2009	Rehabilitation of Village Polytechnics	2018/2019	33250000
level1	KE_1_047	2009	Rehabilitation of Village Polytechnics	2018/2019	34570000
level1	KE_1_007	2009	Rehabilitation of Village Polytechnics	2018/2019	35335000
level1	KE_1_030	2009	Rehabilitation of Village Polytechnics	2018/2019	35605000
level1	KE_1_029	2009	Rehabilitation of Village Polytechnics	2018/2019	37255000
level1	KE_1_014	2009	Rehabilitation of Village Polytechnics	2018/2019	37900000
level1	KE_1_041	2009	Rehabilitation of Village Polytechnics	2018/2019	38500000
level1	KE_1_018	2009	Rehabilitation of Village Polytechnics	2018/2019	39700000
level1	KE_1_001	2009	Rehabilitation of Village Polytechnics	2018/2019	39895000
level1	KE_1_013	2009	Rehabilitation of Village Polytechnics	2018/2019	40090000
level1	KE_1_034	2009	Rehabilitation of Village Polytechnics	2018/2019	40345000
level1	KE_1_035	2009	Rehabilitation of Village Polytechnics	2018/2019	41005000
level1	KE_1_042	2009	Rehabilitation of Village Polytechnics	2018/2019	41650000
level1	KE_1_028	2009	Rehabilitation of Village Polytechnics	2018/2019	41800000
level1	KE_1_002	2009	Rehabilitation of Village Polytechnics	2018/2019	41860000
level1	KE_1_043	2009	Rehabilitation of Village Polytechnics	2018/2019	46675000
level1	KE_1_032	2009	Rehabilitation of Village Polytechnics	2018/2019	47800000
level1	KE_1_036	2009	Rehabilitation of Village Polytechnics	2018/2019	47875000
level1	KE_1_006	2009	Rehabilitation of Village Polytechnics	2018/2019	49675000
level1	KE_1_020	2009	Rehabilitation of Village Polytechnics	2018/2019	52210000
level1	KE_1_046	2009	Rehabilitation of Village Polytechnics	2018/2019	52915000
level1	KE_1_003	2009	Rehabilitation of Village Polytechnics	2018/2019	53035000
level1	KE_1_026	2009	Rehabilitation of Village Polytechnics	2018/2019	53710000
level1	KE_1_016	2009	Rehabilitation of Village Polytechnics	2018/2019	54295000
level1	KE_1_038	2009	Rehabilitation of Village Polytechnics	2018/2019	55000000
level1	KE_1_015	2009	Rehabilitation of Village Polytechnics	2018/2019	58465000
level1	KE_1_040	2009	Rehabilitation of Village Polytechnics	2018/2019	61960000
level1	KE_1_039	2009	Rehabilitation of Village Polytechnics	2018/2019	65500000
level1	KE_1_021	2009	Rehabilitation of Village Polytechnics	2018/2019	65710000
level1	KE_1_012	2009	Rehabilitation of Village Polytechnics	2018/2019	66025000
level1	KE_1_022	2009	Rehabilitation of Village Polytechnics	2018/2019	68110000
level1	KE_1_037	2009	Rehabilitation of Village Polytechnics	2018/2019	69910000
level1	KE_1_045	2009	Rehabilitation of Village Polytechnics	2018/2019	70090000
level1	KE_1_005	2009	Road Maintenance Fuel Levy	2018/2019	93421016
level1	KE_1_013	2009	Road Maintenance Fuel Levy	2018/2019	95901220
level1	KE_1_028	2009	Road Maintenance Fuel Levy	2018/2019	99208158
level1	KE_1_011	2009	Road Maintenance Fuel Levy	2018/2019	103341832
level1	KE_1_006	2009	Road Maintenance Fuel Levy	2018/2019	106648770
level1	KE_1_020	2009	Road Maintenance Fuel Levy	2018/2019	108302240
level1	KE_1_031	2009	Road Maintenance Fuel Levy	2018/2019	109128974
level1	KE_1_025	2009	Road Maintenance Fuel Levy	2018/2019	116569586
level1	KE_1_014	2009	Road Maintenance Fuel Levy	2018/2019	117396321
level1	KE_1_038	2009	Road Maintenance Fuel Levy	2018/2019	117396321
level1	KE_1_046	2009	Road Maintenance Fuel Levy	2018/2019	125663667
level1	KE_1_018	2009	Road Maintenance Fuel Levy	2018/2019	129797341
level1	KE_1_024	2009	Road Maintenance Fuel Levy	2018/2019	129797341
level1	KE_1_019	2009	Road Maintenance Fuel Levy	2018/2019	132277544
level1	KE_1_030	2009	Road Maintenance Fuel Levy	2018/2019	133931014
level1	KE_1_029	2009	Road Maintenance Fuel Levy	2018/2019	141371626
level1	KE_1_004	2009	Road Maintenance Fuel Levy	2018/2019	146332034
level1	KE_1_026	2009	Road Maintenance Fuel Levy	2018/2019	147985503
level1	KE_1_035	2009	Road Maintenance Fuel Levy	2018/2019	150465707
level1	KE_1_036	2009	Road Maintenance Fuel Levy	2018/2019	156252849
level1	KE_1_027	2009	Road Maintenance Fuel Levy	2018/2019	156252849
level1	KE_1_040	2009	Road Maintenance Fuel Levy	2018/2019	157079584
level1	KE_1_034	2009	Road Maintenance Fuel Levy	2018/2019	157906319
level1	KE_1_041	2009	Road Maintenance Fuel Levy	2018/2019	158733053
level1	KE_1_021	2009	Road Maintenance Fuel Levy	2018/2019	164520196
level1	KE_1_033	2009	Road Maintenance Fuel Levy	2018/2019	167827135
level1	KE_1_043	2009	Road Maintenance Fuel Levy	2018/2019	176094481
level1	KE_1_044	2009	Road Maintenance Fuel Levy	2018/2019	176921216
level1	KE_1_042	2009	Road Maintenance Fuel Levy	2018/2019	181881624
level1	KE_1_007	2009	Road Maintenance Fuel Levy	2018/2019	182708358
level1	KE_1_010	2009	Road Maintenance Fuel Levy	2018/2019	184361828
level1	KE_1_017	2009	Road Maintenance Fuel Levy	2018/2019	187668766
level1	KE_1_002	2009	Road Maintenance Fuel Levy	2018/2019	198416317
level1	KE_1_030	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_036	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_039	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_040	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_028	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_014	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_007	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_043	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_011	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_034	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_037	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_035	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_022	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_003	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_020	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_045	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_042	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_015	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_002	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_031	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_005	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_016	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_017	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_009	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_010	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_012	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_044	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_001	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_021	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_047	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_032	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_029	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_033	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_046	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_018	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_019	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_025	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_041	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_006	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_004	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_013	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_026	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_023	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_027	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_038	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_008	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_024	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_045	2009	Road Maintenance Fuel Levy	2018/2019	203376725
level1	KE_1_012	2009	Road Maintenance Fuel Levy	2018/2019	210817337
level1	KE_1_001	2009	Road Maintenance Fuel Levy	2018/2019	216604479
level1	KE_1_016	2009	Road Maintenance Fuel Levy	2018/2019	219084683
level1	KE_1_008	2009	Road Maintenance Fuel Levy	2018/2019	223218356
level1	KE_1_015	2009	Road Maintenance Fuel Levy	2018/2019	229832234
level1	KE_1_039	2009	Road Maintenance Fuel Levy	2018/2019	235619376
level1	KE_1_022	2009	Road Maintenance Fuel Levy	2018/2019	246366927
level1	KE_1_032	2009	Road Maintenance Fuel Levy	2018/2019	248847131
level1	KE_1_009	2009	Road Maintenance Fuel Levy	2018/2019	267035293
level1	KE_1_037	2009	Road Maintenance Fuel Levy	2018/2019	271995701
level1	KE_1_023	2009	Road Maintenance Fuel Levy	2018/2019	283569986
level1	KE_1_003	2009	Road Maintenance Fuel Levy	2018/2019	285223455
level1	KE_1_047	2009	Road Maintenance Fuel Levy	2018/2019	415847530
country	KE	2009	Rehabilitation of Village Polytechnics	2018/2019	2000000000
country	KE	2009	Road Maintenance Fuel Levy	2018/2019	8269000000
country	KE	2009	Leasing of Medical Equipment	2018/2019	9400000000
\.


--
-- Name: breakdown_condition_fund_ng2018 pk_breakdown_condition_fund_ng2018; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_ng2018
    ADD CONSTRAINT pk_breakdown_condition_fund_ng2018 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

