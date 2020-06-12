--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.num_transactions_traded_per_class_2018 DROP CONSTRAINT IF EXISTS pk_num_transactions_traded_per_class_2018;
DROP TABLE IF EXISTS public.num_transactions_traded_per_class_2018;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: num_transactions_traded_per_class_2018; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.num_transactions_traded_per_class_2018 (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) DEFAULT ''::character varying NOT NULL,
    class_distribution character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: num_transactions_traded_per_class_2018; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.num_transactions_traded_per_class_2018 (geo_level, geo_code, geo_version, class_distribution, total) FROM stdin;
country	ZA	2009	Under 1.5K	171
country	ZA	2009	1,501-3K	220
country	ZA	2009	3,001-5K	281
country	ZA	2009	5,001-10K	684
country	ZA	2009	10,001-20K	824
country	ZA	2009	20,001-30K	404
country	ZA	2009	30,001-40K	226
country	ZA	2009	40,001-50K	205
country	ZA	2009	50,001-100K	500
country	ZA	2009	100,001-150K	225
country	ZA	2009	150,001-200K	118
country	ZA	2009	200,001-300K	119
country	ZA	2009	300,001-500K	79
country	ZA	2009	500,001-800K	42
country	ZA	2009	800,001-1M	10
country	ZA	2009	Above 1M	34
level1	ZA_1_002	2009	Under 1.5K	15
level1	ZA_1_002	2009	1,501-3K	28
level1	ZA_1_002	2009	3,001-5K	49
level1	ZA_1_002	2009	5,001-10K	86
level1	ZA_1_002	2009	10,001-20K	53
level1	ZA_1_002	2009	20,001-30K	30
level1	ZA_1_002	2009	30,001-40K	10
level1	ZA_1_002	2009	40,001-50K	16
level1	ZA_1_002	2009	50,001-100K	32
level1	ZA_1_002	2009	100,001-150K	13
level1	ZA_1_002	2009	150,001-200K	10
level1	ZA_1_002	2009	200,001-300K	5
level1	ZA_1_002	2009	300,001-500K	6
level1	ZA_1_002	2009	500,001-800K	5
level1	ZA_1_004	2009	Under 1.5K	12
level1	ZA_1_004	2009	1,501-3K	27
level1	ZA_1_004	2009	3,001-5K	70
level1	ZA_1_004	2009	5,001-10K	175
level1	ZA_1_004	2009	10,001-20K	202
level1	ZA_1_004	2009	20,001-30K	65
level1	ZA_1_004	2009	30,001-40K	24
level1	ZA_1_004	2009	40,001-50K	19
level1	ZA_1_004	2009	50,001-100K	21
level1	ZA_1_004	2009	100,001-150K	4
level1	ZA_1_004	2009	150,001-200K	4
level1	ZA_1_004	2009	200,001-300K	1
level1	ZA_1_004	2009	300,001-500K	3
level1	ZA_1_004	2009	500,001-800K	2
level1	ZA_1_004	2009	Above 1M	1
level1	ZA_1_007	2009	Under 1.5K	5
level1	ZA_1_007	2009	1,501-3K	6
level1	ZA_1_007	2009	3,001-5K	2
level1	ZA_1_007	2009	5,001-10K	24
level1	ZA_1_007	2009	10,001-20K	86
level1	ZA_1_007	2009	20,001-30K	61
level1	ZA_1_007	2009	30,001-40K	40
level1	ZA_1_007	2009	40,001-50K	40
level1	ZA_1_007	2009	50,001-100K	94
level1	ZA_1_007	2009	100,001-150K	33
level1	ZA_1_007	2009	150,001-200K	19
level1	ZA_1_007	2009	200,001-300K	21
level1	ZA_1_007	2009	300,001-500K	11
level1	ZA_1_007	2009	500,001-800K	9
level1	ZA_1_007	2009	800,001-1M	3
level1	ZA_1_007	2009	Above 1M	18
level1	ZA_1_009	2009	Under 1.5K	6
level1	ZA_1_009	2009	1,501-3K	3
level1	ZA_1_009	2009	3,001-5K	18
level1	ZA_1_009	2009	5,001-10K	51
level1	ZA_1_009	2009	10,001-20K	61
level1	ZA_1_009	2009	20,001-30K	33
level1	ZA_1_009	2009	30,001-40K	20
level1	ZA_1_009	2009	40,001-50K	21
level1	ZA_1_009	2009	50,001-100K	63
level1	ZA_1_009	2009	100,001-150K	30
level1	ZA_1_009	2009	150,001-200K	11
level1	ZA_1_009	2009	200,001-300K	20
level1	ZA_1_009	2009	300,001-500K	11
level1	ZA_1_009	2009	500,001-800K	4
level1	ZA_1_009	2009	800,001-1M	1
level1	ZA_1_009	2009	Above 1M	3
level1	ZA_1_005	2009	Under 1.5K	9
level1	ZA_1_005	2009	1,501-3K	6
level1	ZA_1_005	2009	3,001-5K	26
level1	ZA_1_005	2009	5,001-10K	91
level1	ZA_1_005	2009	10,001-20K	96
level1	ZA_1_005	2009	20,001-30K	62
level1	ZA_1_005	2009	30,001-40K	30
level1	ZA_1_005	2009	40,001-50K	25
level1	ZA_1_005	2009	50,001-100K	88
level1	ZA_1_005	2009	100,001-150K	23
level1	ZA_1_005	2009	150,001-200K	13
level1	ZA_1_005	2009	200,001-300K	12
level1	ZA_1_005	2009	300,001-500K	5
level1	ZA_1_005	2009	500,001-800K	3
level1	ZA_1_005	2009	800,001-1M	1
level1	ZA_1_005	2009	Above 1M	2
level1	ZA_1_008	2009	Under 1.5K	3
level1	ZA_1_008	2009	1,501-3K	9
level1	ZA_1_008	2009	3,001-5K	11
level1	ZA_1_008	2009	5,001-10K	50
level1	ZA_1_008	2009	10,001-20K	99
level1	ZA_1_008	2009	20,001-30K	52
level1	ZA_1_008	2009	30,001-40K	36
level1	ZA_1_008	2009	40,001-50K	26
level1	ZA_1_008	2009	50,001-100K	51
level1	ZA_1_008	2009	100,001-150K	41
level1	ZA_1_008	2009	150,001-200K	20
level1	ZA_1_008	2009	200,001-300K	13
level1	ZA_1_008	2009	300,001-500K	10
level1	ZA_1_008	2009	500,001-800K	3
level1	ZA_1_008	2009	Above 1M	1
level1	ZA_1_003	2009	Under 1.5K	72
level1	ZA_1_003	2009	1,501-3K	73
level1	ZA_1_003	2009	3,001-5K	33
level1	ZA_1_003	2009	5,001-10K	29
level1	ZA_1_003	2009	10,001-20K	10
level1	ZA_1_003	2009	20,001-30K	1
level1	ZA_1_003	2009	30,001-40K	1
level1	ZA_1_003	2009	40,001-50K	1
level1	ZA_1_003	2009	50,001-100K	12
level1	ZA_1_003	2009	100,001-150K	8
level1	ZA_1_003	2009	150,001-200K	10
level1	ZA_1_003	2009	200,001-300K	17
level1	ZA_1_003	2009	300,001-500K	8
level1	ZA_1_003	2009	500,001-800K	1
level1	ZA_1_003	2009	Above 1M	2
level1	ZA_1_006	2009	Under 1.5K	8
level1	ZA_1_006	2009	1,501-3K	18
level1	ZA_1_006	2009	3,001-5K	44
level1	ZA_1_006	2009	5,001-10K	130
level1	ZA_1_006	2009	10,001-20K	142
level1	ZA_1_006	2009	20,001-30K	55
level1	ZA_1_006	2009	30,001-40K	40
level1	ZA_1_006	2009	40,001-50K	24
level1	ZA_1_006	2009	50,001-100K	64
level1	ZA_1_006	2009	100,001-150K	32
level1	ZA_1_006	2009	150,001-200K	9
level1	ZA_1_006	2009	200,001-300K	6
level1	ZA_1_006	2009	300,001-500K	5
level1	ZA_1_006	2009	500,001-800K	5
level1	ZA_1_006	2009	800,001-1M	3
level1	ZA_1_006	2009	Above 1M	1
level1	ZA_1_001	2009	Under 1.5K	41
level1	ZA_1_001	2009	1,501-3K	50
level1	ZA_1_001	2009	3,001-5K	28
level1	ZA_1_001	2009	5,001-10K	48
level1	ZA_1_001	2009	10,001-20K	75
level1	ZA_1_001	2009	20,001-30K	45
level1	ZA_1_001	2009	30,001-40K	25
level1	ZA_1_001	2009	40,001-50K	33
level1	ZA_1_001	2009	50,001-100K	75
level1	ZA_1_001	2009	100,001-150K	41
level1	ZA_1_001	2009	150,001-200K	22
level1	ZA_1_001	2009	200,001-300K	24
level1	ZA_1_001	2009	300,001-500K	20
level1	ZA_1_001	2009	500,001-800K	10
level1	ZA_1_001	2009	800,001-1M	2
level1	ZA_1_001	2009	Above 1M	6
\.



ALTER TABLE ONLY public.num_transactions_traded_per_class_2018
    ADD CONSTRAINT pk_num_transactions_traded_per_class_2018 PRIMARY KEY (geo_level, geo_code, geo_version, class_distribution);

--
-- PostgreSQL database dump complete
--
