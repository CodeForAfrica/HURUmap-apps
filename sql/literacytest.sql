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

ALTER TABLE IF EXISTS ONLY public.literacytest DROP CONSTRAINT IF EXISTS literacytest_pkey;
DROP TABLE IF EXISTS public.literacytest;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: literacytest; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE literacytest (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "literacy test" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: literacytest; Type: TABLE DATA; Schema: public; Owner: -
--

COPY literacytest (geo_level, geo_code, "literacy test", total) FROM stdin;
district	22	math	31.3
district	23	math	34.1
district	24	math	55.0
district	25	math	53.1
district	26	math	38.7
district	27	math	32.5
district	28	math	31.4
district	29	math	38.3
district	30	math	54.9
district	31	math	34.2
region	28	math	40.3
district	89	math	27.5
district	90	math	24.4
district	91	math	19.6
district	92	math	35.6
district	93	math	20.8
district	94	math	43.5
district	95	math	23.6
region	29	math	27.9
district	128	math	35.0
district	129	math	21.3
district	130	math	30.3
district	131	math	50.4
district	132	math	38.0
district	133	math	35.2
district	169	math	58.1
region	16	math	38.3
district	134	math	53.0
district	135	math	41.8
district	136	math	30.1
district	137	math	42.4
district	138	math	31.0
district	139	math	47.7
region	15	math	41.0
region	13	math	0
district	49	math	29.1
district	50	math	40.8
district	51	math	37.5
district	52	math	45.5
district	53	math	30.1
district	54	math	58.7
region	14	math	40.3
district	96	math	20.9
district	97	math	22.0
district	98	math	27.0
district	99	math	43.6
region	23	math	28.4
district	55	math	34.2
district	56	math	40.3
district	57	math	46.4
district	58	math	39.4
district	59	math	45.7
district	60	math	47.3
district	61	math	46.0
region	19	math	42.8
district	140	math	54.2
district	141	math	51.8
district	142	math	47.7
district	143	math	47.4
district	144	math	39.3
district	145	math	56.2
region	21	math	49.4
region	30	math	0
district	108	math	58.7
district	109	math	35.1
district	110	math	22.4
district	111	math	26.1
district	112	math	36.3
region	25	math	35.7
district	15	math	55.1
district	16	math	62.0
district	17	math	60.0
district	18	math	58.5
district	19	math	61.8
district	20	math	67.7
district	21	math	49.3
region	11	math	59.2
district	100	math	23.5
district	101	math	30.8
district	102	math	39.7
district	103	math	48.9
district	104	math	24.0
district	105	math	31.4
district	106	math	30.1
district	107	math	46.4
region	10	math	34.4
district	1	math	37.4
district	2	math	35.5
district	3	math	29.0
district	4	math	33.6
district	5	math	47.8
district	6	math	29.6
district	7	math	26.7
region	3	math	34.2
district	39	math	44.8
district	40	math	61.8
district	41	math	49.6
district	42	math	40.8
district	43	math	39.3
district	44	math	48.5
district	45	math	55.6
region	22	math	48.6
district	32	math	39.3
district	33	math	32.6
district	34	math	29.6
district	35	math	28.7
district	36	math	60.2
district	37	math	37.7
district	38	math	27.1
region	18	math	36.5
region	8	math	0
region	7	math	0
district	83	math	34.0
district	84	math	44.5
district	85	math	34.9
district	86	math	41.0
district	87	math	37.0
district	88	math	34.8
region	27	math	37.7
district	149	math	33.9
district	150	math	19.4
district	151	math	29.8
district	152	math	36.6
district	153	math	40.5
region	26	math	32.0
district	121	math	36.5
district	122	math	32.7
district	123	math	60.0
district	124	math	30.7
district	125	math	44.5
district	126	math	52.1
district	127	math	22.9
region	20	math	39.9
district	113	math	42.5
district	114	math	36.7
district	115	math	42.1
district	116	math	23.7
district	117	math	29.0
district	118	math	63.7
district	119	math	37.7
district	120	math	24.8
region	6	math	37.5
district	8	math	39.5
district	9	math	58.6
district	10	math	68.0
district	11	math	36.4
district	12	math	21.6
district	13	math	68.0
district	14	math	25.0
region	1	math	45.3
district	68	math	46.7
district	69	math	48.0
district	70	math	71.1
district	71	math	56.7
district	72	math	60.7
region	5	math	56.6
district	146	math	38.7
district	147	math	20.5
district	148	math	23.1
region	9	math	27.4
district	46	math	61.1
district	47	math	64.0
district	48	math	67.2
region	2	math	64.1
district	73	math	28.7
district	74	math	41.1
district	75	math	55.6
district	76	math	56.7
district	77	math	46.5
district	78	math	44.8
district	79	math	38.0
district	80	math	62.6
district	81	math	21.3
district	82	math	51.6
region	17	math	44.7
district	62	math	25.5
district	63	math	35.1
district	64	math	37.6
district	65	math	17.4
district	66	math	45.8
district	67	math	38.3
region	24	math	33.3
district	154	math	38.3
district	155	math	28.5
district	156	math	31.5
district	157	math	30.2
district	158	math	38.1
region	4	math	33.3
country	TZ	math	39.5
district	22	swahili	51.2
district	23	swahili	48.1
district	24	swahili	64.1
district	25	swahili	67.6
district	26	swahili	51.8
district	27	swahili	49.4
district	28	swahili	35.7
district	29	swahili	46.7
district	30	swahili	67.2
district	31	swahili	47.2
region	28	swahili	52.9
district	89	swahili	34.9
district	90	swahili	30.3
district	91	swahili	29.9
district	92	swahili	43.4
district	93	swahili	29.3
district	94	swahili	55.7
district	95	swahili	30.0
region	29	swahili	36.2
district	128	swahili	45.3
district	129	swahili	31.7
district	130	swahili	38.4
district	131	swahili	56.6
district	132	swahili	48.9
district	133	swahili	44.2
district	169	swahili	68.1
region	16	swahili	47.6
district	134	swahili	69.0
district	135	swahili	50.8
district	136	swahili	40.2
district	137	swahili	55.3
district	138	swahili	40.3
district	139	swahili	55.1
region	15	swahili	51.8
region	13	swahili	0
district	49	swahili	39.5
district	50	swahili	47.7
district	51	swahili	49.7
district	52	swahili	56.7
district	53	swahili	45.2
district	54	swahili	67.8
region	14	swahili	51.1
district	96	swahili	31.1
district	97	swahili	30.3
district	98	swahili	33.5
district	99	swahili	52.1
region	23	swahili	36.8
district	55	swahili	45.0
district	56	swahili	49.6
district	57	swahili	47.9
district	58	swahili	48.9
district	59	swahili	67.3
district	60	swahili	57.8
district	61	swahili	58.9
region	19	swahili	53.6
district	140	swahili	69.6
district	141	swahili	68.1
district	142	swahili	63.1
district	143	swahili	60.5
district	144	swahili	54.8
district	145	swahili	68.1
region	21	swahili	64.0
region	30	swahili	0
district	108	swahili	64.8
district	109	swahili	51.9
district	110	swahili	32.4
district	111	swahili	36.1
district	112	swahili	53.5
region	25	swahili	47.7
district	15	swahili	73.4
district	16	swahili	71.9
district	17	swahili	68.9
district	18	swahili	73.0
district	19	swahili	72.2
district	20	swahili	79.3
district	21	swahili	63.5
region	11	swahili	71.7
district	100	swahili	35.4
district	101	swahili	39.7
district	102	swahili	50.1
district	103	swahili	60.5
district	104	swahili	35.1
district	105	swahili	41.6
district	106	swahili	38.0
district	107	swahili	52.4
region	10	swahili	44.1
district	1	swahili	50.7
district	2	swahili	45.2
district	3	swahili	39.8
district	4	swahili	38.0
district	5	swahili	53.6
district	6	swahili	44.0
district	7	swahili	35.9
region	3	swahili	43.9
district	39	swahili	55.0
district	40	swahili	67.3
district	41	swahili	57.0
district	42	swahili	54.2
district	43	swahili	49.3
district	44	swahili	62.7
district	45	swahili	71.3
region	22	swahili	59.5
district	32	swahili	49.3
district	33	swahili	46.9
district	34	swahili	46.2
district	35	swahili	39.8
district	36	swahili	78.6
district	37	swahili	49.9
district	38	swahili	36.8
region	18	swahili	49.6
region	8	swahili	0
region	7	swahili	0
district	83	swahili	40.7
district	84	swahili	54.8
district	85	swahili	45.9
district	86	swahili	53.2
district	87	swahili	44.5
district	88	swahili	46.0
region	27	swahili	47.5
district	149	swahili	47.9
district	150	swahili	23.9
district	151	swahili	37.6
district	152	swahili	42.1
district	153	swahili	45.1
region	26	swahili	39.3
district	121	swahili	49.7
district	122	swahili	39.4
district	123	swahili	71.0
district	124	swahili	41.7
district	125	swahili	51.1
district	126	swahili	69.8
district	127	swahili	33.5
region	20	swahili	50.9
district	113	swahili	52.8
district	114	swahili	43.7
district	115	swahili	51.0
district	116	swahili	33.6
district	117	swahili	40.7
district	118	swahili	74.8
district	119	swahili	51.2
district	120	swahili	37.1
region	6	swahili	48.1
district	8	swahili	53.3
district	9	swahili	67.9
district	10	swahili	76.9
district	11	swahili	49.2
district	12	swahili	23.0
district	13	swahili	76.9
district	14	swahili	33.5
region	1	swahili	54.4
district	68	swahili	61.1
district	69	swahili	61.0
district	70	swahili	81.4
district	71	swahili	72.7
district	72	swahili	79.9
region	5	swahili	71.2
district	146	swahili	49.7
district	147	swahili	28.7
district	148	swahili	29.2
region	9	swahili	35.9
district	46	swahili	78.0
district	47	swahili	73.7
district	48	swahili	71.8
region	2	swahili	74.5
district	73	swahili	36.7
district	74	swahili	52.4
district	75	swahili	71.1
district	76	swahili	64.8
district	77	swahili	55.2
district	78	swahili	58.2
district	79	swahili	42.3
district	80	swahili	71.9
district	81	swahili	35.0
district	82	swahili	68.7
region	17	swahili	55.6
district	62	swahili	36.1
district	63	swahili	53.7
district	64	swahili	55.4
district	65	swahili	35.3
district	66	swahili	51.8
district	67	swahili	46.3
region	24	swahili	46.4
district	154	swahili	44.8
district	155	swahili	35.9
district	156	swahili	38.2
district	157	swahili	34.0
district	158	swahili	43.7
region	4	swahili	39.3
country	TZ	swahili	50.1
district	22	all subjects	12.8
district	23	all subjects	11.8
district	24	all subjects	20.1
district	25	all subjects	26.9
district	26	all subjects	13.6
district	27	all subjects	11.6
district	28	all subjects	8.8
district	29	all subjects	16.9
district	30	all subjects	27.0
district	31	all subjects	12.5
region	28	all subjects	16.2
district	89	all subjects	13.3
district	90	all subjects	14.9
district	91	all subjects	4.4
district	92	all subjects	15.0
district	93	all subjects	4.1
district	94	all subjects	24.7
district	95	all subjects	6.9
region	29	all subjects	11.9
district	128	all subjects	16.6
district	129	all subjects	9.4
district	130	all subjects	6.1
district	131	all subjects	29.9
district	132	all subjects	15.6
district	133	all subjects	14.6
district	169	all subjects	30.5
region	16	all subjects	17.5
district	134	all subjects	31.2
district	135	all subjects	19.4
district	136	all subjects	14.5
district	137	all subjects	26.2
district	138	all subjects	11.2
district	139	all subjects	29.2
region	15	all subjects	21.9
region	13	all subjects	0
district	49	all subjects	6.6
district	50	all subjects	13.8
district	51	all subjects	13.3
district	52	all subjects	15.6
district	53	all subjects	7.1
district	54	all subjects	25.0
region	14	all subjects	13.6
district	96	all subjects	4.8
district	97	all subjects	7.4
district	98	all subjects	8.3
district	99	all subjects	18.0
region	23	all subjects	9.6
district	55	all subjects	8.1
district	56	all subjects	13.2
district	57	all subjects	9.2
district	58	all subjects	11.8
district	59	all subjects	25.3
district	60	all subjects	19.5
district	61	all subjects	17.6
region	19	all subjects	15.0
district	140	all subjects	25.1
district	141	all subjects	26.3
district	142	all subjects	21.8
district	143	all subjects	24.4
district	144	all subjects	17.7
district	145	all subjects	32.4
region	21	all subjects	24.6
region	30	all subjects	0
district	108	all subjects	41.3
district	109	all subjects	17.4
district	110	all subjects	7.1
district	111	all subjects	9.3
district	112	all subjects	18.1
region	25	all subjects	18.6
district	15	all subjects	32.0
district	16	all subjects	32.9
district	17	all subjects	31.8
district	18	all subjects	38.1
district	19	all subjects	36.7
district	20	all subjects	51.1
district	21	all subjects	22.3
region	11	all subjects	35.0
district	100	all subjects	11.3
district	101	all subjects	12.6
district	102	all subjects	16.0
district	103	all subjects	21.3
district	104	all subjects	7.4
district	105	all subjects	13.8
district	106	all subjects	11.3
district	107	all subjects	18.7
region	10	all subjects	14.1
district	1	all subjects	14.7
district	2	all subjects	12.9
district	3	all subjects	13.5
district	4	all subjects	14.2
district	5	all subjects	19.0
district	6	all subjects	11.1
district	7	all subjects	4.1
region	3	all subjects	12.8
district	39	all subjects	17.4
district	40	all subjects	32.5
district	41	all subjects	14.6
district	42	all subjects	14.2
district	43	all subjects	14.3
district	44	all subjects	22.9
district	45	all subjects	35.2
region	22	all subjects	21.6
district	32	all subjects	16.5
district	33	all subjects	10.1
district	34	all subjects	13.7
district	35	all subjects	7.1
district	36	all subjects	39.6
district	37	all subjects	11.3
district	38	all subjects	8.4
region	18	all subjects	15.2
region	8	all subjects	0
region	7	all subjects	0
district	83	all subjects	17.8
district	84	all subjects	20.8
district	85	all subjects	13.4
district	86	all subjects	25.9
district	87	all subjects	17.6
district	88	all subjects	18.4
region	27	all subjects	19.0
district	149	all subjects	16.8
district	150	all subjects	6.4
district	151	all subjects	9.1
district	152	all subjects	19.4
district	153	all subjects	20.0
region	26	all subjects	14.3
district	121	all subjects	11.0
district	122	all subjects	13.2
district	123	all subjects	32.8
district	124	all subjects	14.7
district	125	all subjects	24.1
district	126	all subjects	32.5
district	127	all subjects	7.4
region	20	all subjects	19.4
district	113	all subjects	14.2
district	114	all subjects	10.1
district	115	all subjects	14.2
district	116	all subjects	13.7
district	117	all subjects	13.1
district	118	all subjects	32.4
district	119	all subjects	16.7
district	120	all subjects	8.9
region	6	all subjects	15.4
district	8	all subjects	27.8
district	9	all subjects	30.1
district	10	all subjects	49.3
district	11	all subjects	17.7
district	12	all subjects	10.3
district	13	all subjects	49.3
district	14	all subjects	13.1
region	1	all subjects	28.2
district	68	all subjects	24.6
district	69	all subjects	16.5
district	70	all subjects	51.4
district	71	all subjects	37.4
district	72	all subjects	41.3
region	5	all subjects	34.2
district	146	all subjects	20.1
district	147	all subjects	5.2
district	148	all subjects	7.3
region	9	all subjects	10.9
district	46	all subjects	40.4
district	47	all subjects	40.5
district	48	all subjects	38.8
region	2	all subjects	39.9
district	73	all subjects	14.6
district	74	all subjects	17.9
district	75	all subjects	22.8
district	76	all subjects	31.1
district	77	all subjects	23.6
district	78	all subjects	19.8
district	79	all subjects	13.3
district	80	all subjects	45.7
district	81	all subjects	6.2
district	82	all subjects	27.2
region	17	all subjects	22.2
district	62	all subjects	9.2
district	63	all subjects	10.5
district	64	all subjects	12.9
district	65	all subjects	6.8
district	66	all subjects	23.4
district	67	all subjects	13.5
region	24	all subjects	12.7
district	154	all subjects	20.7
district	155	all subjects	6.0
district	156	all subjects	13.3
district	157	all subjects	9.7
district	158	all subjects	24.3
region	4	all subjects	14.8
country	TZ	all subjects	18.5
district	22	english	16.1
district	23	english	12.9
district	24	english	22.2
district	25	english	29.5
district	26	english	17.0
district	27	english	12.0
district	28	english	11.1
district	29	english	18.7
district	30	english	29.3
district	31	english	13.8
region	28	english	18.3
district	89	english	16.1
district	90	english	17.5
district	91	english	5.0
district	92	english	14.8
district	93	english	5.1
district	94	english	27.5
district	95	english	8.0
region	29	english	13.4
district	128	english	19.5
district	129	english	11.5
district	130	english	6.7
district	131	english	31.0
district	132	english	17.9
district	133	english	16.5
district	169	english	33.4
region	16	english	19.5
district	134	english	34.7
district	135	english	22.0
district	136	english	15.8
district	137	english	28.4
district	138	english	11.5
district	139	english	30.8
region	15	english	23.9
region	13	english	0
district	49	english	7.1
district	50	english	14.3
district	51	english	13.7
district	52	english	19.6
district	53	english	8.4
district	54	english	27.2
region	14	english	15.0
district	96	english	5.8
district	97	english	9.7
district	98	english	9.4
district	99	english	19.1
region	23	english	11.0
district	55	english	9.9
district	56	english	13.1
district	57	english	10.1
district	58	english	12.2
district	59	english	33.6
district	60	english	21.6
district	61	english	18.3
region	19	english	17.0
district	140	english	29.0
district	141	english	32.9
district	142	english	26.4
district	143	english	26.4
district	144	english	20.1
district	145	english	35.9
region	21	english	28.4
region	30	english	0
district	108	english	43.5
district	109	english	22.8
district	110	english	8.2
district	111	english	10.5
district	112	english	20.0
region	25	english	21.0
district	15	english	36.4
district	16	english	34.0
district	17	english	36.4
district	18	english	41.1
district	19	english	39.0
district	20	english	55.7
district	21	english	25.0
region	11	english	38.2
district	100	english	13.6
district	101	english	15.3
district	102	english	17.0
district	103	english	25.5
district	104	english	8.5
district	105	english	14.9
district	106	english	13.7
district	107	english	19.7
region	10	english	16.0
district	1	english	14.5
district	2	english	13.4
district	3	english	14.0
district	4	english	15.5
district	5	english	19.5
district	6	english	12.5
district	7	english	5.0
region	3	english	13.5
district	39	english	17.6
district	40	english	34.2
district	41	english	14.7
district	42	english	14.6
district	43	english	15.1
district	44	english	23.4
district	45	english	37.9
region	22	english	22.5
district	32	english	16.8
district	33	english	11.7
district	34	english	18.9
district	35	english	7.5
district	36	english	47.3
district	37	english	12.7
district	38	english	8.8
region	18	english	17.7
region	8	english	0
region	7	english	0
district	83	english	18.1
district	84	english	21.9
district	85	english	14.5
district	86	english	27.7
district	87	english	18.2
district	88	english	20.9
region	27	english	20.2
district	149	english	20.0
district	150	english	8.8
district	151	english	9.7
district	152	english	21.1
district	153	english	22.7
region	26	english	16.5
district	121	english	13.0
district	122	english	14.4
district	123	english	40.6
district	124	english	17.0
district	125	english	25.5
district	126	english	35.5
district	127	english	9.3
region	20	english	22.2
district	113	english	15.3
district	114	english	11.3
district	115	english	14.7
district	116	english	15.5
district	117	english	14.4
district	118	english	34.7
district	119	english	19.7
district	120	english	11.1
region	6	english	17.1
district	8	english	35.3
district	9	english	33.3
district	10	english	54.5
district	11	english	24.0
district	12	english	12.9
district	13	english	54.5
district	14	english	18.6
region	1	english	33.3
district	68	english	29.5
district	69	english	18.3
district	70	english	55.5
district	71	english	40.7
district	72	english	47.7
region	5	english	38.3
district	146	english	22.5
district	147	english	6.0
district	148	english	8.3
region	9	english	12.3
district	46	english	45.8
district	47	english	43.3
district	48	english	44.9
region	2	english	44.7
district	73	english	16.2
district	74	english	20.4
district	75	english	24.4
district	76	english	31.1
district	77	english	25.4
district	78	english	21.0
district	79	english	15.6
district	80	english	49.9
district	81	english	7.1
district	82	english	30.8
region	17	english	24.2
district	62	english	10.8
district	63	english	13.6
district	64	english	16.4
district	65	english	13.4
district	66	english	27.8
district	67	english	14.7
region	24	english	16.1
district	154	english	25.1
district	155	english	6.3
district	156	english	14.6
district	157	english	10.3
district	158	english	26.7
region	4	english	16.6
country	TZ	english	20.7
region	12	english	0
region	12	swahili	0
region	12	math	0
region	12	all subjects	0
district	159	english	0
district	159	math	0
district	159	swahili	0
district	159	all subjects	0
district	160	english	0
district	160	math	0
district	160	swahili	0
district	160	all subjects	0
district	161	english	0
district	161	math	0
district	161	swahili	0
district	161	all subjects	0
district	162	english	0
district	162	math	0
district	162	swahili	0
district	162	all subjects	0
district	163	english	0
district	163	math	0
district	163	swahili	0
district	163	all subjects	0
district	164	english	0
district	164	math	0
district	164	swahili	0
district	164	all subjects	0
district	165	english	0
district	165	math	0
district	165	swahili	0
district	165	all subjects	0
district	166	english	0
district	166	math	0
district	166	swahili	0
district	166	all subjects	0
district	167	english	0
district	167	math	0
district	167	swahili	0
district	167	all subjects	0
district	168	english	0
district	168	math	0
district	168	swahili	0
district	168	all subjects	0
\.
--
-- Name: literacytest_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY literacytest
    ADD CONSTRAINT literacytest_pkey PRIMARY KEY (geo_level, geo_code, "literacy test");


--
-- PostgreSQL database dump complete
--