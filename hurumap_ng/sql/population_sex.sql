--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.population_sex DROP CONSTRAINT IF EXISTS pk_population_sex;
DROP TABLE IF EXISTS public.population_sex;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: population_sex; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.population_sex (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    population_sex character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: population_sex; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.population_sex (geo_level, geo_code, geo_version, population_sex, total) FROM stdin;
country	NG	2016	male	98630184
country	NG	2016	female	94762333
state	1	2016	male	1900947
state	1	2016	female	1826400
state	2	2016	male	2166702
state	2	2016	female	2081734
state	3	2016	male	2795910
state	3	2016	female	2686267
state	4	2016	male	2819182
state	4	2016	female	2708626
state	5	2016	male	3334030
state	5	2016	female	3203284
state	6	2016	male	1161760
state	6	2016	female	1116201
state	7	2016	male	2928326
state	7	2016	female	2813489
state	8	2016	male	2988693
state	8	2016	female	2871489
state	9	2016	male	1971797
state	9	2016	female	1894472
state	10	2016	male	2888315
state	10	2016	female	2775047
state	11	2016	male	1468996
state	11	2016	female	1411388
state	12	2016	male	2160153
state	12	2016	female	2075441
state	13	2016	male	1668107
state	13	2016	female	1602691
state	14	2016	male	2249670
state	14	2016	female	2161448
state	15	2016	male	1817704
state	15	2016	female	1746422
state	16	2016	male	1661051
state	16	2016	female	1595912
state	17	2016	male	2758466
state	17	2016	female	2650290
state	18	2016	male	2972363
state	18	2016	female	2855800
state	19	2016	male	4208707
state	19	2016	female	4043659
state	20	2016	male	6669215
state	20	2016	female	6407677
state	21	2016	male	3993973
state	21	2016	female	3837346
state	22	2016	male	2264425
state	22	2016	female	2175624
state	23	2016	male	2281480
state	23	2016	female	2192010
state	24	2016	male	1628375
state	24	2016	female	1564517
state	25	2016	male	6400805
state	25	2016	female	6149793
state	26	2016	male	1286931
state	26	2016	female	1236464
state	27	2016	male	2833686
state	27	2016	female	2722561
state	28	2016	male	2661035
state	28	2016	female	2556681
state	29	2016	male	2382565
state	29	2016	female	2289131
state	30	2016	male	2399850
state	30	2016	female	2305739
state	31	2016	male	3998840
state	31	2016	female	3842023
state	32	2016	male	2142225
state	32	2016	female	2058216
state	33	2016	male	3725001
state	33	2016	female	3578923
state	34	2016	male	2549026
state	34	2016	female	2449064
state	35	2016	male	1564085
state	35	2016	female	1502749
state	36	2016	male	1680010
state	36	2016	female	1614127
state	37	2016	male	2302868
state	37	2016	female	2212559
\.


--
-- Name: population_sex pk_population_sex; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.population_sex
    ADD CONSTRAINT pk_population_sex PRIMARY KEY (geo_level, geo_code, geo_version, population_sex);


--
-- PostgreSQL database dump complete
--
