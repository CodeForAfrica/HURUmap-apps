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

ALTER TABLE IF EXISTS ONLY public.treatmentofchildrenwithfever DROP CONSTRAINT IF EXISTS treatmentofchildrenwithfever_pkey;
DROP TABLE IF EXISTS public.treatmentofchildrenwithfever;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: treatmentofchildrenwithfever; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE treatmentofchildrenwithfever (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "treatment of children with fever" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: treatmentofchildrenwithfever; Type: TABLE DATA; Schema: public; Owner: -
--

COPY treatmentofchildrenwithfever (geo_level, geo_code, "treatment of children with fever", total) FROM stdin;
county	1	had fever	22.5
county	1	sort advice or treatment	91.1
county	1	blood drawn for testing	46.7
county	1	took any anti-malarial drug	14.9
county	1	took any ACT	13.5
county	1	took any ACT on same or next day	3.0
county	2	had fever	25.7
county	2	sort advice or treatment	69.5
county	2	blood drawn for testing	42.8
county	2	took any anti-malarial drug	33.2
county	2	took any ACT	30.0
county	2	took any ACT on same or next day	11.8
county	3	had fever	31.3
county	3	sort advice or treatment	78.6
county	3	blood drawn for testing	31
county	3	took any anti-malarial drug	2.1
county	3	took any ACT	1.0
county	3	took any ACT on same or next day	0.0
county	4	had fever	26.8
county	4	sort advice or treatment	81.1
county	4	blood drawn for testing	22.6
county	4	took any anti-malarial drug	12.3
county	4	took any ACT	9.5
county	4	took any ACT on same or next day	5.8
county	5	had fever	22.2
county	5	sort advice or treatment	61.5
county	5	blood drawn for testing	11.8
county	5	took any anti-malarial drug	5.7
county	5	took any ACT	1.2
county	5	took any ACT on same or next day	0.0
county	6	had fever	29.5
county	6	sort advice or treatment	58.6
county	6	blood drawn for testing	21.7
county	6	took any anti-malarial drug	1.3
county	6	took any ACT	1.3
county	6	took any ACT on same or next day	1.3
county	7	had fever	7
county	7	sort advice or treatment	44.0
county	7	blood drawn for testing	52.4
county	7	took any anti-malarial drug	5.6
county	7	took any ACT	5.6
county	7	took any ACT on same or next day	5.6
county	8	had fever	12.5
county	8	sort advice or treatment	65.3
county	8	blood drawn for testing	19.9
county	8	took any anti-malarial drug	4.3
county	8	took any ACT	0.4
county	8	took any ACT on same or next day	0.0
county	9	had fever	4.8
county	9	sort advice or treatment	0.0
county	9	blood drawn for testing	0.0
county	9	took any anti-malarial drug	0.0
county	9	took any ACT	0.0
county	9	took any ACT on same or next day	0.0
county	10	had fever	19.3
county	10	sort advice or treatment	63.1
county	10	blood drawn for testing	22.3
county	10	took any anti-malarial drug	10.6
county	10	took any ACT	10.1
county	10	took any ACT on same or next day	1.8
county	11	had fever	13.2
county	11	sort advice or treatment	78.7
county	11	blood drawn for testing	60.7
county	11	took any anti-malarial drug	51.1
county	11	took any ACT	43.4
county	11	took any ACT on same or next day	43.4
county	12	had fever	26
county	12	sort advice or treatment	73.3
county	12	blood drawn for testing	54
county	12	took any anti-malarial drug	23.1
county	12	took any ACT	14.9
county	12	took any ACT on same or next day	7.8
county	13	had fever	28.1
county	13	sort advice or treatment	78.9
county	13	blood drawn for testing	41.9
county	13	took any anti-malarial drug	27.2
county	13	took any ACT	9.8
county	13	took any ACT on same or next day	6.3
county	14	had fever	13.8
county	14	sort advice or treatment	72.4
county	14	blood drawn for testing	38.4
county	14	took any anti-malarial drug	21.7
county	14	took any ACT	21.7
county	14	took any ACT on same or next day	10.9
county	15	had fever	17
county	15	sort advice or treatment	72.1
county	15	blood drawn for testing	9.1
county	15	took any anti-malarial drug	7.4
county	15	took any ACT	3.5
county	15	took any ACT on same or next day	2.5
county	16	had fever	13.6
county	16	sort advice or treatment	81.6
county	16	blood drawn for testing	18.4
county	16	took any anti-malarial drug	12.8
county	16	took any ACT	10.8
county	16	took any ACT on same or next day	6.2
county	17	had fever	14.1
county	17	sort advice or treatment	89.7
county	17	blood drawn for testing	21.7
county	17	took any anti-malarial drug	13.7
county	17	took any ACT	7.8
county	17	took any ACT on same or next day	0.0
county	18	had fever	17.2
county	18	sort advice or treatment	70.8
county	18	blood drawn for testing	22.6
county	18	took any anti-malarial drug	6.7
county	18	took any ACT	5.3
county	18	took any ACT on same or next day	2.8
county	19	had fever	14.1
county	19	sort advice or treatment	67.2
county	19	blood drawn for testing	17.5
county	19	took any anti-malarial drug	0.0
county	19	took any ACT	0.0
county	19	took any ACT on same or next day	0.0
county	20	had fever	21.2
county	20	sort advice or treatment	82.4
county	20	blood drawn for testing	28.6
county	20	took any anti-malarial drug	18.6
county	20	took any ACT	18.6
county	20	took any ACT on same or next day	16.2
county	21	had fever	17.7
county	21	sort advice or treatment	85.1
county	21	blood drawn for testing	3.7
county	21	took any anti-malarial drug	0.0
county	21	took any ACT	0.0
county	21	took any ACT on same or next day	0.0
county	22	had fever	18.5
county	22	sort advice or treatment	64.8
county	22	blood drawn for testing	33.6
county	22	took any anti-malarial drug	3.2
county	22	took any ACT	1.2
county	22	took any ACT on same or next day	1.2
county	23	had fever	11.4
county	23	sort advice or treatment	63.4
county	23	blood drawn for testing	49.5
county	23	took any anti-malarial drug	29.9
county	23	took any ACT	21.7
county	23	took any ACT on same or next day	18.5
county	24	had fever	9.4
county	24	sort advice or treatment	80.4
county	24	blood drawn for testing	20.6
county	24	took any anti-malarial drug	32.2
county	24	took any ACT	16.1
county	24	took any ACT on same or next day	16.1
county	25	had fever	19.1
county	25	sort advice or treatment	54.5
county	25	blood drawn for testing	16.6
county	25	took any anti-malarial drug	6.8
county	25	took any ACT	5.0
county	25	took any ACT on same or next day	2.5
county	26	had fever	21.9
county	26	sort advice or treatment	65.9
county	26	blood drawn for testing	45.2
county	26	took any anti-malarial drug	12.4
county	26	took any ACT	10.9
county	26	took any ACT on same or next day	4.1
county	27	had fever	19.3
county	27	sort advice or treatment	62.8
county	27	blood drawn for testing	17
county	27	took any anti-malarial drug	5.8
county	27	took any ACT	4.7
county	27	took any ACT on same or next day	1.8
county	28	had fever	29.7
county	28	sort advice or treatment	67.1
county	28	blood drawn for testing	13.5
county	28	took any anti-malarial drug	2
county	28	took any ACT	1.5
county	28	took any ACT on same or next day	1.5
county	29	had fever	19.7
county	29	sort advice or treatment	52.8
county	29	blood drawn for testing	12.2
county	29	took any anti-malarial drug	8.8
county	29	took any ACT	8.8
county	29	took any ACT on same or next day	5.3
county	30	had fever	22.9
county	30	sort advice or treatment	71.6
county	30	blood drawn for testing	39.1
county	30	took any anti-malarial drug	27.7
county	30	took any ACT	22.9
county	30	took any ACT on same or next day	11.4
county	31	had fever	21.6
county	31	sort advice or treatment	74.9
county	31	blood drawn for testing	26
county	31	took any anti-malarial drug	16.8
county	31	took any ACT	6.2
county	31	took any ACT on same or next day	6.2
county	32	had fever	15.5
county	32	sort advice or treatment	67.9
county	32	blood drawn for testing	27.6
county	32	took any anti-malarial drug	11.6
county	32	took any ACT	11.0
county	32	took any ACT on same or next day	6.8
county	33	had fever	30.7
county	33	sort advice or treatment	78
county	33	blood drawn for testing	20.4
county	33	took any anti-malarial drug	13.3
county	33	took any ACT	9.7
county	33	took any ACT on same or next day	3.6
county	34	had fever	25.7
county	34	sort advice or treatment	64.7
county	34	blood drawn for testing	21.8
county	34	took any anti-malarial drug	1.4
county	34	took any ACT	0.0
county	34	took any ACT on same or next day	0.0
county	35	had fever	25.6
county	35	sort advice or treatment	70.7
county	35	blood drawn for testing	37.9
county	35	took any anti-malarial drug	19.4
county	35	took any ACT	14.4
county	35	took any ACT on same or next day	6.9
county	36	had fever	20.8
county	36	sort advice or treatment	73.9
county	36	blood drawn for testing	14.9
county	36	took any anti-malarial drug	21
county	36	took any ACT	12.9
county	36	took any ACT on same or next day	8.1
county	37	had fever	28.9
county	37	sort advice or treatment	56
county	37	blood drawn for testing	34.9
county	37	took any anti-malarial drug	38.7
county	37	took any ACT	38.4
county	37	took any ACT on same or next day	19.6
county	38	had fever	49.2
county	38	sort advice or treatment	69.1
county	38	blood drawn for testing	34.4
county	38	took any anti-malarial drug	40.7
county	38	took any ACT	39.5
county	38	took any ACT on same or next day	18.0
county	39	had fever	35.8
county	39	sort advice or treatment	74.6
county	39	blood drawn for testing	41.6
county	39	took any anti-malarial drug	58.7
county	39	took any ACT	55.1
county	39	took any ACT on same or next day	33.5
county	40	had fever	42.7
county	40	sort advice or treatment	67.9
county	40	blood drawn for testing	37.2
county	40	took any anti-malarial drug	62.9
county	40	took any ACT	59.6
county	40	took any ACT on same or next day	36.5
county	41	had fever	44.9
county	41	sort advice or treatment	80.7
county	41	blood drawn for testing	61.1
county	41	took any anti-malarial drug	59.4
county	41	took any ACT	59.2
county	41	took any ACT on same or next day	38.4
county	42	had fever	30.9
county	42	sort advice or treatment	74.9
county	42	blood drawn for testing	48.8
county	42	took any anti-malarial drug	46
county	42	took any ACT	39.5
county	42	took any ACT on same or next day	18.8
county	43	had fever	45.6
county	43	sort advice or treatment	67.5
county	43	blood drawn for testing	50.7
county	43	took any anti-malarial drug	51.7
county	43	took any ACT	46.5
county	43	took any ACT on same or next day	29.9
county	44	had fever	48.2
county	44	sort advice or treatment	80.4
county	44	blood drawn for testing	42.6
county	44	took any anti-malarial drug	42.4
county	44	took any ACT	37.2
county	44	took any ACT on same or next day	21.0
county	45	had fever	28.1
county	45	sort advice or treatment	80.2
county	45	blood drawn for testing	27.1
county	45	took any anti-malarial drug	46.9
county	45	took any ACT	27.2
county	45	took any ACT on same or next day	13.4
county	46	had fever	5.7
county	46	sort advice or treatment	0.0
county	46	blood drawn for testing	0.0
county	46	took any anti-malarial drug	0.0
county	46	took any ACT	0.0
county	46	took any ACT on same or next day	0.0
county	47	had fever	18.7
county	47	sort advice or treatment	67.4
county	47	blood drawn for testing	36
county	47	took any anti-malarial drug	10.6
county	47	took any ACT	6.9
county	47	took any ACT on same or next day	3.8
country	KE	had fever	24.4
country	KE	sort advice or treatment	71.7
country	KE	blood drawn for testing	34.9
country	KE	took any anti-malarial drug	27
country	KE	took any ACT	23.1
country	KE	took any ACT on same or next day	13.1
\.
--
-- Name: treatmentofchildrenwithfever_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY treatmentofchildrenwithfever
    ADD CONSTRAINT treatmentofchildrenwithfever_pkey PRIMARY KEY (geo_level, geo_code, "treatment of children with fever");


--
-- PostgreSQL database dump complete
--

