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

ALTER TABLE IF EXISTS ONLY public.vaccinations DROP CONSTRAINT IF EXISTS vaccinations_pkey;
DROP TABLE IF EXISTS public.vaccinations;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: vaccinations; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE vaccinations (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "vaccinations" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: vaccinations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY vaccinations (geo_level, geo_code, "vaccinations", total) FROM stdin;
county	1	BCG	100
county	1	Pentavalent 1	100
county	1	Pentavalent 2	98.3
county	1	Pentavalent 3	95.6
county	1	Polio 0	95.7
county	1	Polio 1	98.3
county	1	Polio 2	97
county	1	Polio 3	80
county	1	Measles	89.1
county	1	All basic vaccinations	72.3
county	1	Pneumococcal 1	96.7
county	1	Pneumococcal 2	93.7
county	1	Pneumococcal 3	92.3
county	1	fully vaccinated	67.7
county	1	not vaccinated	0
county	1	percentage with vaccination card	66.4
county	2	BCG	98.6
county	2	Pentavalent 1	96.7
county	2	Pentavalent 2	96.7
county	2	Pentavalent 3	95.1
county	2	Polio 0	78.1
county	2	Polio 1	97.8
county	2	Polio 2	95.9
county	2	Polio 3	91.6
county	2	Measles	90.7
county	2	All basic vaccinations	82.9
county	2	Pneumococcal 1	96.1
county	2	Pneumococcal 2	96.1
county	2	Pneumococcal 3	93.6
county	2	fully vaccinated	82
county	2	not vaccinated	0
county	2	percentage with vaccination card	92.3
county	3	BCG	94.3
county	3	Pentavalent 1	95.3
county	3	Pentavalent 2	95.3
county	3	Pentavalent 3	87.5
county	3	Polio 0	88.3
county	3	Polio 1	96.2
county	3	Polio 2	93.6
county	3	Polio 3	84.7
county	3	Measles	83.7
county	3	All basic vaccinations	72.1
county	3	Pneumococcal 1	95.3
county	3	Pneumococcal 2	92.9
county	3	Pneumococcal 3	87.4
county	3	fully vaccinated	71.5
county	3	not vaccinated	3
county	3	percentage with vaccination card	80.9
county	4	BCG	97.1
county	4	Pentavalent 1	97.1
county	4	Pentavalent 2	95
county	4	Pentavalent 3	89.9
county	4	Polio 0	50.8
county	4	Polio 1	97.1
county	4	Polio 2	93.8
county	4	Polio 3	80.5
county	4	Measles	77.6
county	4	All basic vaccinations	64.3
county	4	Pneumococcal 1	94.3
county	4	Pneumococcal 2	92.8
county	4	Pneumococcal 3	85.2
county	4	fully vaccinated	61.3
county	4	not vaccinated	2.5
county	4	percentage with vaccination card	72.1
county	5	BCG	94.2
county	5	Pentavalent 1	99.3
county	5	Pentavalent 2	97
county	5	Pentavalent 3	84.7
county	5	Polio 0	65.5
county	5	Polio 1	100
county	5	Polio 2	97.7
county	5	Polio 3	90.7
county	5	Measles	83.2
county	5	All basic vaccinations	66.4
county	5	Pneumococcal 1	91.9
county	5	Pneumococcal 2	90.4
county	5	Pneumococcal 3	79.3
county	5	fully vaccinated	63.9
county	5	not vaccinated	0
county	5	percentage with vaccination card	72.3
county	6	BCG	98.4
county	6	Pentavalent 1	98.4
county	6	Pentavalent 2	98.4
county	6	Pentavalent 3	97.5
county	6	Polio 0	92.8
county	6	Polio 1	100
county	6	Polio 2	100
county	6	Polio 3	91.7
county	6	Measles	93
county	6	All basic vaccinations	87.3
county	6	Pneumococcal 1	95.6
county	6	Pneumococcal 2	95.6
county	6	Pneumococcal 3	90.4
county	6	fully vaccinated	83.1
county	6	not vaccinated	0
county	6	percentage with vaccination card	71.5
county	7	BCG	80.3
county	7	Pentavalent 1	94.4
county	7	Pentavalent 2	93.9
county	7	Pentavalent 3	91.6
county	7	Polio 0	63.8
county	7	Polio 1	91.4
county	7	Polio 2	85.4
county	7	Polio 3	75.9
county	7	Measles	81.2
county	7	All basic vaccinations	54.4
county	7	Pneumococcal 1	94.4
county	7	Pneumococcal 2	91.3
county	7	Pneumococcal 3	84.7
county	7	fully vaccinated	54.4
county	7	not vaccinated	5.6
county	7	percentage with vaccination card	61.2
county	8	BCG	91
county	8	Pentavalent 1	90.8
county	8	Pentavalent 2	86.2
county	8	Pentavalent 3	79.1
county	8	Polio 0	53.3
county	8	Polio 1	90.2
county	8	Polio 2	87
county	8	Polio 3	64.8
county	8	Measles	64.5
county	8	All basic vaccinations	43.7
county	8	Pneumococcal 1	83.8
county	8	Pneumococcal 2	82.4
county	8	Pneumococcal 3	74.1
county	8	fully vaccinated	37.9
county	8	not vaccinated	6.6
county	8	percentage with vaccination card	58.6
county	9	BCG	71.8
county	9	Pentavalent 1	68.3
county	9	Pentavalent 2	56.5
county	9	Pentavalent 3	48.8
county	9	Polio 0	49.5
county	9	Polio 1	71.8
county	9	Polio 2	58
county	9	Polio 3	36.2
county	9	Measles	61.7
county	9	All basic vaccinations	27.7
county	9	Pneumococcal 1	70.3
county	9	Pneumococcal 2	57.9
county	9	Pneumococcal 3	48.7
county	9	fully vaccinated	27.7
county	9	not vaccinated	28.2
county	9	percentage with vaccination card	16.5
county	10	BCG	92.6
county	10	Pentavalent 1	96.4
county	10	Pentavalent 2	93.4
county	10	Pentavalent 3	85.7
county	10	Polio 0	43.1
county	10	Polio 1	99
county	10	Polio 2	95.6
county	10	Polio 3	86.4
county	10	Measles	76.8
county	10	All basic vaccinations	69.9
county	10	Pneumococcal 1	94.7
county	10	Pneumococcal 2	92.2
county	10	Pneumococcal 3	84.6
county	10	fully vaccinated	66.6
county	10	not vaccinated	1
county	10	percentage with vaccination card	80.5
county	11	BCG	96.4
county	11	Pentavalent 1	98.6
county	11	Pentavalent 2	96.5
county	11	Pentavalent 3	94.4
county	11	Polio 0	77.4
county	11	Polio 1	98.6
county	11	Polio 2	95.9
county	11	Polio 3	88.3
county	11	Measles	86.5
county	11	All basic vaccinations	80
county	11	Pneumococcal 1	94.9
county	11	Pneumococcal 2	93.8
county	11	Pneumococcal 3	92
county	11	fully vaccinated	79
county	11	not vaccinated	1.4
county	11	percentage with vaccination card	89
county	12	BCG	99.2
county	12	Pentavalent 1	100
county	12	Pentavalent 2	100
county	12	Pentavalent 3	93.6
county	12	Polio 0	78.9
county	12	Polio 1	100
county	12	Polio 2	96.6
county	12	Polio 3	85.9
county	12	Measles	91.3
county	12	All basic vaccinations	81.9
county	12	Pneumococcal 1	97.2
county	12	Pneumococcal 2	97.2
county	12	Pneumococcal 3	89.1
county	12	fully vaccinated	78.3
county	12	not vaccinated	0
county	12	percentage with vaccination card	89.9
county	13	BCG	100
county	13	Pentavalent 1	98.3
county	13	Pentavalent 2	98.3
county	13	Pentavalent 3	96.8
county	13	Polio 0	100
county	13	Polio 1	100
county	13	Polio 2	100
county	13	Polio 3	93.6
county	13	Measles	98.5
county	13	All basic vaccinations	90.6
county	13	Pneumococcal 1	100
county	13	Pneumococcal 2	100
county	13	Pneumococcal 3	100
county	13	fully vaccinated	90.6
county	13	not vaccinated	0
county	13	percentage with vaccination card	92.2
county	14	BCG	100
county	14	Pentavalent 1	100
county	14	Pentavalent 2	100
county	14	Pentavalent 3	99.2
county	14	Polio 0	97.9
county	14	Polio 1	100
county	14	Polio 2	94.7
county	14	Polio 3	89.9
county	14	Measles	92.8
county	14	All basic vaccinations	82.7
county	14	Pneumococcal 1	100
county	14	Pneumococcal 2	100
county	14	Pneumococcal 3	99.2
county	14	fully vaccinated	82.7
county	14	not vaccinated	0
county	14	percentage with vaccination card	83.4
county	15	BCG	96.1
county	15	Pentavalent 1	96.1
county	15	Pentavalent 2	93.1
county	15	Pentavalent 3	81.5
county	15	Polio 0	52.8
county	15	Polio 1	97.7
county	15	Polio 2	88.5
county	15	Polio 3	76.4
county	15	Measles	84.9
county	15	All basic vaccinations	65.2
county	15	Pneumococcal 1	81
county	15	Pneumococcal 2	78.1
county	15	Pneumococcal 3	69.2
county	15	fully vaccinated	52.7
county	15	not vaccinated	2.3
county	15	percentage with vaccination card	85.3
county	16	BCG	100
county	16	Pentavalent 1	100
county	16	Pentavalent 2	100
county	16	Pentavalent 3	97.8
county	16	Polio 0	91.5
county	16	Polio 1	98.4
county	16	Polio 2	97.6
county	16	Polio 3	91.5
county	16	Measles	97.2
county	16	All basic vaccinations	88.7
county	16	Pneumococcal 1	98
county	16	Pneumococcal 2	97.2
county	16	Pneumococcal 3	95.9
county	16	fully vaccinated	86.7
county	16	not vaccinated	0
county	16	percentage with vaccination card	72.7
county	17	BCG	100
county	17	Pentavalent 1	100
county	17	Pentavalent 2	100
county	17	Pentavalent 3	99.1
county	17	Polio 0	80.8
county	17	Polio 1	96.2
county	17	Polio 2	96.2
county	17	Polio 3	93.8
county	17	Measles	96.8
county	17	All basic vaccinations	90.6
county	17	Pneumococcal 1	96.2
county	17	Pneumococcal 2	95.3
county	17	Pneumococcal 3	95.3
county	17	fully vaccinated	89.7
county	17	not vaccinated	0
county	17	percentage with vaccination card	93.1
county	18	BCG	100
county	18	Pentavalent 1	100
county	18	Pentavalent 2	98.1
county	18	Pentavalent 3	90.8
county	18	Polio 0	88.5
county	18	Polio 1	100
county	18	Polio 2	98.1
county	18	Polio 3	91
county	18	Measles	95.1
county	18	All basic vaccinations	82.6
county	18	Pneumococcal 1	98
county	18	Pneumococcal 2	89.7
county	18	Pneumococcal 3	84.9
county	18	fully vaccinated	77.8
county	18	not vaccinated	0
county	18	percentage with vaccination card	81.3
county	19	BCG	98.7
county	19	Pentavalent 1	97.2
county	19	Pentavalent 2	97.2
county	19	Pentavalent 3	94.9
county	19	Polio 0	94.6
county	19	Polio 1	100
county	19	Polio 2	99
county	19	Polio 3	85.8
county	19	Measles	92.7
county	19	All basic vaccinations	79.5
county	19	Pneumococcal 1	94.4
county	19	Pneumococcal 2	93.1
county	19	Pneumococcal 3	89.1
county	19	fully vaccinated	77.8
county	19	not vaccinated	0
county	19	percentage with vaccination card	82.2
county	20	BCG	100.0
county	20	Pentavalent 1	100.0
county	20	Pentavalent 2	100.0
county	20	Pentavalent 3	100.0
county	20	Polio 0	97.6
county	20	Polio 1	100.0
county	20	Polio 2	100.0
county	20	Polio 3	62.7
county	20	Measles	100.0
county	20	All basic vaccinations	62.7
county	20	Pneumococcal 1	92.3
county	20	Pneumococcal 2	92.3
county	20	Pneumococcal 3	92.3
county	20	fully vaccinated	54.9
county	20	not vaccinated	0.0
county	20	percentage with vaccination card	60.3
county	21	BCG	99
county	21	Pentavalent 1	99
county	21	Pentavalent 2	95.7
county	21	Pentavalent 3	89.9
county	21	Polio 0	91.9
county	21	Polio 1	99
county	21	Polio 2	93.8
county	21	Polio 3	77.9
county	21	Measles	97.3
county	21	All basic vaccinations	77.9
county	21	Pneumococcal 1	97.3
county	21	Pneumococcal 2	92
county	21	Pneumococcal 3	89.9
county	21	fully vaccinated	76.1
county	21	not vaccinated	1
county	21	percentage with vaccination card	74.3
county	22	BCG	100
county	22	Pentavalent 1	100
county	22	Pentavalent 2	100
county	22	Pentavalent 3	99
county	22	Polio 0	97.9
county	22	Polio 1	100
county	22	Polio 2	100
county	22	Polio 3	82.8
county	22	Measles	99
county	22	All basic vaccinations	82.8
county	22	Pneumococcal 1	100
county	22	Pneumococcal 2	100
county	22	Pneumococcal 3	97.2
county	22	fully vaccinated	82.8
county	22	not vaccinated	0
county	22	percentage with vaccination card	76.1
county	23	BCG	94.5
county	23	Pentavalent 1	94.4
county	23	Pentavalent 2	91.5
county	23	Pentavalent 3	86.2
county	23	Polio 0	73.4
county	23	Polio 1	94.4
county	23	Polio 2	88.9
county	23	Polio 3	76.1
county	23	Measles	71.9
county	23	All basic vaccinations	57.4
county	23	Pneumococcal 1	93.8
county	23	Pneumococcal 2	89.8
county	23	Pneumococcal 3	83.2
county	23	fully vaccinated	56.7
county	23	not vaccinated	3.7
county	23	percentage with vaccination card	87.1
county	24	BCG	78.9
county	24	Pentavalent 1	86.4
county	24	Pentavalent 2	80.6
county	24	Pentavalent 3	68.3
county	24	Polio 0	42.9
county	24	Polio 1	84.1
county	24	Polio 2	76.2
county	24	Polio 3	58.5
county	24	Measles	58.2
county	24	All basic vaccinations	34.3
county	24	Pneumococcal 1	78.7
county	24	Pneumococcal 2	73.1
county	24	Pneumococcal 3	58.7
county	24	fully vaccinated	30.5
county	24	not vaccinated	11.2
county	24	percentage with vaccination card	60.8
county	25	BCG	96.8
county	25	Pentavalent 1	93.2
county	25	Pentavalent 2	89.7
county	25	Pentavalent 3	86.9
county	25	Polio 0	54.2
county	25	Polio 1	96.1
county	25	Polio 2	91.1
county	25	Polio 3	84
county	25	Measles	71.7
county	25	All basic vaccinations	63.3
county	25	Pneumococcal 1	94.5
county	25	Pneumococcal 2	89.6
county	25	Pneumococcal 3	84.8
county	25	fully vaccinated	62.8
county	25	not vaccinated	1.4
county	25	percentage with vaccination card	79.4
county	26	BCG	100
county	26	Pentavalent 1	100
county	26	Pentavalent 2	98.1
county	26	Pentavalent 3	77.8
county	26	Polio 0	65.1
county	26	Polio 1	99.1
county	26	Polio 2	97.4
county	26	Polio 3	83.2
county	26	Measles	84.8
county	26	All basic vaccinations	64.9
county	26	Pneumococcal 1	93.3
county	26	Pneumococcal 2	91.3
county	26	Pneumococcal 3	73
county	26	fully vaccinated	58.4
county	26	not vaccinated	0
county	26	percentage with vaccination card	64.7
county	27	BCG	95.9
county	27	Pentavalent 1	97.3
county	27	Pentavalent 2	95.9
county	27	Pentavalent 3	91.5
county	27	Polio 0	70.7
county	27	Polio 1	95.9
county	27	Polio 2	93.7
county	27	Polio 3	74.6
county	27	Measles	91.3
county	27	All basic vaccinations	70
county	27	Pneumococcal 1	83.4
county	27	Pneumococcal 2	82.3
county	27	Pneumococcal 3	75.8
county	27	fully vaccinated	57.5
county	27	not vaccinated	2.7
county	27	percentage with vaccination card	73.7
county	28	BCG	100
county	28	Pentavalent 1	100
county	28	Pentavalent 2	97.9
county	28	Pentavalent 3	97.9
county	28	Polio 0	82
county	28	Polio 1	99.4
county	28	Polio 2	97.9
county	28	Polio 3	91.7
county	28	Measles	86.6
county	28	All basic vaccinations	85.1
county	28	Pneumococcal 1	99.4
county	28	Pneumococcal 2	97.9
county	28	Pneumococcal 3	97
county	28	fully vaccinated	84.4
county	28	not vaccinated	0
county	28	percentage with vaccination card	91.2
county	29	BCG	99.4
county	29	Pentavalent 1	100
county	29	Pentavalent 2	100
county	29	Pentavalent 3	99.4
county	29	Polio 0	71.6
county	29	Polio 1	100
county	29	Polio 2	100
county	29	Polio 3	96.9
county	29	Measles	97.5
county	29	All basic vaccinations	93.9
county	29	Pneumococcal 1	99.4
county	29	Pneumococcal 2	99.4
county	29	Pneumococcal 3	99.4
county	29	fully vaccinated	93.9
county	29	not vaccinated	0
county	29	percentage with vaccination card	92.1
county	30	BCG	100
county	30	Pentavalent 1	100
county	30	Pentavalent 2	98.3
county	30	Pentavalent 3	94.5
county	30	Polio 0	69
county	30	Polio 1	100
county	30	Polio 2	97.6
county	30	Polio 3	86.9
county	30	Measles	82.5
county	30	All basic vaccinations	71.1
county	30	Pneumococcal 1	92.6
county	30	Pneumococcal 2	90.9
county	30	Pneumococcal 3	85.1
county	30	fully vaccinated	63.2
county	30	not vaccinated	0
county	30	percentage with vaccination card	81.8
county	31	BCG	98.7
county	31	Pentavalent 1	98.7
county	31	Pentavalent 2	98.7
county	31	Pentavalent 3	89.7
county	31	Polio 0	77.9
county	31	Polio 1	98.7
county	31	Polio 2	91.1
county	31	Polio 3	90.3
county	31	Measles	92.3
county	31	All basic vaccinations	82.5
county	31	Pneumococcal 1	96.6
county	31	Pneumococcal 2	96.6
county	31	Pneumococcal 3	90.9
county	31	fully vaccinated	78.6
county	31	not vaccinated	1.3
county	31	percentage with vaccination card	79.9
county	32	BCG	97.2
county	32	Pentavalent 1	97.9
county	32	Pentavalent 2	96.1
county	32	Pentavalent 3	90.9
county	32	Polio 0	81
county	32	Polio 1	97.9
county	32	Polio 2	92.4
county	32	Polio 3	86.6
county	32	Measles	86.4
county	32	All basic vaccinations	75.4
county	32	Pneumococcal 1	94.8
county	32	Pneumococcal 2	93
county	32	Pneumococcal 3	86.5
county	32	fully vaccinated	72
county	32	not vaccinated	2.1
county	32	percentage with vaccination card	81.8
county	33	BCG	95
county	33	Pentavalent 1	96.3
county	33	Pentavalent 2	91.2
county	33	Pentavalent 3	83
county	33	Polio 0	47.3
county	33	Polio 1	96.4
county	33	Polio 2	94.2
county	33	Polio 3	75.2
county	33	Measles	74.5
county	33	All basic vaccinations	59.5
county	33	Pneumococcal 1	90.8
county	33	Pneumococcal 2	86.3
county	33	Pneumococcal 3	74.8
county	33	fully vaccinated	53.6
county	33	not vaccinated	1.6
county	33	percentage with vaccination card	79.1
county	34	BCG	97.7
county	34	Pentavalent 1	97
county	34	Pentavalent 2	92.4
county	34	Pentavalent 3	79.1
county	34	Polio 0	70
county	34	Polio 1	91.1
county	34	Polio 2	82
county	34	Polio 3	61
county	34	Measles	80.9
county	34	All basic vaccinations	51.1
county	34	Pneumococcal 1	90.3
county	34	Pneumococcal 2	83.3
county	34	Pneumococcal 3	71.9
county	34	fully vaccinated	48.9
county	34	not vaccinated	1.1
county	34	percentage with vaccination card	57.2
county	35	BCG	100
county	35	Pentavalent 1	100
county	35	Pentavalent 2	100
county	35	Pentavalent 3	95.7
county	35	Polio 0	87.9
county	35	Polio 1	100
county	35	Polio 2	98.7
county	35	Polio 3	87.4
county	35	Measles	82.9
county	35	All basic vaccinations	70.8
county	35	Pneumococcal 1	94.2
county	35	Pneumococcal 2	92.9
county	35	Pneumococcal 3	88.3
county	35	fully vaccinated	66.3
county	35	not vaccinated	0
county	35	percentage with vaccination card	84.5
county	36	BCG	100
county	36	Pentavalent 1	100
county	36	Pentavalent 2	99.2
county	36	Pentavalent 3	98
county	36	Polio 0	62.4
county	36	Polio 1	100
county	36	Polio 2	100
county	36	Polio 3	95.6
county	36	Measles	92.1
county	36	All basic vaccinations	87
county	36	Pneumococcal 1	96.1
county	36	Pneumococcal 2	95.3
county	36	Pneumococcal 3	92.8
county	36	fully vaccinated	81.3
county	36	not vaccinated	0
county	36	percentage with vaccination card	84.7
county	37	BCG	94.9
county	37	Pentavalent 1	98.9
county	37	Pentavalent 2	94.9
county	37	Pentavalent 3	89.5
county	37	Polio 0	57.2
county	37	Polio 1	98.9
county	37	Polio 2	94.9
county	37	Polio 3	75.7
county	37	Measles	80.1
county	37	All basic vaccinations	63.5
county	37	Pneumococcal 1	97.6
county	37	Pneumococcal 2	94.6
county	37	Pneumococcal 3	86.2
county	37	fully vaccinated	62.2
county	37	not vaccinated	1.1
county	37	percentage with vaccination card	77
county	38	BCG	98.3
county	38	Pentavalent 1	98.3
county	38	Pentavalent 2	98.3
county	38	Pentavalent 3	97
county	38	Polio 0	80.7
county	38	Polio 1	98.3
county	38	Polio 2	96.1
county	38	Polio 3	90.9
county	38	Measles	98.3
county	38	All basic vaccinations	90.9
county	38	Pneumococcal 1	98.3
county	38	Pneumococcal 2	98.3
county	38	Pneumococcal 3	97
county	38	fully vaccinated	90.9
county	38	not vaccinated	1.7
county	38	percentage with vaccination card	72.9
county	39	BCG	95.3
county	39	Pentavalent 1	95
county	39	Pentavalent 2	95
county	39	Pentavalent 3	88.9
county	39	Polio 0	57.2
county	39	Polio 1	95.7
county	39	Polio 2	94.8
county	39	Polio 3	86
county	39	Measles	84.3
county	39	All basic vaccinations	76.3
county	39	Pneumococcal 1	89.1
county	39	Pneumococcal 2	88.2
county	39	Pneumococcal 3	83.7
county	39	fully vaccinated	72.5
county	39	not vaccinated	3.8
county	39	percentage with vaccination card	71.7
county	40	BCG	98
county	40	Pentavalent 1	96.9
county	40	Pentavalent 2	95.3
county	40	Pentavalent 3	90.4
county	40	Polio 0	65.3
county	40	Polio 1	100
county	40	Polio 2	94.1
county	40	Polio 3	87.2
county	40	Measles	92.2
county	40	All basic vaccinations	76.3
county	40	Pneumococcal 1	98.9
county	40	Pneumococcal 2	95.5
county	40	Pneumococcal 3	92.7
county	40	fully vaccinated	75
county	40	not vaccinated	0
county	40	percentage with vaccination card	80
county	41	BCG	98.4
county	41	Pentavalent 1	100
county	41	Pentavalent 2	100
county	41	Pentavalent 3	93.9
county	41	Polio 0	95.5
county	41	Polio 1	100
county	41	Polio 2	93.2
county	41	Polio 3	81.8
county	41	Measles	84.8
county	41	All basic vaccinations	73.3
county	41	Pneumococcal 1	99.5
county	41	Pneumococcal 2	99.5
county	41	Pneumococcal 3	91.3
county	41	fully vaccinated	72.5
county	41	not vaccinated	0
county	41	percentage with vaccination card	78.1
county	42	BCG	97.2
county	42	Pentavalent 1	97.6
county	42	Pentavalent 2	97.6
county	42	Pentavalent 3	87
county	42	Polio 0	86.7
county	42	Polio 1	96.4
county	42	Polio 2	93
county	42	Polio 3	81.9
county	42	Measles	89.5
county	42	All basic vaccinations	73.1
county	42	Pneumococcal 1	96.8
county	42	Pneumococcal 2	95.1
county	42	Pneumococcal 3	84.7
county	42	fully vaccinated	73.1
county	42	not vaccinated	2.4
county	42	percentage with vaccination card	51.5
county	43	BCG	94.5
county	43	Pentavalent 1	97.9
county	43	Pentavalent 2	97.2
county	43	Pentavalent 3	82.3
county	43	Polio 0	83
county	43	Polio 1	96
county	43	Polio 2	90.8
county	43	Polio 3	72.9
county	43	Measles	80.3
county	43	All basic vaccinations	57.2
county	43	Pneumococcal 1	90.9
county	43	Pneumococcal 2	84.6
county	43	Pneumococcal 3	74.7
county	43	fully vaccinated	53.7
county	43	not vaccinated	2.1
county	43	percentage with vaccination card	73.9
county	44	BCG	87.6
county	44	Pentavalent 1	99.6
county	44	Pentavalent 2	97.7
county	44	Pentavalent 3	89.9
county	44	Polio 0	69
county	44	Polio 1	98.3
county	44	Polio 2	94.7
county	44	Polio 3	66.2
county	44	Measles	82
county	44	All basic vaccinations	46.9
county	44	Pneumococcal 1	87.4
county	44	Pneumococcal 2	82.1
county	44	Pneumococcal 3	71.2
county	44	fully vaccinated	36.9
county	44	not vaccinated	0.4
county	44	percentage with vaccination card	69
county	45	BCG	100
county	45	Pentavalent 1	97.8
county	45	Pentavalent 2	97.8
county	45	Pentavalent 3	95.3
county	45	Polio 0	95.8
county	45	Polio 1	99.1
county	45	Polio 2	99.1
county	45	Polio 3	91.8
county	45	Measles	86.5
county	45	All basic vaccinations	80.5
county	45	Pneumococcal 1	94.4
county	45	Pneumococcal 2	94.4
county	45	Pneumococcal 3	91.9
county	45	fully vaccinated	78.1
county	45	not vaccinated	0
county	45	percentage with vaccination card	87.2
county	46	BCG	99
county	46	Pentavalent 1	99
county	46	Pentavalent 2	99
county	46	Pentavalent 3	97.6
county	46	Polio 0	94.8
county	46	Polio 1	100
county	46	Polio 2	98.5
county	46	Polio 3	91.8
county	46	Measles	98
county	46	All basic vaccinations	89.8
county	46	Pneumococcal 1	96.1
county	46	Pneumococcal 2	94.6
county	46	Pneumococcal 3	94.6
county	46	fully vaccinated	86.8
county	46	not vaccinated	0
county	46	percentage with vaccination card	78
county	47	BCG	97.6
county	47	Pentavalent 1	97.3
county	47	Pentavalent 2	93.6
county	47	Pentavalent 3	88
county	47	Polio 0	90.4
county	47	Polio 1	97.6
county	47	Polio 2	94.8
county	47	Polio 3	75.1
county	47	Measles	92.5
county	47	All basic vaccinations	65.8
county	47	Pneumococcal 1	93.6
county	47	Pneumococcal 2	85.9
county	47	Pneumococcal 3	83.3
county	47	fully vaccinated	60.4
county	47	not vaccinated	1.7
county	47	percentage with vaccination card	61.7
country	KE	BCG	96.7
country	KE	Pentavalent 1	97.5
country	KE	Pentavalent 2	95.8
country	KE	Pentavalent 3	89.9
country	KE	Polio 0	77.6
country	KE	Polio 1	97.3
country	KE	Polio 2	94.2
country	KE	Polio 3	81.2
country	KE	Measles	87.1
country	KE	All basic vaccinations	71.1
country	KE	Pneumococcal 1	93.7
country	KE	Pneumococcal 2	90.8
country	KE	Pneumococcal 3	85.1
country	KE	fully vaccinated	67.5
country	KE	not vaccinated	1.6
country	KE	percentage with vaccination card	74.7
\.
--
-- Name: vaccinations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY vaccinations
    ADD CONSTRAINT vaccinations_pkey PRIMARY KEY (geo_level, geo_code, "vaccinations");


--
-- PostgreSQL database dump complete
--

