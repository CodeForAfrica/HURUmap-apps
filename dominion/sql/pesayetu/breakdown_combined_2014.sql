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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_combined_2014 DROP CONSTRAINT IF EXISTS pk_breakdown_combined_2014;
DROP TABLE IF EXISTS pesayetu.breakdown_combined_2014;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_combined_2014; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_combined_2014 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_combined_2014; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_combined_2014 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
country	KE	2009	Grant to supplement financing for county health facilities	2014/2015	733650000
level1	KE_1_030	2009	Grant to supplement financing for county health facilities	2014/2015	23790000
level1	KE_1_036	2009	Grant to supplement financing for county health facilities	2014/2015	12570000
level1	KE_1_039	2009	Grant to supplement financing for county health facilities	2014/2015	12370000
level1	KE_1_040	2009	Grant to supplement financing for county health facilities	2014/2015	10310000
level1	KE_1_028	2009	Grant to supplement financing for county health facilities	2014/2015	18420000
level1	KE_1_014	2009	Grant to supplement financing for county health facilities	2014/2015	11370000
level1	KE_1_007	2009	Grant to supplement financing for county health facilities	2014/2015	15560000
level1	KE_1_043	2009	Grant to supplement financing for county health facilities	2014/2015	22390000
level1	KE_1_011	2009	Grant to supplement financing for county health facilities	2014/2015	5590000
level1	KE_1_034	2009	Grant to supplement financing for county health facilities	2014/2015	15510000
level1	KE_1_037	2009	Grant to supplement financing for county health facilities	2014/2015	21120000
level1	KE_1_035	2009	Grant to supplement financing for county health facilities	2014/2015	20220000
level1	KE_1_022	2009	Grant to supplement financing for county health facilities	2014/2015	16820000
level1	KE_1_003	2009	Grant to supplement financing for county health facilities	2014/2015	13150000
level1	KE_1_020	2009	Grant to supplement financing for county health facilities	2014/2015	10390000
level1	KE_1_045	2009	Grant to supplement financing for county health facilities	2014/2015	20570000
level1	KE_1_042	2009	Grant to supplement financing for county health facilities	2014/2015	14200000
level1	KE_1_015	2009	Grant to supplement financing for county health facilities	2014/2015	34610000
level1	KE_1_002	2009	Grant to supplement financing for county health facilities	2014/2015	11240000
level1	KE_1_031	2009	Grant to supplement financing for county health facilities	2014/2015	9350000
level1	KE_1_005	2009	Grant to supplement financing for county health facilities	2014/2015	5260000
level1	KE_1_016	2009	Grant to supplement financing for county health facilities	2014/2015	24320000
level1	KE_1_017	2009	Grant to supplement financing for county health facilities	2014/2015	21750000
level1	KE_1_009	2009	Grant to supplement financing for county health facilities	2014/2015	12440000
level1	KE_1_010	2009	Grant to supplement financing for county health facilities	2014/2015	13170000
level1	KE_1_012	2009	Grant to supplement financing for county health facilities	2014/2015	18410000
level1	KE_1_044	2009	Grant to supplement financing for county health facilities	2014/2015	18060000
level1	KE_1_001	2009	Grant to supplement financing for county health facilities	2014/2015	3920000
level1	KE_1_021	2009	Grant to supplement financing for county health facilities	2014/2015	22430000
level1	KE_1_047	2009	Grant to supplement financing for county health facilities	2014/2015	24920000
level1	KE_1_032	2009	Grant to supplement financing for county health facilities	2014/2015	22880000
level1	KE_1_029	2009	Grant to supplement financing for county health facilities	2014/2015	15930000
level1	KE_1_033	2009	Grant to supplement financing for county health facilities	2014/2015	15510000
level1	KE_1_046	2009	Grant to supplement financing for county health facilities	2014/2015	21540000
level1	KE_1_018	2009	Grant to supplement financing for county health facilities	2014/2015	16480000
level1	KE_1_019	2009	Grant to supplement financing for county health facilities	2014/2015	20550000
level1	KE_1_025	2009	Grant to supplement financing for county health facilities	2014/2015	8610000
level1	KE_1_041	2009	Grant to supplement financing for county health facilities	2014/2015	25150000
level1	KE_1_006	2009	Grant to supplement financing for county health facilities	2014/2015	12430000
level1	KE_1_004	2009	Grant to supplement financing for county health facilities	2014/2015	7110000
level1	KE_1_013	2009	Grant to supplement financing for county health facilities	2014/2015	9950000
level1	KE_1_026	2009	Grant to supplement financing for county health facilities	2014/2015	8950000
level1	KE_1_023	2009	Grant to supplement financing for county health facilities	2014/2015	9890000
level1	KE_1_027	2009	Grant to supplement financing for county health facilities	2014/2015	14940000
level1	KE_1_038	2009	Grant to supplement financing for county health facilities	2014/2015	11790000
level1	KE_1_008	2009	Grant to supplement financing for county health facilities	2014/2015	17710000
level1	KE_1_024	2009	Grant to supplement financing for county health facilities	2014/2015	10000000
country	KE	2009	Loans and Grants to supplement financing for county functions	2014/2015	13165023499
level1	KE_1_030	2009	Loans and Grants to supplement financing for county functions	2014/2015	159086218
level1	KE_1_036	2009	Loans and Grants to supplement financing for county functions	2014/2015	138199518
level1	KE_1_039	2009	Loans and Grants to supplement financing for county functions	2014/2015	699047035
level1	KE_1_040	2009	Loans and Grants to supplement financing for county functions	2014/2015	650824231
level1	KE_1_028	2009	Loans and Grants to supplement financing for county functions	2014/2015	120942418
level1	KE_1_014	2009	Loans and Grants to supplement financing for county functions	2014/2015	415124990
level1	KE_1_007	2009	Loans and Grants to supplement financing for county functions	2014/2015	76242418
level1	KE_1_043	2009	Loans and Grants to supplement financing for county functions	2014/2015	193072418
level1	KE_1_011	2009	Loans and Grants to supplement financing for county functions	2014/2015	86212418
level1	KE_1_034	2009	Loans and Grants to supplement financing for county functions	2014/2015	198644418
level1	KE_1_037	2009	Loans and Grants to supplement financing for county functions	2014/2015	934576758
level1	KE_1_035	2009	Loans and Grants to supplement financing for county functions	2014/2015	100607418
level1	KE_1_022	2009	Loans and Grants to supplement financing for county functions	2014/2015	131384518
level1	KE_1_003	2009	Loans and Grants to supplement financing for county functions	2014/2015	129452418
level1	KE_1_020	2009	Loans and Grants to supplement financing for county functions	2014/2015	267186292
level1	KE_1_045	2009	Loans and Grants to supplement financing for county functions	2014/2015	135329518
level1	KE_1_042	2009	Loans and Grants to supplement financing for county functions	2014/2015	196329518
level1	KE_1_015	2009	Loans and Grants to supplement financing for county functions	2014/2015	265106518
level1	KE_1_002	2009	Loans and Grants to supplement financing for county functions	2014/2015	157242418
level1	KE_1_031	2009	Loans and Grants to supplement financing for county functions	2014/2015	145874518
level1	KE_1_005	2009	Loans and Grants to supplement financing for county functions	2014/2015	86542418
level1	KE_1_016	2009	Loans and Grants to supplement financing for county functions	2014/2015	278667289
level1	KE_1_017	2009	Loans and Grants to supplement financing for county functions	2014/2015	287383344
level1	KE_1_009	2009	Loans and Grants to supplement financing for county functions	2014/2015	79362418
level1	KE_1_010	2009	Loans and Grants to supplement financing for county functions	2014/2015	78632418
level1	KE_1_012	2009	Loans and Grants to supplement financing for county functions	2014/2015	1565594384
level1	KE_1_044	2009	Loans and Grants to supplement financing for county functions	2014/2015	198426618
level1	KE_1_001	2009	Loans and Grants to supplement financing for county functions	2014/2015	127809518
level1	KE_1_021	2009	Loans and Grants to supplement financing for county functions	2014/2015	311582785
level1	KE_1_047	2009	Loans and Grants to supplement financing for county functions	2014/2015	1580419854
level1	KE_1_032	2009	Loans and Grants to supplement financing for county functions	2014/2015	115334518
level1	KE_1_029	2009	Loans and Grants to supplement financing for county functions	2014/2015	104869518
level1	KE_1_033	2009	Loans and Grants to supplement financing for county functions	2014/2015	189906618
level1	KE_1_046	2009	Loans and Grants to supplement financing for county functions	2014/2015	132362418
level1	KE_1_018	2009	Loans and Grants to supplement financing for county functions	2014/2015	129294518
level1	KE_1_019	2009	Loans and Grants to supplement financing for county functions	2014/2015	296317785
level1	KE_1_025	2009	Loans and Grants to supplement financing for county functions	2014/2015	83192418
level1	KE_1_041	2009	Loans and Grants to supplement financing for county functions	2014/2015	628456711
level1	KE_1_006	2009	Loans and Grants to supplement financing for county functions	2014/2015	79372418
level1	KE_1_004	2009	Loans and Grants to supplement financing for county functions	2014/2015	116687418
level1	KE_1_013	2009	Loans and Grants to supplement financing for county functions	2014/2015	688873239
level1	KE_1_026	2009	Loans and Grants to supplement financing for county functions	2014/2015	82852418
level1	KE_1_023	2009	Loans and Grants to supplement financing for county functions	2014/2015	81912418
level1	KE_1_027	2009	Loans and Grants to supplement financing for county functions	2014/2015	81492418
level1	KE_1_038	2009	Loans and Grants to supplement financing for county functions	2014/2015	398666808
level1	KE_1_008	2009	Loans and Grants to supplement financing for county functions	2014/2015	74092418
level1	KE_1_024	2009	Loans and Grants to supplement financing for county functions	2014/2015	86432418
\.


--
-- Name: breakdown_combined_2014 pk_breakdown_combined_2014; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_combined_2014
    ADD CONSTRAINT pk_breakdown_combined_2014 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

