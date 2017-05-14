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

ALTER TABLE IF EXISTS ONLY public.schoolattendance DROP CONSTRAINT IF EXISTS schoolattendance_pkey;
DROP TABLE IF EXISTS public.schoolattendance;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schoolattendance; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE schoolattendance (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "school attendance" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: schoolattendance; Type: TABLE DATA; Schema: public; Owner: -
--

COPY schoolattendance (geo_level, geo_code, "school attendance", total) FROM stdin;
district	22	pupils in school	78.8
district	23	pupils in school	82.0
district	24	pupils in school	68.3
district	25	pupils in school	85.6
district	26	pupils in school	75.4
district	27	pupils in school	69.3
district	28	pupils in school	61.5
district	29	pupils in school	78.3
district	30	pupils in school	82.8
district	31	pupils in school	66.7
region	28	pupils in school	74.9
district	89	pupils in school	60.3
district	90	pupils in school	57.7
district	91	pupils in school	63.1
district	92	pupils in school	69.6
district	93	pupils in school	51.7
district	94	pupils in school	76.3
district	95	pupils in school	54.6
region	29	pupils in school	61.9
district	128	pupils in school	71.3
district	129	pupils in school	65.4
district	130	pupils in school	76.2
district	131	pupils in school	73.3
district	132	pupils in school	79.3
district	133	pupils in school	72.3
district	169	pupils in school	87.9
region	16	pupils in school	75.1
district	134	pupils in school	82.6
district	135	pupils in school	61.5
district	136	pupils in school	69.0
district	137	pupils in school	67.1
district	138	pupils in school	66.2
district	139	pupils in school	66.5
region	15	pupils in school	68.8
region	13	pupils in school	0
district	49	pupils in school	66.1
district	50	pupils in school	72.6
district	51	pupils in school	73.4
district	52	pupils in school	76.7
district	53	pupils in school	73.1
district	54	pupils in school	81.0
region	14	pupils in school	73.8
district	96	pupils in school	59.0
district	97	pupils in school	59.5
district	98	pupils in school	57.8
district	99	pupils in school	75.7
region	23	pupils in school	63.0
district	55	pupils in school	67.3
district	56	pupils in school	81.9
district	57	pupils in school	77.3
district	58	pupils in school	79.8
district	59	pupils in school	70.1
district	60	pupils in school	84.7
district	61	pupils in school	79.9
region	19	pupils in school	77.3
district	140	pupils in school	70.2
district	141	pupils in school	82.9
district	142	pupils in school	75.2
district	143	pupils in school	75.3
district	144	pupils in school	80.8
district	145	pupils in school	86.0
region	21	pupils in school	78.4
region	30	pupils in school	0
district	108	pupils in school	80.5
district	109	pupils in school	66.5
district	110	pupils in school	55.2
district	111	pupils in school	58.7
district	112	pupils in school	67.1
region	25	pupils in school	65.6
district	15	pupils in school	90.4
district	16	pupils in school	84.6
district	17	pupils in school	85.8
district	18	pupils in school	87.2
district	19	pupils in school	87.4
district	20	pupils in school	88.5
district	21	pupils in school	73.3
region	11	pupils in school	85.3
district	100	pupils in school	65.8
district	101	pupils in school	66.2
district	102	pupils in school	73.1
district	103	pupils in school	83.9
district	104	pupils in school	68.9
district	105	pupils in school	65.7
district	106	pupils in school	64.7
district	107	pupils in school	72.9
region	10	pupils in school	70.1
district	1	pupils in school	76.1
district	2	pupils in school	65.0
district	3	pupils in school	52.2
district	4	pupils in school	55.4
district	5	pupils in school	80.8
district	6	pupils in school	60.4
district	7	pupils in school	66.2
region	3	pupils in school	65.2
district	39	pupils in school	68.7
district	40	pupils in school	80.6
district	41	pupils in school	83.2
district	42	pupils in school	78.3
district	43	pupils in school	68.5
district	44	pupils in school	81.4
district	45	pupils in school	81.3
region	22	pupils in school	77.4
district	32	pupils in school	66.2
district	33	pupils in school	67.0
district	34	pupils in school	77.6
district	35	pupils in school	77.8
district	36	pupils in school	85.2
district	37	pupils in school	73.1
district	38	pupils in school	56.1
region	18	pupils in school	71.9
region	8	pupils in school	0
region	7	pupils in school	0
district	83	pupils in school	60.1
district	84	pupils in school	64.7
district	85	pupils in school	65.8
district	86	pupils in school	78.6
district	87	pupils in school	63.2
district	88	pupils in school	69.5
region	27	pupils in school	67.0
district	149	pupils in school	62.4
district	150	pupils in school	52.9
district	151	pupils in school	68.7
district	152	pupils in school	67.2
district	153	pupils in school	61.4
region	26	pupils in school	62.5
district	121	pupils in school	79.0
district	122	pupils in school	61.7
district	123	pupils in school	88.5
district	124	pupils in school	66.5
district	125	pupils in school	65.8
district	126	pupils in school	84.9
district	127	pupils in school	61.7
region	20	pupils in school	72.6
district	113	pupils in school	74.6
district	114	pupils in school	73.0
district	115	pupils in school	71.6
district	116	pupils in school	51.0
district	117	pupils in school	61.2
district	118	pupils in school	83.0
district	119	pupils in school	75.5
district	120	pupils in school	62.2
region	6	pupils in school	69.0
district	8	pupils in school	67.1
district	9	pupils in school	83.9
district	10	pupils in school	79.0
district	11	pupils in school	78.1
district	12	pupils in school	47.6
district	13	pupils in school	79.0
district	14	pupils in school	54.3
region	1	pupils in school	69.9
district	68	pupils in school	81.7
district	69	pupils in school	88.6
district	70	pupils in school	84.3
district	71	pupils in school	81.9
district	72	pupils in school	87.6
region	5	pupils in school	84.8
district	146	pupils in school	72.1
district	147	pupils in school	60.4
district	148	pupils in school	59.4
region	9	pupils in school	64.0
district	46	pupils in school	86.9
district	47	pupils in school	81.9
district	48	pupils in school	86.1
region	2	pupils in school	85.0
district	73	pupils in school	63.6
district	74	pupils in school	81.1
district	75	pupils in school	90.2
district	76	pupils in school	85.6
district	77	pupils in school	83.7
district	78	pupils in school	76.1
district	79	pupils in school	62.7
district	80	pupils in school	83.1
district	81	pupils in school	70.4
district	82	pupils in school	72.6
region	17	pupils in school	76.9
district	62	pupils in school	69.4
district	63	pupils in school	85.5
district	64	pupils in school	79.4
district	65	pupils in school	84.8
district	66	pupils in school	81.5
district	67	pupils in school	71.0
region	24	pupils in school	78.6
district	154	pupils in school	63.5
district	155	pupils in school	58.5
district	156	pupils in school	61.4
district	157	pupils in school	52.9
district	158	pupils in school	62.9
region	4	pupils in school	59.8
country	TZ	pupils in school	71.4
district	22	drop outs	1.9
district	23	drop outs	1.4
district	24	drop outs	4.7
district	25	drop outs	0.7
district	26	drop outs	2.4
district	27	drop outs	2.8
district	28	drop outs	4.6
district	29	drop outs	3.6
district	30	drop outs	1.8
district	31	drop outs	7.1
region	28	drop outs	3.1
district	89	drop outs	2.8
district	90	drop outs	3.9
district	91	drop outs	4.7
district	92	drop outs	4.5
district	93	drop outs	4.2
district	94	drop outs	2.1
district	95	drop outs	5.3
region	29	drop outs	3.9
district	128	drop outs	4.7
district	129	drop outs	4.6
district	130	drop outs	1.4
district	131	drop outs	1.7
district	132	drop outs	1.4
district	133	drop outs	2.2
district	169	drop outs	0.8
region	16	drop outs	2.4
district	134	drop outs	1.9
district	135	drop outs	5.7
district	136	drop outs	4.1
district	137	drop outs	3.5
district	138	drop outs	4.4
district	139	drop outs	3.1
region	15	drop outs	3.8
region	13	drop outs	0
district	49	drop outs	6.1
district	50	drop outs	3.5
district	51	drop outs	4.6
district	52	drop outs	6.3
district	53	drop outs	7.0
district	54	drop outs	4.2
region	14	drop outs	5.3
district	96	drop outs	9.1
district	97	drop outs	8.3
district	98	drop outs	5.4
district	99	drop outs	5.2
region	23	drop outs	7.0
district	55	drop outs	10.3
district	56	drop outs	4.2
district	57	drop outs	4.9
district	58	drop outs	4.5
district	59	drop outs	1.4
district	60	drop outs	1.9
district	61	drop outs	5.9
region	19	drop outs	4.7
district	140	drop outs	3.0
district	141	drop outs	2.2
district	142	drop outs	2.8
district	143	drop outs	3.6
district	144	drop outs	3.2
district	145	drop outs	1.4
region	21	drop outs	2.7
region	30	drop outs	0
district	108	drop outs	2.8
district	109	drop outs	4.1
district	110	drop outs	9.3
district	111	drop outs	5.8
district	112	drop outs	4.5
region	25	drop outs	5.3
district	15	drop outs	0.5
district	16	drop outs	0.8
district	17	drop outs	1.5
district	18	drop outs	1.2
district	19	drop outs	1.2
district	20	drop outs	0.8
district	21	drop outs	2.1
region	11	drop outs	1.2
district	100	drop outs	7.8
district	101	drop outs	7.2
district	102	drop outs	4.6
district	103	drop outs	2.8
district	104	drop outs	5.2
district	105	drop outs	5.3
district	106	drop outs	7.8
district	107	drop outs	8.1
region	10	drop outs	6.1
district	1	drop outs	1.9
district	2	drop outs	7.2
district	3	drop outs	6.0
district	4	drop outs	4.3
district	5	drop outs	4.1
district	6	drop outs	6.5
district	7	drop outs	6.9
region	3	drop outs	5.3
district	39	drop outs	3.2
district	40	drop outs	2.2
district	41	drop outs	2.2
district	42	drop outs	5.1
district	43	drop outs	4.0
district	44	drop outs	2.9
district	45	drop outs	2.6
region	22	drop outs	3.2
district	32	drop outs	5.1
district	33	drop outs	2.1
district	34	drop outs	3.5
district	35	drop outs	2.5
district	36	drop outs	0.8
district	37	drop outs	3.1
district	38	drop outs	5.6
region	18	drop outs	3.2
region	8	drop outs	0
region	7	drop outs	0
district	83	drop outs	5.1
district	84	drop outs	6.4
district	85	drop outs	6.1
district	86	drop outs	2.1
district	87	drop outs	4.8
district	88	drop outs	3.6
region	27	drop outs	4.7
district	149	drop outs	5.5
district	150	drop outs	6.7
district	151	drop outs	3.5
district	152	drop outs	6.1
district	153	drop outs	5.6
region	26	drop outs	5.5
district	121	drop outs	3.3
district	122	drop outs	7.1
district	123	drop outs	1.8
district	124	drop outs	7.9
district	125	drop outs	5.4
district	126	drop outs	2.2
district	127	drop outs	4.5
region	20	drop outs	4.6
district	113	drop outs	3.5
district	114	drop outs	2.8
district	115	drop outs	3.6
district	116	drop outs	11.4
district	117	drop outs	7.9
district	118	drop outs	1.3
district	119	drop outs	2.1
district	120	drop outs	7.7
region	6	drop outs	5.0
district	8	drop outs	3.8
district	9	drop outs	2.2
district	10	drop outs	0.7
district	11	drop outs	4.6
district	12	drop outs	3.8
district	13	drop outs	0.7
district	14	drop outs	1.5
region	1	drop outs	2.5
district	68	drop outs	1.8
district	69	drop outs	1.7
district	70	drop outs	1.4
district	71	drop outs	1.7
district	72	drop outs	0.9
region	5	drop outs	1.5
district	146	drop outs	6.1
district	147	drop outs	5.3
district	148	drop outs	6.7
region	9	drop outs	6.0
district	46	drop outs	1.1
district	47	drop outs	1.6
district	48	drop outs	1.7
region	2	drop outs	1.5
district	73	drop outs	5.1
district	74	drop outs	6.3
district	75	drop outs	1.0
district	76	drop outs	3.5
district	77	drop outs	3.1
district	78	drop outs	3.7
district	79	drop outs	3.8
district	80	drop outs	3.1
district	81	drop outs	5.1
district	82	drop outs	6.0
region	17	drop outs	4.1
district	62	drop outs	4.3
district	63	drop outs	2.2
district	64	drop outs	2.1
district	65	drop outs	1.4
district	66	drop outs	4.3
district	67	drop outs	5.8
region	24	drop outs	3.4
district	154	drop outs	6.1
district	155	drop outs	6.6
district	156	drop outs	5.0
district	157	drop outs	6.8
district	158	drop outs	4.8
region	4	drop outs	5.9
country	TZ	drop outs	4.2
region	12	pupils in school	0
region	12	drop outs	0
district	159	pupils in school	0
district	159	drop outs	0
district	160	pupils in school	0
district	160	drop outs	0
district	161	pupils in school	0
district	161	drop outs	0
district	162	pupils in school	0
district	162	drop outs	0
district	163	pupils in school	0
district	163	drop outs	0
district	164	pupils in school	0
district	164	drop outs	0
district	165	pupils in school	0
district	165	drop outs	0
district	166	pupils in school	0
district	166	drop outs	0
district	167	pupils in school	0
district	167	drop outs	0
district	168	pupils in school	0
district	168	drop outs	0
\.

--
-- Name: schoolattendance_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY schoolattendance
    ADD CONSTRAINT schoolattendance_pkey PRIMARY KEY (geo_level, geo_code, "school attendance");


--
-- PostgreSQL database dump complete
--

