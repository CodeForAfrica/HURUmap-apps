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

ALTER TABLE IF EXISTS ONLY public.maternalcareindicators DROP CONSTRAINT IF EXISTS maternalcareindicators_pkey;
DROP TABLE IF EXISTS public.maternalcareindicators;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: maternalcareindicators; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE maternalcareindicators (
	geo_level character varying(15) NOT NULL,
	geo_code character varying(10) NOT NULL,
	"maternal care indicators" character varying(128) NOT NULL,
	total float NOT NULL
);


--
-- Data for Name: maternalcareindicators; Type: TABLE DATA; Schema: public; Owner: -
--

COPY	maternalcareindicators (geo_level, geo_code, "maternal care indicators", total) FROM stdin;
county	1	percentage with antenatal care from a skilled provider	99.2
county	1	percentage with 4+ ANC visits	65
county	1	percentage delivered by a skilled provider	82.8
county	1	percentage delivered in a health facility	81.8
county	2	percentage with antenatal care from a skilled provider	95.7
county	2	percentage with 4+ ANC visits	60.3
county	2	percentage delivered by a skilled provider	50.1
county	2	percentage delivered in a health facility	49
county	3	percentage with antenatal care from a skilled provider	98.2
county	3	percentage with 4+ ANC visits	64.6
county	3	percentage delivered by a skilled provider	52.3
county	3	percentage delivered in a health facility	52.6
county	4	percentage with antenatal care from a skilled provider	93.6
county	4	percentage with 4+ ANC visits	50.8
county	4	percentage delivered by a skilled provider	32.2
county	4	percentage delivered in a health facility	31.6
county	5	percentage with antenatal care from a skilled provider	95.7
county	5	percentage with 4+ ANC visits	62.2
county	5	percentage delivered by a skilled provider	47.3
county	5	percentage delivered in a health facility	43.9
county	6	percentage with antenatal care from a skilled provider	97.9
county	6	percentage with 4+ ANC visits	58.9
county	6	percentage delivered by a skilled provider	62.5
county	6	percentage delivered in a health facility	61.9
county	7	percentage with antenatal care from a skilled provider	87.3
county	7	percentage with 4+ ANC visits	47.7
county	7	percentage delivered by a skilled provider	39.8
county	7	percentage delivered in a health facility	36.7
county	8	percentage with antenatal care from a skilled provider	57.6
county	8	percentage with 4+ ANC visits	37.7
county	8	percentage delivered by a skilled provider	21.7
county	8	percentage delivered in a health facility	18.3
county	9	percentage with antenatal care from a skilled provider	50.5
county	9	percentage with 4+ ANC visits	20.2
county	9	percentage delivered by a skilled provider	38.7
county	9	percentage delivered in a health facility	36
county	10	percentage with antenatal care from a skilled provider	75.6
county	10	percentage with 4+ ANC visits	42.8
county	10	percentage delivered by a skilled provider	25.8
county	10	percentage delivered in a health facility	25.8
county	11	percentage with antenatal care from a skilled provider	96
county	11	percentage with 4+ ANC visits	50.2
county	11	percentage delivered by a skilled provider	43.8
county	11	percentage delivered in a health facility	42.1
county	12	percentage with antenatal care from a skilled provider	97.3
county	12	percentage with 4+ ANC visits	45.3
county	12	percentage delivered by a skilled provider	82.8
county	12	percentage delivered in a health facility	81.8
county	13	percentage with antenatal care from a skilled provider	98.3
county	13	percentage with 4+ ANC visits	56.1
county	13	percentage delivered by a skilled provider	76.6
county	13	percentage delivered in a health facility	77.7
county	14	percentage with antenatal care from a skilled provider	99.2
county	14	percentage with 4+ ANC visits	56.2
county	14	percentage delivered by a skilled provider	81.5
county	14	percentage delivered in a health facility	81.5
county	15	percentage with antenatal care from a skilled provider	97.5
county	15	percentage with 4+ ANC visits	62.2
county	15	percentage delivered by a skilled provider	46.2
county	15	percentage delivered in a health facility	45.6
county	16	percentage with antenatal care from a skilled provider	98.8
county	16	percentage with 4+ ANC visits	60.8
county	16	percentage delivered by a skilled provider	63.4
county	16	percentage delivered in a health facility	62.9
county	17	percentage with antenatal care from a skilled provider	98
county	17	percentage with 4+ ANC visits	65.8
county	17	percentage delivered by a skilled provider	54.6
county	17	percentage delivered in a health facility	53.3
county	18	percentage with antenatal care from a skilled provider	96.7
county	18	percentage with 4+ ANC visits	58.4
county	18	percentage delivered by a skilled provider	85.3
county	18	percentage delivered in a health facility	86.1
county	19	percentage with antenatal care from a skilled provider	96.7
county	19	percentage with 4+ ANC visits	61.1
county	19	percentage delivered by a skilled provider	88.1
county	19	percentage delivered in a health facility	89
county	20	percentage with antenatal care from a skilled provider	96.4
county	20	percentage with 4+ ANC visits	60
county	20	percentage delivered by a skilled provider	92.3
county	20	percentage delivered in a health facility	92.5
county	21	percentage with antenatal care from a skilled provider	97.4
county	21	percentage with 4+ ANC visits	61.4
county	21	percentage delivered by a skilled provider	85.5
county	21	percentage delivered in a health facility	85
county	22	percentage with antenatal care from a skilled provider	97.9
county	22	percentage with 4+ ANC visits	67.1
county	22	percentage delivered by a skilled provider	92.6
county	22	percentage delivered in a health facility	93.4
county	23	percentage with antenatal care from a skilled provider	91
county	23	percentage with 4+ ANC visits	48.9
county	23	percentage delivered by a skilled provider	22.8
county	23	percentage delivered in a health facility	23.1
county	24	percentage with antenatal care from a skilled provider	85.2
county	24	percentage with 4+ ANC visits	18.2
county	24	percentage delivered by a skilled provider	27
county	24	percentage delivered in a health facility	25.8
county	25	percentage with antenatal care from a skilled provider	73.8
county	25	percentage with 4+ ANC visits	51.9
county	25	percentage delivered by a skilled provider	29
county	25	percentage delivered in a health facility	24.5
county	26	percentage with antenatal care from a skilled provider	92
county	26	percentage with 4+ ANC visits	40.6
county	26	percentage delivered by a skilled provider	41.8
county	26	percentage delivered in a health facility	41.5
county	27	percentage with antenatal care from a skilled provider	96.1
county	27	percentage with 4+ ANC visits	63
county	27	percentage delivered by a skilled provider	59
county	27	percentage delivered in a health facility	57.4
county	28	percentage with antenatal care from a skilled provider	98.1
county	28	percentage with 4+ ANC visits	46.8
county	28	percentage delivered by a skilled provider	65
county	28	percentage delivered in a health facility	64.7
county	29	percentage with antenatal care from a skilled provider	98.5
county	29	percentage with 4+ ANC visits	56.8
county	29	percentage delivered by a skilled provider	46.8
county	29	percentage delivered in a health facility	46.5
county	30	percentage with antenatal care from a skilled provider	92.8
county	30	percentage with 4+ ANC visits	54.5
county	30	percentage delivered by a skilled provider	53.8
county	30	percentage delivered in a health facility	53.5
county	31	percentage with antenatal care from a skilled provider	93.7
county	31	percentage with 4+ ANC visits	56.2
county	31	percentage delivered by a skilled provider	49.5
county	31	percentage delivered in a health facility	48.1
county	32	percentage with antenatal care from a skilled provider	95.6
county	32	percentage with 4+ ANC visits	61.4
county	32	percentage delivered by a skilled provider	69.5
county	32	percentage delivered in a health facility	69.7
county	33	percentage with antenatal care from a skilled provider	91.6
county	33	percentage with 4+ ANC visits	46
county	33	percentage delivered by a skilled provider	40.3
county	33	percentage delivered in a health facility	38.6
county	34	percentage with antenatal care from a skilled provider	96.7
county	34	percentage with 4+ ANC visits	66.9
county	34	percentage delivered by a skilled provider	63.2
county	34	percentage delivered in a health facility	62.4
county	35	percentage with antenatal care from a skilled provider	97.1
county	35	percentage with 4+ ANC visits	53.7
county	35	percentage delivered by a skilled provider	64.4
county	35	percentage delivered in a health facility	62.2
county	36	percentage with antenatal care from a skilled provider	93.5
county	36	percentage with 4+ ANC visits	37.2
county	36	percentage delivered by a skilled provider	52.2
county	36	percentage delivered in a health facility	49
county	37	percentage with antenatal care from a skilled provider	96.4
county	37	percentage with 4+ ANC visits	45
county	37	percentage delivered by a skilled provider	48.6
county	37	percentage delivered in a health facility	47
county	38	percentage with antenatal care from a skilled provider	97.1
county	38	percentage with 4+ ANC visits	61.3
county	38	percentage delivered by a skilled provider	50.3
county	38	percentage delivered in a health facility	50.2
county	39	percentage with antenatal care from a skilled provider	97.6
county	39	percentage with 4+ ANC visits	50
county	39	percentage delivered by a skilled provider	41.4
county	39	percentage delivered in a health facility	40.8
county	40	percentage with antenatal care from a skilled provider	97.6
county	40	percentage with 4+ ANC visits	59.9
county	40	percentage delivered by a skilled provider	58.5
county	40	percentage delivered in a health facility	58.4
county	41	percentage with antenatal care from a skilled provider	97.8
county	41	percentage with 4+ ANC visits	61.1
county	41	percentage delivered by a skilled provider	70.4
county	41	percentage delivered in a health facility	69.6
county	42	percentage with antenatal care from a skilled provider	98.4
county	42	percentage with 4+ ANC visits	68.1
county	42	percentage delivered by a skilled provider	69.2
county	42	percentage delivered in a health facility	69.5
county	43	percentage with antenatal care from a skilled provider	93.5
county	43	percentage with 4+ ANC visits	61.4
county	43	percentage delivered by a skilled provider	60.4
county	43	percentage delivered in a health facility	61.9
county	44	percentage with antenatal care from a skilled provider	96.4
county	44	percentage with 4+ ANC visits	56.4
county	44	percentage delivered by a skilled provider	53.4
county	44	percentage delivered in a health facility	53.3
county	45	percentage with antenatal care from a skilled provider	97.7
county	45	percentage with 4+ ANC visits	50
county	45	percentage delivered by a skilled provider	72.8
county	45	percentage delivered in a health facility	69.3
county	46	percentage with antenatal care from a skilled provider	96.4
county	46	percentage with 4+ ANC visits	50.3
county	46	percentage delivered by a skilled provider	74.1
county	46	percentage delivered in a health facility	74.3
county	47	percentage with antenatal care from a skilled provider	97.6
county	47	percentage with 4+ ANC visits	73.1
county	47	percentage delivered by a skilled provider	89.1
county	47	percentage delivered in a health facility	88.7
country	KE	percentage with antenatal care from a skilled provider	95.5
country	KE	percentage with 4+ ANC visits	57.6
country	KE	percentage delivered by a skilled provider	61.8
country	KE	percentage delivered in a health facility	61.2
\.
--
-- Name: maternalcareindicators_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY maternalcareindicators
	ADD CONSTRAINT maternalcareindicators_pkey PRIMARY KEY (geo_level, geo_code, "maternal care indicators", total);


--
-- PostgreSQL database dump complete
--

