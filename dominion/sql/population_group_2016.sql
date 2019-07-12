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

ALTER TABLE IF EXISTS ONLY public.population_group_2016 DROP CONSTRAINT IF EXISTS pk_population_group_2016;
DROP TABLE IF EXISTS public.population_group_2016;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: populationgroup_2016; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.population_group_2016 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "population_group_2016" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: populationgroup_2016; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.population_group_2016 (geo_level, geo_code, geo_version, "population_group_2016", total) FROM stdin;
level1	ZA_1_008	2009	Black African	2242042
level1	ZA_1_008	2009	Coloured	2984398
level1	ZA_1_008	2009	Indian or Asian	48720
level1	ZA_1_008	2009	White	1004571
level1	ZA_1_003	2009	Black African	6043913
level1	ZA_1_003	2009	Coloured	603685
level1	ZA_1_003	2009	Indian or Asian	29204
level1	ZA_1_003	2009	White	320174
level1	ZA_1_006	2009	Black African	574246
level1	ZA_1_006	2009	Coloured	521261
level1	ZA_1_006	2009	Indian or Asian	6486
level1	ZA_1_006	2009	White	91787
level1	ZA_1_002	2009	Black African	2514990
level1	ZA_1_002	2009	Coloured	72095
level1	ZA_1_002	2009	Indian or Asian	7296
level1	ZA_1_002	2009	White	240333
level1	ZA_1_001	2009	Black African	9625934
level1	ZA_1_001	2009	Coloured	134089
level1	ZA_1_001	2009	Indian or Asian	873161
level1	ZA_1_001	2009	White	432056
level1	ZA_1_007	2009	Black African	3432379
level1	ZA_1_007	2009	Coloured	61010
level1	ZA_1_007	2009	Indian or Asian	16686
level1	ZA_1_007	2009	White	238360
level1	ZA_1_009	2009	Black African	10770177
level1	ZA_1_009	2009	Coloured	443289
level1	ZA_1_009	2009	Indian or Asian	357409
level1	ZA_1_009	2009	White	1828849
level1	ZA_1_004	2009	Black African	4057760
level1	ZA_1_004	2009	Coloured	32859
level1	ZA_1_004	2009	Indian or Asian	19786
level1	ZA_1_004	2009	White	225558
level1	ZA_1_005	2009	Black African	5630163
level1	ZA_1_005	2009	Coloured	16839
level1	ZA_1_005	2009	Indian or Asian	17085
level1	ZA_1_005	2009	White	135003
country	ZA	2009	Black African	44891603
country	ZA	2009	Coloured	4869526
country	ZA	2009	Indian or Asian	1375834
country	ZA	2009	White	4516691
\.


--
-- Name: populationgroup_2016 pk_populationgroup_2016; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.population_group_2016
    ADD CONSTRAINT pk_population_group_2016 PRIMARY KEY (geo_level, geo_code, geo_version, "population_group_2016");


--
-- PostgreSQL database dump complete
--
