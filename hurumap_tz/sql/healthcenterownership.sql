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

ALTER TABLE IF EXISTS ONLY public.healthcenterownership DROP CONSTRAINT IF EXISTS pk_healthcenterownership;
DROP TABLE IF EXISTS public.healthcenterownership;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: healthcenterownership; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE healthcenterownership (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "health center ownership" character varying(128) NOT NULL,
    total double precision,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: healthcenterownership; Type: TABLE DATA; Schema: public; Owner: -
--

COPY healthcenterownership (geo_level, geo_code, "health center ownership", total, geo_version) FROM stdin;
region	1	faith based org	62	2009
region	1	parastatal	4	2009
region	1	private	84	2009
region	1	public	184	2009
region	3	faith based org	78	2009
region	3	parastatal	14	2009
region	3	private	357	2009
region	3	public	150	2009
region	2	faith based org	38	2009
region	2	parastatal	4	2009
region	2	private	18	2009
region	2	public	308	2009
region	4	faith based org	13	2009
region	4	parastatal	1	2009
region	4	private	23	2009
region	4	public	106	2009
region	5	faith based org	45	2009
region	5	parastatal	1	2009
region	5	private	20	2009
region	5	public	174	2009
region	6	faith based org	37	2009
region	6	parastatal	2	2009
region	6	private	23	2009
region	6	public	236	2009
region	9	faith based org	9	2009
region	9	parastatal	0	2009
region	9	private	6	2009
region	9	public	62	2009
region	10	faith based org	25	2009
region	10	parastatal	1	2009
region	10	private	14	2009
region	10	public	221	2009
region	11	faith based org	90	2009
region	11	parastatal	2	2009
region	11	private	62	2009
region	11	public	234	2009
region	14	faith based org	6	2009
region	14	parastatal	0	2009
region	14	private	2	2009
region	14	public	214	2009
region	15	faith based org	29	2009
region	15	parastatal	1	2009
region	15	private	17	2009
region	15	public	143	2009
region	16	faith based org	39	2009
region	16	parastatal	2	2009
region	16	private	35	2009
region	16	public	199	2009
region	17	faith based org	50	2009
region	17	parastatal	5	2009
region	17	private	61	2009
region	17	public	354	2009
region	18	faith based org	67	2009
region	18	parastatal	12	2009
region	18	private	33	2009
region	18	public	244	2009
region	19	faith based org	19	2009
region	19	parastatal	0	2009
region	19	private	12	2009
region	19	public	188	2009
region	20	faith based org	27	2009
region	20	parastatal	6	2009
region	20	private	67	2009
region	20	public	262	2009
region	21	faith based org	43	2009
region	21	parastatal	4	2009
region	21	private	4	2009
region	21	public	187	2009
region	22	faith based org	26	2009
region	22	parastatal	5	2009
region	22	private	23	2009
region	22	public	232	2009
region	23	faith based org	21	2009
region	23	parastatal	0	2009
region	23	private	8	2009
region	23	public	176	2009
region	24	faith based org	49	2009
region	24	parastatal	0	2009
region	24	private	11	2009
region	24	public	215	2009
region	25	faith based org	20	2009
region	25	parastatal	1	2009
region	25	private	26	2009
region	25	public	152	2009
region	26	faith based org	19	2009
region	26	parastatal	0	2009
region	26	private	12	2009
region	26	public	171	2009
region	27	faith based org	30	2009
region	27	parastatal	0	2009
region	27	private	5	2009
region	27	public	175	2009
region	29	faith based org	25	2009
region	29	parastatal	1	2009
region	29	private	13	2009
region	29	public	247	2009
region	28	faith based org	33	2009
region	28	parastatal	5	2009
region	28	private	32	2009
region	28	public	292	2009
region	7	faith based org	\N	2009
region	7	parastatal	\N	2009
region	7	private	\N	2009
region	7	public	\N	2009
region	8	faith based org	\N	2009
region	8	parastatal	\N	2009
region	8	private	\N	2009
region	8	public	\N	2009
region	12	faith based org	\N	2009
region	12	parastatal	\N	2009
region	12	private	\N	2009
region	12	public	\N	2009
region	13	faith based org	\N	2009
region	13	parastatal	\N	2009
region	13	private	\N	2009
region	13	public	\N	2009
region	30	faith based org	\N	2009
region	30	parastatal	\N	2009
region	30	private	\N	2009
region	30	public	\N	2009
country	TZ	faith based org	900	2009
country	TZ	parastatal	71	2009
country	TZ	private	968	2009
country	TZ	public	5126	2009
district	1	faith based org	7	2009
district	1	parastatal	0	2009
district	1	private	1	2009
district	1	public	28	2009
district	2	faith based org	5	2009
district	2	parastatal	2	2009
district	2	private	1	2009
district	2	public	53	2009
district	3	faith based org	5	2009
district	3	parastatal	0	2009
district	3	private	3	2009
district	3	public	46	2009
district	4	faith based org	2	2009
district	4	parastatal	0	2009
district	4	private	0	2009
district	4	public	64	2009
district	5	faith based org	13	2009
district	5	parastatal	2	2009
district	5	private	13	2009
district	5	public	45	2009
district	6	faith based org	2	2009
district	6	parastatal	0	2009
district	6	private	0	2009
district	6	public	38	2009
district	7	faith based org	4	2009
district	7	parastatal	0	2009
district	7	private	0	2009
district	7	public	34	2009
district	8	faith based org	2	2009
district	8	parastatal	0	2009
district	8	private	4	2009
district	8	public	30	2009
district	9	faith based org	13	2009
district	9	parastatal	2	2009
district	9	private	12	2009
district	9	public	32	2009
district	10	faith based org	17	2009
district	10	parastatal	0	2009
district	10	private	51	2009
district	10	public	17	2009
district	11	faith based org	14	2009
district	11	parastatal	0	2009
district	11	private	8	2009
district	11	public	28	2009
district	12	faith based org	5	2009
district	12	parastatal	1	2009
district	12	private	1	2009
district	12	public	23	2009
district	13	faith based org	8	2009
district	13	parastatal	1	2009
district	13	private	8	2009
district	13	public	34	2009
district	14	faith based org	3	2009
district	14	parastatal	0	2009
district	14	private	0	2009
district	14	public	20	2009
district	15	faith based org	9	2009
district	15	parastatal	0	2009
district	15	private	6	2009
district	15	public	28	2009
district	16	faith based org	5	2009
district	16	parastatal	1	2009
district	16	private	1	2009
district	16	public	50	2009
district	17	faith based org	15	2009
district	17	parastatal	0	2009
district	17	private	13	2009
district	17	public	46	2009
district	18	faith based org	23	2009
district	18	parastatal	1	2009
district	18	private	9	2009
district	18	public	47	2009
district	19	faith based org	16	2009
district	19	parastatal	0	2009
district	19	private	11	2009
district	19	public	32	2009
district	20	faith based org	13	2009
district	20	parastatal	0	2009
district	20	private	20	2009
district	20	public	23	2009
district	21	faith based org	9	2009
district	21	parastatal	0	2009
district	21	private	2	2009
district	21	public	8	2009
district	22	faith based org	9	2009
district	22	parastatal	0	2009
district	22	private	1	2009
district	22	public	33	2009
district	23	faith based org	3	2009
district	23	parastatal	1	2009
district	23	private	2	2009
district	23	public	47	2009
district	24	faith based org	3	2009
district	24	parastatal	3	2009
district	24	private	8	2009
district	24	public	33	2009
district	25	faith based org	4	2009
district	25	parastatal	1	2009
district	25	private	13	2009
district	25	public	31	2009
district	26	faith based org	1	2009
district	26	parastatal	0	2009
district	26	private	2	2009
district	26	public	19	2009
district	27	faith based org	2	2009
district	27	parastatal	0	2009
district	27	private	0	2009
district	27	public	35	2009
district	28	faith based org	3	2009
district	28	parastatal	0	2009
district	28	private	0	2009
district	28	public	35	2009
district	29	faith based org	1	2009
district	29	parastatal	0	2009
district	29	private	1	2009
district	29	public	27	2009
district	30	faith based org	4	2009
district	30	parastatal	0	2009
district	30	private	3	2009
district	30	public	11	2009
district	31	faith based org	0	2009
district	31	parastatal	0	2009
district	31	private	2	2009
district	31	public	4	2009
district	32	faith based org	11	2009
district	32	parastatal	2	2009
district	32	private	2	2009
district	32	public	43	2009
district	33	faith based org	10	2009
district	33	parastatal	1	2009
district	33	private	3	2009
district	33	public	57	2009
district	34	faith based org	15	2009
district	34	parastatal	3	2009
district	34	private	9	2009
district	34	public	28	2009
district	35	faith based org	10	2009
district	35	parastatal	0	2009
district	35	private	1	2009
district	35	public	27	2009
district	36	faith based org	12	2009
district	36	parastatal	5	2009
district	36	private	16	2009
district	36	public	28	2009
district	37	faith based org	7	2009
district	37	parastatal	1	2009
district	37	private	2	2009
district	37	public	45	2009
district	38	faith based org	2	2009
district	38	parastatal	0	2009
district	38	private	0	2009
district	38	public	15	2009
district	39	faith based org	5	2009
district	39	parastatal	4	2009
district	39	private	6	2009
district	39	public	57	2009
district	40	faith based org	3	2009
district	40	parastatal	0	2009
district	40	private	0	2009
district	40	public	21	2009
district	41	faith based org	2	2009
district	41	parastatal	0	2009
district	41	private	1	2009
district	41	public	29	2009
district	42	faith based org	7	2009
district	42	parastatal	0	2009
district	42	private	2	2009
district	42	public	29	2009
district	43	faith based org	6	2009
district	43	parastatal	0	2009
district	43	private	1	2009
district	43	public	62	2009
district	44	faith based org	0	2009
district	44	parastatal	0	2009
district	44	private	2	2009
district	44	public	17	2009
district	45	faith based org	3	2009
district	45	parastatal	1	2009
district	45	private	10	2009
district	45	public	16	2009
district	46	faith based org	32	2009
district	46	parastatal	5	2009
district	46	private	166	2009
district	46	public	59	2009
district	47	faith based org	18	2009
district	47	parastatal	6	2009
district	47	private	135	2009
district	47	public	42	2009
district	48	faith based org	28	2009
district	48	parastatal	3	2009
district	48	private	56	2009
district	48	public	49	2009
district	49	faith based org	2	2009
district	49	parastatal	0	2009
district	49	private	0	2009
district	49	public	52	2009
district	50	faith based org	3	2009
district	50	parastatal	0	2009
district	50	private	0	2009
district	50	public	45	2009
district	51	faith based org	1	2009
district	51	parastatal	0	2009
district	51	private	0	2009
district	51	public	36	2009
district	52	faith based org	0	2009
district	52	parastatal	0	2009
district	52	private	0	2009
district	52	public	33	2009
district	53	faith based org	0	2009
district	53	parastatal	0	2009
district	53	private	0	2009
district	53	public	32	2009
district	54	faith based org	0	2009
district	54	parastatal	0	2009
district	54	private	2	2009
district	54	public	16	2009
district	55	faith based org	2	2009
district	55	parastatal	0	2009
district	55	private	0	2009
district	55	public	53	2009
district	56	faith based org	0	2009
district	56	parastatal	0	2009
district	56	private	1	2009
district	56	public	37	2009
district	57	faith based org	11	2009
district	57	parastatal	0	2009
district	57	private	0	2009
district	57	public	30	2009
district	58	faith based org	1	2009
district	58	parastatal	0	2009
district	58	private	2	2009
district	58	public	32	2009
district	59	faith based org	4	2009
district	59	parastatal	0	2009
district	59	private	6	2009
district	59	public	9	2009
district	60	faith based org	0	2009
district	60	parastatal	0	2009
district	60	private	0	2009
district	60	public	19	2009
district	61	faith based org	1	2009
district	61	parastatal	0	2009
district	61	private	3	2009
district	61	public	8	2009
district	62	faith based org	4	2009
district	62	parastatal	0	2009
district	62	private	0	2009
district	62	public	52	2009
district	63	faith based org	16	2009
district	63	parastatal	0	2009
district	63	private	0	2009
district	63	public	28	2009
district	64	faith based org	11	2009
district	64	parastatal	0	2009
district	64	private	3	2009
district	64	public	56	2009
district	65	faith based org	3	2009
district	65	parastatal	0	2009
district	65	private	6	2009
district	65	public	21	2009
district	66	faith based org	6	2009
district	66	parastatal	0	2009
district	66	private	0	2009
district	66	public	38	2009
district	67	faith based org	9	2009
district	67	parastatal	0	2009
district	67	private	2	2009
district	67	public	19	2009
district	68	faith based org	15	2009
district	68	parastatal	1	2009
district	68	private	0	2009
district	68	public	59	2009
district	69	faith based org	7	2009
district	69	parastatal	0	2009
district	69	private	4	2009
district	69	public	50	2009
district	70	faith based org	7	2009
district	70	parastatal	0	2009
district	70	private	11	2009
district	70	public	17	2009
district	71	faith based org	16	2009
district	71	parastatal	0	2009
district	71	private	2	2009
district	71	public	37	2009
district	72	faith based org	0	2009
district	72	parastatal	0	2009
district	72	private	3	2009
district	72	public	11	2009
district	73	faith based org	2	2009
district	73	parastatal	0	2009
district	73	private	1	2009
district	73	public	38	2009
district	74	faith based org	6	2009
district	74	parastatal	0	2009
district	74	private	6	2009
district	74	public	57	2009
district	75	faith based org	5	2009
district	75	parastatal	1	2009
district	75	private	12	2009
district	75	public	31	2009
district	76	faith based org	5	2009
district	76	parastatal	1	2009
district	76	private	3	2009
district	76	public	37	2009
district	77	faith based org	5	2009
district	77	parastatal	0	2009
district	77	private	0	2009
district	77	public	25	2009
district	78	faith based org	5	2009
district	78	parastatal	0	2009
district	78	private	8	2009
district	78	public	59	2009
district	79	faith based org	5	2009
district	79	parastatal	1	2009
district	79	private	2	2009
district	79	public	38	2009
district	80	faith based org	6	2009
district	80	parastatal	2	2009
district	80	private	25	2009
district	80	public	21	2009
district	81	faith based org	5	2009
district	81	parastatal	0	2009
district	81	private	1	2009
district	81	public	32	2009
district	82	faith based org	0	2009
district	82	parastatal	0	2009
district	82	private	2	2009
district	82	public	2	2009
district	83	faith based org	6	2009
district	83	parastatal	0	2009
district	83	private	0	2009
district	83	public	35	2009
district	84	faith based org	3	2009
district	84	parastatal	0	2009
district	84	private	0	2009
district	84	public	28	2009
district	85	faith based org	8	2009
district	85	parastatal	0	2009
district	85	private	1	2009
district	85	public	45	2009
district	86	faith based org	2	2009
district	86	parastatal	0	2009
district	86	private	3	2009
district	86	public	13	2009
district	87	faith based org	5	2009
district	87	parastatal	0	2009
district	87	private	0	2009
district	87	public	31	2009
district	88	faith based org	6	2009
district	88	parastatal	0	2009
district	88	private	1	2009
district	88	public	23	2009
district	89	faith based org	4	2009
district	89	parastatal	0	2009
district	89	private	2	2009
district	89	public	52	2009
district	90	faith based org	5	2009
district	90	parastatal	0	2009
district	90	private	1	2009
district	90	public	47	2009
district	91	faith based org	4	2009
district	91	parastatal	0	2009
district	91	private	0	2009
district	91	public	41	2009
district	92	faith based org	2	2009
district	92	parastatal	0	2009
district	92	private	0	2009
district	92	public	20	2009
district	93	faith based org	4	2009
district	93	parastatal	0	2009
district	93	private	2	2009
district	93	public	27	2009
district	94	faith based org	4	2009
district	94	parastatal	1	2009
district	94	private	7	2009
district	94	public	27	2009
district	95	faith based org	2	2009
district	95	parastatal	0	2009
district	95	private	1	2009
district	95	public	33	2009
district	96	faith based org	5	2009
district	96	parastatal	0	2009
district	96	private	0	2009
district	96	public	51	2009
district	97	faith based org	3	2009
district	97	parastatal	0	2009
district	97	private	1	2009
district	97	public	58	2009
district	98	faith based org	8	2009
district	98	parastatal	0	2009
district	98	private	0	2009
district	98	public	41	2009
district	99	faith based org	5	2009
district	99	parastatal	0	2009
district	99	private	7	2009
district	99	public	26	2009
district	100	faith based org	1	2009
district	100	parastatal	0	2009
district	100	private	0	2009
district	100	public	42	2009
district	101	faith based org	1	2009
district	101	parastatal	0	2009
district	101	private	2	2009
district	101	public	35	2009
district	102	faith based org	4	2009
district	102	parastatal	1	2009
district	102	private	2	2009
district	102	public	31	2009
district	103	faith based org	3	2009
district	103	parastatal	0	2009
district	103	private	5	2009
district	103	public	11	2009
district	104	faith based org	0	2009
district	104	parastatal	0	2009
district	104	private	2	2009
district	104	public	37	2009
district	105	faith based org	8	2009
district	105	parastatal	0	2009
district	105	private	0	2009
district	105	public	24	2009
district	106	faith based org	2	2009
district	106	parastatal	0	2009
district	106	private	2	2009
district	106	public	23	2009
district	107	faith based org	6	2009
district	107	parastatal	0	2009
district	107	private	1	2009
district	107	public	14	2009
district	108	faith based org	9	2009
district	108	parastatal	1	2009
district	108	private	2	2009
district	108	public	14	2009
district	109	faith based org	4	2009
district	109	parastatal	0	2009
district	109	private	4	2009
district	109	public	49	2009
district	110	faith based org	1	2009
district	110	parastatal	0	2009
district	110	private	0	2009
district	110	public	38	2009
district	111	faith based org	1	2009
district	111	parastatal	0	2009
district	111	private	1	2009
district	111	public	20	2009
district	112	faith based org	4	2009
district	112	parastatal	0	2009
district	112	private	17	2009
district	112	public	13	2009
district	113	faith based org	5	2009
district	113	parastatal	0	2009
district	113	private	4	2009
district	113	public	31	2009
district	114	faith based org	5	2009
district	114	parastatal	0	2009
district	114	private	2	2009
district	114	public	34	2009
district	115	faith based org	9	2009
district	115	parastatal	0	2009
district	115	private	1	2009
district	115	public	34	2009
district	116	faith based org	3	2009
district	116	parastatal	0	2009
district	116	private	3	2009
district	116	public	23	2009
district	117	faith based org	3	2009
district	117	parastatal	0	2009
district	117	private	4	2009
district	117	public	49	2009
district	118	faith based org	2	2009
district	118	parastatal	1	2009
district	118	private	4	2009
district	118	public	15	2009
district	119	faith based org	6	2009
district	119	parastatal	1	2009
district	119	private	4	2009
district	119	public	25	2009
district	120	faith based org	4	2009
district	120	parastatal	0	2009
district	120	private	1	2009
district	120	public	25	2009
district	121	faith based org	3	2009
district	121	parastatal	0	2009
district	121	private	2	2009
district	121	public	32	2009
district	122	faith based org	2	2009
district	122	parastatal	0	2009
district	122	private	6	2009
district	122	public	37	2009
district	123	faith based org	10	2009
district	123	parastatal	4	2009
district	123	private	34	2009
district	123	public	22	2009
district	124	faith based org	1	2009
district	124	parastatal	0	2009
district	124	private	4	2009
district	124	public	50	2009
district	125	faith based org	5	2009
district	125	parastatal	0	2009
district	125	private	4	2009
district	125	public	63	2009
district	126	faith based org	3	2009
district	126	parastatal	2	2009
district	126	private	17	2009
district	126	public	18	2009
district	127	faith based org	3	2009
district	127	parastatal	0	2009
district	127	private	0	2009
district	127	public	40	2009
district	128	faith based org	7	2009
district	128	parastatal	0	2009
district	128	private	9	2009
district	128	public	24	2009
district	129	faith based org	2	2009
district	129	parastatal	2	2009
district	129	private	4	2009
district	129	public	43	2009
district	130	faith based org	5	2009
district	130	parastatal	0	2009
district	130	private	0	2009
district	130	public	22	2009
district	131	faith based org	4	2009
district	131	parastatal	0	2009
district	131	private	5	2009
district	131	public	40	2009
district	132	faith based org	10	2009
district	132	parastatal	0	2009
district	132	private	5	2009
district	132	public	27	2009
district	133	faith based org	6	2009
district	133	parastatal	0	2009
district	133	private	0	2009
district	133	public	31	2009
district	134	faith based org	5	2009
district	134	parastatal	1	2009
district	134	private	4	2009
district	134	public	35	2009
district	135	faith based org	6	2009
district	135	parastatal	0	2009
district	135	private	1	2009
district	135	public	19	2009
district	136	faith based org	8	2009
district	136	parastatal	0	2009
district	136	private	4	2009
district	136	public	29	2009
district	137	faith based org	7	2009
district	137	parastatal	0	2009
district	137	private	2	2009
district	137	public	28	2009
district	138	faith based org	2	2009
district	138	parastatal	0	2009
district	138	private	2	2009
district	138	public	25	2009
district	139	faith based org	1	2009
district	139	parastatal	0	2009
district	139	private	4	2009
district	139	public	7	2009
district	140	faith based org	8	2009
district	140	parastatal	2	2009
district	140	private	1	2009
district	140	public	44	2009
district	141	faith based org	4	2009
district	141	parastatal	0	2009
district	141	private	0	2009
district	141	public	40	2009
district	142	faith based org	13	2009
district	142	parastatal	1	2009
district	142	private	0	2009
district	142	public	30	2009
district	143	faith based org	5	2009
district	143	parastatal	1	2009
district	143	private	0	2009
district	143	public	17	2009
district	144	faith based org	9	2009
district	144	parastatal	0	2009
district	144	private	0	2009
district	144	public	51	2009
district	145	faith based org	4	2009
district	145	parastatal	0	2009
district	145	private	3	2009
district	145	public	5	2009
district	146	faith based org	4	2009
district	146	parastatal	0	2009
district	146	private	2	2009
district	146	public	5	2009
district	147	faith based org	2	2009
district	147	parastatal	0	2009
district	147	private	0	2009
district	147	public	21	2009
district	148	faith based org	1	2009
district	148	parastatal	0	2009
district	148	private	4	2009
district	148	public	16	2009
district	149	faith based org	7	2009
district	149	parastatal	0	2009
district	149	private	5	2009
district	149	public	37	2009
district	150	faith based org	1	2009
district	150	parastatal	0	2009
district	150	private	2	2009
district	150	public	27	2009
district	151	faith based org	7	2009
district	151	parastatal	0	2009
district	151	private	0	2009
district	151	public	46	2009
district	152	faith based org	3	2009
district	152	parastatal	0	2009
district	152	private	2	2009
district	152	public	40	2009
district	153	faith based org	1	2009
district	153	parastatal	0	2009
district	153	private	3	2009
district	153	public	21	2009
district	154	faith based org	6	2009
district	154	parastatal	1	2009
district	154	private	9	2009
district	154	public	43	2009
district	155	faith based org	1	2009
district	155	parastatal	0	2009
district	155	private	1	2009
district	155	public	14	2009
district	156	faith based org	1	2009
district	156	parastatal	0	2009
district	156	private	2	2009
district	156	public	15	2009
district	157	faith based org	2	2009
district	157	parastatal	0	2009
district	157	private	5	2009
district	157	public	8	2009
district	158	faith based org	3	2009
district	158	parastatal	0	2009
district	158	private	6	2009
district	158	public	26	2009
district	159	faith based org	\N	2009
district	159	parastatal	\N	2009
district	159	private	\N	2009
district	159	public	\N	2009
district	160	faith based org	\N	2009
district	160	parastatal	\N	2009
district	160	private	\N	2009
district	160	public	\N	2009
district	161	faith based org	\N	2009
district	161	parastatal	\N	2009
district	161	private	\N	2009
district	161	public	\N	2009
district	162	faith based org	\N	2009
district	162	parastatal	\N	2009
district	162	private	\N	2009
district	162	public	\N	2009
district	163	faith based org	\N	2009
district	163	parastatal	\N	2009
district	163	private	\N	2009
district	163	public	\N	2009
district	164	faith based org	\N	2009
district	164	parastatal	\N	2009
district	164	private	\N	2009
district	164	public	\N	2009
district	165	faith based org	\N	2009
district	165	parastatal	\N	2009
district	165	private	\N	2009
district	165	public	\N	2009
district	166	faith based org	\N	2009
district	166	parastatal	\N	2009
district	166	private	\N	2009
district	166	public	\N	2009
district	167	faith based org	\N	2009
district	167	parastatal	\N	2009
district	167	private	\N	2009
district	167	public	\N	2009
district	168	faith based org	\N	2009
district	168	parastatal	\N	2009
district	168	private	\N	2009
district	168	public	\N	2009
district	169	faith based org	5	2009
district	169	parastatal	0	2009
district	169	private	12	2009
district	169	public	12	2009
\.


--
-- Name: pk_healthcenterownership; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY healthcenterownership
    ADD CONSTRAINT pk_healthcenterownership PRIMARY KEY (geo_level, geo_code, geo_version, "health center ownership");


--
-- PostgreSQL database dump complete
--

