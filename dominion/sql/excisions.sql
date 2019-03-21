--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

DROP TABLE IF EXISTS public.excisions;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: excisions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.excisions (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    excisions character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: excisions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.excisions (geo_level, geo_code, excisions, total, geo_version) FROM stdin;
level1	KE_1_016	Legal	1.27000000000000002	2016
level1	KE_1_016	Illegal	485.629999999999995	2016
level1	KE_1_034	Legal	1.8600000000000001	2016
level1	KE_1_034	Illegal	210	2016
level1	KE_1_040	Legal	2	2016
level1	KE_1_040	Illegal	162.560000000000002	2016
level1	KE_1_037	Legal	4.59999999999999964	2016
level1	KE_1_037	Illegal	189.27000000000001	2016
level1	KE_1_036	Legal	5.20999999999999996	2016
level1	KE_1_036	Illegal	225.159999999999997	2016
level1	KE_1_017	Legal	9.49000000000000021	2016
level1	KE_1_017	Illegal	0	2016
level1	KE_1_012	Legal	22.6600000000000001	2016
level1	KE_1_012	Illegal	0	2016
level1	KE_1_022	Legal	36	2016
level1	KE_1_022	Illegal	0	2016
level1	KE_1_028	Legal	161.5	2016
level1	KE_1_028	Illegal	0	2016
level1	KE_1_026	Legal	175.780000000000001	2016
level1	KE_1_026	Illegal	1171.01999999999998	2016
level1	KE_1_020	Legal	263.579999999999984	2016
level1	KE_1_020	Illegal	1.39999999999999991	2016
level1	KE_1_030	Legal	270	2016
level1	KE_1_030	Illegal	849.159999999999968	2016
level1	KE_1_012	Legal	413.990000000000009	2016
level1	KE_1_012	Illegal	0	2016
level1	KE_1_028	Legal	468.009999999999991	2016
level1	KE_1_028	Illegal	45947.3499999999985	2016
level1	KE_1_047	Legal	528.240000000000009	2016
level1	KE_1_047	Illegal	17863.3199999999997	2016
level1	KE_1_018	Legal	963.42999999999995	2016
level1	KE_1_018	Illegal	965.610000000000014	2016
level1	KE_1_002	Legal	1473.08999999999992	2016
level1	KE_1_002	Illegal	0	2016
level1	KE_1_022	Legal	2329.57000000000016	2016
level1	KE_1_022	Illegal	3926.5300000000002	2016
level1	KE_1_019	Legal	2585.63999999999987	2016
level1	KE_1_019	Illegal	143.289999999999992	2016
level1	KE_1_021	Legal	2751.92000000000007	2016
level1	KE_1_021	Illegal	0	2016
level1	KE_1_039	Legal	3686	2016
level1	KE_1_039	Illegal	0	2016
level1	KE_1_029	Legal	4271.10000000000036	2016
level1	KE_1_029	Illegal	1109.33999999999992	2016
level1	KE_1_031	Legal	4437.59000000000015	2016
level1	KE_1_031	Illegal	4785.25	2016
level1	KE_1_037	Legal	4474.19999999999982	2016
level1	KE_1_037	Illegal	189.099999999999994	2016
level1	KE_1_028	Legal	4571.55000000000018	2016
level1	KE_1_028	Illegal	124.390000000000001	2016
level1	KE_1_035	Legal	9239.54000000000087	2016
level1	KE_1_035	Illegal	54.1799999999999997	2016
level1	KE_1_030	Legal	10315.5100000000002	2016
level1	KE_1_030	Illegal	71.4099999999999966	2016
level1	KE_1_024	Legal	13785.6000000000004	2016
level1	KE_1_024	Illegal	0	2016
level1	KE_1_012	Legal	15785.1900000000005	2016
level1	KE_1_012	Illegal	0	2016
level1	KE_1_027	Legal	17420.9700000000012	2016
level1	KE_1_027	Illegal	989.309999999999945	2016
level1	KE_1_032	Legal	20608.4700000000012	2016
level1	KE_1_032	Illegal	992.759999999999991	2016
\.


--
-- PostgreSQL database dump complete
--

