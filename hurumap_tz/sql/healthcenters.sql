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

ALTER TABLE IF EXISTS ONLY public.healthcenters DROP CONSTRAINT IF EXISTS pk_healthcenters;
DROP TABLE IF EXISTS public.healthcenters;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: healthcenters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.healthcenters (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "health centers" character varying(128) NOT NULL,
    total double precision,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: healthcenters; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.healthcenters (geo_level, geo_code, "health centers", total, geo_version) FROM stdin;
district	1	clinic	0	2009
district	1	dispensary	31	2009
district	1	health centers	4	2009
district	1	hospital	1	2009
district	2	clinic	0	2009
district	2	dispensary	56	2009
district	2	health centers	5	2009
district	2	hospital	1	2009
district	3	clinic	0	2009
district	3	dispensary	49	2009
district	3	health centers	4	2009
district	3	hospital	1	2009
district	4	clinic	0	2009
district	4	dispensary	61	2009
district	4	health centers	4	2009
district	4	hospital	1	2009
district	5	clinic	4	2009
district	5	dispensary	56	2009
district	5	health centers	10	2009
district	5	hospital	3	2009
district	6	clinic	0	2009
district	6	dispensary	34	2009
district	6	health centers	6	2009
district	6	hospital	0	2009
district	7	clinic	0	2009
district	7	dispensary	34	2009
district	7	health centers	4	2009
district	7	hospital	0	2009
district	8	clinic	0	2009
district	8	dispensary	33	2009
district	8	health centers	2	2009
district	8	hospital	1	2009
district	9	clinic	0	2009
district	9	dispensary	49	2009
district	9	health centers	8	2009
district	9	hospital	2	2009
district	10	clinic	0	2009
district	10	dispensary	62	2009
district	10	health centers	17	2009
district	10	hospital	6	2009
district	11	clinic	0	2009
district	11	dispensary	39	2009
district	11	health centers	10	2009
district	11	hospital	1	2009
district	12	clinic	0	2009
district	12	dispensary	24	2009
district	12	health centers	4	2009
district	12	hospital	2	2009
district	13	clinic	0	2009
district	13	dispensary	43	2009
district	13	health centers	5	2009
district	13	hospital	3	2009
district	14	clinic	0	2009
district	14	dispensary	20	2009
district	14	health centers	2	2009
district	14	hospital	1	2009
district	15	clinic	0	2009
district	15	dispensary	37	2009
district	15	health centers	4	2009
district	15	hospital	2	2009
district	16	clinic	0	2009
district	16	dispensary	49	2009
district	16	health centers	7	2009
district	16	hospital	1	2009
district	17	clinic	0	2009
district	17	dispensary	62	2009
district	17	health centers	9	2009
district	17	hospital	3	2009
district	18	clinic	0	2009
district	18	dispensary	68	2009
district	18	health centers	8	2009
district	18	hospital	4	2009
district	19	clinic	0	2009
district	19	dispensary	51	2009
district	19	health centers	6	2009
district	19	hospital	2	2009
district	20	clinic	4	2009
district	20	dispensary	39	2009
district	20	health centers	8	2009
district	20	hospital	5	2009
district	21	clinic	0	2009
district	21	dispensary	13	2009
district	21	health centers	5	2009
district	21	hospital	1	2009
district	22	clinic	0	2009
district	22	dispensary	37	2009
district	22	health centers	5	2009
district	22	hospital	1	2009
district	23	clinic	0	2009
district	23	dispensary	46	2009
district	23	health centers	4	2009
district	23	hospital	3	2009
district	24	clinic	0	2009
district	24	dispensary	41	2009
district	24	health centers	5	2009
district	24	hospital	1	2009
district	25	clinic	1	2009
district	25	dispensary	36	2009
district	25	health centers	11	2009
district	25	hospital	1	2009
district	26	clinic	0	2009
district	26	dispensary	20	2009
district	26	health centers	1	2009
district	26	hospital	1	2009
district	27	clinic	0	2009
district	27	dispensary	34	2009
district	27	health centers	2	2009
district	27	hospital	1	2009
district	28	clinic	0	2009
district	28	dispensary	34	2009
district	28	health centers	3	2009
district	28	hospital	1	2009
district	29	clinic	0	2009
district	29	dispensary	26	2009
district	29	health centers	3	2009
district	29	hospital	0	2009
district	30	clinic	2	2009
district	30	dispensary	14	2009
district	30	health centers	2	2009
district	30	hospital	0	2009
district	31	clinic	0	2009
district	31	dispensary	4	2009
district	31	health centers	1	2009
district	31	hospital	1	2009
district	32	clinic	0	2009
district	32	dispensary	49	2009
district	32	health centers	7	2009
district	32	hospital	3	2009
district	33	clinic	0	2009
district	33	dispensary	64	2009
district	33	health centers	7	2009
district	33	hospital	0	2009
district	34	clinic	1	2009
district	34	dispensary	47	2009
district	34	health centers	6	2009
district	34	hospital	1	2009
district	35	clinic	0	2009
district	35	dispensary	33	2009
district	35	health centers	3	2009
district	35	hospital	2	2009
district	36	clinic	2	2009
district	36	dispensary	43	2009
district	36	health centers	13	2009
district	36	hospital	3	2009
district	37	clinic	0	2009
district	37	dispensary	45	2009
district	37	health centers	7	2009
district	37	hospital	3	2009
district	38	clinic	0	2009
district	38	dispensary	16	2009
district	38	health centers	1	2009
district	38	hospital	0	2009
district	39	clinic	2	2009
district	39	dispensary	64	2009
district	39	health centers	5	2009
district	39	hospital	1	2009
district	40	clinic	0	2009
district	40	dispensary	23	2009
district	40	health centers	1	2009
district	40	hospital	0	2009
district	41	clinic	2	2009
district	41	dispensary	27	2009
district	41	health centers	3	2009
district	41	hospital	0	2009
district	42	clinic	1	2009
district	42	dispensary	31	2009
district	42	health centers	5	2009
district	42	hospital	1	2009
district	43	clinic	0	2009
district	43	dispensary	62	2009
district	43	health centers	5	2009
district	43	hospital	2	2009
district	44	clinic	0	2009
district	44	dispensary	18	2009
district	44	health centers	0	2009
district	44	hospital	1	2009
district	45	clinic	1	2009
district	45	dispensary	23	2009
district	45	health centers	5	2009
district	45	hospital	1	2009
district	46	clinic	50	2009
district	46	dispensary	173	2009
district	46	health centers	17	2009
district	46	hospital	22	2009
district	47	clinic	36	2009
district	47	dispensary	132	2009
district	47	health centers	0	2009
district	47	hospital	12	2009
district	48	clinic	6	2009
district	48	dispensary	112	2009
district	48	health centers	13	2009
district	48	hospital	5	2009
district	49	clinic	0	2009
district	49	dispensary	48	2009
district	49	health centers	4	2009
district	49	hospital	2	2009
district	50	clinic	0	2009
district	50	dispensary	41	2009
district	50	health centers	6	2009
district	50	hospital	1	2009
district	51	clinic	0	2009
district	51	dispensary	32	2009
district	51	health centers	2	2009
district	51	hospital	3	2009
district	52	clinic	0	2009
district	52	dispensary	31	2009
district	52	health centers	1	2009
district	52	hospital	1	2009
district	53	clinic	0	2009
district	53	dispensary	28	2009
district	53	health centers	3	2009
district	53	hospital	1	2009
district	54	clinic	0	2009
district	54	dispensary	16	2009
district	54	health centers	1	2009
district	54	hospital	1	2009
district	55	clinic	0	2009
district	55	dispensary	51	2009
district	55	health centers	4	2009
district	55	hospital	0	2009
district	56	clinic	0	2009
district	56	dispensary	32	2009
district	56	health centers	4	2009
district	56	hospital	2	2009
district	57	clinic	0	2009
district	57	dispensary	38	2009
district	57	health centers	2	2009
district	57	hospital	1	2009
district	58	clinic	0	2009
district	58	dispensary	31	2009
district	58	health centers	3	2009
district	58	hospital	1	2009
district	59	clinic	0	2009
district	59	dispensary	15	2009
district	59	health centers	3	2009
district	59	hospital	1	2009
district	60	clinic	0	2009
district	60	dispensary	16	2009
district	60	health centers	3	2009
district	60	hospital	0	2009
district	61	clinic	0	2009
district	61	dispensary	10	2009
district	61	health centers	1	2009
district	61	hospital	1	2009
district	62	clinic	0	2009
district	62	dispensary	48	2009
district	62	health centers	5	2009
district	62	hospital	3	2009
district	63	clinic	0	2009
district	63	dispensary	41	2009
district	63	health centers	2	2009
district	63	hospital	1	2009
district	64	clinic	1	2009
district	64	dispensary	59	2009
district	64	health centers	7	2009
district	64	hospital	3	2009
district	65	clinic	1	2009
district	65	dispensary	24	2009
district	65	health centers	4	2009
district	65	hospital	1	2009
district	66	clinic	0	2009
district	66	dispensary	38	2009
district	66	health centers	6	2009
district	66	hospital	0	2009
district	67	clinic	0	2009
district	67	dispensary	25	2009
district	67	health centers	3	2009
district	67	hospital	2	2009
district	68	clinic	0	2009
district	68	dispensary	64	2009
district	68	health centers	10	2009
district	68	hospital	1	2009
district	69	clinic	2	2009
district	69	dispensary	52	2009
district	69	health centers	6	2009
district	69	hospital	1	2009
district	70	clinic	1	2009
district	70	dispensary	27	2009
district	70	health centers	4	2009
district	70	hospital	3	2009
district	71	clinic	0	2009
district	71	dispensary	53	2009
district	71	health centers	2	2009
district	71	hospital	1	2009
district	72	clinic	0	2009
district	72	dispensary	11	2009
district	72	health centers	2	2009
district	72	hospital	1	2009
district	73	clinic	0	2009
district	73	dispensary	37	2009
district	73	health centers	2	2009
district	73	hospital	2	2009
district	74	clinic	0	2009
district	74	dispensary	65	2009
district	74	health centers	3	2009
district	74	hospital	2	2009
district	75	clinic	5	2009
district	75	dispensary	41	2009
district	75	health centers	1	2009
district	75	hospital	2	2009
district	76	clinic	1	2009
district	76	dispensary	39	2009
district	76	health centers	4	2009
district	76	hospital	2	2009
district	77	clinic	0	2009
district	77	dispensary	27	2009
district	77	health centers	1	2009
district	77	hospital	2	2009
district	78	clinic	0	2009
district	78	dispensary	64	2009
district	78	health centers	6	2009
district	78	hospital	2	2009
district	79	clinic	0	2009
district	79	dispensary	39	2009
district	79	health centers	5	2009
district	79	hospital	2	2009
district	80	clinic	14	2009
district	80	dispensary	30	2009
district	80	health centers	5	2009
district	80	hospital	5	2009
district	81	clinic	0	2009
district	81	dispensary	32	2009
district	81	health centers	6	2009
district	81	hospital	0	2009
district	82	clinic	0	2009
district	82	dispensary	3	2009
district	82	health centers	1	2009
district	82	hospital	0	2009
district	83	clinic	0	2009
district	83	dispensary	37	2009
district	83	health centers	3	2009
district	83	hospital	1	2009
district	84	clinic	0	2009
district	84	dispensary	27	2009
district	84	health centers	3	2009
district	84	hospital	1	2009
district	85	clinic	2	2009
district	85	dispensary	46	2009
district	85	health centers	3	2009
district	85	hospital	3	2009
district	86	clinic	0	2009
district	86	dispensary	15	2009
district	86	health centers	2	2009
district	86	hospital	1	2009
district	87	clinic	0	2009
district	87	dispensary	31	2009
district	87	health centers	3	2009
district	87	hospital	2	2009
district	88	clinic	0	2009
district	88	dispensary	25	2009
district	88	health centers	4	2009
district	88	hospital	1	2009
district	89	clinic	0	2009
district	89	dispensary	50	2009
district	89	health centers	6	2009
district	89	hospital	2	2009
district	90	clinic	0	2009
district	90	dispensary	46	2009
district	90	health centers	5	2009
district	90	hospital	2	2009
district	91	clinic	0	2009
district	91	dispensary	44	2009
district	91	health centers	1	2009
district	91	hospital	0	2009
district	92	clinic	0	2009
district	92	dispensary	20	2009
district	92	health centers	1	2009
district	92	hospital	1	2009
district	93	clinic	0	2009
district	93	dispensary	29	2009
district	93	health centers	3	2009
district	93	hospital	1	2009
district	94	clinic	1	2009
district	94	dispensary	35	2009
district	94	health centers	1	2009
district	94	hospital	2	2009
district	95	clinic	0	2009
district	95	dispensary	34	2009
district	95	health centers	2	2009
district	95	hospital	0	2009
district	96	clinic	0	2009
district	96	dispensary	52	2009
district	96	health centers	4	2009
district	96	hospital	0	2009
district	97	clinic	0	2009
district	97	dispensary	55	2009
district	97	health centers	7	2009
district	97	hospital	0	2009
district	98	clinic	0	2009
district	98	dispensary	41	2009
district	98	health centers	7	2009
district	98	hospital	1	2009
district	99	clinic	2	2009
district	99	dispensary	31	2009
district	99	health centers	3	2009
district	99	hospital	2	2009
district	100	clinic	0	2009
district	100	dispensary	40	2009
district	100	health centers	2	2009
district	100	hospital	1	2009
district	101	clinic	0	2009
district	101	dispensary	31	2009
district	101	health centers	7	2009
district	101	hospital	0	2009
district	102	clinic	0	2009
district	102	dispensary	34	2009
district	102	health centers	4	2009
district	102	hospital	0	2009
district	103	clinic	0	2009
district	103	dispensary	14	2009
district	103	health centers	3	2009
district	103	hospital	2	2009
district	104	clinic	0	2009
district	104	dispensary	36	2009
district	104	health centers	3	2009
district	104	hospital	0	2009
district	105	clinic	0	2009
district	105	dispensary	27	2009
district	105	health centers	4	2009
district	105	hospital	1	2009
district	106	clinic	0	2009
district	106	dispensary	24	2009
district	106	health centers	3	2009
district	106	hospital	0	2009
district	107	clinic	0	2009
district	107	dispensary	18	2009
district	107	health centers	1	2009
district	107	hospital	2	2009
district	108	clinic	0	2009
district	108	dispensary	23	2009
district	108	health centers	1	2009
district	108	hospital	2	2009
district	109	clinic	0	2009
district	109	dispensary	52	2009
district	109	health centers	4	2009
district	109	hospital	1	2009
district	110	clinic	0	2009
district	110	dispensary	36	2009
district	110	health centers	3	2009
district	110	hospital	0	2009
district	111	clinic	0	2009
district	111	dispensary	19	2009
district	111	health centers	3	2009
district	111	hospital	0	2009
district	112	clinic	2	2009
district	112	dispensary	27	2009
district	112	health centers	3	2009
district	112	hospital	2	2009
district	113	clinic	0	2009
district	113	dispensary	35	2009
district	113	health centers	3	2009
district	113	hospital	2	2009
district	114	clinic	0	2009
district	114	dispensary	34	2009
district	114	health centers	6	2009
district	114	hospital	1	2009
district	115	clinic	0	2009
district	115	dispensary	36	2009
district	115	health centers	5	2009
district	115	hospital	3	2009
district	116	clinic	1	2009
district	116	dispensary	23	2009
district	116	health centers	4	2009
district	116	hospital	1	2009
district	117	clinic	0	2009
district	117	dispensary	48	2009
district	117	health centers	5	2009
district	117	hospital	3	2009
district	118	clinic	3	2009
district	118	dispensary	14	2009
district	118	health centers	4	2009
district	118	hospital	1	2009
district	119	clinic	0	2009
district	119	dispensary	33	2009
district	119	health centers	1	2009
district	119	hospital	2	2009
district	120	clinic	0	2009
district	120	dispensary	26	2009
district	120	health centers	3	2009
district	120	hospital	1	2009
district	121	clinic	0	2009
district	121	dispensary	33	2009
district	121	health centers	3	2009
district	121	hospital	1	2009
district	122	clinic	0	2009
district	122	dispensary	41	2009
district	122	health centers	3	2009
district	122	hospital	1	2009
district	123	clinic	8	2009
district	123	dispensary	41	2009
district	123	health centers	13	2009
district	123	hospital	8	2009
district	124	clinic	2	2009
district	124	dispensary	46	2009
district	124	health centers	5	2009
district	124	hospital	2	2009
district	125	clinic	1	2009
district	125	dispensary	61	2009
district	125	health centers	9	2009
district	125	hospital	1	2009
district	126	clinic	2	2009
district	126	dispensary	29	2009
district	126	health centers	8	2009
district	126	hospital	1	2009
district	127	clinic	0	2009
district	127	dispensary	37	2009
district	127	health centers	4	2009
district	127	hospital	2	2009
district	128	clinic	3	2009
district	128	dispensary	27	2009
district	128	health centers	9	2009
district	128	hospital	1	2009
district	129	clinic	0	2009
district	129	dispensary	44	2009
district	129	health centers	6	2009
district	129	hospital	1	2009
district	130	clinic	0	2009
district	130	dispensary	26	2009
district	130	health centers	1	2009
district	130	hospital	0	2009
district	131	clinic	2	2009
district	131	dispensary	37	2009
district	131	health centers	7	2009
district	131	hospital	3	2009
district	132	clinic	0	2009
district	132	dispensary	32	2009
district	132	health centers	7	2009
district	132	hospital	3	2009
district	133	clinic	0	2009
district	133	dispensary	35	2009
district	133	health centers	1	2009
district	133	hospital	1	2009
district	134	clinic	0	2009
district	134	dispensary	34	2009
district	134	health centers	8	2009
district	134	hospital	3	2009
district	135	clinic	1	2009
district	135	dispensary	20	2009
district	135	health centers	4	2009
district	135	hospital	1	2009
district	136	clinic	0	2009
district	136	dispensary	36	2009
district	136	health centers	3	2009
district	136	hospital	2	2009
district	137	clinic	0	2009
district	137	dispensary	32	2009
district	137	health centers	4	2009
district	137	hospital	1	2009
district	138	clinic	0	2009
district	138	dispensary	26	2009
district	138	health centers	2	2009
district	138	hospital	1	2009
district	139	clinic	1	2009
district	139	dispensary	8	2009
district	139	health centers	1	2009
district	139	hospital	2	2009
district	140	clinic	0	2009
district	140	dispensary	47	2009
district	140	health centers	6	2009
district	140	hospital	2	2009
district	141	clinic	0	2009
district	141	dispensary	40	2009
district	141	health centers	3	2009
district	141	hospital	1	2009
district	142	clinic	0	2009
district	142	dispensary	35	2009
district	142	health centers	5	2009
district	142	hospital	4	2009
district	143	clinic	0	2009
district	143	dispensary	22	2009
district	143	health centers	1	2009
district	143	hospital	0	2009
district	144	clinic	0	2009
district	144	dispensary	51	2009
district	144	health centers	6	2009
district	144	hospital	3	2009
district	145	clinic	0	2009
district	145	dispensary	10	2009
district	145	health centers	0	2009
district	145	hospital	2	2009
district	146	clinic	0	2009
district	146	dispensary	8	2009
district	146	health centers	3	2009
district	146	hospital	0	2009
district	147	clinic	0	2009
district	147	dispensary	19	2009
district	147	health centers	3	2009
district	147	hospital	1	2009
district	148	clinic	0	2009
district	148	dispensary	18	2009
district	148	health centers	3	2009
district	148	hospital	0	2009
district	149	clinic	3	2009
district	149	dispensary	42	2009
district	149	health centers	4	2009
district	149	hospital	1	2009
district	150	clinic	0	2009
district	150	dispensary	27	2009
district	150	health centers	3	2009
district	150	hospital	0	2009
district	151	clinic	0	2009
district	151	dispensary	49	2009
district	151	health centers	2	2009
district	151	hospital	2	2009
district	152	clinic	0	2009
district	152	dispensary	41	2009
district	152	health centers	3	2009
district	152	hospital	1	2009
district	153	clinic	0	2009
district	153	dispensary	23	2009
district	153	health centers	2	2009
district	153	hospital	1	2009
district	154	clinic	0	2009
district	154	dispensary	49	2009
district	154	health centers	9	2009
district	154	hospital	1	2009
district	155	clinic	0	2009
district	155	dispensary	14	2009
district	155	health centers	2	2009
district	155	hospital	0	2009
district	156	clinic	0	2009
district	156	dispensary	16	2009
district	156	health centers	2	2009
district	156	hospital	0	2009
district	157	clinic	0	2009
district	157	dispensary	12	2009
district	157	health centers	2	2009
district	157	hospital	1	2009
district	158	clinic	0	2009
district	158	dispensary	30	2009
district	158	health centers	4	2009
district	158	hospital	1	2009
district	159	clinic	\N	2009
district	159	dispensary	\N	2009
district	159	health centers	\N	2009
district	159	hospital	\N	2009
district	160	clinic	\N	2009
district	160	dispensary	\N	2009
district	160	health centers	\N	2009
district	160	hospital	\N	2009
district	161	clinic	\N	2009
district	161	dispensary	\N	2009
district	161	health centers	\N	2009
district	161	hospital	\N	2009
district	162	clinic	\N	2009
district	162	dispensary	\N	2009
district	162	health centers	\N	2009
district	162	hospital	\N	2009
district	163	clinic	\N	2009
district	163	dispensary	\N	2009
district	163	health centers	\N	2009
district	163	hospital	\N	2009
district	164	clinic	\N	2009
district	164	dispensary	\N	2009
district	164	health centers	\N	2009
district	164	hospital	\N	2009
district	165	clinic	\N	2009
district	165	dispensary	\N	2009
district	165	health centers	\N	2009
district	165	hospital	\N	2009
district	166	clinic	\N	2009
district	166	dispensary	\N	2009
district	166	health centers	\N	2009
district	166	hospital	\N	2009
district	167	clinic	\N	2009
district	167	dispensary	\N	2009
district	167	health centers	\N	2009
district	167	hospital	\N	2009
district	168	clinic	\N	2009
district	168	dispensary	\N	2009
district	168	health centers	\N	2009
district	168	hospital	\N	2009
district	169	clinic	5	2009
district	169	dispensary	18	2009
district	169	health centers	5	2009
district	169	hospital	1	2009
region	1	clinic	0	2009
region	1	dispensary	270	2009
region	1	health centers	48	2009
region	1	hospital	16	2009
region	3	clinic	92	2009
region	3	dispensary	417	2009
region	3	health centers	51	2009
region	3	hospital	39	2009
region	2	clinic	4	2009
region	2	dispensary	321	2009
region	2	health centers	37	2009
region	2	hospital	7	2009
region	4	clinic	0	2009
region	4	dispensary	121	2009
region	4	health centers	19	2009
region	4	hospital	3	2009
region	5	clinic	3	2009
region	5	dispensary	207	2009
region	5	health centers	24	2009
region	5	hospital	7	2009
region	6	clinic	4	2009
region	6	dispensary	249	2009
region	6	health centers	31	2009
region	6	hospital	14	2009
region	9	clinic	0	2009
region	9	dispensary	63	2009
region	9	health centers	13	2009
region	9	hospital	1	2009
region	10	clinic	0	2009
region	10	dispensary	228	2009
region	10	health centers	27	2009
region	10	hospital	6	2009
region	11	clinic	4	2009
region	11	dispensary	319	2009
region	11	health centers	47	2009
region	11	hospital	18	2009
region	14	clinic	0	2009
region	14	dispensary	196	2009
region	14	health centers	17	2009
region	14	hospital	9	2009
region	15	clinic	2	2009
region	15	dispensary	156	2009
region	15	health centers	22	2009
region	15	hospital	10	2009
region	16	clinic	10	2009
region	16	dispensary	219	2009
region	16	health centers	36	2009
region	16	hospital	10	2009
region	17	clinic	20	2009
region	17	dispensary	396	2009
region	17	health centers	35	2009
region	17	hospital	20	2009
region	18	clinic	3	2009
region	18	dispensary	298	2009
region	18	health centers	44	2009
region	18	hospital	12	2009
region	19	clinic	0	2009
region	19	dispensary	193	2009
region	19	health centers	20	2009
region	19	hospital	6	2009
region	20	clinic	13	2009
region	20	dispensary	288	2009
region	20	health centers	45	2009
region	20	hospital	16	2009
region	21	clinic	0	2009
region	21	dispensary	205	2009
region	21	health centers	21	2009
region	21	hospital	12	2009
region	22	clinic	6	2009
region	22	dispensary	250	2009
region	22	health centers	24	2009
region	22	hospital	6	2009
region	23	clinic	2	2009
region	23	dispensary	179	2009
region	23	health centers	21	2009
region	23	hospital	3	2009
region	24	clinic	2	2009
region	24	dispensary	236	2009
region	24	health centers	27	2009
region	24	hospital	10	2009
region	25	clinic	2	2009
region	25	dispensary	175	2009
region	25	health centers	17	2009
region	25	hospital	5	2009
region	26	clinic	3	2009
region	26	dispensary	182	2009
region	26	health centers	14	2009
region	26	hospital	5	2009
region	27	clinic	2	2009
region	27	dispensary	181	2009
region	27	health centers	18	2009
region	27	hospital	9	2009
region	29	clinic	1	2009
region	29	dispensary	258	2009
region	29	health centers	19	2009
region	29	hospital	8	2009
region	28	clinic	3	2009
region	28	dispensary	308	2009
region	28	health centers	40	2009
region	28	hospital	11	2009
region	7	clinic	\N	2009
region	7	dispensary	\N	2009
region	7	health centers	\N	2009
region	7	hospital	\N	2009
region	8	clinic	\N	2009
region	8	dispensary	\N	2009
region	8	health centers	\N	2009
region	8	hospital	\N	2009
region	12	clinic	\N	2009
region	12	dispensary	\N	2009
region	12	health centers	\N	2009
region	12	hospital	\N	2009
region	13	clinic	\N	2009
region	13	dispensary	\N	2009
region	13	health centers	\N	2009
region	13	hospital	\N	2009
region	30	clinic	\N	2009
region	30	dispensary	\N	2009
region	30	health centers	\N	2009
region	30	hospital	\N	2009
country	TZ	clinic	176	2009
country	TZ	dispensary	5915	2009
country	TZ	health centers	717	2009
country	TZ	hospital	263	2009
\.


--
-- Name: healthcenters pk_healthcenters; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.healthcenters
    ADD CONSTRAINT pk_healthcenters PRIMARY KEY (geo_level, geo_code, geo_version, "health centers");


--
-- PostgreSQL database dump complete
--

