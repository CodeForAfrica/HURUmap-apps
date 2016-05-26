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

ALTER TABLE IF EXISTS ONLY public.treatment_type DROP CONSTRAINT IF EXISTS treatment_type_pkey;
DROP TABLE IF EXISTS public.treatment_type;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: treatment_type; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE treatment_type (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    type character varying(128) NOT NULL,
    treatment character varying(128) NOT NULL,
    total float NULL
);


--
-- Data for Name: treatment_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY treatment_type (geo_level, geo_code, type, treatment, total) FROM stdin;
county	1	ARI	sought treatment from health facility or provider	0
county	1	fever	sought treatment from health facility or provider	75.1
county	1	diarrhoea	sought treatment from health facility or provider	63.3
county	1	diarrhoea	ORT	88.4
county	1	diarrhoea	fluid from ORS packet	76.6
county	1	diarrhoea	zinc	30.6
county	1	diarrhoea	ORS and zinc	30.6
county	2	ARI	sought treatment from health facility or provider	62.4
county	2	fever	sought treatment from health facility or provider	64.7
county	2	diarrhoea	sought treatment from health facility or provider	62.2
county	2	diarrhoea	ORT	73.9
county	2	diarrhoea	fluid from ORS packet	70.2
county	2	diarrhoea	zinc	26.9
county	2	diarrhoea	ORS and zinc	25.7
county	3	ARI	sought treatment from health facility or provider	60.5
county	3	fever	sought treatment from health facility or provider	69.7
county	3	diarrhoea	sought treatment from health facility or provider	71.5
county	3	diarrhoea	ORT	80.4
county	3	diarrhoea	fluid from ORS packet	74.6
county	3	diarrhoea	zinc	0.7
county	3	diarrhoea	ORS and zinc	0.7
county	4	ARI	sought treatment from health facility or provider	73.2
county	4	fever	sought treatment from health facility or provider	64.5
county	4	diarrhoea	sought treatment from health facility or provider	47.8
county	4	diarrhoea	ORT	59.9
county	4	diarrhoea	fluid from ORS packet	53.7
county	4	diarrhoea	zinc	15.9
county	4	diarrhoea	ORS and zinc	15.6
county	5	ARI	sought treatment from health facility or provider	68.6
county	5	fever	sought treatment from health facility or provider	45.3
county	5	diarrhoea	sought treatment from health facility or provider	63.7
county	5	diarrhoea	ORT	79
county	5	diarrhoea	fluid from ORS packet	54.7
county	5	diarrhoea	zinc	11.5
county	5	diarrhoea	ORS and zinc	8.3
county	6	ARI	sought treatment from health facility or provider	79.9
county	6	fever	sought treatment from health facility or provider	56.3
county	6	diarrhoea	sought treatment from health facility or provider	50.8
county	6	diarrhoea	ORT	69.2
county	6	diarrhoea	fluid from ORS packet	62.0
county	6	diarrhoea	zinc	7.3
county	6	diarrhoea	ORS and zinc	6.1
county	7	ARI	sought treatment from health facility or provider	0
county	7	fever	sought treatment from health facility or provider	41.4
county	7	diarrhoea	sought treatment from health facility or provider	29.4
county	7	diarrhoea	ORT	68.3
county	7	diarrhoea	fluid from ORS packet	80.5
county	7	diarrhoea	zinc	10.8
county	7	diarrhoea	ORS and zinc	10.8
county	8	ARI	sought treatment from health facility or provider	33.6
county	8	fever	sought treatment from health facility or provider	55.1
county	8	diarrhoea	sought treatment from health facility or provider	57.2
county	8	diarrhoea	ORT	69.8
county	8	diarrhoea	fluid from ORS packet	72.2
county	8	diarrhoea	zinc	8.4
county	8	diarrhoea	ORS and zinc	6.7
county	9	ARI	sought treatment from health facility or provider	0
county	9	fever	sought treatment from health facility or provider	0
county	9	diarrhoea	sought treatment from health facility or provider	0
county	9	diarrhoea	ORT	0
county	9	diarrhoea	fluid from ORS packet	0
county	9	diarrhoea	zinc	0
county	9	diarrhoea	ORS and zinc	0
county	10	ARI	sought treatment from health facility or provider	66.8
county	10	fever	sought treatment from health facility or provider	63.1
county	10	diarrhoea	sought treatment from health facility or provider	65.9
county	10	diarrhoea	ORT	71.2
county	10	diarrhoea	fluid from ORS packet	64.4
county	10	diarrhoea	zinc	5
county	10	diarrhoea	ORS and zinc	3.3
county	11	ARI	sought treatment from health facility or provider	63.9
county	11	fever	sought treatment from health facility or provider	75.6
county	11	diarrhoea	sought treatment from health facility or provider	56.9
county	11	diarrhoea	ORT	81.8
county	11	diarrhoea	fluid from ORS packet	74.8
county	11	diarrhoea	zinc	4.6
county	11	diarrhoea	ORS and zinc	4.6
county	12	ARI	sought treatment from health facility or provider	0
county	12	fever	sought treatment from health facility or provider	72
county	12	diarrhoea	sought treatment from health facility or provider	69.8
county	12	diarrhoea	ORT	65.3
county	12	diarrhoea	fluid from ORS packet	52.2
county	12	diarrhoea	zinc	1.6
county	12	diarrhoea	ORS and zinc	0.0
county	13	ARI	sought treatment from health facility or provider	67.1
county	13	fever	sought treatment from health facility or provider	75.2
county	13	diarrhoea	sought treatment from health facility or provider	67.5
county	13	diarrhoea	ORT	75.4
county	13	diarrhoea	fluid from ORS packet	53.3
county	13	diarrhoea	zinc	5.1
county	13	diarrhoea	ORS and zinc	5.1
county	14	ARI	sought treatment from health facility or provider	0
county	14	fever	sought treatment from health facility or provider	72.4
county	14	diarrhoea	sought treatment from health facility or provider	46.7
county	14	diarrhoea	ORT	74.8
county	14	diarrhoea	fluid from ORS packet	73.3
county	14	diarrhoea	zinc	7.6
county	14	diarrhoea	ORS and zinc	7.6
county	15	ARI	sought treatment from health facility or provider	57.4
county	15	fever	sought treatment from health facility or provider	60.8
county	15	diarrhoea	sought treatment from health facility or provider	54.4
county	15	diarrhoea	ORT	83.7
county	15	diarrhoea	fluid from ORS packet	67.2
county	15	diarrhoea	zinc	2
county	15	diarrhoea	ORS and zinc	2
county	16	ARI	sought treatment from health facility or provider	54.5
county	16	fever	sought treatment from health facility or provider	61.4
county	16	diarrhoea	sought treatment from health facility or provider	51
county	16	diarrhoea	ORT	70.7
county	16	diarrhoea	fluid from ORS packet	60.2
county	16	diarrhoea	zinc	5.5
county	16	diarrhoea	ORS and zinc	5.5
county	17	ARI	sought treatment from health facility or provider	64.5
county	17	fever	sought treatment from health facility or provider	74.8
county	17	diarrhoea	sought treatment from health facility or provider	52.1
county	17	diarrhoea	ORT	75.0
county	17	diarrhoea	fluid from ORS packet	60.9
county	17	diarrhoea	zinc	1.2
county	17	diarrhoea	ORS and zinc	1.2
county	18	ARI	sought treatment from health facility or provider	0
county	18	fever	sought treatment from health facility or provider	67
county	18	diarrhoea	sought treatment from health facility or provider	46.0
county	18	diarrhoea	ORT	81.9
county	18	diarrhoea	fluid from ORS packet	65.0
county	18	diarrhoea	zinc	1.1
county	18	diarrhoea	ORS and zinc	1.1
county	19	ARI	sought treatment from health facility or provider	72.9
county	19	fever	sought treatment from health facility or provider	65.6
county	19	diarrhoea	sought treatment from health facility or provider	0
county	19	diarrhoea	ORT	0
county	19	diarrhoea	fluid from ORS packet	0
county	19	diarrhoea	zinc	0
county	19	diarrhoea	ORS and zinc	0
county	20	ARI	sought treatment from health facility or provider	0
county	20	fever	sought treatment from health facility or provider	74.8
county	20	diarrhoea	sought treatment from health facility or provider	73.6
county	20	diarrhoea	ORT	64.4
county	20	diarrhoea	fluid from ORS packet	57.6
county	20	diarrhoea	zinc	5.8
county	20	diarrhoea	ORS and zinc	5.8
county	21	ARI	sought treatment from health facility or provider	77.9
county	21	fever	sought treatment from health facility or provider	83.3
county	21	diarrhoea	sought treatment from health facility or provider	59.8
county	21	diarrhoea	ORT	62.2
county	21	diarrhoea	fluid from ORS packet	58.4
county	21	diarrhoea	zinc	8.9
county	21	diarrhoea	ORS and zinc	8.9
county	22	ARI	sought treatment from health facility or provider	0
county	22	fever	sought treatment from health facility or provider	61.8
county	22	diarrhoea	sought treatment from health facility or provider	69.9
county	22	diarrhoea	ORT	80.6
county	22	diarrhoea	fluid from ORS packet	72.2
county	22	diarrhoea	zinc	11.8
county	22	diarrhoea	ORS and zinc	11.8
county	23	ARI	sought treatment from health facility or provider	0
county	23	fever	sought treatment from health facility or provider	63.4
county	23	diarrhoea	sought treatment from health facility or provider	76.5
county	23	diarrhoea	ORT	44.8
county	23	diarrhoea	fluid from ORS packet	45.6
county	23	diarrhoea	zinc	13.7
county	23	diarrhoea	ORS and zinc	4
county	24	ARI	sought treatment from health facility or provider	77.5
county	24	fever	sought treatment from health facility or provider	76.9
county	24	diarrhoea	sought treatment from health facility or provider	63.3
county	24	diarrhoea	ORT	23
county	24	diarrhoea	fluid from ORS packet	23.4
county	24	diarrhoea	zinc	1.5
county	24	diarrhoea	ORS and zinc	1.5
county	25	ARI	sought treatment from health facility or provider	0
county	25	fever	sought treatment from health facility or provider	54.5
county	25	diarrhoea	sought treatment from health facility or provider	48.9
county	25	diarrhoea	ORT	62.1
county	25	diarrhoea	fluid from ORS packet	58.4
county	25	diarrhoea	zinc	2.6
county	25	diarrhoea	ORS and zinc	2.6
county	26	ARI	sought treatment from health facility or provider	70.3
county	26	fever	sought treatment from health facility or provider	56.2
county	26	diarrhoea	sought treatment from health facility or provider	45.7
county	26	diarrhoea	ORT	51.1
county	26	diarrhoea	fluid from ORS packet	64.4
county	26	diarrhoea	zinc	3.2
county	26	diarrhoea	ORS and zinc	3.2
county	27	ARI	sought treatment from health facility or provider	54.9
county	27	fever	sought treatment from health facility or provider	53.2
county	27	diarrhoea	sought treatment from health facility or provider	55.7
county	27	diarrhoea	ORT	57.4
county	27	diarrhoea	fluid from ORS packet	62.3
county	27	diarrhoea	zinc	2.3
county	27	diarrhoea	ORS and zinc	2.3
county	28	ARI	sought treatment from health facility or provider	93.7
county	28	fever	sought treatment from health facility or provider	63.9
county	28	diarrhoea	sought treatment from health facility or provider	77.0
county	28	diarrhoea	ORT	88.4
county	28	diarrhoea	fluid from ORS packet	73.2
county	28	diarrhoea	zinc	0.0
county	28	diarrhoea	ORS and zinc	0.0
county	29	ARI	sought treatment from health facility or provider	65.7
county	29	fever	sought treatment from health facility or provider	50.9
county	29	diarrhoea	sought treatment from health facility or provider	48.9
county	29	diarrhoea	ORT	74.5
county	29	diarrhoea	fluid from ORS packet	59.8
county	29	diarrhoea	zinc	7.8
county	29	diarrhoea	ORS and zinc	5.5
county	30	ARI	sought treatment from health facility or provider	65
county	30	fever	sought treatment from health facility or provider	71.6
county	30	diarrhoea	sought treatment from health facility or provider	67.4
county	30	diarrhoea	ORT	90.8
county	30	diarrhoea	fluid from ORS packet	71.6
county	30	diarrhoea	zinc	1.7
county	30	diarrhoea	ORS and zinc	1.7
county	31	ARI	sought treatment from health facility or provider	73.1
county	31	fever	sought treatment from health facility or provider	73.6
county	31	diarrhoea	sought treatment from health facility or provider	60.0
county	31	diarrhoea	ORT	74.7
county	31	diarrhoea	fluid from ORS packet	58.4
county	31	diarrhoea	zinc	1.6
county	31	diarrhoea	ORS and zinc	1.6
county	32	ARI	sought treatment from health facility or provider	76.2
county	32	fever	sought treatment from health facility or provider	67.1
county	32	diarrhoea	sought treatment from health facility or provider	53.3
county	32	diarrhoea	ORT	82.9
county	32	diarrhoea	fluid from ORS packet	69.6
county	32	diarrhoea	zinc	0
county	32	diarrhoea	ORS and zinc	0
county	33	ARI	sought treatment from health facility or provider	68.5
county	33	fever	sought treatment from health facility or provider	61.7
county	33	diarrhoea	sought treatment from health facility or provider	67.7
county	33	diarrhoea	ORT	91.8
county	33	diarrhoea	fluid from ORS packet	77.8
county	33	diarrhoea	zinc	9.3
county	33	diarrhoea	ORS and zinc	8
county	34	ARI	sought treatment from health facility or provider	61.4
county	34	fever	sought treatment from health facility or provider	53.4
county	34	diarrhoea	sought treatment from health facility or provider	69.9
county	34	diarrhoea	ORT	70.7
county	34	diarrhoea	fluid from ORS packet	81.2
county	34	diarrhoea	zinc	1.7
county	34	diarrhoea	ORS and zinc	1.7
county	35	ARI	sought treatment from health facility or provider	64.7
county	35	fever	sought treatment from health facility or provider	65.3
county	35	diarrhoea	sought treatment from health facility or provider	55.8
county	35	diarrhoea	ORT	83.5
county	35	diarrhoea	fluid from ORS packet	68
county	35	diarrhoea	zinc	2.4
county	35	diarrhoea	ORS and zinc	0
county	36	ARI	sought treatment from health facility or provider	61.8
county	36	fever	sought treatment from health facility or provider	68.9
county	36	diarrhoea	sought treatment from health facility or provider	56.7
county	36	diarrhoea	ORT	68.9
county	36	diarrhoea	fluid from ORS packet	65.4
county	36	diarrhoea	zinc	7.2
county	36	diarrhoea	ORS and zinc	7.2
county	37	ARI	sought treatment from health facility or provider	57.8
county	37	fever	sought treatment from health facility or provider	43.6
county	37	diarrhoea	sought treatment from health facility or provider	50
county	37	diarrhoea	ORT	76
county	37	diarrhoea	fluid from ORS packet	59.3
county	37	diarrhoea	zinc	4.4
county	37	diarrhoea	ORS and zinc	4.4
county	38	ARI	sought treatment from health facility or provider	61.6
county	38	fever	sought treatment from health facility or provider	53.5
county	38	diarrhoea	sought treatment from health facility or provider	50.1
county	38	diarrhoea	ORT	68.4
county	38	diarrhoea	fluid from ORS packet	65.6
county	38	diarrhoea	zinc	9.9
county	38	diarrhoea	ORS and zinc	9.2
county	39	ARI	sought treatment from health facility or provider	49.1
county	39	fever	sought treatment from health facility or provider	52.6
county	39	diarrhoea	sought treatment from health facility or provider	40.5
county	39	diarrhoea	ORT	69
county	39	diarrhoea	fluid from ORS packet	59.5
county	39	diarrhoea	zinc	5.4
county	39	diarrhoea	ORS and zinc	4.9
county	40	ARI	sought treatment from health facility or provider	83.9
county	40	fever	sought treatment from health facility or provider	61.4
county	40	diarrhoea	sought treatment from health facility or provider	55.9
county	40	diarrhoea	ORT	56.7
county	40	diarrhoea	fluid from ORS packet	56.9
county	40	diarrhoea	zinc	2.5
county	40	diarrhoea	ORS and zinc	2.5
county	41	ARI	sought treatment from health facility or provider	79.2
county	41	fever	sought treatment from health facility or provider	75.7
county	41	diarrhoea	sought treatment from health facility or provider	65.6
county	41	diarrhoea	ORT	68.1
county	41	diarrhoea	fluid from ORS packet	51.3
county	41	diarrhoea	zinc	17
county	41	diarrhoea	ORS and zinc	17
county	42	ARI	sought treatment from health facility or provider	0
county	42	fever	sought treatment from health facility or provider	62.5
county	42	diarrhoea	sought treatment from health facility or provider	59.5
county	42	diarrhoea	ORT	62.6
county	42	diarrhoea	fluid from ORS packet	51.6
county	42	diarrhoea	zinc	14.7
county	42	diarrhoea	ORS and zinc	14.7
county	43	ARI	sought treatment from health facility or provider	67.3
county	43	fever	sought treatment from health facility or provider	64.7
county	43	diarrhoea	sought treatment from health facility or provider	70.6
county	43	diarrhoea	ORT	90.1
county	43	diarrhoea	fluid from ORS packet	73.9
county	43	diarrhoea	zinc	20.2
county	43	diarrhoea	ORS and zinc	18.9
county	44	ARI	sought treatment from health facility or provider	75.2
county	44	fever	sought treatment from health facility or provider	62.2
county	44	diarrhoea	sought treatment from health facility or provider	55.4
county	44	diarrhoea	ORT	59.1
county	44	diarrhoea	fluid from ORS packet	51.5
county	44	diarrhoea	zinc	3.5
county	44	diarrhoea	ORS and zinc	2.6
county	45	ARI	sought treatment from health facility or provider	64.2
county	45	fever	sought treatment from health facility or provider	71.1
county	45	diarrhoea	sought treatment from health facility or provider	45.5
county	45	diarrhoea	ORT	82
county	45	diarrhoea	fluid from ORS packet	63.3
county	45	diarrhoea	zinc	11.9
county	45	diarrhoea	ORS and zinc	9.4
county	46	ARI	sought treatment from health facility or provider	0
county	46	fever	sought treatment from health facility or provider	0
county	46	diarrhoea	sought treatment from health facility or provider	0
county	46	diarrhoea	ORT	0
county	46	diarrhoea	fluid from ORS packet	0
county	46	diarrhoea	zinc	0
county	46	diarrhoea	ORS and zinc	0
county	47	ARI	sought treatment from health facility or provider	65.2
county	47	fever	sought treatment from health facility or provider	64.3
county	47	diarrhoea	sought treatment from health facility or provider	57.4
county	47	diarrhoea	ORT	80.8
county	47	diarrhoea	fluid from ORS packet	70.6
county	47	diarrhoea	zinc	12.8
county	47	diarrhoea	ORS and zinc	12.8
country	KE	ARI	sought treatment from health facility or provider	65.9
country	KE	fever	sought treatment from health facility or provider	62.9
country	KE	diarrhoea	sought treatment from health facility or provider	58
country	KE	diarrhoea	ORT	73.8
country	KE	diarrhoea	fluid from ORS packet	64.6
country	KE	diarrhoea	zinc	8.1
country	KE	diarrhoea	ORS and zinc	7.5
\.


--
-- Name: treatment_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY treatment_type
    ADD CONSTRAINT treatment_type_pkey PRIMARY KEY (geo_level, geo_code, type, treatment);


--
-- PostgreSQL database dump complete