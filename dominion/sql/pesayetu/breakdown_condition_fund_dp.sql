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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_dp DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_dp;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_dp;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_dp; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_dp (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_dp; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_dp (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
level1	KE_1_033	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435
level1	KE_1_001	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	3150000
level1	KE_1_001	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	3150000
level1	KE_1_005	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	3820000
level1	KE_1_005	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	3820000
level1	KE_1_011	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	3985000
level1	KE_1_011	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	3985000
level1	KE_1_004	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	4645000
level1	KE_1_004	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	4645000
level1	KE_1_001	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	5007422
level1	KE_1_025	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	5495000
level1	KE_1_025	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	5495000
level1	KE_1_026	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	5665000
level1	KE_1_026	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	5665000
level1	KE_1_026	2009	Total Conditional Additional Allocation	2016/2017	5665000
level1	KE_1_031	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	5765000
level1	KE_1_031	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	5765000
level1	KE_1_005	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	5921224
level1	KE_1_023	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6035000
level1	KE_1_023	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6035000
level1	KE_1_024	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6090000
level1	KE_1_024	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6090000
level1	KE_1_013	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6165000
level1	KE_1_013	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6165000
level1	KE_1_020	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6385000
level1	KE_1_020	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6385000
level1	KE_1_020	2009	Total Conditional Additional Allocation	2016/2017	6385000
level1	KE_1_040	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6495000
level1	KE_1_040	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6495000
level1	KE_1_040	2009	Total Conditional Additional Allocation	2016/2017	6495000
level1	KE_1_002	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6810000
level1	KE_1_002	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6810000
level1	KE_1_014	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6875000
level1	KE_1_014	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6875000
level1	KE_1_014	2009	Total Conditional Additional Allocation	2016/2017	6875000
level1	KE_1_038	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7085000
level1	KE_1_038	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7085000
level1	KE_1_038	2009	Total Conditional Additional Allocation	2016/2017	7085000
level1	KE_1_009	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7310000
level1	KE_1_009	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7310000
level1	KE_1_039	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7375000
level1	KE_1_039	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7375000
level1	KE_1_039	2009	Total Conditional Additional Allocation	2016/2017	7375000
level1	KE_1_006	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7405000
level1	KE_1_006	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7405000
level1	KE_1_010	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7675000
level1	KE_1_010	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7675000
level1	KE_1_003	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7765000
level1	KE_1_003	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7765000
level1	KE_1_042	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8290000
level1	KE_1_042	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8290000
level1	KE_1_005	2009	Rehabilitation of Village Polytechnics	2018/2019	8302500
level1	KE_1_027	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8660000
level1	KE_1_027	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8660000
level1	KE_1_027	2009	Total Conditional Additional Allocation	2016/2017	8660000
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
level1	KE_1_036	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8810000
level1	KE_1_036	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8810000
level1	KE_1_036	2009	Total Conditional Additional Allocation	2016/2017	8810000
level1	KE_1_011	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	8824955
level1	KE_1_034	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8945000
level1	KE_1_034	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8945000
level1	KE_1_033	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8945000
level1	KE_1_033	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8945000
level1	KE_1_007	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8970000
level1	KE_1_007	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8970000
level1	KE_1_013	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	9058820
level1	KE_1_029	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	9155000
level1	KE_1_029	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	9155000
level1	KE_1_029	2009	Total Conditional Additional Allocation	2016/2017	9155000
level1	KE_1_018	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	9430000
level1	KE_1_018	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	9430000
level1	KE_1_018	2009	Total Conditional Additional Allocation	2016/2017	9430000
level1	KE_1_028	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	9442450
level1	KE_1_006	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	9555425
level1	KE_1_022	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	9600000
level1	KE_1_022	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	9600000
level1	KE_1_022	2009	Total Conditional Additional Allocation	2016/2017	9600000
level1	KE_1_031	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	9959579
level1	KE_1_035	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	9965000
level1	KE_1_035	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	9965000
level1	KE_1_035	2009	Total Conditional Additional Allocation	2016/2017	9965000
level1	KE_1_008	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	10045000
level1	KE_1_008	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	10045000
level1	KE_1_020	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	10215585
level1	KE_1_044	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	10220000
level1	KE_1_044	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	10220000
level1	KE_1_025	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	10256191
level1	KE_1_012	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	10295000
level1	KE_1_012	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	10295000
level1	KE_1_028	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	10400000
level1	KE_1_028	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	10400000
level1	KE_1_005	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	10593750
level1	KE_1_013	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	10875000
level1	KE_1_014	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11080940
level1	KE_1_038	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11177587
level1	KE_1_004	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	11224457
level1	KE_1_028	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	11250000
level1	KE_1_026	2009	Total Conditional Additional Allocation	2015/2016	11330000
level1	KE_1_019	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	11465000
level1	KE_1_019	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	11465000
level1	KE_1_019	2009	Total Conditional Additional Allocation	2016/2017	11465000
level1	KE_1_045	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	11475000
level1	KE_1_045	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	11475000
level1	KE_1_045	2009	Total Conditional Additional Allocation	2016/2017	11475000
level1	KE_1_003	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11484371
level1	KE_1_004	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11504299
level1	KE_1_037	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	11750000
level1	KE_1_037	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	11750000
level1	KE_1_037	2009	Total Conditional Additional Allocation	2016/2017	11750000
level1	KE_1_005	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	11785000
level1	KE_1_046	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	11960000
level1	KE_1_046	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	11960000
level1	KE_1_046	2009	Total Conditional Additional Allocation	2016/2017	11960000
level1	KE_1_044	2009	Other Loans & Grants	2017/2018	11991777
level1	KE_1_046	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11995032
level1	KE_1_017	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	12065000
level1	KE_1_017	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	12065000
level1	KE_1_017	2009	Total Conditional Additional Allocation	2016/2017	12065000
level1	KE_1_006	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	12093750
level1	KE_1_028	2009	Rehabilitation of Village Polytechnics	2018/2019	12150000
level1	KE_1_039	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12161151
level1	KE_1_020	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	12281250
level1	KE_1_031	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	12281250
level1	KE_1_013	2009	Rehabilitation of Village Polytechnics	2018/2019	12352500
level1	KE_1_043	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	12385000
level1	KE_1_043	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	12385000
level1	KE_1_043	2009	Total Conditional Additional Allocation	2016/2017	12385000
level1	KE_1_021	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	12405000
level1	KE_1_021	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	12405000
level1	KE_1_021	2009	Total Conditional Additional Allocation	2016/2017	12405000
level1	KE_1_018	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12435427
level1	KE_1_024	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12454549
level1	KE_1_011	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	12607500
level1	KE_1_032	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	12630000
level1	KE_1_032	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	12630000
level1	KE_1_032	2009	Total Conditional Additional Allocation	2016/2017	12630000
level1	KE_1_011	2009	Rehabilitation of Village Polytechnics	2018/2019	12656250
level1	KE_1_025	2009	Rehabilitation of Village Polytechnics	2018/2019	12757500
level1	KE_1_030	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12820885
level1	KE_1_019	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12845841
level1	KE_1_030	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	12985000
level1	KE_1_030	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	12985000
level1	KE_1_035	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	13007075
level1	KE_1_006	2009	Rehabilitation of Village Polytechnics	2018/2019	13061250
level1	KE_1_025	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	13218750
level1	KE_1_014	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	13312500
level1	KE_1_038	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	13312500
level1	KE_1_016	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	13350000
level1	KE_1_016	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	13350000
level1	KE_1_016	2009	Total Conditional Additional Allocation	2016/2017	13350000
level1	KE_1_036	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	13589799
level1	KE_1_029	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	13728991
level1	KE_1_041	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	13765000
level1	KE_1_041	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	13765000
level1	KE_1_041	2009	Total Conditional Additional Allocation	2016/2017	13765000
level1	KE_1_014	2009	Rehabilitation of Village Polytechnics	2018/2019	13770001
level1	KE_1_047	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	13900000
level1	KE_1_047	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	13900000
level1	KE_1_046	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	14250000
level1	KE_1_005	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	14265997
level1	KE_1_041	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	14422487
level1	KE_1_020	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	14513506
level1	KE_1_005	2009	World Bank grant to supplement financing for county health facilities	2015/2016	14528378
level1	KE_1_005	2009	World Bank grant to supplement financing for county health facilities	2016/2017	14528378
level1	KE_1_018	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	14718750
level1	KE_1_024	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	14718750
level1	KE_1_026	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	14723664
level1	KE_1_005	2009	Total Conditional Additional Allocation	2015/2016	14772526
level1	KE_1_020	2009	Rehabilitation of Village Polytechnics	2018/2019	14782500
level1	KE_1_038	2009	Rehabilitation of Village Polytechnics	2018/2019	14782500
level1	KE_1_002	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	14798976
level1	KE_1_036	2009	Total Conditional Additional Allocation	2015/2016	14950000
level1	KE_1_013	2009	Other Loans & Grants	2017/2018	14982351
level1	KE_1_027	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	14987172
level1	KE_1_019	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	15000000
level1	KE_1_031	2009	Rehabilitation of Village Polytechnics	2018/2019	15086250
level1	KE_1_030	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	15187500
level1	KE_1_019	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15187858
level1	KE_1_033	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	15267291
level1	KE_1_014	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15418468
level1	KE_1_004	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	15431865
level1	KE_1_021	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	15463900
level1	KE_1_046	2009	Rehabilitation of Village Polytechnics	2018/2019	15491250
level1	KE_1_013	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15518089
level1	KE_1_020	2009	Other Loans & Grants	2017/2018	15618572
level1	KE_1_040	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	15707150
level1	KE_1_037	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	15719948
level1	KE_1_038	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15724263
level1	KE_1_024	2009	Rehabilitation of Village Polytechnics	2018/2019	15896250
level1	KE_1_018	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15987360
level1	KE_1_018	2009	Rehabilitation of Village Polytechnics	2018/2019	15997500
level1	KE_1_001	2009	Other Loans & Grants	2015/2016	16000000
level1	KE_1_029	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	16031250
level1	KE_1_014	2009	Other Loans & Grants	2017/2018	16091521
level1	KE_1_005	2009	Other Loans & Grants	2017/2018	16251730
level1	KE_1_043	2009	Other Loans & Grants	2017/2018	16266980
level1	KE_1_043	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	16269325
level1	KE_1_042	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	16312993
level1	KE_1_027	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16331289
level1	KE_1_021	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16369053
level1	KE_1_001	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16374963
level1	KE_1_042	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	16403010
level1	KE_1_035	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16415491
level1	KE_1_029	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16507185
level1	KE_1_041	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16561840
level1	KE_1_011	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	16572474
level1	KE_1_004	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	16593750
level1	KE_1_019	2009	Rehabilitation of Village Polytechnics	2018/2019	16605000
level1	KE_1_031	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16625223
level1	KE_1_028	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16632723
level1	KE_1_007	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	16664092
level1	KE_1_011	2009	Total Conditional Additional Allocation	2015/2016	16698052
level1	KE_1_030	2009	Rehabilitation of Village Polytechnics	2018/2019	16706250
level1	KE_1_026	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16768813
level1	KE_1_026	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	16781250
level1	KE_1_044	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	16852230
level1	KE_1_046	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16937554
level1	KE_1_042	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17029227
level1	KE_1_006	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17060386
level1	KE_1_035	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	17062500
level1	KE_1_019	2009	Other Loans & Grants	2017/2018	17065212
level1	KE_1_029	2009	Rehabilitation of Village Polytechnics	2018/2019	17111250
level1	KE_1_017	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	17235701
level1	KE_1_034	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17285908
level1	KE_1_027	2009	Total Conditional Additional Allocation	2015/2016	17320000
level1	KE_1_022	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17404219
level1	KE_1_036	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17416549
level1	KE_1_035	2009	Rehabilitation of Village Polytechnics	2018/2019	17516250
level1	KE_1_012	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17575209
level1	KE_1_030	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17586468
level1	KE_1_036	2009	Rehabilitation of Village Polytechnics	2018/2019	17617500
level1	KE_1_036	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	17718750
level1	KE_1_004	2009	Total Conditional Additional Allocation	2015/2016	17771988
level1	KE_1_033	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17793235
level1	KE_1_044	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17805472
level1	KE_1_040	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	17812500
level1	KE_1_043	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17858004
level1	KE_1_016	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17869663
level1	KE_1_004	2009	Rehabilitation of Village Polytechnics	2018/2019	17921250
level1	KE_1_040	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18257455
level1	KE_1_029	2009	Total Conditional Additional Allocation	2015/2016	18310000
level1	KE_1_026	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	18322590
level1	KE_1_005	2009	Total Conditional Additional Allocation	2016/2017	18348378
level1	KE_1_015	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	18495000
level1	KE_1_015	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	18495000
level1	KE_1_032	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18507501
level1	KE_1_045	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18527653
level1	KE_1_041	2009	Rehabilitation of Village Polytechnics	2018/2019	18528750
level1	KE_1_011	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18540513
level1	KE_1_024	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18586308
level1	KE_1_021	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	18656250
level1	KE_1_012	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	18748409
level1	KE_1_013	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	18767500
level1	KE_1_039	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18814092
level1	KE_1_026	2009	Rehabilitation of Village Polytechnics	2018/2019	18933750
level1	KE_1_028	2009	Other Loans & Grants	2017/2018	18956691
level1	KE_1_001	2009	Other Loans & Grants	2017/2018	18990114
level1	KE_1_025	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18994320
level1	KE_1_033	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	19031250
level1	KE_1_017	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	19051135
level1	KE_1_027	2009	Rehabilitation of Village Polytechnics	2018/2019	19136250
level1	KE_1_001	2009	Total Conditional Additional Allocation	2016/2017	19150000
level1	KE_1_034	2009	Rehabilitation of Village Polytechnics	2018/2019	19338750
level1	KE_1_002	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	19348633
level1	KE_1_046	2009	Other Loans & Grants	2017/2018	19530441
level1	KE_1_040	2009	Rehabilitation of Village Polytechnics	2018/2019	19541250
level1	KE_1_016	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	19542538
level1	KE_1_025	2009	Total Conditional Additional Allocation	2015/2016	19659898
level1	KE_1_003	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	19723695
level1	KE_1_037	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	19811716
level1	KE_1_043	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	19968750
level1	KE_1_044	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	20062500
level1	KE_1_006	2009	Other Loans & Grants	2017/2018	20118951
level1	KE_1_018	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	20223224
level1	KE_1_004	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	20358867
level1	KE_1_015	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	20392968
level1	KE_1_045	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	20480801
level1	KE_1_007	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	20520018
level1	KE_1_042	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	20625000
level1	KE_1_007	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	20718750
level1	KE_1_021	2009	Rehabilitation of Village Polytechnics	2018/2019	20756250
level1	KE_1_008	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	20882455
level1	KE_1_015	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	20982159
level1	KE_1_030	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	21118210
level1	KE_1_047	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	21183840
level1	KE_1_017	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	21281250
level1	KE_1_031	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	21345341
level1	KE_1_024	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	21495096
level1	KE_1_022	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	21548821
level1	KE_1_044	2009	Rehabilitation of Village Polytechnics	2018/2019	21667500
level1	KE_1_022	2009	Other Loans & Grants	2017/2018	21851856
level1	KE_1_043	2009	Rehabilitation of Village Polytechnics	2018/2019	21870000
level1	KE_1_033	2009	Rehabilitation of Village Polytechnics	2018/2019	21870000
level1	KE_1_042	2009	Rehabilitation of Village Polytechnics	2018/2019	21971250
level1	KE_1_014	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
level1	KE_1_022	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
level1	KE_1_020	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
level1	KE_1_021	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
level1	KE_1_018	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
level1	KE_1_019	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
level1	KE_1_013	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
level1	KE_1_010	2009	Rehabilitation of Village Polytechnics	2018/2019	22072500
level1	KE_1_011	2009	World Bank grant to supplement financing for county health facilities	2015/2016	22247373
level1	KE_1_011	2009	World Bank grant to supplement financing for county health facilities	2016/2017	22247373
level1	KE_1_001	2009	Total Conditional Additional Allocation	2015/2016	22300000
level1	KE_1_007	2009	Rehabilitation of Village Polytechnics	2018/2019	22325625
level1	KE_1_010	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	22466188
level1	KE_1_002	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	22500000
level1	KE_1_035	2009	Total Conditional Additional Allocation	2015/2016	22600000
level1	KE_1_009	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	22822072
level1	KE_1_017	2009	Rehabilitation of Village Polytechnics	2018/2019	22882500
level1	KE_1_045	2009	Total Conditional Additional Allocation	2015/2016	22950000
level1	KE_1_045	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	22968750
level1	KE_1_032	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	23133561
level1	KE_1_008	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	23548494
level1	KE_1_001	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	23619271
level1	KE_1_010	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	23851133
level1	KE_1_012	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	23906250
level1	KE_1_046	2009	Total Conditional Additional Allocation	2015/2016	23920000
level1	KE_1_004	2009	World Bank grant to supplement financing for county health facilities	2015/2016	24174105
level1	KE_1_004	2009	World Bank grant to supplement financing for county health facilities	2016/2017	24174105
level1	KE_1_023	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	24195000
level1	KE_1_002	2009	Rehabilitation of Village Polytechnics	2018/2019	24300000
level1	KE_1_008	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	24481325
level1	KE_1_001	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	24562500
level1	KE_1_004	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	24725000
level1	KE_1_043	2009	Total Conditional Additional Allocation	2015/2016	24770000
level1	KE_1_016	2009	Rehabilitation of Village Polytechnics	2018/2019	24806251
level1	KE_1_016	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	24843750
level1	KE_1_034	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	24844848
level1	KE_1_045	2009	Rehabilitation of Village Polytechnics	2018/2019	24907500
level1	KE_1_031	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	25255000
level1	KE_1_032	2009	Total Conditional Additional Allocation	2015/2016	25260000
level1	KE_1_008	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	25312500
level1	KE_1_023	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	25346766
level1	KE_1_010	2009	Total Conditional Additional Allocation	2015/2016	25436676
level1	KE_1_011	2009	Other Loans & Grants	2017/2018	25550510
level1	KE_1_034	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	25719948
level1	KE_1_012	2009	Rehabilitation of Village Polytechnics	2018/2019	25818750
level1	KE_1_018	2009	Other Loans & Grants	2017/2018	25839485
level1	KE_1_009	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	25857016
level1	KE_1_041	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	25932368
level1	KE_1_027	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	25961694
level1	KE_1_015	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	26062500
level1	KE_1_011	2009	Total Conditional Additional Allocation	2016/2017	26232373
level1	KE_1_035	2009	Other Loans & Grants	2017/2018	26375133
level1	KE_1_031	2009	Other Loans & Grants	2017/2018	26439559
level1	KE_1_039	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	26718750
level1	KE_1_008	2009	Rehabilitation of Village Polytechnics	2018/2019	27286875
level1	KE_1_001	2009	Rehabilitation of Village Polytechnics	2018/2019	27337500
level1	KE_1_022	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	27937500
level1	KE_1_024	2009	Total Conditional Additional Allocation	2015/2016	27979898
level1	KE_1_009	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	28305000
level1	KE_1_009	2009	Total Conditional Additional Allocation	2015/2016	28306168
level1	KE_1_046	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	28452981
level1	KE_1_005	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	28585490
level1	KE_1_004	2009	Total Conditional Additional Allocation	2016/2017	28819105
level1	KE_1_015	2009	Rehabilitation of Village Polytechnics	2018/2019	29008125
level1	KE_1_010	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	29133697
level1	KE_1_039	2009	Rehabilitation of Village Polytechnics	2018/2019	29362500
level1	KE_1_012	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	29524087
level1	KE_1_025	2009	World Bank grant to supplement financing for county health facilities	2015/2016	29848554
level1	KE_1_025	2009	World Bank grant to supplement financing for county health facilities	2016/2017	29848554
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
level1	KE_1_042	2009	Other Loans & Grants	2015/2016	30000000
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
level1	KE_1_042	2009	Other Loans & Grants	2017/2018	30073021
level1	KE_1_023	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	30255192
level1	KE_1_028	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	30279354
level1	KE_1_009	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	30281250
level1	KE_1_037	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	30843750
level1	KE_1_032	2009	Rehabilitation of Village Polytechnics	2018/2019	31083750
level1	KE_1_045	2009	Other Loans & Grants	2017/2018	31439291
level1	KE_1_005	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	31560240
level1	KE_1_030	2009	Other Loans & Grants	2017/2018	31707536
level1	KE_1_006	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	31797500
level1	KE_1_014	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	31912879
level1	KE_1_006	2009	Total Conditional Additional Allocation	2015/2016	32052898
level1	KE_1_023	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	32156250
level1	KE_1_025	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	32159348
level1	KE_1_003	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	32343750
level1	KE_1_022	2009	Rehabilitation of Village Polytechnics	2018/2019	32400000
level1	KE_1_023	2009	Total Conditional Additional Allocation	2015/2016	32556700
level1	KE_1_009	2009	Rehabilitation of Village Polytechnics	2018/2019	32653125
level1	KE_1_006	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	32699643
level1	KE_1_007	2009	Total Conditional Additional Allocation	2015/2016	33028268
level1	KE_1_037	2009	Rehabilitation of Village Polytechnics	2018/2019	33311250
level1	KE_1_003	2009	Rehabilitation of Village Polytechnics	2018/2019	33361875
level1	KE_1_034	2009	Other Loans & Grants	2017/2018	33670568
level1	KE_1_023	2009	Rehabilitation of Village Polytechnics	2018/2019	33766875
level1	KE_1_005	2009	Leasing of Medical Equipment	2018/2019	33793559
level1	KE_1_027	2009	Other Loans & Grants	2017/2018	33834647
level1	KE_1_036	2009	Other Loans & Grants	2017/2018	34476132
level1	KE_1_010	2009	World Bank grant to supplement financing for county health facilities	2015/2016	34627134
level1	KE_1_010	2009	World Bank grant to supplement financing for county health facilities	2016/2017	34627134
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
level1	KE_1_025	2009	Total Conditional Additional Allocation	2016/2017	35343554
level1	KE_1_040	2009	Other Loans & Grants	2017/2018	35708101
level1	KE_1_013	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	35989344
level1	KE_1_025	2009	Other Loans & Grants	2017/2018	35998283
level1	KE_1_028	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	36005074
level1	KE_1_006	2009	World Bank grant to supplement financing for county health facilities	2015/2016	36034216
level1	KE_1_006	2009	World Bank grant to supplement financing for county health facilities	2016/2017	36034216
level1	KE_1_042	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	36068231
level1	KE_1_011	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	36113321
level1	KE_1_008	2009	Total Conditional Additional Allocation	2015/2016	36459300
level1	KE_1_026	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	36686728
level1	KE_1_006	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	36728875
level1	KE_1_025	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	36731596
level1	KE_1_010	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	36800000
level1	KE_1_002	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	37075000
level1	KE_1_047	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	37420064
level1	KE_1_047	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	37523967
level1	KE_1_034	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	37645000
level1	KE_1_001	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	37921806
level1	KE_1_029	2009	Other Loans & Grants	2017/2018	37935161
level1	KE_1_033	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	38282966
level1	KE_1_042	2009	Total Conditional Additional Allocation	2016/2017	38290000
level1	KE_1_020	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	38364051
level1	KE_1_031	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	38403461
level1	KE_1_013	2009	Leasing of Medical Equipment	2018/2019	38536081
level1	KE_1_028	2009	Leasing of Medical Equipment	2018/2019	38552919
level1	KE_1_007	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	38645000
level1	KE_1_011	2009	Leasing of Medical Equipment	2018/2019	38668826
level1	KE_1_004	2009	Other Loans & Grants	2017/2018	38702117
level1	KE_1_002	2009	Other Loans & Grants	2017/2018	38819201
level1	KE_1_038	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	38854627
level1	KE_1_041	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	39021230
level1	KE_1_030	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	39175834
level1	KE_1_006	2009	Leasing of Medical Equipment	2018/2019	39327939
level1	KE_1_025	2009	Leasing of Medical Equipment	2018/2019	39330852
level1	KE_1_046	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	39582751
level1	KE_1_034	2009	Other Loans & Grants	2015/2016	40000000
level1	KE_1_027	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	40028573
level1	KE_1_013	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	40049752
level1	KE_1_024	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	40081255
level1	KE_1_018	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	40222990
level1	KE_1_016	2009	Other Loans & Grants	2017/2018	40561481
level1	KE_1_014	2009	Leasing of Medical Equipment	2018/2019	40595727
level1	KE_1_044	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	40625000
level1	KE_1_030	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	40839509
level1	KE_1_019	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	40850289
level1	KE_1_028	2009	Total Conditional Additional Allocation	2015/2016	40979116
level1	KE_1_020	2009	Leasing of Medical Equipment	2018/2019	41078830
level1	KE_1_004	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	41095762
level1	KE_1_032	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	41107213
level1	KE_1_031	2009	Leasing of Medical Equipment	2018/2019	41121027
level1	KE_1_007	2009	World Bank grant to supplement financing for county health facilities	2015/2016	41161467
level1	KE_1_007	2009	World Bank grant to supplement financing for county health facilities	2016/2017	41161467
level1	KE_1_035	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	41594910
level1	KE_1_038	2009	Leasing of Medical Equipment	2018/2019	41604116
level1	KE_1_029	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	41606801
level1	KE_1_033	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	41780000
level1	KE_1_036	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	41921669
level1	KE_1_017	2009	Other Loans & Grants	2017/2018	42068481
level1	KE_1_035	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	42286732
level1	KE_1_010	2009	Total Conditional Additional Allocation	2016/2017	42302134
level1	KE_1_041	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	42327625
level1	KE_1_046	2009	Leasing of Medical Equipment	2018/2019	42383765
level1	KE_1_006	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	42394162
level1	KE_1_009	2009	World Bank grant to supplement financing for county health facilities	2015/2016	42477798
level1	KE_1_009	2009	World Bank grant to supplement financing for county health facilities	2016/2017	42477798
level1	KE_1_021	2009	Other Loans & Grants	2017/2018	42505145
level1	KE_1_032	2009	Other Loans & Grants	2017/2018	42587323
level1	KE_1_034	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	42829641
level1	KE_1_024	2009	Leasing of Medical Equipment	2018/2019	42917546
level1	KE_1_034	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	42954113
level1	KE_1_041	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	43031378
level1	KE_1_018	2009	Leasing of Medical Equipment	2018/2019	43069316
level1	KE_1_030	2009	Total Conditional Additional Allocation	2015/2016	43194300
level1	KE_1_026	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	43386482
level1	KE_1_006	2009	Total Conditional Additional Allocation	2016/2017	43439216
level1	KE_1_027	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	43650314
level1	KE_1_044	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	43668076
level1	KE_1_026	2009	Other Loans & Grants	2017/2018	43699195
level1	KE_1_030	2009	Leasing of Medical Equipment	2018/2019	43729455
level1	KE_1_019	2009	Leasing of Medical Equipment	2018/2019	43740998
level1	KE_1_004	2009	Leasing of Medical Equipment	2018/2019	44003842
level1	KE_1_040	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	44261335
level1	KE_1_002	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	44360883
level1	KE_1_035	2009	Leasing of Medical Equipment	2018/2019	44538343
level1	KE_1_029	2009	Leasing of Medical Equipment	2018/2019	44551044
level1	KE_1_014	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	44569827
level1	KE_1_007	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	44599121
level1	KE_1_013	2009	World Bank grant to supplement financing for county health facilities	2015/2016	44654343
level1	KE_1_013	2009	World Bank grant to supplement financing for county health facilities	2016/2017	44654343
level1	KE_1_024	2009	Other Loans & Grants	2017/2018	44669544
level1	KE_1_045	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	44696901
level1	KE_1_036	2009	Leasing of Medical Equipment	2018/2019	44888193
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
level1	KE_1_008	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	45040000
level1	KE_1_021	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	45056255
level1	KE_1_010	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	45148545
level1	KE_1_011	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	45533001
level1	KE_1_045	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	45697438
level1	KE_1_038	2009	Other Loans & Grants	2017/2018	45759161
level1	KE_1_033	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	45796321
level1	KE_1_034	2009	Leasing of Medical Equipment	2018/2019	45860424
level1	KE_1_041	2009	Leasing of Medical Equipment	2018/2019	46076429
level1	KE_1_031	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	46115937
level1	KE_1_008	2009	World Bank grant to supplement financing for county health facilities	2015/2016	46166458
level1	KE_1_008	2009	World Bank grant to supplement financing for county health facilities	2016/2017	46166458
level1	KE_1_043	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	46229189
level1	KE_1_040	2009	Total Conditional Additional Allocation	2015/2016	46240000
level1	KE_1_044	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	46330991
level1	KE_1_029	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	46342186
level1	KE_1_042	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	46361941
level1	KE_1_033	2009	Other Loans & Grants	2017/2018	46406308
level1	KE_1_026	2009	Leasing of Medical Equipment	2018/2019	46456661
level1	KE_1_027	2009	Leasing of Medical Equipment	2018/2019	46739163
level1	KE_1_047	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	47156250
level1	KE_1_040	2009	Leasing of Medical Equipment	2018/2019	47393422
level1	KE_1_002	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	47394010
level1	KE_1_017	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	47396651
level1	KE_1_007	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	47421765
level1	KE_1_007	2009	Leasing of Medical Equipment	2018/2019	47755752
level1	KE_1_028	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	47990000
level1	KE_1_021	2009	Leasing of Medical Equipment	2018/2019	48244593
level1	KE_1_010	2009	Leasing of Medical Equipment	2018/2019	48985872
level1	KE_1_033	2009	Leasing of Medical Equipment	2018/2019	49037031
level1	KE_1_043	2009	Leasing of Medical Equipment	2018/2019	49500526
level1	KE_1_044	2009	Leasing of Medical Equipment	2018/2019	49609593
level1	KE_1_042	2009	Leasing of Medical Equipment	2018/2019	49642674
level1	KE_1_009	2009	Total Conditional Additional Allocation	2016/2017	49787798
level1	KE_1_001	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	49809062
level1	KE_1_008	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	49871995
level1	KE_1_016	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	49893161
level1	KE_1_039	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_028	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_014	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_014	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_043	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_022	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_022	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_003	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_020	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_020	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_045	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_015	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_002	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_002	2009	Road Maintenance Fuel Levy	2018/2019	50000000
level1	KE_1_002	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_031	2009	Road Maintenance Fuel Levy	2018/2019	50000000
level1	KE_1_031	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_005	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_017	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_010	2009	Road Maintenance Fuel Levy	2018/2019	50000000
level1	KE_1_010	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_012	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_012	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_044	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_001	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_021	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_021	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_032	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_029	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_033	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_046	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_046	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_018	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_019	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_025	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_025	2009	Road Maintenance Fuel Levy	2018/2019	50000000
level1	KE_1_025	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_041	2009	Road Maintenance Fuel Levy	2018/2019	50000000
level1	KE_1_041	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_006	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_006	2009	Road Maintenance Fuel Levy	2018/2019	50000000
level1	KE_1_006	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_004	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_013	2009	Grants to Level5 Hospitals	2018/2019	50000000
level1	KE_1_013	2009	Road Maintenance Fuel Levy	2018/2019	50000000
level1	KE_1_013	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
level1	KE_1_026	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_023	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_038	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
level1	KE_1_007	2009	Total Conditional Additional Allocation	2016/2017	50131467
level1	KE_1_017	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	50180747
level1	KE_1_019	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	50181184
level1	KE_1_027	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	50223504
level1	KE_1_045	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	50373481
level1	KE_1_012	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	50375116
level1	KE_1_002	2009	Leasing of Medical Equipment	2018/2019	50747782
level1	KE_1_017	2009	Leasing of Medical Equipment	2018/2019	50750604
level1	KE_1_013	2009	Total Conditional Additional Allocation	2016/2017	50819343
level1	KE_1_038	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	50845284
level1	KE_1_004	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	50849353
level1	KE_1_007	2009	Other Loans & Grants	2017/2018	50874733
level1	KE_1_045	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	50984665
level1	KE_1_047	2009	Rehabilitation of Village Polytechnics	2018/2019	51637500
level1	KE_1_030	2009	Road Maintenance Fuel Levy	2018/2019	52360500
level1	KE_1_030	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	52360500
level1	KE_1_025	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	53125000
level1	KE_1_001	2009	Leasing of Medical Equipment	2018/2019	53333725
level1	KE_1_008	2009	Leasing of Medical Equipment	2018/2019	53401112
level1	KE_1_016	2009	Leasing of Medical Equipment	2018/2019	53423784
level1	KE_1_015	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	53665060
level1	KE_1_043	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	53812849
level1	KE_1_045	2009	Leasing of Medical Equipment	2018/2019	53938093
level1	KE_1_012	2009	Leasing of Medical Equipment	2018/2019	53939835
level1	KE_1_030	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	54243300
level1	KE_1_047	2009	Grants to Level5 Hospitals	2018/2019	54429184
level1	KE_1_039	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	54474504
level1	KE_1_010	2009	Other Loans & Grants	2017/2018	54542181
level1	KE_1_009	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	54795930
level1	KE_1_033	2009	Total Conditional Additional Allocation	2015/2016	56027350
level1	KE_1_024	2009	World Bank grant to supplement financing for county health facilities	2015/2016	56049761
level1	KE_1_024	2009	World Bank grant to supplement financing for county health facilities	2016/2017	56049761
level1	KE_1_038	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	56065640
level1	KE_1_008	2009	Total Conditional Additional Allocation	2016/2017	56211458
level1	KE_1_032	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	56299041
level1	KE_1_027	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	56301747
level1	KE_1_041	2009	Grants to Level5 Hospitals	2018/2019	56758154
level1	KE_1_028	2009	World Bank grant to supplement financing for county health facilities	2015/2016	56932570
level1	KE_1_028	2009	World Bank grant to supplement financing for county health facilities	2016/2017	56932570
level1	KE_1_006	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	56942903
level1	KE_1_003	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	57107014
level1	KE_1_010	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	57240000
level1	KE_1_015	2009	Leasing of Medical Equipment	2018/2019	57462594
level1	KE_1_015	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	58210000
level1	KE_1_039	2009	Leasing of Medical Equipment	2018/2019	58329310
level1	KE_1_032	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	58346857
level1	KE_1_015	2009	Other Loans & Grants	2017/2018	58554011
level1	KE_1_009	2009	Leasing of Medical Equipment	2018/2019	58673488
level1	KE_1_043	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	59001481
level1	KE_1_037	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	59311725
level1	KE_1_002	2009	Total Conditional Additional Allocation	2015/2016	59379322
level1	KE_1_036	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	59403836
level1	KE_1_040	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	59552830
level1	KE_1_031	2009	World Bank grant to supplement financing for county health facilities	2015/2016	60049676
level1	KE_1_031	2009	World Bank grant to supplement financing for county health facilities	2016/2017	60049676
level1	KE_1_032	2009	Leasing of Medical Equipment	2018/2019	60282958
level1	KE_1_022	2009	Leasing of Medical Equipment	2018/2019	60455156
level1	KE_1_023	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	61120888
level1	KE_1_037	2009	Other Loans & Grants	2017/2018	61145971
level1	KE_1_003	2009	Leasing of Medical Equipment	2018/2019	61148106
level1	KE_1_008	2009	Other Loans & Grants	2017/2018	61485350
level1	KE_1_035	2009	Grants to Level5 Hospitals	2018/2019	61507974
level1	KE_1_037	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	61794598
level1	KE_1_010	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	61800000
level1	KE_1_024	2009	Total Conditional Additional Allocation	2016/2017	62139761
level1	KE_1_039	2009	Other Loans & Grants	2017/2018	62188791
level1	KE_1_021	2009	Road Maintenance Fuel Levy	2018/2019	62437600
level1	KE_1_021	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	62437600
level1	KE_1_034	2009	Grants to Level5 Hospitals	2018/2019	62478710
level1	KE_1_037	2009	Leasing of Medical Equipment	2018/2019	63508831
level1	KE_1_041	2009	Other Loans & Grants	2017/2018	63669291
level1	KE_1_009	2009	Other Loans & Grants	2017/2018	64221359
level1	KE_1_011	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	64373437
level1	KE_1_042	2009	Total Conditional Additional Allocation	2015/2016	64580000
level1	KE_1_032	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	65337491
level1	KE_1_023	2009	Leasing of Medical Equipment	2018/2019	65446016
level1	KE_1_016	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	65588781
level1	KE_1_031	2009	Total Conditional Additional Allocation	2016/2017	65814676
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
level1	KE_1_011	2009	Grants to Level5 Hospitals	2018/2019	66229830
level1	KE_1_023	2009	Other Loans & Grants	2017/2018	66640350
level1	KE_1_038	2009	Total Conditional Additional Allocation	2015/2016	66670000
level1	KE_1_025	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	66786111
level1	KE_1_029	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	66845279
level1	KE_1_031	2009	Grants to Level5 Hospitals	2018/2019	67077728
level1	KE_1_023	2009	World Bank grant to supplement financing for county health facilities	2015/2016	67258982
level1	KE_1_023	2009	World Bank grant to supplement financing for county health facilities	2016/2017	67258982
level1	KE_1_028	2009	Total Conditional Additional Allocation	2016/2017	67332570
level1	KE_1_042	2009	Grants to Level5 Hospitals	2018/2019	67364355
level1	KE_1_002	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	67495490
level1	KE_1_024	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	67985000
level1	KE_1_020	2009	Road Maintenance Fuel Levy	2018/2019	71302200
level1	KE_1_020	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	71302200
level1	KE_1_035	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	71544247
level1	KE_1_017	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	71695461
level1	KE_1_047	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	71910897
level1	KE_1_044	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	71990710
level1	KE_1_023	2009	Total Conditional Additional Allocation	2016/2017	73293982
level1	KE_1_024	2009	Road Maintenance Fuel Levy	2018/2019	73392300
level1	KE_1_024	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	73392300
level1	KE_1_038	2009	Grants to Level5 Hospitals	2018/2019	73956778
level1	KE_1_045	2009	Grants to Level5 Hospitals	2018/2019	74159514
level1	KE_1_003	2009	Other Loans & Grants	2017/2018	74392884
level1	KE_1_033	2009	Road Maintenance Fuel Levy	2018/2019	74905300
level1	KE_1_033	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	74905300
level1	KE_1_044	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	76811165
level1	KE_1_021	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	76894209
level1	KE_1_030	2009	World Bank grant to supplement financing for county health facilities	2015/2016	77761278
level1	KE_1_030	2009	World Bank grant to supplement financing for county health facilities	2016/2017	77761278
level1	KE_1_030	2009	Grants to Level5 Hospitals	2018/2019	78899347
level1	KE_1_022	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	80079440
level1	KE_1_040	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	81106071
level1	KE_1_033	2009	World Bank grant to supplement financing for county health facilities	2015/2016	81201403
level1	KE_1_033	2009	World Bank grant to supplement financing for county health facilities	2016/2017	81201403
level1	KE_1_027	2009	Grants to Level5 Hospitals	2018/2019	81893450
level1	KE_1_002	2009	World Bank grant to supplement financing for county health facilities	2015/2016	82166289
level1	KE_1_002	2009	World Bank grant to supplement financing for county health facilities	2016/2017	82166289
level1	KE_1_003	2009	Total Conditional Additional Allocation	2015/2016	82306764
level1	KE_1_024	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	83202997
level1	KE_1_047	2009	Leasing of Medical Equipment	2018/2019	83424144
level1	KE_1_033	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	83620453
level1	KE_1_015	2009	Total Conditional Additional Allocation	2015/2016	83958266
level1	KE_1_023	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	84141376
level1	KE_1_043	2009	Grants to Level5 Hospitals	2018/2019	85820342
level1	KE_1_036	2009	Grants to Level5 Hospitals	2018/2019	86405581
level1	KE_1_040	2009	Grants to Level5 Hospitals	2018/2019	86622298
level1	KE_1_044	2009	Total Conditional Additional Allocation	2015/2016	87452156
level1	KE_1_002	2009	Total Conditional Additional Allocation	2016/2017	88976289
level1	KE_1_017	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	89179782
level1	KE_1_034	2009	Total Conditional Additional Allocation	2015/2016	89533654
level1	KE_1_028	2009	Road Maintenance Fuel Levy	2018/2019	89802100
level1	KE_1_028	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	89802100
level1	KE_1_033	2009	Total Conditional Additional Allocation	2016/2017	90146403
level1	KE_1_030	2009	Total Conditional Additional Allocation	2016/2017	90746278
level1	KE_1_007	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	91760861
level1	KE_1_018	2009	Total Conditional Additional Allocation	2015/2016	91860000
level1	KE_1_019	2009	Total Conditional Additional Allocation	2017/2018	92761342
level1	KE_1_003	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	93668250
level1	KE_1_011	2009	Road Maintenance Fuel Levy	2018/2019	93968100
level1	KE_1_011	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	93968100
level1	KE_1_005	2009	Total Conditional Additional Allocation	2017/2018	94106690
level1	KE_1_030	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	94210000
level1	KE_1_023	2009	Road Maintenance Fuel Levy	2018/2019	95023200
level1	KE_1_023	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	95023200
level1	KE_1_032	2009	Grants to Level5 Hospitals	2018/2019	95036357
level1	KE_1_016	2009	Grants to Level5 Hospitals	2018/2019	95401875
level1	KE_1_047	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	96359510
level1	KE_1_003	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	96840000
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
level1	KE_1_034	2009	World Bank grant to supplement financing for county health facilities	2015/2016	100581341
level1	KE_1_034	2009	World Bank grant to supplement financing for county health facilities	2016/2017	100581341
level1	KE_1_013	2009	Total Conditional Additional Allocation	2017/2018	100798020
level1	KE_1_040	2009	Road Maintenance Fuel Levy	2018/2019	101071500
level1	KE_1_040	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	101071500
level1	KE_1_001	2009	Total Conditional Additional Allocation	2017/2018	101425861
level1	KE_1_010	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	101892430
level1	KE_1_015	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	103430429
level1	KE_1_039	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
level1	KE_1_037	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
level1	KE_1_009	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
level1	KE_1_023	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
level1	KE_1_008	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
level1	KE_1_014	2009	Total Conditional Additional Allocation	2015/2016	113750000
level1	KE_1_003	2009	World Bank grant to supplement financing for county health facilities	2015/2016	114657642
level1	KE_1_003	2009	World Bank grant to supplement financing for county health facilities	2016/2017	114657642
level1	KE_1_046	2009	Road Maintenance Fuel Levy	2018/2019	114705300
level1	KE_1_046	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	114705300
level1	KE_1_012	2009	Road Maintenance Fuel Levy	2018/2019	116890200
level1	KE_1_012	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	116890200
level1	KE_1_040	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	116993505
level1	KE_1_030	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_036	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_040	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_028	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_034	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_037	2009	Compensation for User Fee Foregone	2018/2019	117000000
level1	KE_1_037	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	117000000
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
level1	KE_1_006	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	117024000
level1	KE_1_018	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	117268690
level1	KE_1_024	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	117291410
level1	KE_1_028	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	118422545
level1	KE_1_042	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	118482110
level1	KE_1_041	2009	Total Conditional Additional Allocation	2015/2016	119030000
level1	KE_1_043	2009	Road Maintenance Fuel Levy	2018/2019	119361500
level1	KE_1_043	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	119361500
level1	KE_1_014	2009	Road Maintenance Fuel Levy	2018/2019	119892100
level1	KE_1_014	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	119892100
level1	KE_1_003	2009	Total Conditional Additional Allocation	2016/2017	122422642
level1	KE_1_035	2009	Total Conditional Additional Allocation	2017/2018	123263880
level1	KE_1_021	2009	Total Conditional Additional Allocation	2015/2016	124810000
level1	KE_1_009	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	125791038
level1	KE_1_011	2009	Total Conditional Additional Allocation	2017/2018	128629328
level1	KE_1_003	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	129114721
level1	KE_1_016	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	129858778
level1	KE_1_015	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	129886088
level1	KE_1_031	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	131027150
level1	KE_1_015	2009	World Bank grant to supplement financing for county health facilities	2015/2016	131525244
level1	KE_1_015	2009	World Bank grant to supplement financing for county health facilities	2016/2017	131525244
level1	KE_1_018	2009	Road Maintenance Fuel Levy	2018/2019	135543400
level1	KE_1_018	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	135543400
level1	KE_1_034	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	135621176
level1	KE_1_020	2009	Total Conditional Additional Allocation	2017/2018	136198212
level1	KE_1_017	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	136261600
level1	KE_1_014	2009	Total Conditional Additional Allocation	2017/2018	137088346
level1	KE_1_044	2009	World Bank grant to supplement financing for county health facilities	2015/2016	138220725
level1	KE_1_044	2009	World Bank grant to supplement financing for county health facilities	2016/2017	138220725
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
level1	KE_1_030	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	141097380
level1	KE_1_041	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	142126290
level1	KE_1_028	2009	Total Conditional Additional Allocation	2017/2018	142673578
level1	KE_1_039	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	143042792
level1	KE_1_034	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	143531050
level1	KE_1_044	2009	Total Conditional Additional Allocation	2016/2017	148440725
level1	KE_1_036	2009	Total Conditional Additional Allocation	2017/2018	149391438
level1	KE_1_010	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	149513995
level1	KE_1_034	2009	Total Conditional Additional Allocation	2016/2017	149526341
level1	KE_1_046	2009	Total Conditional Additional Allocation	2017/2018	149561205
level1	KE_1_007	2009	Compensation for User Fee Foregone	2018/2019	150000000
level1	KE_1_011	2009	Compensation for User Fee Foregone	2018/2019	150000000
level1	KE_1_005	2009	Compensation for User Fee Foregone	2018/2019	150000000
level1	KE_1_009	2009	Compensation for User Fee Foregone	2018/2019	150000000
level1	KE_1_010	2009	Compensation for User Fee Foregone	2018/2019	150000000
level1	KE_1_010	2009	German Development Bank (KfW) Drought Resilience Programme in Northern Kenya (DRPNK)	2019/2020	150000000
level1	KE_1_004	2009	Compensation for User Fee Foregone	2018/2019	150000000
level1	KE_1_008	2009	Compensation for User Fee Foregone	2018/2019	150000000
level1	KE_1_015	2009	Total Conditional Additional Allocation	2016/2017	150020244
level1	KE_1_016	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	150156390
level1	KE_1_013	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	152374180
level1	KE_1_008	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	153172330
level1	KE_1_040	2009	Total Conditional Additional Allocation	2017/2018	155229716
level1	KE_1_010	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	156114090
level1	KE_1_007	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	157422850
level1	KE_1_005	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	157507010
level1	KE_1_002	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	157706559
level1	KE_1_041	2009	Total Conditional Additional Allocation	2017/2018	160144386
level1	KE_1_045	2009	Road Maintenance Fuel Levy	2018/2019	164053800
level1	KE_1_045	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	164053800
level1	KE_1_008	2009	Road Maintenance Fuel Levy	2018/2019	165643500
level1	KE_1_008	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	165643500
level1	KE_1_018	2009	Total Conditional Additional Allocation	2017/2018	166491908
level1	KE_1_036	2009	Road Maintenance Fuel Levy	2018/2019	168334800
level1	KE_1_036	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	168334800
level1	KE_1_011	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	170794330
level1	KE_1_022	2009	Total Conditional Additional Allocation	2017/2018	171860543
level1	KE_1_021	2009	Total Conditional Additional Allocation	2017/2018	175025300
level1	KE_1_016	2009	Total Conditional Additional Allocation	2017/2018	175585971
level1	KE_1_009	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	175819500
level1	KE_1_029	2009	Road Maintenance Fuel Levy	2018/2019	177231700
level1	KE_1_029	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	177231700
level1	KE_1_036	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	180000000
level1	KE_1_034	2009	Total Conditional Additional Allocation	2017/2018	182819277
level1	KE_1_019	2009	Total Conditional Additional Allocation	2015/2016	182930000
level1	KE_1_019	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	186033960
level1	KE_1_047	2009	Total Conditional Additional Allocation	2019/2020	194699600
level1	KE_1_038	2009	Total Conditional Additional Allocation	2017/2018	196636664
level1	KE_1_039	2009	Total Conditional Additional Allocation	2015/2016	196750000
level1	KE_1_006	2009	Total Conditional Additional Allocation	2017/2018	196900401
level1	KE_1_035	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	199459400
level1	KE_1_009	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	200000000
level1	KE_1_004	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	200000000
level1	KE_1_023	2009	German Development Bank (KfW) Drought Resilience Programme in Northern Kenya (DRPNK)	2019/2020	200000000
level1	KE_1_027	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	200000000
level1	KE_1_042	2009	Total Conditional Additional Allocation	2017/2018	205150974
level1	KE_1_016	2009	Total Conditional Additional Allocation	2015/2016	206700000
level1	KE_1_029	2009	Total Conditional Additional Allocation	2017/2018	210116247
level1	KE_1_031	2009	Total Conditional Additional Allocation	2017/2018	212173539
level1	KE_1_027	2009	Total Conditional Additional Allocation	2017/2018	214713880
level1	KE_1_047	2009	Total Conditional Additional Allocation	2018/2019	215149968
level1	KE_1_012	2009	Total Conditional Additional Allocation	2015/2016	220590000
level1	KE_1_026	2009	Total Conditional Additional Allocation	2017/2018	230131937
level1	KE_1_015	2009	Road Maintenance Fuel Levy	2018/2019	232374200
level1	KE_1_015	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	232374200
level1	KE_1_007	2009	Road Maintenance Fuel Levy	2018/2019	233506000
level1	KE_1_007	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	233506000
level1	KE_1_031	2009	Total Conditional Additional Allocation	2015/2016	236375096
level1	KE_1_019	2009	Road Maintenance Fuel Levy	2018/2019	236639100
level1	KE_1_019	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	236639100
level1	KE_1_032	2009	Total Conditional Additional Allocation	2017/2018	237657121
level1	KE_1_007	2009	Total Conditional Additional Allocation	2017/2018	242544407
level1	KE_1_017	2009	Total Conditional Additional Allocation	2015/2016	244130000
level1	KE_1_043	2009	Total Conditional Additional Allocation	2017/2018	247766983
level1	KE_1_008	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	250000000
level1	KE_1_038	2009	Road Maintenance Fuel Levy	2018/2019	250950700
level1	KE_1_038	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	250950700
level1	KE_1_004	2009	Total Conditional Additional Allocation	2017/2018	253251635
level1	KE_1_035	2009	Road Maintenance Fuel Levy	2018/2019	256299000
level1	KE_1_035	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	256299000
level1	KE_1_037	2009	Total Conditional Additional Allocation	2017/2018	259117644
level1	KE_1_034	2009	Road Maintenance Fuel Levy	2018/2019	265950300
level1	KE_1_034	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	265950300
level1	KE_1_045	2009	Total Conditional Additional Allocation	2017/2018	272278253
level1	KE_1_037	2009	Total Conditional Additional Allocation	2015/2016	278500000
level1	KE_1_033	2009	Total Conditional Additional Allocation	2017/2018	282870310
level1	KE_1_009	2009	Total Conditional Additional Allocation	2017/2018	283179311
level1	KE_1_017	2009	Total Conditional Additional Allocation	2017/2018	294396310
level1	KE_1_039	2009	Total Conditional Additional Allocation	2017/2018	298824753
level1	KE_1_026	2009	Road Maintenance Fuel Levy	2018/2019	299106900
level1	KE_1_026	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	299106900
level1	KE_1_030	2009	Total Conditional Additional Allocation	2017/2018	299821230
level1	KE_1_012	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	299971780
level1	KE_1_002	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	300000000
level1	KE_1_039	2009	Road Maintenance Fuel Levy	2018/2019	300977100
level1	KE_1_039	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	300977100
level1	KE_1_031	2009	Total Conditional Additional Allocation	2019/2020	305078964
level1	KE_1_005	2009	Total Conditional Additional Allocation	2019/2020	306166757
level1	KE_1_013	2009	Total Conditional Additional Allocation	2019/2020	307617021
level1	KE_1_021	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	307623650
level1	KE_1_024	2009	Total Conditional Additional Allocation	2017/2018	314393341
level1	KE_1_010	2009	Total Conditional Additional Allocation	2017/2018	315142151
level1	KE_1_025	2009	Total Conditional Additional Allocation	2017/2018	318897301
level1	KE_1_002	2009	Total Conditional Additional Allocation	2017/2018	321582690
level1	KE_1_030	2009	Total Conditional Additional Allocation	2019/2020	325325892
level1	KE_1_013	2009	Total Conditional Additional Allocation	2015/2016	326229808
level1	KE_1_013	2009	Total Conditional Additional Allocation	2018/2019	326966757
level1	KE_1_003	2009	Road Maintenance Fuel Levy	2018/2019	330534500
level1	KE_1_003	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	330534500
level1	KE_1_022	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	331195210
level1	KE_1_044	2009	Total Conditional Additional Allocation	2017/2018	333790711
level1	KE_1_020	2009	Total Conditional Additional Allocation	2015/2016	336770000
level1	KE_1_023	2009	Total Conditional Additional Allocation	2017/2018	342211436
level1	KE_1_029	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	343929300
level1	KE_1_015	2009	Total Conditional Additional Allocation	2017/2018	344841671
level1	KE_1_005	2009	Total Conditional Additional Allocation	2018/2019	349454694
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
level1	KE_1_008	2009	Total Conditional Additional Allocation	2017/2018	353279800
level1	KE_1_028	2009	Total Conditional Additional Allocation	2019/2020	354907368
level1	KE_1_047	2009	Other Loans & Grants	2015/2016	360000000
level1	KE_1_041	2009	Total Conditional Additional Allocation	2019/2020	360748123
level1	KE_1_024	2009	Total Conditional Additional Allocation	2019/2020	364283864
level1	KE_1_047	2009	Total Conditional Additional Allocation	2016/2017	373900000
level1	KE_1_020	2009	Total Conditional Additional Allocation	2018/2019	375297242
level1	KE_1_018	2009	Total Conditional Additional Allocation	2019/2020	377541424
level1	KE_1_021	2009	Total Conditional Additional Allocation	2018/2019	382120438
level1	KE_1_037	2009	Road Maintenance Fuel Levy	2018/2019	389118800
level1	KE_1_037	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	389118800
level1	KE_1_004	2009	Total Conditional Additional Allocation	2019/2020	392033835
level1	KE_1_003	2009	Total Conditional Additional Allocation	2017/2018	393492525
country	KE	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	396000000
level1	KE_1_007	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	400000000
level1	KE_1_006	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	400000000
level1	KE_1_011	2009	Total Conditional Additional Allocation	2019/2020	403048854
level1	KE_1_040	2009	Total Conditional Additional Allocation	2019/2020	419041031
country	KE	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	422355000
country	KE	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	422355000
level1	KE_1_014	2009	Total Conditional Additional Allocation	2018/2019	423634353
level1	KE_1_046	2009	Total Conditional Additional Allocation	2018/2019	424043052
level1	KE_1_011	2009	Total Conditional Additional Allocation	2018/2019	424751976
level1	KE_1_041	2009	Total Conditional Additional Allocation	2018/2019	428874926
level1	KE_1_031	2009	Total Conditional Additional Allocation	2018/2019	440883643
level1	KE_1_028	2009	Total Conditional Additional Allocation	2018/2019	448113957
level1	KE_1_033	2009	Total Conditional Additional Allocation	2018/2019	448450203
level1	KE_1_012	2009	Total Conditional Additional Allocation	2018/2019	448987235
level1	KE_1_030	2009	Total Conditional Additional Allocation	2018/2019	455614301
level1	KE_1_036	2009	Total Conditional Additional Allocation	2019/2020	457270099
level1	KE_1_018	2009	Total Conditional Additional Allocation	2018/2019	466332856
level1	KE_1_025	2009	Total Conditional Additional Allocation	2018/2019	473519323
level1	KE_1_043	2009	Total Conditional Additional Allocation	2018/2019	479279189
country	KE	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	492698583
country	KE	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	495000000
level1	KE_1_036	2009	Total Conditional Additional Allocation	2018/2019	495931469
level1	KE_1_004	2009	Road Maintenance Fuel Levy	2018/2019	500000001
level1	KE_1_023	2009	Total Conditional Additional Allocation	2018/2019	507247478
level1	KE_1_004	2009	Total Conditional Additional Allocation	2018/2019	507651269
level1	KE_1_040	2009	Total Conditional Additional Allocation	2018/2019	514468709
level1	KE_1_044	2009	Road Maintenance Fuel Levy	2018/2019	518367800
level1	KE_1_044	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	518367800
level1	KE_1_010	2009	Total Conditional Additional Allocation	2018/2019	519678603
level1	KE_1_021	2009	Total Conditional Additional Allocation	2019/2020	520780762
level1	KE_1_020	2009	Total Conditional Additional Allocation	2019/2020	521896956
level1	KE_1_019	2009	Total Conditional Additional Allocation	2018/2019	522609757
level1	KE_1_010	2009	Total Conditional Additional Allocation	2019/2020	527605108
level1	KE_1_012	2009	Total Conditional Additional Allocation	2019/2020	532143439
level1	KE_1_025	2009	Total Conditional Additional Allocation	2019/2020	538172418
level1	KE_1_033	2009	Total Conditional Additional Allocation	2019/2020	538812751
level1	KE_1_019	2009	Total Conditional Additional Allocation	2019/2020	541842102
level1	KE_1_022	2009	Total Conditional Additional Allocation	2015/2016	556200000
level1	KE_1_035	2009	Total Conditional Additional Allocation	2018/2019	557172175
level1	KE_1_017	2009	Total Conditional Additional Allocation	2018/2019	559260092
level1	KE_1_022	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	561591351
level1	KE_1_024	2009	Total Conditional Additional Allocation	2018/2019	562497958
level1	KE_1_046	2009	Total Conditional Additional Allocation	2019/2020	569692854
level1	KE_1_034	2009	Total Conditional Additional Allocation	2018/2019	572134165
level1	KE_1_014	2009	Total Conditional Additional Allocation	2019/2020	581992895
level1	KE_1_009	2009	Total Conditional Additional Allocation	2018/2019	586255092
level1	KE_1_045	2009	Total Conditional Additional Allocation	2018/2019	590705381
level1	KE_1_009	2009	Total Conditional Additional Allocation	2019/2020	593513860
level1	KE_1_035	2009	Total Conditional Additional Allocation	2019/2020	599580638
level1	KE_1_043	2009	Total Conditional Additional Allocation	2019/2020	599801103
level1	KE_1_003	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	600000000
level1	KE_1_029	2009	Total Conditional Additional Allocation	2018/2019	616995189
level1	KE_1_015	2009	Total Conditional Additional Allocation	2018/2019	625053090
level1	KE_1_034	2009	Total Conditional Additional Allocation	2019/2020	626033282
level1	KE_1_027	2009	Road Maintenance Fuel Levy	2018/2019	630147800
level1	KE_1_027	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	630147800
level1	KE_1_038	2009	Total Conditional Additional Allocation	2018/2019	661090578
level1	KE_1_029	2009	Total Conditional Additional Allocation	2019/2020	683841621
level1	KE_1_045	2009	Total Conditional Additional Allocation	2019/2020	684744542
level1	KE_1_037	2009	Total Conditional Additional Allocation	2019/2020	702368864
level1	KE_1_017	2009	Total Conditional Additional Allocation	2019/2020	704754514
level1	KE_1_008	2009	Total Conditional Additional Allocation	2019/2020	715958149
level1	KE_1_006	2009	Total Conditional Additional Allocation	2019/2020	734315201
level1	KE_1_026	2009	Total Conditional Additional Allocation	2018/2019	745728311
level1	KE_1_001	2009	Total Conditional Additional Allocation	2018/2019	749726174
country	KE	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	762979751
level1	KE_1_038	2009	Total Conditional Additional Allocation	2019/2020	769853103
level1	KE_1_039	2009	Total Conditional Additional Allocation	2018/2019	772708758
level1	KE_1_042	2009	Road Maintenance Fuel Levy	2018/2019	773573300
level1	KE_1_042	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	773573300
level1	KE_1_015	2009	Total Conditional Additional Allocation	2019/2020	797515756
level1	KE_1_026	2009	Total Conditional Additional Allocation	2019/2020	803143691
level1	KE_1_006	2009	Total Conditional Additional Allocation	2018/2019	820585453
level1	KE_1_023	2009	Total Conditional Additional Allocation	2019/2020	825467592
level1	KE_1_037	2009	Total Conditional Additional Allocation	2018/2019	847913637
country	KE	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	849626237
level1	KE_1_002	2009	Total Conditional Additional Allocation	2018/2019	872997000
country	KE	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	873407500
level1	KE_1_007	2009	Total Conditional Additional Allocation	2019/2020	918389383
level1	KE_1_039	2009	Total Conditional Additional Allocation	2019/2020	923352734
level1	KE_1_044	2009	Total Conditional Additional Allocation	2018/2019	982299570
level1	KE_1_002	2009	Total Conditional Additional Allocation	2019/2020	982716075
country	KE	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	985800000
country	KE	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	986583544
country	KE	2009	Rehabilitation of Village Polytechnics	2018/2019	1012500000
level1	KE_1_016	2009	Road Maintenance Fuel Levy	2018/2019	1018320500
level1	KE_1_016	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	1018320500
level1	KE_1_027	2009	Total Conditional Additional Allocation	2019/2020	1046492860
country	KE	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	1050000000
level1	KE_1_044	2009	Total Conditional Additional Allocation	2019/2020	1065515013
level1	KE_1_027	2009	Total Conditional Additional Allocation	2018/2019	1080111632
level1	KE_1_042	2009	Total Conditional Additional Allocation	2019/2020	1084577868
level1	KE_1_032	2009	Road Maintenance Fuel Levy	2018/2019	1084843300
level1	KE_1_032	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	1084843300
level1	KE_1_003	2009	Total Conditional Additional Allocation	2018/2019	1130333518
level1	KE_1_042	2009	Total Conditional Additional Allocation	2018/2019	1260705051
country	KE	2009	World Bank grant to supplement financing for county health facilities	2015/2016	1302324737
country	KE	2009	World Bank grant to supplement financing for county health facilities	2016/2017	1302324737
level1	KE_1_017	2009	Road Maintenance Fuel Levy	2018/2019	1362616001
level1	KE_1_016	2009	Total Conditional Additional Allocation	2018/2019	1371260080
level1	KE_1_016	2009	Total Conditional Additional Allocation	2019/2020	1379849081
country	KE	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	1410000000
level1	KE_1_032	2009	Total Conditional Additional Allocation	2018/2019	1474865158
level1	KE_1_003	2009	Total Conditional Additional Allocation	2019/2020	1500516666
level1	KE_1_001	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	1550000000
level1	KE_1_032	2009	Total Conditional Additional Allocation	2019/2020	1591604871
level1	KE_1_008	2009	Total Conditional Additional Allocation	2018/2019	1611438084
level1	KE_1_007	2009	Total Conditional Additional Allocation	2018/2019	1619534869
level1	KE_1_001	2009	Total Conditional Additional Allocation	2019/2020	1658859269
level1	KE_1_012	2009	Other Loans & Grants	2015/2016	1700000000
level1	KE_1_012	2009	Total Conditional Additional Allocation	2016/2017	1710295000
level1	KE_1_009	2009	Road Maintenance Fuel Levy	2018/2019	1758195001
level1	KE_1_022	2009	Road Maintenance Fuel Levy	2018/2019	1885993000
level1	KE_1_022	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	1885993000
level1	KE_1_047	2009	Other Loans & Grants	2017/2018	2137641302
country	KE	2009	Other Loans & Grants	2015/2016	2146000000
country	KE	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	2148000009
level1	KE_1_022	2009	Total Conditional Additional Allocation	2018/2019	2230951780
level1	KE_1_047	2009	Total Conditional Additional Allocation	2017/2018	2290502230
country	KE	2009	Leasing of Medical Equipment	2018/2019	2300000000
level1	KE_1_022	2009	Total Conditional Additional Allocation	2019/2020	2381409369
country	KE	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	2750000000
country	KE	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	2949138423
country	KE	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	2994247736
country	KE	2009	Compensation for User Fee Foregone	2018/2019	3039000001
country	KE	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	3500000000
country	KE	2009	Grants to Level5 Hospitals	2018/2019	3636589847
country	KE	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	3643298670
country	KE	2009	Total Conditional Additional Allocation	2016/2017	3870679737
level1	KE_1_012	2009	Other Loans & Grants	2017/2018	3943731665
level1	KE_1_012	2009	Total Conditional Additional Allocation	2017/2018	4092379277
country	KE	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 2 grant	2019/2020	4890000000
level1	KE_1_047	2009	Total Conditional Additional Allocation	2015/2016	6227800000
country	KE	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	7232719940
country	KE	2009	Other Loans & Grants	2017/2018	7837638872
country	KE	2009	Total Conditional Additional Allocation	2015/2016	10671178204
country	KE	2009	Road Maintenance Fuel Levy	2018/2019	11464702500
country	KE	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	11464702500
country	KE	2009	Total Conditional Additional Allocation	2017/2018	16407826139
country	KE	2009	Total Conditional Additional Allocation	2018/2019	36981384138
country	KE	2009	Total Conditional Additional Allocation	2019/2020	38704877210
\.


--
-- Name: breakdown_condition_fund_dp pk_breakdown_condition_fund_dp; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_dp
    ADD CONSTRAINT pk_breakdown_condition_fund_dp PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

