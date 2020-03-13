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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_dp2018 DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_dp2018;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_dp2018;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_dp2018; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_dp2018 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_dp2018; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_dp2018 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
level1	KE_1_030	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_036	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_040	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_028	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_034	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_037	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_035	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_042	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_031	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_016	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_018	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_019	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_041	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_006	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_013	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_027	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_024	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_007	2009	Compensation for User Fee Foregone	2018/2019	150000000
level1	KE_1_011	2009	Compensation for User Fee Foregone	2018/2019	150000000
level1	KE_1_005	2009	Compensation for User Fee Foregone	2018/2019	150000000
level1	KE_1_009	2009	Compensation for User Fee Foregone	2018/2019	150000000
level1	KE_1_010	2009	Compensation for User Fee Foregone	2018/2019	150000000
level1	KE_1_004	2009	Compensation for User Fee Foregone	2018/2019	150000000
level1	KE_1_008	2009	Compensation for User Fee Foregone	2018/2019	150000000
country	KE	2009	Compensation for User Fee Foregone	2018/2019	3039000001
level1	KE_1_028	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_014	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_022	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_020	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_005	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_012	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_001	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_021	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_046	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_018	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_019	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_006	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_013	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_047	2009	Grants to Level5 Hospitals	2018/2019	54429184
level1	KE_1_041	2009	Grants to Level5 Hospitals	2018/2019	56758154
level1	KE_1_035	2009	Grants to Level5 Hospitals	2018/2019	61507974
level1	KE_1_034	2009	Grants to Level5 Hospitals	2018/2019	62478710
level1	KE_1_011	2009	Grants to Level5 Hospitals	2018/2019	66229830
level1	KE_1_031	2009	Grants to Level5 Hospitals	2018/2019	67077728
level1	KE_1_042	2009	Grants to Level5 Hospitals	2018/2019	67364355
level1	KE_1_038	2009	Grants to Level5 Hospitals	2018/2019	73956778
level1	KE_1_045	2009	Grants to Level5 Hospitals	2018/2019	74159514
level1	KE_1_030	2009	Grants to Level5 Hospitals	2018/2019	78899347
level1	KE_1_027	2009	Grants to Level5 Hospitals	2018/2019	81893450
level1	KE_1_043	2009	Grants to Level5 Hospitals	2018/2019	85820342
level1	KE_1_036	2009	Grants to Level5 Hospitals	2018/2019	86405581
level1	KE_1_040	2009	Grants to Level5 Hospitals	2018/2019	86622298
level1	KE_1_032	2009	Grants to Level5 Hospitals	2018/2019	95036357
level1	KE_1_016	2009	Grants to Level5 Hospitals	2018/2019	95401875
level1	KE_1_025	2009	Grants to Level5 Hospitals	2018/2019	97143610
level1	KE_1_029	2009	Grants to Level5 Hospitals	2018/2019	97229498
level1	KE_1_002	2009	Grants to Level5 Hospitals	2018/2019	98175267
level1	KE_1_039	2009	Grants to Level5 Hospitals	2018/2019	100000000
level1	KE_1_007	2009	Grants to Level5 Hospitals	2018/2019	100000000
level1	KE_1_037	2009	Grants to Level5 Hospitals	2018/2019	100000000
level1	KE_1_003	2009	Grants to Level5 Hospitals	2018/2019	100000000
level1	KE_1_015	2009	Grants to Level5 Hospitals	2018/2019	100000000
level1	KE_1_017	2009	Grants to Level5 Hospitals	2018/2019	100000000
level1	KE_1_009	2009	Grants to Level5 Hospitals	2018/2019	100000000
level1	KE_1_010	2009	Grants to Level5 Hospitals	2018/2019	100000000
level1	KE_1_044	2009	Grants to Level5 Hospitals	2018/2019	100000000
level1	KE_1_033	2009	Grants to Level5 Hospitals	2018/2019	100000000
level1	KE_1_004	2009	Grants to Level5 Hospitals	2018/2019	100000000
level1	KE_1_026	2009	Grants to Level5 Hospitals	2018/2019	100000000
level1	KE_1_023	2009	Grants to Level5 Hospitals	2018/2019	100000000
level1	KE_1_008	2009	Grants to Level5 Hospitals	2018/2019	100000000
level1	KE_1_024	2009	Grants to Level5 Hospitals	2018/2019	100000000
country	KE	2009	Grants to Level5 Hospitals	2018/2019	3636589847
level1	KE_1_005	2009	Leasing of Medical Equipment	2018/2019	33793559
level1	KE_1_013	2009	Leasing of Medical Equipment	2018/2019	38536081
level1	KE_1_028	2009	Leasing of Medical Equipment	2018/2019	38552919
level1	KE_1_011	2009	Leasing of Medical Equipment	2018/2019	38668826
level1	KE_1_006	2009	Leasing of Medical Equipment	2018/2019	39327939
level1	KE_1_025	2009	Leasing of Medical Equipment	2018/2019	39330852
level1	KE_1_014	2009	Leasing of Medical Equipment	2018/2019	40595727
level1	KE_1_020	2009	Leasing of Medical Equipment	2018/2019	41078830
level1	KE_1_031	2009	Leasing of Medical Equipment	2018/2019	41121027
level1	KE_1_038	2009	Leasing of Medical Equipment	2018/2019	41604116
level1	KE_1_046	2009	Leasing of Medical Equipment	2018/2019	42383765
level1	KE_1_024	2009	Leasing of Medical Equipment	2018/2019	42917546
level1	KE_1_018	2009	Leasing of Medical Equipment	2018/2019	43069316
level1	KE_1_030	2009	Leasing of Medical Equipment	2018/2019	43729455
level1	KE_1_019	2009	Leasing of Medical Equipment	2018/2019	43740998
level1	KE_1_004	2009	Leasing of Medical Equipment	2018/2019	44003842
level1	KE_1_035	2009	Leasing of Medical Equipment	2018/2019	44538343
level1	KE_1_029	2009	Leasing of Medical Equipment	2018/2019	44551044
level1	KE_1_036	2009	Leasing of Medical Equipment	2018/2019	44888193
level1	KE_1_034	2009	Leasing of Medical Equipment	2018/2019	45860424
level1	KE_1_041	2009	Leasing of Medical Equipment	2018/2019	46076429
level1	KE_1_026	2009	Leasing of Medical Equipment	2018/2019	46456661
level1	KE_1_027	2009	Leasing of Medical Equipment	2018/2019	46739163
level1	KE_1_040	2009	Leasing of Medical Equipment	2018/2019	47393422
level1	KE_1_007	2009	Leasing of Medical Equipment	2018/2019	47755752
level1	KE_1_021	2009	Leasing of Medical Equipment	2018/2019	48244593
level1	KE_1_010	2009	Leasing of Medical Equipment	2018/2019	48985872
level1	KE_1_033	2009	Leasing of Medical Equipment	2018/2019	49037031
level1	KE_1_043	2009	Leasing of Medical Equipment	2018/2019	49500526
level1	KE_1_044	2009	Leasing of Medical Equipment	2018/2019	49609593
level1	KE_1_042	2009	Leasing of Medical Equipment	2018/2019	49642674
level1	KE_1_002	2009	Leasing of Medical Equipment	2018/2019	50747782
level1	KE_1_017	2009	Leasing of Medical Equipment	2018/2019	50750604
level1	KE_1_001	2009	Leasing of Medical Equipment	2018/2019	53333725
level1	KE_1_008	2009	Leasing of Medical Equipment	2018/2019	53401112
level1	KE_1_016	2009	Leasing of Medical Equipment	2018/2019	53423784
level1	KE_1_045	2009	Leasing of Medical Equipment	2018/2019	53938093
level1	KE_1_012	2009	Leasing of Medical Equipment	2018/2019	53939835
level1	KE_1_015	2009	Leasing of Medical Equipment	2018/2019	57462594
level1	KE_1_039	2009	Leasing of Medical Equipment	2018/2019	58329310
level1	KE_1_009	2009	Leasing of Medical Equipment	2018/2019	58673488
level1	KE_1_032	2009	Leasing of Medical Equipment	2018/2019	60282958
level1	KE_1_022	2009	Leasing of Medical Equipment	2018/2019	60455156
level1	KE_1_003	2009	Leasing of Medical Equipment	2018/2019	61148106
level1	KE_1_037	2009	Leasing of Medical Equipment	2018/2019	63508831
level1	KE_1_023	2009	Leasing of Medical Equipment	2018/2019	65446016
level1	KE_1_047	2009	Leasing of Medical Equipment	2018/2019	83424144
country	KE	2009	Leasing of Medical Equipment	2018/2019	2300000000
level1	KE_1_005	2009	Rehabilitation of Village Polytechnics	2018/2019	8302500
level1	KE_1_028	2009	Rehabilitation of Village Polytechnics	2018/2019	12150000
level1	KE_1_013	2009	Rehabilitation of Village Polytechnics	2018/2019	12352500
level1	KE_1_011	2009	Rehabilitation of Village Polytechnics	2018/2019	12656250
level1	KE_1_025	2009	Rehabilitation of Village Polytechnics	2018/2019	12757500
level1	KE_1_006	2009	Rehabilitation of Village Polytechnics	2018/2019	13061250
level1	KE_1_014	2009	Rehabilitation of Village Polytechnics	2018/2019	13770001
level1	KE_1_020	2009	Rehabilitation of Village Polytechnics	2018/2019	14782500
level1	KE_1_038	2009	Rehabilitation of Village Polytechnics	2018/2019	14782500
level1	KE_1_031	2009	Rehabilitation of Village Polytechnics	2018/2019	15086250
level1	KE_1_046	2009	Rehabilitation of Village Polytechnics	2018/2019	15491250
level1	KE_1_024	2009	Rehabilitation of Village Polytechnics	2018/2019	15896250
level1	KE_1_018	2009	Rehabilitation of Village Polytechnics	2018/2019	15997500
level1	KE_1_019	2009	Rehabilitation of Village Polytechnics	2018/2019	16605000
level1	KE_1_030	2009	Rehabilitation of Village Polytechnics	2018/2019	16706250
level1	KE_1_029	2009	Rehabilitation of Village Polytechnics	2018/2019	17111250
level1	KE_1_035	2009	Rehabilitation of Village Polytechnics	2018/2019	17516250
level1	KE_1_036	2009	Rehabilitation of Village Polytechnics	2018/2019	17617500
level1	KE_1_004	2009	Rehabilitation of Village Polytechnics	2018/2019	17921250
level1	KE_1_041	2009	Rehabilitation of Village Polytechnics	2018/2019	18528750
level1	KE_1_026	2009	Rehabilitation of Village Polytechnics	2018/2019	18933750
level1	KE_1_027	2009	Rehabilitation of Village Polytechnics	2018/2019	19136250
level1	KE_1_034	2009	Rehabilitation of Village Polytechnics	2018/2019	19338750
level1	KE_1_040	2009	Rehabilitation of Village Polytechnics	2018/2019	19541250
level1	KE_1_021	2009	Rehabilitation of Village Polytechnics	2018/2019	20756250
level1	KE_1_044	2009	Rehabilitation of Village Polytechnics	2018/2019	21667500
level1	KE_1_043	2009	Rehabilitation of Village Polytechnics	2018/2019	21870000
level1	KE_1_033	2009	Rehabilitation of Village Polytechnics	2018/2019	21870000
level1	KE_1_042	2009	Rehabilitation of Village Polytechnics	2018/2019	21971250
level1	KE_1_010	2009	Rehabilitation of Village Polytechnics	2018/2019	22072500
level1	KE_1_007	2009	Rehabilitation of Village Polytechnics	2018/2019	22325625
level1	KE_1_017	2009	Rehabilitation of Village Polytechnics	2018/2019	22882500
level1	KE_1_002	2009	Rehabilitation of Village Polytechnics	2018/2019	24300000
level1	KE_1_016	2009	Rehabilitation of Village Polytechnics	2018/2019	24806251
level1	KE_1_045	2009	Rehabilitation of Village Polytechnics	2018/2019	24907500
level1	KE_1_012	2009	Rehabilitation of Village Polytechnics	2018/2019	25818750
level1	KE_1_008	2009	Rehabilitation of Village Polytechnics	2018/2019	27286875
level1	KE_1_001	2009	Rehabilitation of Village Polytechnics	2018/2019	27337500
level1	KE_1_015	2009	Rehabilitation of Village Polytechnics	2018/2019	29008125
level1	KE_1_039	2009	Rehabilitation of Village Polytechnics	2018/2019	29362500
level1	KE_1_032	2009	Rehabilitation of Village Polytechnics	2018/2019	31083750
level1	KE_1_022	2009	Rehabilitation of Village Polytechnics	2018/2019	32400000
level1	KE_1_009	2009	Rehabilitation of Village Polytechnics	2018/2019	32653125
level1	KE_1_037	2009	Rehabilitation of Village Polytechnics	2018/2019	33311250
level1	KE_1_003	2009	Rehabilitation of Village Polytechnics	2018/2019	33361875
level1	KE_1_023	2009	Rehabilitation of Village Polytechnics	2018/2019	33766875
level1	KE_1_047	2009	Rehabilitation of Village Polytechnics	2018/2019	51637500
country	KE	2009	Rehabilitation of Village Polytechnics	2018/2019	1012500000
level1	KE_1_002	2009	Road Maintenance Fuel Levy	2018/2019	50000000
level1	KE_1_031	2009	Road Maintenance Fuel Levy	2018/2019	50000000
level1	KE_1_005	2009	Road Maintenance Fuel Levy	2018/2019	50000000
level1	KE_1_010	2009	Road Maintenance Fuel Levy	2018/2019	50000000
level1	KE_1_025	2009	Road Maintenance Fuel Levy	2018/2019	50000000
level1	KE_1_041	2009	Road Maintenance Fuel Levy	2018/2019	50000000
level1	KE_1_006	2009	Road Maintenance Fuel Levy	2018/2019	50000000
level1	KE_1_013	2009	Road Maintenance Fuel Levy	2018/2019	50000000
level1	KE_1_030	2009	Road Maintenance Fuel Levy	2018/2019	52360500
level1	KE_1_021	2009	Road Maintenance Fuel Levy	2018/2019	62437600
level1	KE_1_020	2009	Road Maintenance Fuel Levy	2018/2019	71302200
level1	KE_1_024	2009	Road Maintenance Fuel Levy	2018/2019	73392300
level1	KE_1_033	2009	Road Maintenance Fuel Levy	2018/2019	74905300
level1	KE_1_028	2009	Road Maintenance Fuel Levy	2018/2019	89802100
level1	KE_1_011	2009	Road Maintenance Fuel Levy	2018/2019	93968100
level1	KE_1_023	2009	Road Maintenance Fuel Levy	2018/2019	95023200
level1	KE_1_040	2009	Road Maintenance Fuel Levy	2018/2019	101071500
level1	KE_1_046	2009	Road Maintenance Fuel Levy	2018/2019	114705300
level1	KE_1_012	2009	Road Maintenance Fuel Levy	2018/2019	116890200
level1	KE_1_043	2009	Road Maintenance Fuel Levy	2018/2019	119361500
level1	KE_1_014	2009	Road Maintenance Fuel Levy	2018/2019	119892100
level1	KE_1_018	2009	Road Maintenance Fuel Levy	2018/2019	135543400
level1	KE_1_045	2009	Road Maintenance Fuel Levy	2018/2019	164053800
level1	KE_1_008	2009	Road Maintenance Fuel Levy	2018/2019	165643500
level1	KE_1_036	2009	Road Maintenance Fuel Levy	2018/2019	168334800
level1	KE_1_029	2009	Road Maintenance Fuel Levy	2018/2019	177231700
level1	KE_1_015	2009	Road Maintenance Fuel Levy	2018/2019	232374200
level1	KE_1_007	2009	Road Maintenance Fuel Levy	2018/2019	233506000
level1	KE_1_019	2009	Road Maintenance Fuel Levy	2018/2019	236639100
level1	KE_1_038	2009	Road Maintenance Fuel Levy	2018/2019	250950700
level1	KE_1_035	2009	Road Maintenance Fuel Levy	2018/2019	256299000
level1	KE_1_034	2009	Road Maintenance Fuel Levy	2018/2019	265950300
level1	KE_1_026	2009	Road Maintenance Fuel Levy	2018/2019	299106900
level1	KE_1_039	2009	Road Maintenance Fuel Levy	2018/2019	300977100
level1	KE_1_003	2009	Road Maintenance Fuel Levy	2018/2019	330534500
level1	KE_1_037	2009	Road Maintenance Fuel Levy	2018/2019	389118800
level1	KE_1_004	2009	Road Maintenance Fuel Levy	2018/2019	500000001
level1	KE_1_044	2009	Road Maintenance Fuel Levy	2018/2019	518367800
level1	KE_1_027	2009	Road Maintenance Fuel Levy	2018/2019	630147800
level1	KE_1_042	2009	Road Maintenance Fuel Levy	2018/2019	773573300
level1	KE_1_016	2009	Road Maintenance Fuel Levy	2018/2019	1018320500
level1	KE_1_032	2009	Road Maintenance Fuel Levy	2018/2019	1084843300
level1	KE_1_017	2009	Road Maintenance Fuel Levy	2018/2019	1362616001
level1	KE_1_009	2009	Road Maintenance Fuel Levy	2018/2019	1758195001
level1	KE_1_022	2009	Road Maintenance Fuel Levy	2018/2019	1885993000
country	KE	2009	Road Maintenance Fuel Levy	2018/2019	11464702500
level1	KE_1_033	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435
level1	KE_1_039	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_014	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_043	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_022	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_003	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_020	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_045	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_015	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_002	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_017	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_012	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_044	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_021	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_032	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_029	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_046	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_025	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_026	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_023	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
level1	KE_1_038	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
country	KE	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	2949138423
\.


--
-- Name: breakdown_condition_fund_dp2018 pk_breakdown_condition_fund_dp2018; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_dp2018
    ADD CONSTRAINT pk_breakdown_condition_fund_dp2018 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

