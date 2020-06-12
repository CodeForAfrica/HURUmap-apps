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

ALTER TABLE IF EXISTS ONLY public.price_trends_traded_per_class_2018 DROP CONSTRAINT IF EXISTS pk_price_trends_traded_per_class_2018;
DROP TABLE IF EXISTS public.price_trends_traded_per_class_2018;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: price_trends_traded_per_class_2018; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.price_trends_traded_per_class_2018 (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) DEFAULT ''::character varying NOT NULL,
    class_distribution character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: price_trends_traded_per_class_2018; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.price_trends_traded_per_class_2018 (geo_level, geo_code, geo_version, class_distribution, total) FROM stdin;
country	ZA	2009	Under 1.5K	-4
country	ZA	2009	1,501-3K	-8
country	ZA	2009	3,001-5K	-43
country	ZA	2009	5,001-10K	-4
country	ZA	2009	10,001-20K	58
country	ZA	2009	20,001-30K	-31
country	ZA	2009	30,001-40K	69
country	ZA	2009	40,001-50K	-225
country	ZA	2009	50,001-100K	191
country	ZA	2009	100,001-150K	451
country	ZA	2009	150,001-200K	-393
country	ZA	2009	200,001-300K	-2014
country	ZA	2009	300,001-500K	2465
country	ZA	2009	500,001-800K	763
country	ZA	2009	800,001-1M	-5563
country	ZA	2009	Above 1M	254986
level1	ZA_1_002	2009	Under 1.5K	-10
level1	ZA_1_002	2009	1,501-3K	-28
level1	ZA_1_002	2009	3,001-5K	-52
level1	ZA_1_002	2009	5,001-10K	-32
level1	ZA_1_002	2009	10,001-20K	-91
level1	ZA_1_002	2009	20,001-30K	-214
level1	ZA_1_002	2009	30,001-40K	605
level1	ZA_1_002	2009	40,001-50K	-118
level1	ZA_1_002	2009	50,001-100K	301
level1	ZA_1_002	2009	100,001-150K	-844
level1	ZA_1_002	2009	150,001-200K	-105
level1	ZA_1_002	2009	200,001-300K	-1166
level1	ZA_1_002	2009	300,001-500K	980
level1	ZA_1_002	2009	500,001-800K	-14470
level1	ZA_1_004	2009	Under 1.5K	76
level1	ZA_1_004	2009	3,001-5K	-54
level1	ZA_1_004	2009	5,001-10K	25
level1	ZA_1_004	2009	10,001-20K	28
level1	ZA_1_004	2009	20,001-30K	69
level1	ZA_1_004	2009	30,001-40K	-37
level1	ZA_1_004	2009	40,001-50K	-251
level1	ZA_1_004	2009	50,001-100K	488
level1	ZA_1_004	2009	100,001-150K	-146
level1	ZA_1_004	2009	150,001-200K	489
level1	ZA_1_004	2009	300,001-500K	726
level1	ZA_1_004	2009	500,001-800K	5952
level1	ZA_1_007	2009	Under 1.5K	105
level1	ZA_1_007	2009	1,501-3K	-102
level1	ZA_1_007	2009	3,001-5K	69
level1	ZA_1_007	2009	5,001-10K	-133
level1	ZA_1_007	2009	10,001-20K	178
level1	ZA_1_007	2009	20,001-30K	-111
level1	ZA_1_007	2009	30,001-40K	76
level1	ZA_1_007	2009	40,001-50K	118
level1	ZA_1_007	2009	50,001-100K	-553
level1	ZA_1_007	2009	100,001-150K	-83
level1	ZA_1_007	2009	150,001-200K	486
level1	ZA_1_007	2009	200,001-300K	458
level1	ZA_1_007	2009	300,001-500K	-167
level1	ZA_1_007	2009	500,001-800K	8705
level1	ZA_1_007	2009	800,001-1M	-12069
level1	ZA_1_007	2009	Above 1M	-152094
level1	ZA_1_009	2009	Under 1.5K	-33
level1	ZA_1_009	2009	1,501-3K	-156
level1	ZA_1_009	2009	3,001-5K	8
level1	ZA_1_009	2009	5,001-10K	111
level1	ZA_1_009	2009	10,001-20K	-169
level1	ZA_1_009	2009	20,001-30K	-287
level1	ZA_1_009	2009	30,001-40K	355
level1	ZA_1_009	2009	40,001-50K	227
level1	ZA_1_009	2009	50,001-100K	-515
level1	ZA_1_009	2009	100,001-150K	993
level1	ZA_1_009	2009	150,001-200K	-3422
level1	ZA_1_009	2009	200,001-300K	1630
level1	ZA_1_009	2009	300,001-500K	13821
level1	ZA_1_009	2009	500,001-800K	-2688
level1	ZA_1_005	2009	Under 1.5K	89
level1	ZA_1_005	2009	1,501-3K	-64
level1	ZA_1_005	2009	3,001-5K	-48
level1	ZA_1_005	2009	5,001-10K	-20
level1	ZA_1_005	2009	10,001-20K	87
level1	ZA_1_005	2009	20,001-30K	-38
level1	ZA_1_005	2009	30,001-40K	450
level1	ZA_1_005	2009	40,001-50K	-315
level1	ZA_1_005	2009	50,001-100K	-342
level1	ZA_1_005	2009	100,001-150K	-327
level1	ZA_1_005	2009	150,001-200K	1046
level1	ZA_1_005	2009	200,001-300K	1511
level1	ZA_1_005	2009	300,001-500K	-4720
level1	ZA_1_005	2009	500,001-800K	23356
level1	ZA_1_005	2009	Above 1M	-283721
level1	ZA_1_008	2009	Under 1.5K	-29
level1	ZA_1_008	2009	1,501-3K	8
level1	ZA_1_008	2009	3,001-5K	-50
level1	ZA_1_008	2009	5,001-10K	-66
level1	ZA_1_008	2009	10,001-20K	156
level1	ZA_1_008	2009	20,001-30K	-87
level1	ZA_1_008	2009	30,001-40K	-28
level1	ZA_1_008	2009	40,001-50K	112
level1	ZA_1_008	2009	50,001-100K	-291
level1	ZA_1_008	2009	100,001-150K	-156
level1	ZA_1_008	2009	150,001-200K	2025
level1	ZA_1_008	2009	200,001-300K	-2795
level1	ZA_1_008	2009	300,001-500K	-7870
level1	ZA_1_008	2009	500,001-800K	8229
level1	ZA_1_003	2009	Under 1.5K	2
level1	ZA_1_003	2009	1,501-3K	3
level1	ZA_1_003	2009	3,001-5K	3
level1	ZA_1_003	2009	5,001-10K	160
level1	ZA_1_003	2009	10,001-20K	-73
level1	ZA_1_003	2009	50,001-100K	-644
level1	ZA_1_003	2009	100,001-150K	754
level1	ZA_1_003	2009	150,001-200K	-469
level1	ZA_1_003	2009	200,001-300K	1221
level1	ZA_1_003	2009	300,001-500K	12116
level1	ZA_1_003	2009	Above 1M	72809
level1	ZA_1_006	2009	Under 1.5K	2
level1	ZA_1_006	2009	1,501-3K	4
level1	ZA_1_006	2009	3,001-5K	-9
level1	ZA_1_006	2009	5,001-10K	1
level1	ZA_1_006	2009	10,001-20K	46
level1	ZA_1_006	2009	20,001-30K	-30
level1	ZA_1_006	2009	30,001-40K	-133
level1	ZA_1_006	2009	40,001-50K	-250
level1	ZA_1_006	2009	50,001-100K	780
level1	ZA_1_006	2009	100,001-150K	-404
level1	ZA_1_006	2009	150,001-200K	-348
level1	ZA_1_006	2009	200,001-300K	-774
level1	ZA_1_006	2009	300,001-500K	1771
level1	ZA_1_006	2009	500,001-800K	-6678
level1	ZA_1_006	2009	800,001-1M	609
level1	ZA_1_001	2009	Under 1.5K	6
level1	ZA_1_001	2009	1,501-3K	-67
level1	ZA_1_001	2009	3,001-5K	-4
level1	ZA_1_001	2009	5,001-10K	-9
level1	ZA_1_001	2009	10,001-20K	168
level1	ZA_1_001	2009	20,001-30K	104
level1	ZA_1_001	2009	30,001-40K	-175
level1	ZA_1_001	2009	40,001-50K	-176
level1	ZA_1_001	2009	50,001-100K	1358
level1	ZA_1_001	2009	100,001-150K	-491
level1	ZA_1_001	2009	150,001-200K	597
level1	ZA_1_001	2009	200,001-300K	-3934
level1	ZA_1_001	2009	300,001-500K	-4100
level1	ZA_1_001	2009	500,001-800K	-385
level1	ZA_1_001	2009	800,001-1M	-8252
level1	ZA_1_001	2009	Above 1M	126243
\.



ALTER TABLE ONLY public.price_trends_traded_per_class_2018
    ADD CONSTRAINT pk_price_trends_traded_per_class_2018 PRIMARY KEY (geo_level, geo_code, geo_version, class_distribution);

--
-- PostgreSQL database dump complete
--
