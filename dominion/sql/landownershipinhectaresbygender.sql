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

ALTER TABLE IF EXISTS ONLY public.landownershipinhectaresbygender DROP CONSTRAINT IF EXISTS pk_landownershipinhectaresbygender;
DROP TABLE IF EXISTS public.landownershipinhectaresbygender;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landownershipinhectaresbygender; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.landownershipinhectaresbygender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "land ownership in hectares by gender" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: landownershipinhectaresbygender; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.landownershipinhectaresbygender (geo_level, geo_code, geo_version, "land ownership in hectares by gender", total) FROM stdin;
level1	ZA_1_002	2009	Female	439032
level1	ZA_1_004	2009	Female	854107
level1	ZA_1_007	2009	Female	112110
level1	ZA_1_009	2009	Female	134896
level1	ZA_1_008	2009	Female	218791
level1	ZA_1_006	2009	Female	487229
level1	ZA_1_003	2009	Female	1882645
level1	ZA_1_001	2009	Female	467145
country	ZA	2009	Female	4871013
level1	ZA_1_002	2009	Male	3704812
level1	ZA_1_004	2009	Male	3518907
level1	ZA_1_007	2009	Male	235362
level1	ZA_1_009	2009	Male	934891
level1	ZA_1_008	2009	Male	955454
level1	ZA_1_006	2009	Male	2047590
level1	ZA_1_003	2009	Male	11000772
level1	ZA_1_001	2009	Male	2782161
country	ZA	2009	Male	26202689
level1	ZA_1_002	2009	Male-Female	229159
level1	ZA_1_004	2009	Male-Female	414059
level1	ZA_1_007	2009	Male-Female	98483
level1	ZA_1_009	2009	Male-Female	130532
level1	ZA_1_008	2009	Male-Female	190483
level1	ZA_1_006	2009	Male-Female	523392
level1	ZA_1_003	2009	Male-Female	1693539
level1	ZA_1_001	2009	Male-Female	374965
country	ZA	2009	Male-Female	3970315
level1	ZA_1_002	2009	Co-owner	60218
level1	ZA_1_004	2009	Co-owner	44566
level1	ZA_1_007	2009	Co-owner	6060
level1	ZA_1_009	2009	Co-owner	86998
level1	ZA_1_008	2009	Co-owner	27293
level1	ZA_1_006	2009	Co-owner	120084
level1	ZA_1_003	2009	Co-owner	166088
level1	ZA_1_001	2009	Co-owner	97772
country	ZA	2009	Co-owner	655242
level1	ZA_1_002	2009	Other	178308
level1	ZA_1_004	2009	Other	177626
level1	ZA_1_007	2009	Other	10654
level1	ZA_1_009	2009	Other	33076
level1	ZA_1_008	2009	Other	49131
level1	ZA_1_006	2009	Other	132914
level1	ZA_1_003	2009	Other	267958
level1	ZA_1_001	2009	Other	141951
country	ZA	2009	Other	1379029
level1	ZA_1_005	2009	Female	275057
level1	ZA_1_005	2009	Male	1022742
level1	ZA_1_005	2009	Male-Female	315703
level1	ZA_1_005	2009	Co-owner	46164
level1	ZA_1_005	2009	Other	90310
\.


--
-- Name: landownershipinhectaresbygender pk_landownershipinhectaresbygender; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.landownershipinhectaresbygender
    ADD CONSTRAINT pk_landownershipinhectaresbygender PRIMARY KEY (geo_level, geo_code, geo_version, "land ownership in hectares by gender");


--
-- PostgreSQL database dump complete
--

