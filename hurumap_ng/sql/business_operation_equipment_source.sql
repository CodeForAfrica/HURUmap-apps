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

ALTER TABLE IF EXISTS ONLY public.business_operation_equipment_source DROP CONSTRAINT IF EXISTS business_operation_equipment_source_pkey;
DROP TABLE IF EXISTS public.business_operation_equipment_source;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: business_operation_equipment_source; type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.business_operation_equipment_source (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    source_type character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: business_operation_equipment_source; type: TABLE DATA; Schema: public; Owner: -
--

COPY public.business_operation_equipment_source (geo_level, geo_code, geo_version, source_type, total) FROM stdin;
country	NG	2016	Foreign	803295
country	NG	2016	Local	37008981
country	NG	2016	Local/Foreign	3657671
state	1	2016	Foreign	2368
state	1	2016	Local	926081
state	1	2016	Local/Foreign	31354
state	2	2016	Foreign	4275
state	2	2016	Local	596917
state	2	2016	Local/Foreign	88378
state	3	2016	Foreign	21902
state	3	2016	Local	1064660
state	3	2016	Local/Foreign	270851
state	4	2016	Foreign	13088
state	4	2016	Local	1035269
state	4	2016	Local/Foreign	185319
state	5	2016	Foreign	1016
state	5	2016	Local	995453
state	5	2016	Local/Foreign	20528
state	6	2016	Foreign	0
state	6	2016	Local	526729
state	6	2016	Local/Foreign	21320
state	7	2016	Foreign	35135
state	7	2016	Local	1443558
state	7	2016	Local/Foreign	99965
state	8	2016	Foreign	57229
state	8	2016	Local	410641
state	8	2016	Local/Foreign	223241
state	9	2016	Foreign	14360
state	9	2016	Local	932249
state	9	2016	Local/Foreign	73775
state	10	2016	Foreign	68287
state	10	2016	Local	1234782
state	10	2016	Local/Foreign	257610
state	11	2016	Foreign	3191
state	11	2016	Local	587164
state	11	2016	Local/Foreign	0
state	12	2016	Foreign	0
state	12	2016	Local	861360
state	12	2016	Local/Foreign	63584
state	13	2016	Foreign	8606
state	13	2016	Local	945319
state	13	2016	Local/Foreign	63585
state	14	2016	Foreign	18353
state	14	2016	Local	1015973
state	14	2016	Local/Foreign	54295
state	15	2016	Foreign	3087
state	15	2016	Local	466260
state	15	2016	Local/Foreign	34982
state	16	2016	Foreign	13388
state	16	2016	Local	489654
state	16	2016	Local/Foreign	35163
state	17	2016	Foreign	21234
state	17	2016	Local	1052265
state	17	2016	Local/Foreign	327349
state	18	2016	Foreign	40828
state	18	2016	Local	783956
state	18	2016	Local/Foreign	9415
state	19	2016	Foreign	7897
state	19	2016	Local	1866266
state	19	2016	Local/Foreign	57224
state	20	2016	Foreign	32703
state	20	2016	Local	1677992
state	20	2016	Local/Foreign	114266
state	21	2016	Foreign	8918
state	21	2016	Local	1628411
state	21	2016	Local/Foreign	21975
state	22	2016	Foreign	0
state	22	2016	Local	684410
state	22	2016	Local/Foreign	24131
state	23	2016	Foreign	4395
state	23	2016	Local	898046
state	23	2016	Local/Foreign	94308
state	24	2016	Foreign	0
state	24	2016	Local	797869
state	24	2016	Local/Foreign	4549
state	25	2016	Foreign	195280
state	25	2016	Local	2861054
state	25	2016	Local/Foreign	272822
state	26	2016	Foreign	3430
state	26	2016	Local	342708
state	26	2016	Local/Foreign	39352
state	27	2016	Foreign	6677
state	27	2016	Local	9350102
state	27	2016	Local/Foreign	125103
state	28	2016	Foreign	66683
state	28	2016	Local	968972
state	28	2016	Local/Foreign	142454
state	29	2016	Foreign	6073
state	29	2016	Local	857678
state	29	2016	Local/Foreign	194274
state	30	2016	Foreign	12595
state	30	2016	Local	1351482
state	30	2016	Local/Foreign	6831
state	31	2016	Foreign	0
state	31	2016	Local	1904192
state	31	2016	Local/Foreign	5283
state	32	2016	Foreign	20641
state	32	2016	Local	699916
state	32	2016	Local/Foreign	94873
state	33	2016	Foreign	34332
state	33	2016	Local	1618800
state	33	2016	Local/Foreign	476648
state	34	2016	Foreign	46471
state	34	2016	Local	594756
state	34	2016	Local/Foreign	65114
state	35	2016	Foreign	11676
state	35	2016	Local	459866
state	35	2016	Local/Foreign	49217
state	36	2016	Foreign	19176
state	36	2016	Local	758240
state	36	2016	Local/Foreign	6629
state	37	2016	Foreign	0
state	37	2016	Local	735023
state	37	2016	Local/Foreign	1906
\.


--
-- Name: business_operation_equipment_source business_operation_equipment_source_pkey; type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.business_operation_equipment_source
    ADD CONSTRAINT business_operation_equipment_source_pkey PRIMARY KEY (geo_level, geo_code, geo_version, source_type);


--
-- PostgreSQL database dump complete
--
