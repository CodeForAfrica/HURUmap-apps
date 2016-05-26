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

ALTER TABLE IF EXISTS ONLY public.householdpossessionofitn DROP CONSTRAINT IF EXISTS householdpossessionofitn_pkey;
DROP TABLE IF EXISTS public.householdpossessionofitn;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: householdpossessionofitn; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE householdpossessionofitn (
	geo_level character varying(15) NOT NULL,
	geo_code character varying(10) NOT NULL,
	"household possession of itn" character varying(128) NOT NULL,
	total float NOT NULL
);


--
-- Data for Name: householdpossessionofitn; Type: TABLE DATA; Schema: public; Owner: -
--

COPY	householdpossessionofitn (geo_level, geo_code, "household possession of itn", total) FROM stdin;
county	1	households with at least one ITN	56.9
county	1	average ITN per household	0.9
county	1	Percentage households with ITN for every 2 people in household	38.9
county	2	households with at least one ITN	81
county	2	average ITN per household	1.7
county	2	Percentage households with ITN for every 2 people in household	47.8
county	3	households with at least one ITN	73.1
county	3	average ITN per household	1.6
county	3	Percentage households with ITN for every 2 people in household	41.5
county	4	households with at least one ITN	65.3
county	4	average ITN per household	1.3
county	4	Percentage households with ITN for every 2 people in household	33
county	5	households with at least one ITN	71.1
county	5	average ITN per household	1.5
county	5	Percentage households with ITN for every 2 people in household	51.2
county	6	households with at least one ITN	80.4
county	6	average ITN per household	1.6
county	6	Percentage households with ITN for every 2 people in household	60.6
county	7	households with at least one ITN	61.1
county	7	average ITN per household	1.4
county	7	Percentage households with ITN for every 2 people in household	34.4
county	8	households with at least one ITN	53.6
county	8	average ITN per household	1.1
county	8	Percentage households with ITN for every 2 people in household	18.1
county	9	households with at least one ITN	28.7
county	9	average ITN per household	0.5
county	9	Percentage households with ITN for every 2 people in household	10.9
county	10	households with at least one ITN	24.7
county	10	average ITN per household	0.3
county	10	Percentage households with ITN for every 2 people in household	7
county	11	households with at least one ITN	62.7
county	11	average ITN per household	1.1
county	11	Percentage households with ITN for every 2 people in household	31.5
county	12	households with at least one ITN	53.5
county	12	average ITN per household	1
county	12	Percentage households with ITN for every 2 people in household	30.6
county	13	households with at least one ITN	67.2
county	13	average ITN per household	1.3
county	13	Percentage households with ITN for every 2 people in household	45.8
county	14	households with at least one ITN	55.9
county	14	average ITN per household	1.1
county	14	Percentage households with ITN for every 2 people in household	35.3
county	15	households with at least one ITN	61.1
county	15	average ITN per household	1.1
county	15	Percentage households with ITN for every 2 people in household	29.3
county	16	households with at least one ITN	56
county	16	average ITN per household	1.1
county	16	Percentage households with ITN for every 2 people in household	31.5
county	17	households with at least one ITN	55.3
county	17	average ITN per household	1.1
county	17	Percentage households with ITN for every 2 people in household	27.7
county	18	households with at least one ITN	12.5
county	18	average ITN per household	0.2
county	18	Percentage households with ITN for every 2 people in household	7.1
county	19	households with at least one ITN	19.7
county	19	average ITN per household	0.3
county	19	Percentage households with ITN for every 2 people in household	11.9
county	20	households with at least one ITN	68.5
county	20	average ITN per household	1.4
county	20	Percentage households with ITN for every 2 people in household	54.3
county	21	households with at least one ITN	43.7
county	21	average ITN per household	0.8
county	21	Percentage households with ITN for every 2 people in household	27.1
county	22	households with at least one ITN	39.9
county	22	average ITN per household	0.7
county	22	Percentage households with ITN for every 2 people in household	25.2
county	23	households with at least one ITN	46.2
county	23	average ITN per household	0.7
county	23	Percentage households with ITN for every 2 people in household	16.3
county	24	households with at least one ITN	60.2
county	24	average ITN per household	1.1
county	24	Percentage households with ITN for every 2 people in household	21.2
county	25	households with at least one ITN	18.8
county	25	average ITN per household	0.3
county	25	Percentage households with ITN for every 2 people in household	8.7
county	26	households with at least one ITN	70.6
county	26	average ITN per household	1.5
county	26	Percentage households with ITN for every 2 people in household	38.4
county	27	households with at least one ITN	72
county	27	average ITN per household	1.5
county	27	Percentage households with ITN for every 2 people in household	49.7
county	28	households with at least one ITN	21.9
county	28	average ITN per household	0.3
county	28	Percentage households with ITN for every 2 people in household	10.1
county	29	households with at least one ITN	78.8
county	29	average ITN per household	1.6
county	29	Percentage households with ITN for every 2 people in household	41.9
county	30	households with at least one ITN	59.8
county	30	average ITN per household	1.1
county	30	Percentage households with ITN for every 2 people in household	32.8
county	31	households with at least one ITN	17.5
county	31	average ITN per household	0.3
county	31	Percentage households with ITN for every 2 people in household	10.6
county	32	households with at least one ITN	37.7
county	32	average ITN per household	0.6
county	32	Percentage households with ITN for every 2 people in household	22.7
county	33	households with at least one ITN	52.2
county	33	average ITN per household	1
county	33	Percentage households with ITN for every 2 people in household	25.4
county	34	households with at least one ITN	49.8
county	34	average ITN per household	0.9
county	34	Percentage households with ITN for every 2 people in household	33.3
county	35	households with at least one ITN	79.5
county	35	average ITN per household	1.6
county	35	Percentage households with ITN for every 2 people in household	45.4
county	36	households with at least one ITN	77.6
county	36	average ITN per household	1.8
county	36	Percentage households with ITN for every 2 people in household	46.8
county	37	households with at least one ITN	78.8
county	37	average ITN per household	1.7
county	37	Percentage households with ITN for every 2 people in household	47
county	38	households with at least one ITN	82.9
county	38	average ITN per household	1.7
county	38	Percentage households with ITN for every 2 people in household	44.9
county	39	households with at least one ITN	82.9
county	39	average ITN per household	1.8
county	39	Percentage households with ITN for every 2 people in household	41.7
county	40	households with at least one ITN	83.9
county	40	average ITN per household	1.9
county	40	Percentage households with ITN for every 2 people in household	48.8
county	41	households with at least one ITN	78.8
county	41	average ITN per household	1.5
county	41	Percentage households with ITN for every 2 people in household	41.6
county	42	households with at least one ITN	87.6
county	42	average ITN per household	1.7
county	42	Percentage households with ITN for every 2 people in household	52.6
county	43	households with at least one ITN	74.3
county	43	average ITN per household	1.5
county	43	Percentage households with ITN for every 2 people in household	37.5
county	44	households with at least one ITN	74.6
county	44	average ITN per household	1.4
county	44	Percentage households with ITN for every 2 people in household	30.3
county	45	households with at least one ITN	86.1
county	45	average ITN per household	1.9
county	45	Percentage households with ITN for every 2 people in household	54.4
county	46	households with at least one ITN	84.5
county	46	average ITN per household	1.7
county	46	Percentage households with ITN for every 2 people in household	57.1
county	47	households with at least one ITN	43.3
county	47	average ITN per household	0.7
county	47	Percentage households with ITN for every 2 people in household	28.5
country	KE	households with at least one ITN	58.7
country	KE	average ITN per household	1.1
country	KE	Percentage households with ITN for every 2 people in household	34.3
\.
--
-- Name: householdpossessionofitn_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY householdpossessionofitn
	ADD CONSTRAINT householdpossessionofitn_pkey PRIMARY KEY (geo_level, geo_code, "household possession of itn", total);


--
-- PostgreSQL database dump complete
--

