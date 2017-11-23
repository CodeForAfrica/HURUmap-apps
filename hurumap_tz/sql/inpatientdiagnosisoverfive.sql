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

ALTER TABLE IF EXISTS ONLY public.inpatientdiagnosisoverfive DROP CONSTRAINT IF EXISTS pk_inpatientdiagnosisoverfive;
DROP TABLE IF EXISTS public.inpatientdiagnosisoverfive;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: inpatientdiagnosisoverfive; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE inpatientdiagnosisoverfive (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "inpatient diagnosis over five" character varying(128) NOT NULL,
    total double precision,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: inpatientdiagnosisoverfive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY inpatientdiagnosisoverfive (geo_level, geo_code, "inpatient diagnosis over five", total, geo_version) FROM stdin;
region	1	diarrhoea	1250	2009
region	1	cardiac failure	912	2009
region	1	diabete mellitus	1330	2009
region	1	fracture	2343	2009
region	1	hypertension	1621	2009
region	1	malaria	2377	2009
region	1	anaemia	1451	2009
region	1	pneumonia	3881	2009
region	1	road accident injury	1252	2009
region	1	STI	102	2009
region	1	HIV	1977	2009
region	1	TB	1016	2009
region	1	Typhoid	1094	2009
region	1	UTI	1148	2009
region	3	diarrhoea	2567	2009
region	3	cardiac failure	913	2009
region	3	diabete mellitus	4906	2009
region	3	fracture	1019	2009
region	3	hypertension	6187	2009
region	3	malaria	12152	2009
region	3	anaemia	3083	2009
region	3	pneumonia	2114	2009
region	3	road accident injury	668	2009
region	3	STI	321	2009
region	3	HIV	2658	2009
region	3	TB	1074	2009
region	3	Typhoid	993	2009
region	3	UTI	1827	2009
region	2	diarrhoea	1375	2009
region	2	cardiac failure	411	2009
region	2	diabete mellitus	360	2009
region	2	fracture	2232	2009
region	2	hypertension	1009	2009
region	2	malaria	8228	2009
region	2	anaemia	2260	2009
region	2	pneumonia	1903	2009
region	2	road accident injury	2312	2009
region	2	STI	133	2009
region	2	HIV	936	2009
region	2	TB	475	2009
region	2	Typhoid	921	2009
region	2	UTI	933	2009
region	4	diarrhoea	1012	2009
region	4	cardiac failure	97	2009
region	4	diabete mellitus	186	2009
region	4	fracture	245	2009
region	4	hypertension	286	2009
region	4	malaria	7709	2009
region	4	anaemia	1445	2009
region	4	pneumonia	759	2009
region	4	road accident injury	1068	2009
region	4	STI	102	2009
region	4	HIV	574	2009
region	4	TB	264	2009
region	4	Typhoid	378	2009
region	4	UTI	924	2009
region	5	diarrhoea	2134	2009
region	5	cardiac failure	434	2009
region	5	diabete mellitus	668	2009
region	5	fracture	1111	2009
region	5	hypertension	1078	2009
region	5	malaria	12017	2009
region	5	anaemia	2227	2009
region	5	pneumonia	2390	2009
region	5	road accident injury	2107	2009
region	5	STI	315	2009
region	5	HIV	1314	2009
region	5	TB	678	2009
region	5	Typhoid	725	2009
region	5	UTI	1723	2009
region	6	diarrhoea	2835	2009
region	6	cardiac failure	491	2009
region	6	diabete mellitus	1462	2009
region	6	fracture	936	2009
region	6	hypertension	2550	2009
region	6	malaria	26243	2009
region	6	anaemia	3004	2009
region	6	pneumonia	4388	2009
region	6	road accident injury	1503	2009
region	6	STI	561	2009
region	6	HIV	1018	2009
region	6	TB	744	2009
region	6	Typhoid	1108	2009
region	6	UTI	6680	2009
region	9	diarrhoea	568	2009
region	9	cardiac failure	70	2009
region	9	diabete mellitus	44	2009
region	9	fracture	191	2009
region	9	hypertension	139	2009
region	9	malaria	2898	2009
region	9	anaemia	661	2009
region	9	pneumonia	387	2009
region	9	road accident injury	368	2009
region	9	STI	17	2009
region	9	HIV	199	2009
region	9	TB	46	2009
region	9	Typhoid	137	2009
region	9	UTI	293	2009
region	10	diarrhoea	1105	2009
region	10	cardiac failure	381	2009
region	10	diabete mellitus	547	2009
region	10	fracture	692	2009
region	10	hypertension	834	2009
region	10	malaria	13149	2009
region	10	anaemia	2658	2009
region	10	pneumonia	1276	2009
region	10	road accident injury	724	2009
region	10	STI	121	2009
region	10	HIV	361	2009
region	10	TB	224	2009
region	10	Typhoid	265	2009
region	10	UTI	2157	2009
region	11	diarrhoea	2401	2009
region	11	cardiac failure	1427	2009
region	11	diabete mellitus	2198	2009
region	11	fracture	2087	2009
region	11	hypertension	3309	2009
region	11	malaria	4359	2009
region	11	anaemia	1902	2009
region	11	pneumonia	5584	2009
region	11	road accident injury	1136	2009
region	11	STI	835	2009
region	11	HIV	1548	2009
region	11	TB	746	2009
region	11	Typhoid	89	2009
region	11	UTI	2580	2009
region	14	diarrhoea	1392	2009
region	14	cardiac failure	374	2009
region	14	diabete mellitus	157	2009
region	14	fracture	692	2009
region	14	hypertension	777	2009
region	14	malaria	11218	2009
region	14	anaemia	1716	2009
region	14	pneumonia	1016	2009
region	14	road accident injury	401	2009
region	14	STI	46	2009
region	14	HIV	444	2009
region	14	TB	204	2009
region	14	Typhoid	203	2009
region	14	UTI	551	2009
region	15	diarrhoea	1362	2009
region	15	cardiac failure	395	2009
region	15	diabete mellitus	515	2009
region	15	fracture	593	2009
region	15	hypertension	425	2009
region	15	malaria	6081	2009
region	15	anaemia	882	2009
region	15	pneumonia	3752	2009
region	15	road accident injury	994	2009
region	15	STI	253	2009
region	15	HIV	502	2009
region	15	TB	665	2009
region	15	Typhoid	1032	2009
region	15	UTI	662	2009
region	16	diarrhoea	1644	2009
region	16	cardiac failure	182	2009
region	16	diabete mellitus	261	2009
region	16	fracture	307	2009
region	16	hypertension	549	2009
region	16	malaria	19100	2009
region	16	anaemia	3218	2009
region	16	pneumonia	1847	2009
region	16	road accident injury	1199	2009
region	16	STI	231	2009
region	16	HIV	1006	2009
region	16	TB	492	2009
region	16	Typhoid	1408	2009
region	16	UTI	3375	2009
region	17	diarrhoea	3902	2009
region	17	cardiac failure	942	2009
region	17	diabete mellitus	840	2009
region	17	fracture	1570	2009
region	17	hypertension	1983	2009
region	17	malaria	14837	2009
region	17	anaemia	2237	2009
region	17	pneumonia	4922	2009
region	17	road accident injury	2443	2009
region	17	STI	212	2009
region	17	HIV	2363	2009
region	17	TB	982	2009
region	17	Typhoid	2677	2009
region	17	UTI	2373	2009
region	18	diarrhoea	1847	2009
region	18	cardiac failure	408	2009
region	18	diabete mellitus	447	2009
region	18	fracture	916	2009
region	18	hypertension	1452	2009
region	18	malaria	25892	2009
region	18	anaemia	2698	2009
region	18	pneumonia	3109	2009
region	18	road accident injury	1036	2009
region	18	STI	216	2009
region	18	HIV	796	2009
region	18	TB	305	2009
region	18	Typhoid	1294	2009
region	18	UTI	3282	2009
region	19	diarrhoea	1286	2009
region	19	cardiac failure	487	2009
region	19	diabete mellitus	241	2009
region	19	fracture	776	2009
region	19	hypertension	1311	2009
region	19	malaria	14537	2009
region	19	anaemia	1483	2009
region	19	pneumonia	1013	2009
region	19	road accident injury	630	2009
region	19	STI	110	2009
region	19	HIV	621	2009
region	19	TB	271	2009
region	19	Typhoid	176	2009
region	19	UTI	689	2009
region	20	diarrhoea	2228	2009
region	20	cardiac failure	401	2009
region	20	diabete mellitus	613	2009
region	20	fracture	460	2009
region	20	hypertension	1225	2009
region	20	malaria	19847	2009
region	20	anaemia	3201	2009
region	20	pneumonia	2316	2009
region	20	road accident injury	843	2009
region	20	STI	311	2009
region	20	HIV	1545	2009
region	20	TB	854	2009
region	20	Typhoid	1380	2009
region	20	UTI	3589	2009
region	21	diarrhoea	2347	2009
region	21	cardiac failure	365	2009
region	21	diabete mellitus	216	2009
region	21	fracture	1016	2009
region	21	hypertension	887	2009
region	21	malaria	4071	2009
region	21	anaemia	902	2009
region	21	pneumonia	2827	2009
region	21	road accident injury	800	2009
region	21	STI	118	2009
region	21	HIV	962	2009
region	21	TB	436	2009
region	21	Typhoid	1596	2009
region	21	UTI	866	2009
region	22	diarrhoea	787	2009
region	22	cardiac failure	307	2009
region	22	diabete mellitus	340	2009
region	22	fracture	1168	2009
region	22	hypertension	1279	2009
region	22	malaria	9633	2009
region	22	anaemia	2000	2009
region	22	pneumonia	1475	2009
region	22	road accident injury	1452	2009
region	22	STI	70	2009
region	22	HIV	827	2009
region	22	TB	351	2009
region	22	Typhoid	78	2009
region	22	UTI	1100	2009
region	23	diarrhoea	759	2009
region	23	cardiac failure	173	2009
region	23	diabete mellitus	162	2009
region	23	fracture	528	2009
region	23	hypertension	332	2009
region	23	malaria	5727	2009
region	23	anaemia	778	2009
region	23	pneumonia	516	2009
region	23	road accident injury	501	2009
region	23	STI	205	2009
region	23	HIV	486	2009
region	23	TB	214	2009
region	23	Typhoid	372	2009
region	23	UTI	358	2009
region	24	diarrhoea	1796	2009
region	24	cardiac failure	580	2009
region	24	diabete mellitus	411	2009
region	24	fracture	1499	2009
region	24	hypertension	1278	2009
region	24	malaria	24372	2009
region	24	anaemia	1908	2009
region	24	pneumonia	2945	2009
region	24	road accident injury	1403	2009
region	24	STI	389	2009
region	24	HIV	865	2009
region	24	TB	479	2009
region	24	Typhoid	509	2009
region	24	UTI	750	2009
region	25	diarrhoea	1081	2009
region	25	cardiac failure	383	2009
region	25	diabete mellitus	279	2009
region	25	fracture	749	2009
region	25	hypertension	615	2009
region	25	malaria	11638	2009
region	25	anaemia	3245	2009
region	25	pneumonia	1111	2009
region	25	road accident injury	941	2009
region	25	STI	224	2009
region	25	HIV	962	2009
region	25	TB	478	2009
region	25	Typhoid	324	2009
region	25	UTI	1723	2009
region	26	diarrhoea	856	2009
region	26	cardiac failure	127	2009
region	26	diabete mellitus	95	2009
region	26	fracture	135	2009
region	26	hypertension	171	2009
region	26	malaria	5885	2009
region	26	anaemia	2458	2009
region	26	pneumonia	514	2009
region	26	road accident injury	232	2009
region	26	STI	182	2009
region	26	HIV	294	2009
region	26	TB	298	2009
region	26	Typhoid	94	2009
region	26	UTI	713	2009
region	27	diarrhoea	1638	2009
region	27	cardiac failure	552	2009
region	27	diabete mellitus	329	2009
region	27	fracture	1334	2009
region	27	hypertension	591	2009
region	27	malaria	7737	2009
region	27	anaemia	1785	2009
region	27	pneumonia	1952	2009
region	27	road accident injury	1111	2009
region	27	STI	263	2009
region	27	HIV	939	2009
region	27	TB	731	2009
region	27	Typhoid	1637	2009
region	27	UTI	1081	2009
region	29	diarrhoea	1604	2009
region	29	cardiac failure	390	2009
region	29	diabete mellitus	417	2009
region	29	fracture	579	2009
region	29	hypertension	698	2009
region	29	malaria	14510	2009
region	29	anaemia	1924	2009
region	29	pneumonia	1302	2009
region	29	road accident injury	867	2009
region	29	STI	122	2009
region	29	HIV	837	2009
region	29	TB	337	2009
region	29	Typhoid	179	2009
region	29	UTI	1123	2009
region	28	diarrhoea	1980	2009
region	28	cardiac failure	671	2009
region	28	diabete mellitus	1148	2009
region	28	fracture	1676	2009
region	28	hypertension	2246	2009
region	28	malaria	18202	2009
region	28	anaemia	3383	2009
region	28	pneumonia	5042	2009
region	28	road accident injury	1505	2009
region	28	STI	269	2009
region	28	HIV	1452	2009
region	28	TB	934	2009
region	28	Typhoid	896	2009
region	28	UTI	2353	2009
region	7	diarrhoea	\N	2009
region	7	cardiac failure	\N	2009
region	7	diabete mellitus	\N	2009
region	7	fracture	\N	2009
region	7	hypertension	\N	2009
region	7	malaria	\N	2009
region	7	anaemia	\N	2009
region	7	pneumonia	\N	2009
region	7	road accident injury	\N	2009
region	7	STI	\N	2009
region	7	HIV	\N	2009
region	7	TB	\N	2009
region	7	Typhoid	\N	2009
region	7	UTI	\N	2009
region	8	diarrhoea	\N	2009
region	8	cardiac failure	\N	2009
region	8	diabete mellitus	\N	2009
region	8	fracture	\N	2009
region	8	hypertension	\N	2009
region	8	malaria	\N	2009
region	8	anaemia	\N	2009
region	8	pneumonia	\N	2009
region	8	road accident injury	\N	2009
region	8	STI	\N	2009
region	8	HIV	\N	2009
region	8	TB	\N	2009
region	8	Typhoid	\N	2009
region	8	UTI	\N	2009
region	12	diarrhoea	\N	2009
region	12	cardiac failure	\N	2009
region	12	diabete mellitus	\N	2009
region	12	fracture	\N	2009
region	12	hypertension	\N	2009
region	12	malaria	\N	2009
region	12	anaemia	\N	2009
region	12	pneumonia	\N	2009
region	12	road accident injury	\N	2009
region	12	STI	\N	2009
region	12	HIV	\N	2009
region	12	TB	\N	2009
region	12	Typhoid	\N	2009
region	12	UTI	\N	2009
region	13	diarrhoea	\N	2009
region	13	cardiac failure	\N	2009
region	13	diabete mellitus	\N	2009
region	13	fracture	\N	2009
region	13	hypertension	\N	2009
region	13	malaria	\N	2009
region	13	anaemia	\N	2009
region	13	pneumonia	\N	2009
region	13	road accident injury	\N	2009
region	13	STI	\N	2009
region	13	HIV	\N	2009
region	13	TB	\N	2009
region	13	Typhoid	\N	2009
region	13	UTI	\N	2009
region	30	diarrhoea	\N	2009
region	30	cardiac failure	\N	2009
region	30	diabete mellitus	\N	2009
region	30	fracture	\N	2009
region	30	hypertension	\N	2009
region	30	malaria	\N	2009
region	30	anaemia	\N	2009
region	30	pneumonia	\N	2009
region	30	road accident injury	\N	2009
region	30	STI	\N	2009
region	30	HIV	\N	2009
region	30	TB	\N	2009
region	30	Typhoid	\N	2009
region	30	UTI	\N	2009
country	TZ	diarrhoea	41756	2009
country	TZ	cardiac failure	11873	2009
country	TZ	diabete mellitus	18172	2009
country	TZ	fracture	24854	2009
country	TZ	hypertension	32832	2009
country	TZ	malaria	302419	2009
country	TZ	anaemia	52509	2009
country	TZ	pneumonia	58341	2009
country	TZ	road accident injury	27496	2009
country	TZ	STI	5728	2009
country	TZ	HIV	25486	2009
country	TZ	TB	13298	2009
country	TZ	Typhoid	19565	2009
country	TZ	UTI	42853	2009
\.


--
-- Name: pk_inpatientdiagnosisoverfive; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY inpatientdiagnosisoverfive
    ADD CONSTRAINT pk_inpatientdiagnosisoverfive PRIMARY KEY (geo_level, geo_code, geo_version, "inpatient diagnosis over five");


--
-- PostgreSQL database dump complete
--

