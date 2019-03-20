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

ALTER TABLE IF EXISTS ONLY public.numberofsectionaltitleownersbynationality DROP CONSTRAINT IF EXISTS pk_numberofsectionaltitleownersbynationality;
DROP TABLE IF EXISTS public.numberofsectionaltitleownersbynationality;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberofsectionaltitleownersbynationality; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.numberofsectionaltitleownersbynationality (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of sectional title owners by nationality" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: numberofsectionaltitleownersbynationality; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.numberofsectionaltitleownersbynationality (geo_level, geo_code, geo_version, "number of sectional title owners by nationality", total) FROM stdin;
level1	ZA_1_003	2016	South African	24096
level1	ZA_1_002	2016	South African	23009
level1	ZA_1_009	2016	South African	299462
level1	ZA_1_001	2016	South African	100693
level1	ZA_1_004	2016	South African	9368
level1	ZA_1_007	2016	South African	16951
level1	ZA_1_006	2016	South African	700
level1	ZA_1_008	2016	South African	85069
country	ZA	2016	South African	567148
level1	ZA_1_003	2016	Foreign	5352
level1	ZA_1_002	2016	Foreign	2524
level1	ZA_1_009	2016	Foreign	47401
level1	ZA_1_001	2016	Foreign	49624
level1	ZA_1_004	2016	Foreign	2058
level1	ZA_1_007	2016	Foreign	1031
level1	ZA_1_006	2016	Foreign	111
level1	ZA_1_008	2016	Foreign	24000
country	ZA	2016	Foreign	132672
level1	ZA_1_003	2016	Other	714
level1	ZA_1_002	2016	Other	311
level1	ZA_1_009	2016	Other	13939
level1	ZA_1_001	2016	Other	3789
level1	ZA_1_004	2016	Other	292
level1	ZA_1_007	2016	Other	412
level1	ZA_1_006	2016	Other	6
level1	ZA_1_008	2016	Other	7447
country	ZA	2016	Other	27146
level1	ZA_1_005	2016	South African	7800
level1	ZA_1_005	2016	Foreign	571
level1	ZA_1_005	2016	Other	236
\.


--
-- Name: numberofsectionaltitleownersbynationality pk_numberofsectionaltitleownersbynationality; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.numberofsectionaltitleownersbynationality
    ADD CONSTRAINT pk_numberofsectionaltitleownersbynationality PRIMARY KEY (geo_level, geo_code, geo_version, "number of sectional title owners by nationality");


--
-- PostgreSQL database dump complete
--

