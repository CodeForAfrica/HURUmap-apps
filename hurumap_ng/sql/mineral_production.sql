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

ALTER TABLE IF EXISTS ONLY public.mineral_production DROP CONSTRAINT IF EXISTS mineral_production_pkey;
DROP TABLE IF EXISTS public.mineral_production;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: mineral_production; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mineral_production (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: mineral_production; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mineral_production (geo_level, geo_code, geo_version, year, total) FROM stdin;
state	1	2016	2016	304257.7
state	1	2016	2018	174562.1
state	2	2016	2016	61055.02
state	2	2016	2018	76567.7
state	3	2016	2016	90691
state	3	2016	2018	1918604
state	4	2016	2016	156058.4
state	4	2016	2018	221675.5
state	5	2016	2016	92390.29
state	5	2016	2018	191989.2
state	7	2016	2016	1760202
state	7	2016	2018	805277.1
state	8	2016	2016	1250
state	8	2016	2018	8403.3
state	9	2016	2016	2997679
state	9	2016	2018	3493458
state	10	2016	2016	132876
state	10	2016	2018	242300.6
state	11	2016	2016	691843
state	11	2016	2017	673608.5
state	11	2016	2018	1486661
state	12	2016	2016	750969.2
state	12	2016	2017	1196337
state	12	2016	2018	1705607
state	13	2016	2016	117467.6
state	13	2016	2017	107348.5
state	13	2016	2018	70177.81
state	14	2016	2016	14833.34
state	14	2016	2017	5227.7
state	14	2016	2018	136672.6
state	15	2016	2016	2030090
state	15	2016	2017	4461541
state	15	2016	2018	1894281
state	16	2016	2016	917217.9
state	16	2016	2017	1222558
state	16	2016	2018	1465131
state	17	2016	2016	17808
state	17	2016	2017	26200
state	17	2016	2018	42900
state	18	2016	2016	84406.81
state	18	2016	2017	121038.2
state	18	2016	2018	119583.3
state	19	2016	2016	183314.5
state	19	2016	2017	745286.5
state	19	2016	2018	838983.7
state	20	2016	2016	183727.9
state	20	2016	2017	1177189
state	20	2016	2018	795244.9
state	21	2016	2016	89591.46
state	21	2016	2017	229047.6
state	21	2016	2018	928331.4
state	22	2016	2016	81001.66
state	22	2016	2017	145624.5
state	22	2016	2018	176878.4
state	23	2016	2016	12739319
state	23	2016	2017	5228608
state	23	2016	2018	15134541
state	24	2016	2016	57443.75
state	24	2016	2017	105931.4
state	24	2016	2018	75596.55
state	25	2016	2016	548246.2
state	25	2016	2017	1745911
state	25	2016	2018	1311504
state	26	2016	2016	73260.57
state	26	2016	2017	148796.4
state	26	2016	2018	108276.2
state	27	2016	2016	51149.8
state	27	2016	2017	119189.4
state	27	2016	2018	107124.5
state	28	2016	2016	16376548
state	28	2016	2017	23302575
state	28	2016	2018	16497405
state	29	2016	2016	776408.8
state	29	2016	2017	1049151
state	29	2016	2018	1435698
state	30	2016	2016	117843.9
state	30	2016	2017	62687
state	30	2016	2018	84202.25
state	31	2016	2016	993912.4
state	31	2016	2017	128241.6
state	31	2016	2018	568498.3
state	32	2016	2016	110795.2
state	32	2016	2017	96137.36
state	32	2016	2018	90654.9
state	33	2016	2016	44600.84
state	33	2016	2017	104609.9
state	33	2016	2018	19548.68
state	34	2016	2016	627317
state	34	2016	2017	402264.3
state	34	2016	2018	1644826
state	35	2016	2016	64780.39
state	35	2016	2017	45868.14
state	35	2016	2018	336328
state	36	2016	2016	883.08
state	36	2016	2017	8075
state	36	2016	2018	41591.49
state	37	2016	2016	101809.2
state	37	2016	2017	219704
state	37	2016	2018	1561880
country	NG	2016	2016	43443048.91
country	NG	2016	2017	42878756
country	NG	2016	2018	55810964.48
\.


--
-- Name: mineral_production mineral_production_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mineral_production
    ADD CONSTRAINT mineral_production_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
