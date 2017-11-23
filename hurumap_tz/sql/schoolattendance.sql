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

ALTER TABLE IF EXISTS ONLY public.schoolattendance DROP CONSTRAINT IF EXISTS pk_schoolattendance;
DROP TABLE IF EXISTS public.schoolattendance;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schoolattendance; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schoolattendance (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "school attendance" character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: schoolattendance; Type: TABLE DATA; Schema: public; Owner: -
--

COPY schoolattendance (geo_level, geo_code, "school attendance", total, geo_version) FROM stdin;
district	22	pupils in school	78.7999999999999972	2009
district	23	pupils in school	82	2009
district	24	pupils in school	68.2999999999999972	2009
district	25	pupils in school	85.5999999999999943	2009
district	26	pupils in school	75.4000000000000057	2009
district	27	pupils in school	69.2999999999999972	2009
district	28	pupils in school	61.5	2009
district	29	pupils in school	78.2999999999999972	2009
district	30	pupils in school	82.7999999999999972	2009
district	31	pupils in school	66.7000000000000028	2009
region	28	pupils in school	74.9000000000000057	2009
district	89	pupils in school	60.2999999999999972	2009
district	90	pupils in school	57.7000000000000028	2009
district	91	pupils in school	63.1000000000000014	2009
district	92	pupils in school	69.5999999999999943	2009
district	93	pupils in school	51.7000000000000028	2009
district	94	pupils in school	76.2999999999999972	2009
district	95	pupils in school	54.6000000000000014	2009
region	29	pupils in school	61.8999999999999986	2009
district	128	pupils in school	71.2999999999999972	2009
district	129	pupils in school	65.4000000000000057	2009
district	130	pupils in school	76.2000000000000028	2009
district	131	pupils in school	73.2999999999999972	2009
district	132	pupils in school	79.2999999999999972	2009
district	133	pupils in school	72.2999999999999972	2009
district	169	pupils in school	87.9000000000000057	2009
region	16	pupils in school	75.0999999999999943	2009
district	134	pupils in school	82.5999999999999943	2009
district	135	pupils in school	61.5	2009
district	136	pupils in school	69	2009
district	137	pupils in school	67.0999999999999943	2009
district	138	pupils in school	66.2000000000000028	2009
district	139	pupils in school	66.5	2009
region	15	pupils in school	68.7999999999999972	2009
region	13	pupils in school	0	2009
district	49	pupils in school	66.0999999999999943	2009
district	50	pupils in school	72.5999999999999943	2009
district	51	pupils in school	73.4000000000000057	2009
district	52	pupils in school	76.7000000000000028	2009
district	53	pupils in school	73.0999999999999943	2009
district	54	pupils in school	81	2009
region	14	pupils in school	73.7999999999999972	2009
district	96	pupils in school	59	2009
district	97	pupils in school	59.5	2009
district	98	pupils in school	57.7999999999999972	2009
district	99	pupils in school	75.7000000000000028	2009
region	23	pupils in school	63	2009
district	55	pupils in school	67.2999999999999972	2009
district	56	pupils in school	81.9000000000000057	2009
district	106	drop outs	7.79999999999999982	2009
district	57	pupils in school	77.2999999999999972	2009
district	58	pupils in school	79.7999999999999972	2009
district	59	pupils in school	70.0999999999999943	2009
district	60	pupils in school	84.7000000000000028	2009
district	61	pupils in school	79.9000000000000057	2009
region	19	pupils in school	77.2999999999999972	2009
district	140	pupils in school	70.2000000000000028	2009
district	141	pupils in school	82.9000000000000057	2009
district	142	pupils in school	75.2000000000000028	2009
district	143	pupils in school	75.2999999999999972	2009
district	144	pupils in school	80.7999999999999972	2009
district	145	pupils in school	86	2009
region	21	pupils in school	78.4000000000000057	2009
region	30	pupils in school	0	2009
district	108	pupils in school	80.5	2009
district	109	pupils in school	66.5	2009
district	110	pupils in school	55.2000000000000028	2009
district	111	pupils in school	58.7000000000000028	2009
district	112	pupils in school	67.0999999999999943	2009
region	25	pupils in school	65.5999999999999943	2009
district	15	pupils in school	90.4000000000000057	2009
district	16	pupils in school	84.5999999999999943	2009
district	17	pupils in school	85.7999999999999972	2009
district	18	pupils in school	87.2000000000000028	2009
district	19	pupils in school	87.4000000000000057	2009
district	20	pupils in school	88.5	2009
district	21	pupils in school	73.2999999999999972	2009
region	11	pupils in school	85.2999999999999972	2009
district	100	pupils in school	65.7999999999999972	2009
district	101	pupils in school	66.2000000000000028	2009
district	102	pupils in school	73.0999999999999943	2009
district	103	pupils in school	83.9000000000000057	2009
district	104	pupils in school	68.9000000000000057	2009
district	105	pupils in school	65.7000000000000028	2009
district	106	pupils in school	64.7000000000000028	2009
district	107	pupils in school	72.9000000000000057	2009
region	10	pupils in school	70.0999999999999943	2009
district	1	pupils in school	76.0999999999999943	2009
district	2	pupils in school	65	2009
district	3	pupils in school	52.2000000000000028	2009
district	4	pupils in school	55.3999999999999986	2009
district	5	pupils in school	80.7999999999999972	2009
district	6	pupils in school	60.3999999999999986	2009
district	7	pupils in school	66.2000000000000028	2009
region	3	pupils in school	65.2000000000000028	2009
district	39	pupils in school	68.7000000000000028	2009
district	40	pupils in school	80.5999999999999943	2009
district	41	pupils in school	83.2000000000000028	2009
district	42	pupils in school	78.2999999999999972	2009
district	43	pupils in school	68.5	2009
district	44	pupils in school	81.4000000000000057	2009
district	45	pupils in school	81.2999999999999972	2009
region	22	pupils in school	77.4000000000000057	2009
district	32	pupils in school	66.2000000000000028	2009
district	33	pupils in school	67	2009
district	34	pupils in school	77.5999999999999943	2009
district	35	pupils in school	77.7999999999999972	2009
district	36	pupils in school	85.2000000000000028	2009
district	37	pupils in school	73.0999999999999943	2009
district	38	pupils in school	56.1000000000000014	2009
region	18	pupils in school	71.9000000000000057	2009
region	8	pupils in school	0	2009
region	7	pupils in school	0	2009
district	83	pupils in school	60.1000000000000014	2009
district	84	pupils in school	64.7000000000000028	2009
district	85	pupils in school	65.7999999999999972	2009
district	86	pupils in school	78.5999999999999943	2009
district	87	pupils in school	63.2000000000000028	2009
district	88	pupils in school	69.5	2009
region	27	pupils in school	67	2009
district	149	pupils in school	62.3999999999999986	2009
district	150	pupils in school	52.8999999999999986	2009
district	151	pupils in school	68.7000000000000028	2009
district	152	pupils in school	67.2000000000000028	2009
district	153	pupils in school	61.3999999999999986	2009
region	26	pupils in school	62.5	2009
district	121	pupils in school	79	2009
district	122	pupils in school	61.7000000000000028	2009
district	123	pupils in school	88.5	2009
district	124	pupils in school	66.5	2009
district	125	pupils in school	65.7999999999999972	2009
district	126	pupils in school	84.9000000000000057	2009
district	127	pupils in school	61.7000000000000028	2009
region	20	pupils in school	72.5999999999999943	2009
district	113	pupils in school	74.5999999999999943	2009
district	114	pupils in school	73	2009
district	115	pupils in school	71.5999999999999943	2009
district	116	pupils in school	51	2009
district	117	pupils in school	61.2000000000000028	2009
district	118	pupils in school	83	2009
district	119	pupils in school	75.5	2009
district	120	pupils in school	62.2000000000000028	2009
region	6	pupils in school	69	2009
district	8	pupils in school	67.0999999999999943	2009
district	9	pupils in school	83.9000000000000057	2009
district	10	pupils in school	79	2009
district	11	pupils in school	78.0999999999999943	2009
district	12	pupils in school	47.6000000000000014	2009
district	13	pupils in school	79	2009
district	14	pupils in school	54.2999999999999972	2009
region	1	pupils in school	69.9000000000000057	2009
district	68	pupils in school	81.7000000000000028	2009
district	69	pupils in school	88.5999999999999943	2009
district	70	pupils in school	84.2999999999999972	2009
district	71	pupils in school	81.9000000000000057	2009
district	72	pupils in school	87.5999999999999943	2009
region	5	pupils in school	84.7999999999999972	2009
district	146	pupils in school	72.0999999999999943	2009
district	147	pupils in school	60.3999999999999986	2009
district	148	pupils in school	59.3999999999999986	2009
region	9	pupils in school	64	2009
district	46	pupils in school	86.9000000000000057	2009
district	47	pupils in school	81.9000000000000057	2009
district	48	pupils in school	86.0999999999999943	2009
region	2	pupils in school	85	2009
district	73	pupils in school	63.6000000000000014	2009
district	74	pupils in school	81.0999999999999943	2009
district	75	pupils in school	90.2000000000000028	2009
district	76	pupils in school	85.5999999999999943	2009
district	77	pupils in school	83.7000000000000028	2009
district	78	pupils in school	76.0999999999999943	2009
district	79	pupils in school	62.7000000000000028	2009
district	80	pupils in school	83.0999999999999943	2009
district	81	pupils in school	70.4000000000000057	2009
district	82	pupils in school	72.5999999999999943	2009
region	17	pupils in school	76.9000000000000057	2009
district	62	pupils in school	69.4000000000000057	2009
district	63	pupils in school	85.5	2009
district	64	pupils in school	79.4000000000000057	2009
district	65	pupils in school	84.7999999999999972	2009
district	66	pupils in school	81.5	2009
district	67	pupils in school	71	2009
region	24	pupils in school	78.5999999999999943	2009
district	154	pupils in school	63.5	2009
district	155	pupils in school	58.5	2009
district	156	pupils in school	61.3999999999999986	2009
district	157	pupils in school	52.8999999999999986	2009
district	158	pupils in school	62.8999999999999986	2009
region	4	pupils in school	59.7999999999999972	2009
country	TZ	pupils in school	71.4000000000000057	2009
district	22	drop outs	1.89999999999999991	2009
district	23	drop outs	1.39999999999999991	2009
district	24	drop outs	4.70000000000000018	2009
district	25	drop outs	0.699999999999999956	2009
district	26	drop outs	2.39999999999999991	2009
district	27	drop outs	2.79999999999999982	2009
district	28	drop outs	4.59999999999999964	2009
district	29	drop outs	3.60000000000000009	2009
district	30	drop outs	1.80000000000000004	2009
district	31	drop outs	7.09999999999999964	2009
region	28	drop outs	3.10000000000000009	2009
district	89	drop outs	2.79999999999999982	2009
district	90	drop outs	3.89999999999999991	2009
district	91	drop outs	4.70000000000000018	2009
district	92	drop outs	4.5	2009
district	93	drop outs	4.20000000000000018	2009
district	94	drop outs	2.10000000000000009	2009
district	95	drop outs	5.29999999999999982	2009
region	29	drop outs	3.89999999999999991	2009
district	128	drop outs	4.70000000000000018	2009
district	129	drop outs	4.59999999999999964	2009
district	130	drop outs	1.39999999999999991	2009
district	131	drop outs	1.69999999999999996	2009
district	132	drop outs	1.39999999999999991	2009
district	133	drop outs	2.20000000000000018	2009
district	169	drop outs	0.800000000000000044	2009
region	16	drop outs	2.39999999999999991	2009
district	134	drop outs	1.89999999999999991	2009
district	135	drop outs	5.70000000000000018	2009
district	136	drop outs	4.09999999999999964	2009
district	137	drop outs	3.5	2009
district	138	drop outs	4.40000000000000036	2009
district	139	drop outs	3.10000000000000009	2009
region	15	drop outs	3.79999999999999982	2009
region	13	drop outs	0	2009
district	49	drop outs	6.09999999999999964	2009
district	50	drop outs	3.5	2009
district	51	drop outs	4.59999999999999964	2009
district	52	drop outs	6.29999999999999982	2009
district	53	drop outs	7	2009
district	54	drop outs	4.20000000000000018	2009
region	14	drop outs	5.29999999999999982	2009
district	96	drop outs	9.09999999999999964	2009
district	97	drop outs	8.30000000000000071	2009
district	98	drop outs	5.40000000000000036	2009
district	99	drop outs	5.20000000000000018	2009
region	23	drop outs	7	2009
district	55	drop outs	10.3000000000000007	2009
district	56	drop outs	4.20000000000000018	2009
district	57	drop outs	4.90000000000000036	2009
district	58	drop outs	4.5	2009
district	59	drop outs	1.39999999999999991	2009
district	60	drop outs	1.89999999999999991	2009
district	61	drop outs	5.90000000000000036	2009
region	19	drop outs	4.70000000000000018	2009
district	140	drop outs	3	2009
district	141	drop outs	2.20000000000000018	2009
district	142	drop outs	2.79999999999999982	2009
district	143	drop outs	3.60000000000000009	2009
district	144	drop outs	3.20000000000000018	2009
district	145	drop outs	1.39999999999999991	2009
region	21	drop outs	2.70000000000000018	2009
region	30	drop outs	0	2009
district	108	drop outs	2.79999999999999982	2009
district	109	drop outs	4.09999999999999964	2009
district	110	drop outs	9.30000000000000071	2009
district	111	drop outs	5.79999999999999982	2009
district	112	drop outs	4.5	2009
region	25	drop outs	5.29999999999999982	2009
district	15	drop outs	0.5	2009
district	16	drop outs	0.800000000000000044	2009
district	17	drop outs	1.5	2009
district	18	drop outs	1.19999999999999996	2009
district	19	drop outs	1.19999999999999996	2009
district	20	drop outs	0.800000000000000044	2009
district	21	drop outs	2.10000000000000009	2009
region	11	drop outs	1.19999999999999996	2009
district	100	drop outs	7.79999999999999982	2009
district	101	drop outs	7.20000000000000018	2009
district	102	drop outs	4.59999999999999964	2009
district	103	drop outs	2.79999999999999982	2009
district	104	drop outs	5.20000000000000018	2009
district	105	drop outs	5.29999999999999982	2009
district	107	drop outs	8.09999999999999964	2009
region	10	drop outs	6.09999999999999964	2009
district	1	drop outs	1.89999999999999991	2009
district	2	drop outs	7.20000000000000018	2009
district	3	drop outs	6	2009
district	4	drop outs	4.29999999999999982	2009
district	5	drop outs	4.09999999999999964	2009
district	6	drop outs	6.5	2009
district	7	drop outs	6.90000000000000036	2009
region	3	drop outs	5.29999999999999982	2009
district	39	drop outs	3.20000000000000018	2009
district	40	drop outs	2.20000000000000018	2009
district	41	drop outs	2.20000000000000018	2009
district	42	drop outs	5.09999999999999964	2009
district	43	drop outs	4	2009
district	44	drop outs	2.89999999999999991	2009
district	45	drop outs	2.60000000000000009	2009
region	22	drop outs	3.20000000000000018	2009
district	32	drop outs	5.09999999999999964	2009
district	33	drop outs	2.10000000000000009	2009
district	34	drop outs	3.5	2009
district	35	drop outs	2.5	2009
district	36	drop outs	0.800000000000000044	2009
district	37	drop outs	3.10000000000000009	2009
district	38	drop outs	5.59999999999999964	2009
region	18	drop outs	3.20000000000000018	2009
region	8	drop outs	0	2009
region	7	drop outs	0	2009
district	83	drop outs	5.09999999999999964	2009
district	84	drop outs	6.40000000000000036	2009
district	85	drop outs	6.09999999999999964	2009
district	86	drop outs	2.10000000000000009	2009
district	87	drop outs	4.79999999999999982	2009
district	88	drop outs	3.60000000000000009	2009
region	27	drop outs	4.70000000000000018	2009
district	149	drop outs	5.5	2009
district	150	drop outs	6.70000000000000018	2009
district	151	drop outs	3.5	2009
district	152	drop outs	6.09999999999999964	2009
district	153	drop outs	5.59999999999999964	2009
region	26	drop outs	5.5	2009
district	121	drop outs	3.29999999999999982	2009
district	122	drop outs	7.09999999999999964	2009
district	123	drop outs	1.80000000000000004	2009
district	124	drop outs	7.90000000000000036	2009
district	125	drop outs	5.40000000000000036	2009
district	126	drop outs	2.20000000000000018	2009
district	127	drop outs	4.5	2009
region	20	drop outs	4.59999999999999964	2009
district	113	drop outs	3.5	2009
district	114	drop outs	2.79999999999999982	2009
district	115	drop outs	3.60000000000000009	2009
district	116	drop outs	11.4000000000000004	2009
district	117	drop outs	7.90000000000000036	2009
district	118	drop outs	1.30000000000000004	2009
district	119	drop outs	2.10000000000000009	2009
district	120	drop outs	7.70000000000000018	2009
region	6	drop outs	5	2009
district	8	drop outs	3.79999999999999982	2009
district	9	drop outs	2.20000000000000018	2009
district	10	drop outs	0.699999999999999956	2009
district	11	drop outs	4.59999999999999964	2009
district	12	drop outs	3.79999999999999982	2009
district	13	drop outs	0.699999999999999956	2009
district	14	drop outs	1.5	2009
region	1	drop outs	2.5	2009
district	68	drop outs	1.80000000000000004	2009
district	69	drop outs	1.69999999999999996	2009
district	70	drop outs	1.39999999999999991	2009
district	71	drop outs	1.69999999999999996	2009
district	72	drop outs	0.900000000000000022	2009
region	5	drop outs	1.5	2009
district	146	drop outs	6.09999999999999964	2009
district	147	drop outs	5.29999999999999982	2009
district	148	drop outs	6.70000000000000018	2009
region	9	drop outs	6	2009
district	46	drop outs	1.10000000000000009	2009
district	47	drop outs	1.60000000000000009	2009
district	48	drop outs	1.69999999999999996	2009
region	2	drop outs	1.5	2009
district	73	drop outs	5.09999999999999964	2009
district	74	drop outs	6.29999999999999982	2009
district	75	drop outs	1	2009
district	76	drop outs	3.5	2009
district	77	drop outs	3.10000000000000009	2009
district	78	drop outs	3.70000000000000018	2009
district	79	drop outs	3.79999999999999982	2009
district	80	drop outs	3.10000000000000009	2009
district	81	drop outs	5.09999999999999964	2009
district	82	drop outs	6	2009
region	17	drop outs	4.09999999999999964	2009
district	62	drop outs	4.29999999999999982	2009
district	63	drop outs	2.20000000000000018	2009
district	64	drop outs	2.10000000000000009	2009
district	65	drop outs	1.39999999999999991	2009
district	66	drop outs	4.29999999999999982	2009
district	67	drop outs	5.79999999999999982	2009
region	24	drop outs	3.39999999999999991	2009
district	154	drop outs	6.09999999999999964	2009
district	155	drop outs	6.59999999999999964	2009
district	156	drop outs	5	2009
district	157	drop outs	6.79999999999999982	2009
district	158	drop outs	4.79999999999999982	2009
region	4	drop outs	5.90000000000000036	2009
country	TZ	drop outs	4.20000000000000018	2009
region	12	pupils in school	0	2009
region	12	drop outs	0	2009
district	159	pupils in school	0	2009
district	159	drop outs	0	2009
district	160	pupils in school	0	2009
district	160	drop outs	0	2009
district	161	pupils in school	0	2009
district	161	drop outs	0	2009
district	162	pupils in school	0	2009
district	162	drop outs	0	2009
district	163	pupils in school	0	2009
district	163	drop outs	0	2009
district	164	pupils in school	0	2009
district	164	drop outs	0	2009
district	165	pupils in school	0	2009
district	165	drop outs	0	2009
district	166	pupils in school	0	2009
district	166	drop outs	0	2009
district	167	pupils in school	0	2009
district	167	drop outs	0	2009
district	168	pupils in school	0	2009
district	168	drop outs	0	2009
\.


--
-- Name: pk_schoolattendance; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schoolattendance
    ADD CONSTRAINT pk_schoolattendance PRIMARY KEY (geo_level, geo_code, geo_version, "school attendance");


--
-- PostgreSQL database dump complete
--

