--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.healthratios DROP CONSTRAINT IF EXISTS healthratiospkey;
DROP TABLE IF EXISTS public.healthratios;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: healthratios; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE healthratios (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    healthratios character varying(30) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: healthratios; Type: TABLE DATA; Schema: public; Owner: -
--
COPY healthratios (geo_level, geo_code, healthratios, total) FROM stdin;
county	27	doctor ratio	4000
county	19	doctor ratio	5000
county	1	doctor ratio	7000
county	14	doctor ratio	13000
county	42	doctor ratio	15000
county	22	doctor ratio	15000
county	35	doctor ratio	15000
county	21	doctor ratio	17000
county	13	doctor ratio	21000
county	31	doctor ratio	21000
county	18	doctor ratio	22000
county	47	doctor ratio	23000
county	44	doctor ratio	24000
county	25	doctor ratio	25000
county	15	doctor ratio	26000
county	16	doctor ratio	27000
county	20	doctor ratio	29000
county	40	doctor ratio	31000
county	32	doctor ratio	32000
county	10	doctor ratio	32000
county	17	doctor ratio	37000
county	12	doctor ratio	38000
county	33	doctor ratio	41000
county	41	doctor ratio	44000
county	43	doctor ratio	44000
county	39	doctor ratio	45000
county	2	doctor ratio	46000
county	4	doctor ratio	48000
county	3	doctor ratio	48000
county	7	doctor ratio	52000
county	28	doctor ratio	62000
county	37	doctor ratio	69000
county	6	doctor ratio	71000
county	24	doctor ratio	73000
county	34	doctor ratio	76000
county	29	doctor ratio	94000
county	46	doctor ratio	100000
county	36	doctor ratio	103000
county	8	doctor ratio	132000
county	11	doctor ratio	143000
county	38	doctor ratio	185000
county	9	doctor ratio	256000
county	26	doctor ratio	273000
county	30	doctor ratio	278000
county	23	doctor ratio	285000
county	45	doctor ratio	378000
county	5	doctor ratio	0
country	KE	doctor ratio	25000
county	19	nurse ratio	654
county	27	nurse ratio	706
county	25	nurse ratio	1037
county	14	nurse ratio	1060
county	20	nurse ratio	1100
county	18	nurse ratio	1117
county	40	nurse ratio	1148
county	1	nurse ratio	1381
county	42	nurse ratio	1433
county	31	nurse ratio	1446
county	22	nurse ratio	1466
county	44	nurse ratio	1478
county	12	nurse ratio	1609
county	21	nurse ratio	1609
county	16	nurse ratio	1688
county	15	nurse ratio	1770
county	13	nurse ratio	1773
county	41	nurse ratio	1815
county	35	nurse ratio	1832
county	43	nurse ratio	1949
county	10	nurse ratio	1967
county	17	nurse ratio	1970
county	24	nurse ratio	1979
county	32	nurse ratio	2146
county	7	nurse ratio	2316
county	28	nurse ratio	2434
county	46	nurse ratio	2493
county	6	nurse ratio	2612
county	3	nurse ratio	2655
county	47	nurse ratio	2797
county	2	nurse ratio	3080
county	11	nurse ratio	3115
county	37	nurse ratio	3122
county	33	nurse ratio	3128
county	29	nurse ratio	3137
county	39	nurse ratio	3315
county	38	nurse ratio	3990
county	30	nurse ratio	4115
county	8	nurse ratio	4163
county	36	nurse ratio	4210
county	4	nurse ratio	5108
county	45	nurse ratio	5703
county	26	nurse ratio	6110
county	34	nurse ratio	7723
county	9	nurse ratio	14051
county	23	nurse ratio	14748
county	5	nurse ratio	0
country	KE	nurse ratio	3049
\.
--
-- Name: healthratiospkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY healthratios
    ADD CONSTRAINT healthratiospkey PRIMARY KEY (geo_level, geo_code, healthratios);


--
-- PostgreSQL database dump complete
--

