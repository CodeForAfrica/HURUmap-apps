--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.10
-- Dumped by pg_dump version 9.5.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: hivcenters; Type: TABLE; Schema: public; Owner: hurumap_tz
--

CREATE TABLE hivcenters (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "hiv centers" character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE hivcenters OWNER TO hurumap_tz;

--
-- Data for Name: hivcenters; Type: TABLE DATA; Schema: public; Owner: hurumap_tz
--

COPY hivcenters (geo_level, geo_code, "hiv centers", total, geo_version) FROM stdin;
district	13	hiv centers	2	2009
district	1	hiv centers	9	2009
district	2	hiv centers	8	2009
district	3	hiv centers	5	2009
district	4	hiv centers	6	2009
district	5	hiv centers	23	2009
district	6	hiv centers	4	2009
district	7	hiv centers	0	2009
district	8	hiv centers	11	2009
district	9	hiv centers	0	2009
district	10	hiv centers	16	2009
district	11	hiv centers	8	2009
district	12	hiv centers	11	2009
district	14	hiv centers	7	2009
district	15	hiv centers	6	2009
district	16	hiv centers	7	2009
district	17	hiv centers	7	2009
district	18	hiv centers	8	2009
district	19	hiv centers	7	2009
district	20	hiv centers	11	2009
district	21	hiv centers	6	2009
district	22	hiv centers	17	2009
district	23	hiv centers	15	2009
district	24	hiv centers	8	2009
district	25	hiv centers	11	2009
district	26	hiv centers	9	2009
district	27	hiv centers	9	2009
district	28	hiv centers	10	2009
district	29	hiv centers	5	2009
district	30	hiv centers	0	2009
district	31	hiv centers	0	2009
district	32	hiv centers	15	2009
district	33	hiv centers	14	2009
district	34	hiv centers	9	2009
district	35	hiv centers	7	2009
district	36	hiv centers	14	2009
district	37	hiv centers	11	2009
district	38	hiv centers	0	2009
district	39	hiv centers	44	2009
district	40	hiv centers	17	2009
district	41	hiv centers	21	2009
district	42	hiv centers	35	2009
district	43	hiv centers	56	2009
district	44	hiv centers	14	2009
district	45	hiv centers	17	2009
district	46	hiv centers	49	2009
district	47	hiv centers	46	2009
district	48	hiv centers	43	2009
district	49	hiv centers	21	2009
district	50	hiv centers	24	2009
district	51	hiv centers	16	2009
district	52	hiv centers	13	2009
district	53	hiv centers	13	2009
district	54	hiv centers	15	2009
district	55	hiv centers	18	2009
district	56	hiv centers	16	2009
district	57	hiv centers	18	2009
district	58	hiv centers	13	2009
district	59	hiv centers	14	2009
district	60	hiv centers	17	2009
district	61	hiv centers	1	2009
district	62	hiv centers	15	2009
district	63	hiv centers	23	2009
district	64	hiv centers	21	2009
district	65	hiv centers	12	2009
district	66	hiv centers	10	2009
district	67	hiv centers	7	2009
district	68	hiv centers	22	2009
district	69	hiv centers	18	2009
district	70	hiv centers	13	2009
district	71	hiv centers	7	2009
district	72	hiv centers	0	2009
district	73	hiv centers	33	2009
district	74	hiv centers	51	2009
district	75	hiv centers	31	2009
district	76	hiv centers	48	2009
district	77	hiv centers	26	2009
district	78	hiv centers	42	2009
district	79	hiv centers	38	2009
district	80	hiv centers	27	2009
district	81	hiv centers	17	2009
district	82	hiv centers	0	2009
district	83	hiv centers	6	2009
district	84	hiv centers	8	2009
district	85	hiv centers	13	2009
district	86	hiv centers	7	2009
district	87	hiv centers	0	2009
district	88	hiv centers	0	2009
district	89	hiv centers	21	2009
district	90	hiv centers	26	2009
district	91	hiv centers	19	2009
district	92	hiv centers	15	2009
district	93	hiv centers	14	2009
district	94	hiv centers	18	2009
district	95	hiv centers	0	2009
district	96	hiv centers	21	2009
district	97	hiv centers	32	2009
district	98	hiv centers	18	2009
district	99	hiv centers	23	2009
district	100	hiv centers	5	2009
district	101	hiv centers	26	2009
district	102	hiv centers	17	2009
district	103	hiv centers	13	2009
district	104	hiv centers	9	2009
district	105	hiv centers	7	2009
district	106	hiv centers	7	2009
district	107	hiv centers	0	2009
district	108	hiv centers	12	2009
district	109	hiv centers	15	2009
district	110	hiv centers	10	2009
district	111	hiv centers	12	2009
district	112	hiv centers	0	2009
district	113	hiv centers	46	2009
district	114	hiv centers	36	2009
district	115	hiv centers	42	2009
district	116	hiv centers	22	2009
district	117	hiv centers	50	2009
district	118	hiv centers	13	2009
district	119	hiv centers	33	2009
district	120	hiv centers	0	2009
district	121	hiv centers	31	2009
district	122	hiv centers	56	2009
district	123	hiv centers	30	2009
district	124	hiv centers	37	2009
district	125	hiv centers	53	2009
district	126	hiv centers	24	2009
district	127	hiv centers	45	2009
district	128	hiv centers	19	2009
district	129	hiv centers	16	2009
district	130	hiv centers	17	2009
district	131	hiv centers	11	2009
district	132	hiv centers	7	2009
district	133	hiv centers	3	2009
district	134	hiv centers	28	2009
district	135	hiv centers	21	2009
district	136	hiv centers	10	2009
district	137	hiv centers	9	2009
district	138	hiv centers	12	2009
district	139	hiv centers	7	2009
district	140	hiv centers	13	2009
district	141	hiv centers	8	2009
district	142	hiv centers	16	2009
district	143	hiv centers	2	2009
district	144	hiv centers	18	2009
district	145	hiv centers	1	2009
district	146	hiv centers	21	2009
district	147	hiv centers	17	2009
district	148	hiv centers	10	2009
district	149	hiv centers	11	2009
district	150	hiv centers	0	2009
district	151	hiv centers	10	2009
district	152	hiv centers	11	2009
district	153	hiv centers	0	2009
district	154	hiv centers	32	2009
district	155	hiv centers	4	2009
district	156	hiv centers	1	2009
district	157	hiv centers	10	2009
district	158	hiv centers	29	2009
district	159	hiv centers	0	2009
district	160	hiv centers	0	2009
district	161	hiv centers	0	2009
district	162	hiv centers	0	2009
district	163	hiv centers	0	2009
district	164	hiv centers	0	2009
district	165	hiv centers	0	2009
district	166	hiv centers	0	2009
district	167	hiv centers	0	2009
district	168	hiv centers	0	2009
district	169	hiv centers	14	2009
region	1	hiv centers	68	2009
region	3	hiv centers	138	2009
region	2	hiv centers	55	2009
region	4	hiv centers	53	2009
region	5	hiv centers	125	2009
region	6	hiv centers	269	2009
region	9	hiv centers	46	2009
region	10	hiv centers	84	2009
region	11	hiv centers	52	2009
region	14	hiv centers	102	2009
region	15	hiv centers	87	2009
region	16	hiv centers	87	2009
region	17	hiv centers	317	2009
region	18	hiv centers	70	2009
region	19	hiv centers	97	2009
region	20	hiv centers	276	2009
region	21	hiv centers	27	2009
region	22	hiv centers	204	2009
region	23	hiv centers	112	2009
region	24	hiv centers	81	2009
region	25	hiv centers	91	2009
region	26	hiv centers	34	2009
region	27	hiv centers	113	2009
region	29	hiv centers	84	2009
region	28	hiv centers	0	2009
region	7	hiv centers	0	2009
region	8	hiv centers	0	2009
region	12	hiv centers	0	2009
region	13	hiv centers	0	2009
region	30	hiv centers	0	2009
country	TZ	hiv centers	2672	2009
\.


--
-- Name: pk_hivcenters; Type: CONSTRAINT; Schema: public; Owner: hurumap_tz
--

ALTER TABLE ONLY hivcenters
    ADD CONSTRAINT pk_hivcenters PRIMARY KEY (geo_level, geo_code, geo_version, "hiv centers");


--
-- PostgreSQL database dump complete
--

