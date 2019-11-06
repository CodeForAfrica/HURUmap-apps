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

ALTER TABLE IF EXISTS ONLY public.travel_certificates DROP CONSTRAINT IF EXISTS travel_certificates_pkey;
DROP TABLE IF EXISTS public.travel_certificates;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: travel_certificates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.travel_certificates (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: travel_certificates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.travel_certificates (geo_level, geo_code, geo_version, year, total) FROM stdin;
state	1	2016	2017	545
state	2	2016	2017	226
state	3	2016	2017	920
state	4	2016	2017	225
state	5	2016	2017	10
state	6	2016	2017	127
state	7	2016	2017	150
state	8	2016	2017	421
state	9	2016	2017	6
state	10	2016	2017	693
state	11	2016	2017	58
state	12	2016	2017	1154
state	13	2016	2017	236
state	14	2016	2017	351
state	15	2016	2017	3171
state	16	2016	2017	110
state	17	2016	2017	416
state	18	2016	2017	914
state	19	2016	2017	525
state	20	2016	2017	1525
state	21	2016	2017	849
state	22	2016	2017	449
state	23	2016	2017	580
state	24	2016	2017	267
state	25	2016	2017	2691
state	26	2016	2017	120
state	27	2016	2017	544
country	NG	2016	2017	22775
state	28	2016	2017	1162
state	29	2016	2017	348
state	30	2016	2017	327
state	31	2016	2017	194
state	32	2016	2017	241
state	33	2016	2017	1193
state	34	2016	2017	1250
state	35	2016	2017	150
state	36	2016	2017	341
state	37	2016	2017	286
state	1	2016	2018	425
state	2	2016	2018	252
state	3	2016	2018	144
state	4	2016	2018	861
state	5	2016	2018	2022
state	6	2016	2018	339
state	7	2016	2018	145
state	8	2016	2018	356
state	9	2016	2018	157
state	10	2016	2018	656
state	11	2016	2018	75
state	12	2016	2018	370
state	13	2016	2018	1394
state	14	2016	2018	214
state	15	2016	2018	406
state	16	2016	2018	345
state	17	2016	2018	453
state	18	2016	2018	1216
state	19	2016	2018	591
state	20	2016	2018	1585
state	21	2016	2018	1104
state	22	2016	2018	687
state	23	2016	2018	437
state	24	2016	2018	309
state	25	2016	2018	3988
state	26	2016	2018	235
state	27	2016	2018	452
state	28	2016	2018	771
state	29	2016	2018	156
state	30	2016	2018	49
state	31	2016	2018	226
state	32	2016	2018	254
state	33	2016	2018	732
state	34	2016	2018	1606
state	35	2016	2018	52
state	36	2016	2018	585
state	37	2016	2018	426
country	NG	2016	2018	24075
\.


--
-- Name: travel_certificates travel_certificates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.travel_certificates
    ADD CONSTRAINT travel_certificates_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
