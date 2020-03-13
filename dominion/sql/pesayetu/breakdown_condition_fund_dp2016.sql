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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_dp2016 DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_dp2016;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_dp2016;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_dp2016; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_dp2016 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_dp2016; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_dp2016 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
level1	KE_1_001	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	3150000
level1	KE_1_005	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	3820000
level1	KE_1_011	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	3985000
level1	KE_1_004	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	4645000
level1	KE_1_025	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	5495000
level1	KE_1_026	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	5665000
level1	KE_1_031	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	5765000
level1	KE_1_023	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6035000
level1	KE_1_024	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6090000
level1	KE_1_013	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6165000
level1	KE_1_020	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6385000
level1	KE_1_040	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6495000
level1	KE_1_002	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6810000
level1	KE_1_014	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6875000
level1	KE_1_038	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7085000
level1	KE_1_009	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7310000
level1	KE_1_039	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7375000
level1	KE_1_006	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7405000
level1	KE_1_010	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7675000
level1	KE_1_003	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7765000
level1	KE_1_042	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8290000
level1	KE_1_027	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8660000
level1	KE_1_036	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8810000
level1	KE_1_034	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8945000
level1	KE_1_033	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8945000
level1	KE_1_007	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8970000
level1	KE_1_029	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	9155000
level1	KE_1_018	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	9430000
level1	KE_1_022	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	9600000
level1	KE_1_035	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	9965000
level1	KE_1_008	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	10045000
level1	KE_1_044	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	10220000
level1	KE_1_012	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	10295000
level1	KE_1_028	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	10400000
level1	KE_1_019	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	11465000
level1	KE_1_045	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	11475000
level1	KE_1_037	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	11750000
level1	KE_1_046	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	11960000
level1	KE_1_017	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	12065000
level1	KE_1_043	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	12385000
level1	KE_1_021	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	12405000
level1	KE_1_032	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	12630000
level1	KE_1_030	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	12985000
level1	KE_1_016	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	13350000
level1	KE_1_041	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	13765000
level1	KE_1_047	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	13900000
level1	KE_1_005	2009	World Bank grant to supplement financing for county health facilities	2016/2017	14528378
level1	KE_1_015	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	18495000
level1	KE_1_011	2009	World Bank grant to supplement financing for county health facilities	2016/2017	22247373
level1	KE_1_004	2009	World Bank grant to supplement financing for county health facilities	2016/2017	24174105
level1	KE_1_025	2009	World Bank grant to supplement financing for county health facilities	2016/2017	29848554
level1	KE_1_010	2009	World Bank grant to supplement financing for county health facilities	2016/2017	34627134
level1	KE_1_006	2009	World Bank grant to supplement financing for county health facilities	2016/2017	36034216
level1	KE_1_007	2009	World Bank grant to supplement financing for county health facilities	2016/2017	41161467
level1	KE_1_009	2009	World Bank grant to supplement financing for county health facilities	2016/2017	42477798
level1	KE_1_013	2009	World Bank grant to supplement financing for county health facilities	2016/2017	44654343
level1	KE_1_008	2009	World Bank grant to supplement financing for county health facilities	2016/2017	46166458
level1	KE_1_024	2009	World Bank grant to supplement financing for county health facilities	2016/2017	56049761
level1	KE_1_028	2009	World Bank grant to supplement financing for county health facilities	2016/2017	56932570
level1	KE_1_031	2009	World Bank grant to supplement financing for county health facilities	2016/2017	60049676
level1	KE_1_023	2009	World Bank grant to supplement financing for county health facilities	2016/2017	67258982
level1	KE_1_030	2009	World Bank grant to supplement financing for county health facilities	2016/2017	77761278
level1	KE_1_033	2009	World Bank grant to supplement financing for county health facilities	2016/2017	81201403
level1	KE_1_002	2009	World Bank grant to supplement financing for county health facilities	2016/2017	82166289
level1	KE_1_034	2009	World Bank grant to supplement financing for county health facilities	2016/2017	100581341
level1	KE_1_003	2009	World Bank grant to supplement financing for county health facilities	2016/2017	114657642
level1	KE_1_015	2009	World Bank grant to supplement financing for county health facilities	2016/2017	131525244
level1	KE_1_044	2009	World Bank grant to supplement financing for county health facilities	2016/2017	138220725
country	KE	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	422355000
country	KE	2009	World Bank grant to supplement financing for county health facilities	2016/2017	1302324737
\.


--
-- Name: breakdown_condition_fund_dp2016 pk_breakdown_condition_fund_dp2016; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_dp2016
    ADD CONSTRAINT pk_breakdown_condition_fund_dp2016 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

