--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.driver_licences_processed_gender DROP CONSTRAINT IF EXISTS driver_licences_processed_gender_pkey;
DROP TABLE IF EXISTS public.driver_licences_processed_gender;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: driver_licences_processed_gender; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.driver_licences_processed_gender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: driver_licences_processed_gender; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.driver_licences_processed_gender (geo_level, geo_code, geo_version, year, gender, total) FROM stdin;
state	1	2016	2018	Female	1074
state	1	2016	2018	Male	2151
state	2	2016	2018	Female	440
state	2	2016	2018	Male	653
state	3	2016	2018	Female	947
state	3	2016	2018	Male	1997
state	4	2016	2018	Female	1893
state	4	2016	2018	Male	4010
state	5	2016	2018	Female	606
state	5	2016	2018	Male	925
state	6	2016	2018	Female	403
state	6	2016	2018	Male	1101
state	7	2016	2018	Female	743
state	7	2016	2018	Male	1391
state	8	2016	2018	Female	636
state	8	2016	2018	Male	1089
state	9	2016	2018	Female	520
state	9	2016	2018	Male	1050
state	10	2016	2018	Female	3397
state	10	2016	2018	Male	5084
state	11	2016	2018	Female	535
state	11	2016	2018	Male	961
state	12	2016	2018	Female	2135
state	12	2016	2018	Male	4854
state	13	2016	2018	Female	658
state	13	2016	2018	Male	1301
state	14	2016	2018	Female	2447
state	14	2016	2018	Male	3483
state	15	2016	2018	Female	8123
state	15	2016	2018	Male	12450
state	16	2016	2018	Female	524
state	16	2016	2018	Male	1000
state	17	2016	2018	Female	1174
state	17	2016	2018	Male	1793
state	18	2016	2018	Female	182
state	18	2016	2018	Male	335
state	19	2016	2018	Female	2940
state	19	2016	2018	Male	6000
state	20	2016	2018	Female	1385
state	20	2016	2018	Male	2256
state	21	2016	2018	Female	528
state	21	2016	2018	Male	1289
state	22	2016	2018	Female	157
state	22	2016	2018	Male	214
state	23	2016	2018	Female	603
state	23	2016	2018	Male	986
state	24	2016	2018	Female	706
state	24	2016	2018	Male	1708
state	25	2016	2018	Female	18290
state	25	2016	2018	Male	24112
state	26	2016	2018	Female	906
state	26	2016	2018	Male	1802
state	27	2016	2018	Female	593
state	27	2016	2018	Male	1745
country	NG	2016	2018	Female	68668
country	NG	2016	2018	Male	117215
state	28	2016	2018	Female	4259
state	28	2016	2018	Male	7000
state	29	2016	2018	Female	1440
state	29	2016	2018	Male	3004
state	30	2016	2018	Female	1437
state	30	2016	2018	Male	3402
state	31	2016	2018	Female	4435
state	31	2016	2018	Male	7322
state	32	2016	2018	Female	1080
state	32	2016	2018	Male	2923
state	33	2016	2018	Female	2637
state	33	2016	2018	Male	6354
state	34	2016	2018	Female	342
state	34	2016	2018	Male	542
state	35	2016	2018	Female	190
state	35	2016	2018	Male	389
state	36	2016	2018	Female	147
state	36	2016	2018	Male	328
state	37	2016	2018	Female	156
state	37	2016	2018	Male	211
\.


--
-- Name: driver_licences_processed_gender driver_licences_processed_gender_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.driver_licences_processed_gender
    ADD CONSTRAINT driver_licences_processed_gender_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year, gender);


--
-- PostgreSQL database dump complete
--
