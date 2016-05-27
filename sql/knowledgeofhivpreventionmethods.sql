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

ALTER TABLE IF EXISTS ONLY public.knowledgeofhivpreventionmethods_sex DROP CONSTRAINT IF EXISTS knowledgeofhivpreventionmethods_sex_pkey;
DROP TABLE IF EXISTS public.knowledgeofhivpreventionmethods_sex;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: knowledgeofhivpreventionmethods_sex; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE knowledgeofhivpreventionmethods_sex (
	geo_level character varying(15) NOT NULL,
	geo_code character varying(10) NOT NULL,
	"knowledge of hiv prevention methods" character varying(128) NOT NULL,
	"sex" character varying(15) NOT NULL,
	total float NOT NULL
);


--
-- Data for Name: knowledgeofhivpreventionmethods_sex; Type: TABLE DATA; Schema: public; Owner: -
--

COPY knowledgeofhivpreventionmethods_sex (geo_level, geo_code, "knowledge of hiv prevention methods", "sex", total) FROM stdin;
county	1	using condoms	female	85.4
county	1	using condoms	male	96.9
county	1	being faithful	female	94.2
county	1	being faithful	male	98.9
county	1	both	female	82.5
county	1	both	male	96.4
county	2	using condoms	female	62.1
county	2	using condoms	male	70.9
county	2	being faithful	female	65.3
county	2	being faithful	male	89.5
county	2	both	female	56
county	2	both	male	67.2
county	3	using condoms	female	75.9
county	3	using condoms	male	54.1
county	3	being faithful	female	93.1
county	3	being faithful	male	75.1
county	3	both	female	73
county	3	both	male	43.8
county	4	using condoms	female	60
county	4	using condoms	male	73.8
county	4	being faithful	female	85
county	4	being faithful	male	92.1
county	4	both	female	57.9
county	4	both	male	70.5
county	5	using condoms	female	70.2
county	5	using condoms	male	88
county	5	being faithful	female	92.5
county	5	being faithful	male	94.7
county	5	both	female	67.6
county	5	both	male	84
county	6	using condoms	female	84.1
county	6	using condoms	male	88.2
county	6	being faithful	female	95.8
county	6	being faithful	male	93.7
county	6	both	female	82.6
county	6	both	male	85.1
county	7	using condoms	female	42.9
county	7	using condoms	male	69.6
county	7	being faithful	female	59.7
county	7	being faithful	male	94.1
county	7	both	female	31.2
county	7	both	male	68.7
county	8	using condoms	female	18.5
county	8	using condoms	male	38
county	8	being faithful	female	52.3
county	8	being faithful	male	33.6
county	8	both	female	15.1
county	8	both	male	11.4
county	9	using condoms	female	14.1
county	9	using condoms	male	60.1
county	9	being faithful	female	53.7
county	9	being faithful	male	68.7
county	9	both	female	13
county	9	both	male	58.1
county	10	using condoms	female	54.2
county	10	using condoms	male	97.3
county	10	being faithful	female	63.5
county	10	being faithful	male	96.3
county	10	both	female	45.3
county	10	both	male	95
county	11	using condoms	female	76.2
county	11	using condoms	male	70.8
county	11	being faithful	female	90.9
county	11	being faithful	male	97.6
county	11	both	female	73.9
county	11	both	male	70.8
county	12	using condoms	female	81.2
county	12	using condoms	male	87.3
county	12	being faithful	female	95.3
county	12	being faithful	male	99.1
county	12	both	female	78.5
county	12	both	male	86.4
county	13	using condoms	female	76.1
county	13	using condoms	male	82.1
county	13	being faithful	female	94.1
county	13	being faithful	male	98.1
county	13	both	female	74.2
county	13	both	male	81.3
county	14	using condoms	female	80.4
county	14	using condoms	male	71.7
county	14	being faithful	female	95.2
county	14	being faithful	male	81.8
county	14	both	female	78.2
county	14	both	male	62.9
county	15	using condoms	female	51.5
county	15	using condoms	male	82.6
county	15	being faithful	female	93.5
county	15	being faithful	male	98.3
county	15	both	female	50.2
county	15	both	male	81.7
county	16	using condoms	female	76.5
county	16	using condoms	male	88.1
county	16	being faithful	female	96.8
county	16	being faithful	male	91.4
county	16	both	female	74.9
county	16	both	male	83.2
county	17	using condoms	female	78.9
county	17	using condoms	male	93
county	17	being faithful	female	95.5
county	17	being faithful	male	98.4
county	17	both	female	76.6
county	17	both	male	92.2
county	18	using condoms	female	83.2
county	18	using condoms	male	91.6
county	18	being faithful	female	91.2
county	18	being faithful	male	90.7
county	18	both	female	80.3
county	18	both	male	85.2
county	19	using condoms	female	81
county	19	using condoms	male	86.1
county	19	being faithful	female	92.5
county	19	being faithful	male	97.3
county	19	both	female	76.8
county	19	both	male	85
county	20	using condoms	female	91.9
county	20	using condoms	male	87.6
county	20	being faithful	female	97.8
county	20	being faithful	male	97
county	20	both	female	90.6
county	20	both	male	86.1
county	21	using condoms	female	56.3
county	21	using condoms	male	80.3
county	21	being faithful	female	74.4
county	21	being faithful	male	97.9
county	21	both	female	53.7
county	21	both	male	78.2
county	22	using condoms	female	80.6
county	22	using condoms	male	95
county	22	being faithful	female	92.4
county	22	being faithful	male	97.5
county	22	both	female	75.9
county	22	both	male	93.6
county	23	using condoms	female	50.5
county	23	using condoms	male	7.7
county	23	being faithful	female	91.2
county	23	being faithful	male	30.7
county	23	both	female	49.2
county	23	both	male	2.4
county	24	using condoms	female	53.8
county	24	using condoms	male	79.3
county	24	being faithful	female	76.9
county	24	being faithful	male	95
county	24	both	female	47.8
county	24	both	male	76.8
county	25	using condoms	female	78.4
county	25	using condoms	male	82.6
county	25	being faithful	female	96.8
county	25	being faithful	male	95.8
county	25	both	female	78.1
county	25	both	male	79.3
county	26	using condoms	female	86.3
county	26	using condoms	male	84.9
county	26	being faithful	female	97.1
county	26	being faithful	male	92.2
county	26	both	female	84.6
county	26	both	male	79.7
county	27	using condoms	female	85.7
county	27	using condoms	male	86.9
county	27	being faithful	female	94.8
county	27	being faithful	male	92.7
county	27	both	female	82.8
county	27	both	male	82.8
county	28	using condoms	female	85.6
county	28	using condoms	male	97.1
county	28	being faithful	female	97.5
county	28	being faithful	male	99.2
county	28	both	female	84.7
county	28	both	male	97.1
county	29	using condoms	female	92
county	29	using condoms	male	98.9
county	29	being faithful	female	97.1
county	29	being faithful	male	98.8
county	29	both	female	90.7
county	29	both	male	98.4
county	30	using condoms	female	74.7
county	30	using condoms	male	91.7
county	30	being faithful	female	89.6
county	30	being faithful	male	96.3
county	30	both	female	72.6
county	30	both	male	89.9
county	31	using condoms	female	86.3
county	31	using condoms	male	77.6
county	31	being faithful	female	96.9
county	31	being faithful	male	89.5
county	31	both	female	84.8
county	31	both	male	72.3
county	32	using condoms	female	84.2
county	32	using condoms	male	92.8
county	32	being faithful	female	94.4
county	32	being faithful	male	96.6
county	32	both	female	80.9
county	32	both	male	91.4
county	33	using condoms	female	67.9
county	33	using condoms	male	81.2
county	33	being faithful	female	85.3
county	33	being faithful	male	92.8
county	33	both	female	62.4
county	33	both	male	78.4
county	34	using condoms	female	78.2
county	34	using condoms	male	87.4
county	34	being faithful	female	92.2
county	34	being faithful	male	96.5
county	34	both	female	76.3
county	34	both	male	85.2
county	35	using condoms	female	76.5
county	35	using condoms	male	94
county	35	being faithful	female	87.4
county	35	being faithful	male	94.9
county	35	both	female	72.5
county	35	both	male	90.3
county	36	using condoms	female	87.9
county	36	using condoms	male	92.2
county	36	being faithful	female	95.9
county	36	being faithful	male	96.5
county	36	both	female	85.5
county	36	both	male	90.1
county	37	using condoms	female	86.4
county	37	using condoms	male	87.3
county	37	being faithful	female	92.2
county	37	being faithful	male	93.4
county	37	both	female	81.9
county	37	both	male	83.1
county	38	using condoms	female	81.4
county	38	using condoms	male	83
county	38	being faithful	female	91
county	38	being faithful	male	83.4
county	38	both	female	77.9
county	38	both	male	72
county	39	using condoms	female	88.7
county	39	using condoms	male	91.7
county	39	being faithful	female	91.3
county	39	being faithful	male	99.7
county	39	both	female	84.2
county	39	both	male	91.7
county	40	using condoms	female	81.8
county	40	using condoms	male	96.3
county	40	being faithful	female	90
county	40	being faithful	male	99.1
county	40	both	female	75.5
county	40	both	male	95.4
county	41	using condoms	female	88.5
county	41	using condoms	male	96.6
county	41	being faithful	female	96.6
county	41	being faithful	male	98.8
county	41	both	female	86.5
county	41	both	male	95.6
county	42	using condoms	female	88.9
county	42	using condoms	male	99.1
county	42	being faithful	female	92.5
county	42	being faithful	male	98.7
county	42	both	female	84.4
county	42	both	male	98.2
county	43	using condoms	female	91.5
county	43	using condoms	male	97.4
county	43	being faithful	female	93.8
county	43	being faithful	male	98.6
county	43	both	female	88.3
county	43	both	male	96.7
county	44	using condoms	female	84.8
county	44	using condoms	male	86.7
county	44	being faithful	female	90
county	44	being faithful	male	89.7
county	44	both	female	79.8
county	44	both	male	80.3
county	45	using condoms	female	81.7
county	45	using condoms	male	89.8
county	45	being faithful	female	96.5
county	45	being faithful	male	97.4
county	45	both	female	80.1
county	45	both	male	88.5
county	46	using condoms	female	98.2
county	46	using condoms	male	98.3
county	46	being faithful	female	99.8
county	46	being faithful	male	98.5
county	46	both	female	97.9
county	46	both	male	98.3
county	47	using condoms	female	86.8
county	47	using condoms	male	93.1
county	47	being faithful	female	94.7
county	47	being faithful	male	95.9
county	47	both	female	83.5
county	47	both	male	89.9
country	KE	using condoms	female	79.8
country	KE	using condoms	male	87.6
country	KE	being faithful	female	91.6
country	KE	being faithful	male	94.2
country	KE	both	female	76.6
country	KE	both	male	84.8
\.
--
-- Name: knowledgeofhivpreventionmethods_sex_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY knowledgeofhivpreventionmethods_sex
	ADD CONSTRAINT knowledgeofhivpreventionmethods_sex_pkey PRIMARY KEY (geo_level, geo_code, "knowledge of hiv prevention methods", "sex", total);


--
-- PostgreSQL database dump complete
--

