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

ALTER TABLE IF EXISTS ONLY public.landuser DROP CONSTRAINT IF EXISTS pk_landuser;
DROP TABLE IF EXISTS public.landuser;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landuser; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.landuser (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    land_user character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: landuser; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.landuser (geo_level, geo_code, geo_version, land_user, total) FROM stdin;
level1	ZA_1_009	2009	Government department	46850
level1	ZA_1_009	2009	Municipality	61400
level1	ZA_1_009	2009	Organization	6898
level1	ZA_1_009	2009	Private person	21086
level1	ZA_1_009	2009	Public entity	2335
level1	ZA_1_009	2009	Traditional authority	7033
level1	ZA_1_009	2009	Unknown	90162
level1	ZA_1_001	2009	Government department	178079
level1	ZA_1_001	2009	Municipality	54217
level1	ZA_1_001	2009	Organization	39129
level1	ZA_1_001	2009	Private person	19906
level1	ZA_1_001	2009	Public entity	14321
level1	ZA_1_001	2009	Traditional authority	544213
level1	ZA_1_001	2009	Unknown	74361
level1	ZA_1_005	2009	Government department	2923146
level1	ZA_1_005	2009	Municipality	507827
level1	ZA_1_005	2009	Organization	195505
level1	ZA_1_005	2009	Private person	309158
level1	ZA_1_005	2009	Public entity	32244
level1	ZA_1_005	2009	Traditional authority	3483784
level1	ZA_1_005	2009	Unknown	620652
level1	ZA_1_007	2009	Government department	358256
level1	ZA_1_007	2009	Municipality	675578
level1	ZA_1_007	2009	Organization	55031
level1	ZA_1_007	2009	Private person	242701
level1	ZA_1_007	2009	Public entity	44162
level1	ZA_1_007	2009	Traditional authority	927200
level1	ZA_1_007	2009	Unknown	1036711
level1	ZA_1_006	2009	Government department	752638
level1	ZA_1_006	2009	Municipality	1337719
level1	ZA_1_006	2009	Organization	96373
level1	ZA_1_006	2009	Private person	122787
level1	ZA_1_006	2009	Public entity	57888
level1	ZA_1_006	2009	Traditional authority	16511
level1	ZA_1_006	2009	Unknown	394313
level1	ZA_1_008	2009	Government department	331936
level1	ZA_1_008	2009	Municipality	790445
level1	ZA_1_008	2009	Organization	766
level1	ZA_1_008	2009	Private person	531
level1	ZA_1_008	2009	Public entity	1257
level1	ZA_1_008	2009	Traditional authority	148
level1	ZA_1_008	2009	Unknown	46923
level1	ZA_1_004	2009	Government department	390812
level1	ZA_1_004	2009	Municipality	48249
level1	ZA_1_004	2009	Organization	52897
level1	ZA_1_004	2009	Private person	91471
level1	ZA_1_004	2009	Public entity	62802
level1	ZA_1_004	2009	Traditional authority	108655
level1	ZA_1_004	2009	Unknown	298219
level1	ZA_1_002	2009	Government department	554216
level1	ZA_1_002	2009	Municipality	323661
level1	ZA_1_002	2009	Organization	27483
level1	ZA_1_002	2009	Private person	39939
level1	ZA_1_002	2009	Public entity	34987
level1	ZA_1_002	2009	Traditional authority	63413
level1	ZA_1_002	2009	Unknown	270639
level1	ZA_1_003	2009	Government department	232044
level1	ZA_1_003	2009	Municipality	103328
level1	ZA_1_003	2009	Organization	57402
level1	ZA_1_003	2009	Private person	78451
level1	ZA_1_003	2009	Public entity	205412
level1	ZA_1_003	2009	Traditional authority	72480
level1	ZA_1_003	2009	Unknown	800231
country	ZA	2009	Government department	2844831
country	ZA	2009	Municipality	3394597
country	ZA	2009	Organization	335979
country	ZA	2009	Private person	616872
country	ZA	2009	Public entity	423164
country	ZA	2009	Traditional authority	1739653
country	ZA	2009	Unknown	3011559
\.


--
-- Name: landuser pk_landuser; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.landuser
    ADD CONSTRAINT pk_landuser PRIMARY KEY (geo_level, geo_code, geo_version, land_user);


--
-- PostgreSQL database dump complete
--

