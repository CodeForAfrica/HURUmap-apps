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

ALTER TABLE IF EXISTS ONLY public.contraceptive_method DROP CONSTRAINT IF EXISTS contraceptive_method_pkey;
DROP TABLE IF EXISTS public.contraceptive_method;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: contraceptive_method; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE contraceptive_method (
	geo_level character varying(15) NOT NULL,
	geo_code character varying(10) NOT NULL,
	"contraceptive_method" character varying(128) NOT NULL,
	total float NOT NULL
);


--
-- Data for Name: contraceptive_method; Type: TABLE DATA; Schema: public; Owner: -
--

COPY	contraceptive_method (geo_level, geo_code, "contraceptive_method", total) FROM stdin;
county	1	modern	43.6
county	1	traditional	11.4
county	2	modern	38.2
county	2	traditional	3.3
county	3	modern	32.8
county	3	traditional	1.3
county	4	modern	20.5
county	4	traditional	8.2
county	5	modern	39.5
county	5	traditional	2.6
county	6	modern	61.3
county	6	traditional	6.6
county	7	modern	5.5
county	7	traditional	0.0
county	8	modern	2.3
county	8	traditional	0.0
county	9	modern	1.9
county	9	traditional	0.0
county	10	modern	10.9
county	10	traditional	0.8
county	11	modern	26.3
county	11	traditional	0.7
county	12	modern	73.2
county	12	traditional	5.0
county	13	modern	67.2
county	13	traditional	6.8
county	14	modern	67.2
county	14	traditional	3.4
county	15	modern	55.1
county	15	traditional	2.2
county	16	modern	67.5
county	16	traditional	8.3
county	17	modern	65.0
county	17	traditional	15.3
county	18	modern	60.4
county	18	traditional	5.2
county	19	modern	67.1
county	19	traditional	6.0
county	20	modern	75.6
county	20	traditional	5.4
county	21	modern	63.4
county	21	traditional	5.5
county	22	modern	67.8
county	22	traditional	6.3
county	23	modern	10.1
county	23	traditional	0.3
county	24	modern	13.3
county	24	traditional	0.9
county	25	modern	20.0
county	25	traditional	2.7
county	26	modern	56.4
county	26	traditional	7.5
county	27	modern	56.0
county	27	traditional	6.6
county	28	modern	43.6
county	28	traditional	11.6
county	29	modern	59.2
county	29	traditional	5.4
county	30	modern	33.1
county	30	traditional	8.3
county	31	modern	51.3
county	31	traditional	7.8
county	32	modern	53.5
county	32	traditional	3.2
county	33	modern	38.1
county	33	traditional	9.7
county	34	modern	45.2
county	34	traditional	9.3
county	35	modern	56.9
county	35	traditional	6.1
county	36	modern	50.4
county	36	traditional	4.4
county	37	modern	60.3
county	37	traditional	1.7
county	38	modern	56.6
county	38	traditional	2.9
county	39	modern	53.9
county	39	traditional	1.6
county	40	modern	56.5
county	40	traditional	0.9
county	41	modern	51.0
county	41	traditional	4.0
county	42	modern	59.3
county	42	traditional	3.1
county	43	modern	45.5
county	43	traditional	1.2
county	44	modern	43.9
county	44	traditional	0.7
county	45	modern	62.8
county	45	traditional	3.4
county	46	modern	64.2
county	46	traditional	3.7
county	47	modern	58.3
county	47	traditional	4.4
country	KE	modern	53.2
country	KE	traditional	4.8
\.
--
-- Name: contraceptive_method_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY contraceptive_method
	ADD CONSTRAINT contraceptive_method_pkey PRIMARY KEY (geo_level, geo_code, "contraceptive_method", total);


--
-- PostgreSQL database dump complete
--

