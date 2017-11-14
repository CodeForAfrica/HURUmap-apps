--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.8
-- Dumped by pg_dump version 9.5.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.inpatientdiagnosisunderfive DROP CONSTRAINT IF EXISTS pk_inpatientdiagnosisunderfive;
DROP TABLE IF EXISTS public.inpatientdiagnosisunderfive;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: inpatientdiagnosisunderfive; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE inpatientdiagnosisunderfive (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "inpatient diagnosis under five" character varying(128) NOT NULL,
    total double precision,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: inpatientdiagnosisunderfive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY inpatientdiagnosisunderfive (geo_level, geo_code, "inpatient diagnosis under five", total, geo_version) FROM stdin;
region	1	diarrhoea	1771	2009
region	1	burn	442	2009
region	1	kwashiokor	76	2009
region	1	low birth weight	1288	2009
region	1	malaria	936	2009
region	1	anaemia	621	2009
region	1	moderate malnutrition	203	2009
region	1	neonatal septicaemia	831	2009
region	1	pneumonia	7822	2009
region	3	diarrhoea	1908	2009
region	3	burn	473	2009
region	3	kwashiokor	41	2009
region	3	low birth weight	908	2009
region	3	malaria	5257	2009
region	3	anaemia	1654	2009
region	3	moderate malnutrition	265	2009
region	3	neonatal septicaemia	3340	2009
region	3	pneumonia	4213	2009
region	2	diarrhoea	1926	2009
region	2	burn	256	2009
region	2	kwashiokor	97	2009
region	2	low birth weight	616	2009
region	2	malaria	4837	2009
region	2	anaemia	1238	2009
region	2	moderate malnutrition	143	2009
region	2	neonatal septicaemia	864	2009
region	2	pneumonia	3658	2009
region	4	diarrhoea	1276	2009
region	4	burn	126	2009
region	4	kwashiokor	72	2009
region	4	low birth weight	43	2009
region	4	malaria	10533	2009
region	4	anaemia	3520	2009
region	4	moderate malnutrition	62	2009
region	4	neonatal septicaemia	15	2009
region	4	pneumonia	1785	2009
region	5	diarrhoea	949	2009
region	5	burn	154	2009
region	5	kwashiokor	203	2009
region	5	low birth weight	463	2009
region	5	malaria	2492	2009
region	5	anaemia	337	2009
region	5	moderate malnutrition	75	2009
region	5	neonatal septicaemia	211	2009
region	5	pneumonia	2249	2009
region	6	diarrhoea	4534	2009
region	6	burn	171	2009
region	6	kwashiokor	202	2009
region	6	low birth weight	325	2009
region	6	malaria	31668	2009
region	6	anaemia	5865	2009
region	6	moderate malnutrition	410	2009
region	6	neonatal septicaemia	255	2009
region	6	pneumonia	8724	2009
region	9	diarrhoea	2	2009
region	9	burn	0	2009
region	9	kwashiokor	0	2009
region	9	low birth weight	3	2009
region	9	malaria	6	2009
region	9	anaemia	3	2009
region	9	moderate malnutrition	0	2009
region	9	neonatal septicaemia	2	2009
region	9	pneumonia	6	2009
region	10	diarrhoea	538	2009
region	10	burn	46	2009
region	10	kwashiokor	44	2009
region	10	low birth weight	7	2009
region	10	malaria	2561	2009
region	10	anaemia	1015	2009
region	10	moderate malnutrition	25	2009
region	10	neonatal septicaemia	3	2009
region	10	pneumonia	587	2009
region	11	diarrhoea	2016	2009
region	11	burn	139	2009
region	11	kwashiokor	72	2009
region	11	low birth weight	436	2009
region	11	malaria	12335	2009
region	11	anaemia	3211	2009
region	11	moderate malnutrition	57	2009
region	8	diarrhoea	\N	2009
region	11	neonatal septicaemia	534	2009
region	11	pneumonia	3160	2009
region	14	diarrhoea	2583	2009
region	14	burn	528	2009
region	14	kwashiokor	543	2009
region	14	low birth weight	37	2009
region	14	malaria	2539	2009
region	14	anaemia	1416	2009
region	14	moderate malnutrition	1018	2009
region	14	neonatal septicaemia	512	2009
region	14	pneumonia	7863	2009
region	15	diarrhoea	882	2009
region	15	burn	58	2009
region	15	kwashiokor	19	2009
region	15	low birth weight	285	2009
region	15	malaria	7713	2009
region	15	anaemia	1408	2009
region	15	moderate malnutrition	26	2009
region	15	neonatal septicaemia	447	2009
region	15	pneumonia	1452	2009
region	16	diarrhoea	1906	2009
region	16	burn	176	2009
region	16	kwashiokor	143	2009
region	16	low birth weight	74	2009
region	16	malaria	3422	2009
region	16	anaemia	416	2009
region	16	moderate malnutrition	132	2009
region	16	neonatal septicaemia	196	2009
region	16	pneumonia	6594	2009
region	17	diarrhoea	2525	2009
region	17	burn	230	2009
region	17	kwashiokor	120	2009
region	17	low birth weight	160	2009
region	17	malaria	19667	2009
region	17	anaemia	6295	2009
region	17	moderate malnutrition	175	2009
region	17	neonatal septicaemia	102	2009
region	17	pneumonia	3727	2009
region	18	diarrhoea	3493	2009
region	18	burn	369	2009
region	18	kwashiokor	90	2009
region	18	low birth weight	687	2009
region	18	malaria	7067	2009
region	18	anaemia	909	2009
region	18	moderate malnutrition	161	2009
region	18	neonatal septicaemia	403	2009
region	18	pneumonia	8296	2009
region	19	diarrhoea	2120	2009
region	19	burn	349	2009
region	19	kwashiokor	86	2009
region	19	low birth weight	551	2009
region	19	malaria	18784	2009
region	19	anaemia	3190	2009
region	19	moderate malnutrition	228	2009
region	19	neonatal septicaemia	1013	2009
region	19	pneumonia	5425	2009
region	20	diarrhoea	728	2009
region	20	burn	142	2009
region	20	kwashiokor	18	2009
region	20	low birth weight	251	2009
region	20	malaria	10743	2009
region	20	anaemia	1370	2009
region	20	moderate malnutrition	33	2009
region	20	neonatal septicaemia	354	2009
region	20	pneumonia	1866	2009
region	21	diarrhoea	2916	2009
region	21	burn	326	2009
region	21	kwashiokor	173	2009
region	21	low birth weight	463	2009
region	21	malaria	20998	2009
region	21	anaemia	4395	2009
region	21	moderate malnutrition	67	2009
region	21	neonatal septicaemia	277	2009
region	21	pneumonia	4719	2009
region	22	diarrhoea	1437	2009
region	22	burn	226	2009
region	22	kwashiokor	56	2009
region	22	low birth weight	75	2009
region	22	malaria	2230	2009
region	22	anaemia	307	2009
region	22	moderate malnutrition	88	2009
region	22	neonatal septicaemia	44	2009
region	22	pneumonia	3520	2009
region	23	diarrhoea	607	2009
region	23	burn	202	2009
region	23	kwashiokor	12	2009
region	23	low birth weight	431	2009
region	23	malaria	7660	2009
region	23	anaemia	2053	2009
region	23	moderate malnutrition	527	2009
region	23	neonatal septicaemia	715	2009
region	23	pneumonia	2085	2009
region	24	diarrhoea	1302	2009
region	24	burn	126	2009
region	24	kwashiokor	48	2009
region	24	low birth weight	46	2009
region	24	malaria	4597	2009
region	24	anaemia	1028	2009
region	24	moderate malnutrition	58	2009
region	24	neonatal septicaemia	9	2009
region	24	pneumonia	973	2009
region	25	diarrhoea	2386	2009
region	25	burn	188	2009
region	25	kwashiokor	44	2009
region	25	low birth weight	538	2009
region	25	malaria	20396	2009
region	25	anaemia	2454	2009
region	25	moderate malnutrition	95	2009
region	25	neonatal septicaemia	156	2009
region	25	pneumonia	4572	2009
region	26	diarrhoea	1761	2009
region	26	burn	130	2009
region	26	kwashiokor	41	2009
region	26	low birth weight	140	2009
region	26	malaria	11955	2009
region	26	anaemia	4793	2009
region	26	moderate malnutrition	70	2009
region	26	neonatal septicaemia	142	2009
region	26	pneumonia	1745	2009
region	27	diarrhoea	1279	2009
region	27	burn	108	2009
region	27	kwashiokor	127	2009
region	27	low birth weight	46	2009
region	27	malaria	6625	2009
region	27	anaemia	2766	2009
region	27	moderate malnutrition	87	2009
region	27	neonatal septicaemia	29	2009
region	27	pneumonia	1301	2009
region	29	diarrhoea	2234	2009
region	29	burn	178	2009
region	29	kwashiokor	97	2009
region	29	low birth weight	151	2009
region	29	malaria	5547	2009
region	29	anaemia	1444	2009
region	29	moderate malnutrition	113	2009
region	29	neonatal septicaemia	141	2009
region	29	pneumonia	2944	2009
region	28	diarrhoea	3262	2009
region	28	burn	206	2009
region	28	kwashiokor	56	2009
region	28	low birth weight	93	2009
region	28	malaria	16336	2009
region	28	anaemia	3017	2009
region	28	moderate malnutrition	153	2009
region	28	neonatal septicaemia	235	2009
region	28	pneumonia	3187	2009
region	7	diarrhoea	2252	2009
region	7	burn	464	2009
region	7	kwashiokor	121	2009
region	7	low birth weight	560	2009
region	7	malaria	11689	2009
region	7	anaemia	2385	2009
region	7	moderate malnutrition	170	2009
region	7	neonatal septicaemia	796	2009
region	7	pneumonia	7463	2009
region	8	burn	\N	2009
region	8	kwashiokor	\N	2009
region	8	low birth weight	\N	2009
region	8	malaria	\N	2009
region	8	anaemia	\N	2009
region	8	moderate malnutrition	\N	2009
region	8	neonatal septicaemia	\N	2009
region	8	pneumonia	\N	2009
region	12	diarrhoea	\N	2009
region	12	burn	\N	2009
region	12	kwashiokor	\N	2009
region	12	low birth weight	\N	2009
region	12	malaria	\N	2009
region	12	anaemia	\N	2009
region	12	moderate malnutrition	\N	2009
region	12	neonatal septicaemia	\N	2009
region	12	pneumonia	\N	2009
region	13	diarrhoea	\N	2009
region	13	burn	\N	2009
region	13	kwashiokor	\N	2009
region	13	low birth weight	\N	2009
region	13	malaria	\N	2009
region	13	anaemia	\N	2009
region	13	moderate malnutrition	\N	2009
region	13	neonatal septicaemia	\N	2009
region	13	pneumonia	\N	2009
region	30	diarrhoea	\N	2009
region	30	burn	\N	2009
region	30	kwashiokor	\N	2009
region	30	low birth weight	\N	2009
region	30	malaria	\N	2009
region	30	anaemia	\N	2009
region	30	moderate malnutrition	\N	2009
region	30	neonatal septicaemia	\N	2009
region	30	pneumonia	\N	2009
country	TZ	diarrhoea	48593	2009
country	TZ	burn	5813	2009
country	TZ	kwashiokor	2601	2009
country	TZ	low birth weight	8677	2009
country	TZ	malaria	248593	2009
country	TZ	anaemia	57110	2009
country	TZ	moderate malnutrition	4441	2009
country	TZ	neonatal septicaemia	11626	2009
country	TZ	pneumonia	99936	2009
\.


--
-- Name: pk_inpatientdiagnosisunderfive; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY inpatientdiagnosisunderfive
    ADD CONSTRAINT pk_inpatientdiagnosisunderfive PRIMARY KEY (geo_level, geo_code, geo_version, "inpatient diagnosis under five");


--
-- PostgreSQL database dump complete
--

