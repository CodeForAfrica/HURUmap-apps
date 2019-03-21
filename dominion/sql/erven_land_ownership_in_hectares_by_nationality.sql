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

ALTER TABLE IF EXISTS ONLY public.erven_land_ownership_in_hectares_by_nationality DROP CONSTRAINT IF EXISTS pk_erven_land_ownership_in_hectares_by_nationality;
DROP TABLE IF EXISTS public.erven_land_ownership_in_hectares_by_nationality;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ervenlandownershipinhectaresbynationality; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.erven_land_ownership_in_hectares_by_nationality (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    erven_land_ownership_in_hectares_by_nationality character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: ervenlandownershipinhectaresbynationality; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.erven_land_ownership_in_hectares_by_nationality (geo_level, geo_code, geo_version, erven_land_ownership_in_hectares_by_nationality, total) FROM stdin;
level1	ZA_1_003	2009	South African	54932
level1	ZA_1_002	2009	South African	22571
level1	ZA_1_009	2009	South African	78463
level1	ZA_1_001	2009	South African	59749
level1	ZA_1_004	2009	South African	18401
level1	ZA_1_007	2009	South African	15709
level1	ZA_1_006	2009	South African	169595
level1	ZA_1_008	2009	South African	133227
country	ZA	2009	South African	570009
level1	ZA_1_003	2009	Foreign	1416
level1	ZA_1_002	2009	Foreign	630
level1	ZA_1_009	2009	Foreign	5860
level1	ZA_1_001	2009	Foreign	2992
level1	ZA_1_004	2009	Foreign	673
level1	ZA_1_007	2009	Foreign	443
level1	ZA_1_006	2009	Foreign	3447
level1	ZA_1_008	2009	Foreign	4825
country	ZA	2009	Foreign	20649
level1	ZA_1_003	2009	Co-ownership	1952
level1	ZA_1_002	2009	Co-ownership	724
level1	ZA_1_009	2009	Co-ownership	5313
level1	ZA_1_001	2009	Co-ownership	3802
level1	ZA_1_004	2009	Co-ownership	727
level1	ZA_1_007	2009	Co-ownership	547
level1	ZA_1_006	2009	Co-ownership	2304
level1	ZA_1_008	2009	Co-ownership	2826
country	ZA	2009	Co-ownership	18667
level1	ZA_1_003	2009	Other	81538
level1	ZA_1_002	2009	Other	2610
level1	ZA_1_009	2009	Other	4621
level1	ZA_1_001	2009	Other	11192
level1	ZA_1_004	2009	Other	913
level1	ZA_1_007	2009	Other	989
level1	ZA_1_006	2009	Other	9057
level1	ZA_1_008	2009	Other	364
country	ZA	2009	Other	113342
level1	ZA_1_005	2009	South African	17361
level1	ZA_1_005	2009	Foreign	361
level1	ZA_1_005	2009	Co-ownership	472
level1	ZA_1_005	2009	Other	2058
\.


--
-- Name: ervenlandownershipinhectaresbynationality pk_ervenlandownershipinhectaresbynationality; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.erven_land_ownership_in_hectares_by_nationality
    ADD CONSTRAINT pk_erven_land_ownership_in_hectares_by_nationality PRIMARY KEY (geo_level, geo_code, geo_version, erven_land_ownership_in_hectares_by_nationality);


--
-- PostgreSQL database dump complete
--
