--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.householdpercentagebypermanency DROP CONSTRAINT IF EXISTS pk_householdpercentagebypermanency;
DROP TABLE IF EXISTS public.householdpercentagebypermanency;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: householdpercentagebypermanency; Type: TABLE; Schema: public; Owner: hurumap_ug
--

CREATE TABLE householdpercentagebypermanency (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT '2009'::character varying NOT NULL,
    "household percentage by permanency" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE householdpercentagebypermanency OWNER TO hurumap_ug;

--
-- Data for Name: householdpercentagebypermanency; Type: TABLE DATA; Schema: public; Owner: hurumap_ug
--

COPY householdpercentagebypermanency (geo_level, geo_code, geo_version, "household percentage by permanency", total) FROM stdin;
district	1	2014	detached house	69
district	1	2014	semi-detached house	9
district	1	2014	flat	0
district	1	2014	tenement (muzigo)	22
district	1	2014	others	1
district	20	2014	detached house	21
district	20	2014	semi-detached house	14
district	20	2014	flat	2
district	20	2014	tenement (muzigo)	62
district	20	2014	others	1
district	109	2014	detached house	68
district	109	2014	semi-detached house	12
district	109	2014	flat	0
district	109	2014	tenement (muzigo)	15
district	109	2014	others	5
district	21	2014	detached house	70
district	21	2014	semi-detached house	18
district	21	2014	flat	0
district	21	2014	tenement (muzigo)	9
district	21	2014	others	3
district	18	2014	detached house	67
district	18	2014	semi-detached house	16
district	18	2014	flat	1
district	18	2014	tenement (muzigo)	15
district	18	2014	others	2
district	68	2014	detached house	70
district	68	2014	semi-detached house	11
district	68	2014	flat	0
district	68	2014	tenement (muzigo)	18
district	68	2014	others	1
district	22	2014	detached house	72
district	22	2014	semi-detached house	15
district	22	2014	flat	0
district	22	2014	tenement (muzigo)	12
district	22	2014	others	1
district	79	2014	detached house	75
district	79	2014	semi-detached house	11
district	79	2014	flat	0
district	79	2014	tenement (muzigo)	12
district	79	2014	others	2
district	23	2014	detached house	58
district	23	2014	semi-detached house	16
district	23	2014	flat	0
district	23	2014	tenement (muzigo)	23
district	23	2014	others	2
district	24	2014	detached house	75
district	24	2014	semi-detached house	10
district	24	2014	flat	0
district	24	2014	tenement (muzigo)	10
district	24	2014	others	5
district	25	2014	detached house	77
district	25	2014	semi-detached house	9
district	25	2014	flat	0
district	25	2014	tenement (muzigo)	13
district	25	2014	others	1
district	26	2014	detached house	65
district	26	2014	semi-detached house	22
district	26	2014	flat	0
district	26	2014	tenement (muzigo)	10
district	26	2014	others	4
district	27	2014	detached house	45
district	27	2014	semi-detached house	16
district	27	2014	flat	1
district	27	2014	tenement (muzigo)	37
district	27	2014	others	2
region	114	2014	detached house	56
region	114	2014	semi-detached house	14
region	114	2014	flat	1
region	114	2014	tenement (muzigo)	28
region	114	2014	others	2
district	81	2014	detached house	77
district	81	2014	semi-detached house	13
district	81	2014	flat	0
district	81	2014	tenement (muzigo)	8
district	81	2014	others	3
district	83	2014	detached house	55
district	83	2014	semi-detached house	11
district	83	2014	flat	0
district	83	2014	tenement (muzigo)	12
district	83	2014	others	22
district	72	2014	detached house	77
district	72	2014	semi-detached house	12
district	72	2014	flat	0
district	72	2014	tenement (muzigo)	10
district	72	2014	others	1
district	31	2014	detached house	55
district	31	2014	semi-detached house	17
district	31	2014	flat	2
district	31	2014	tenement (muzigo)	24
district	31	2014	others	1
district	77	2014	detached house	47
district	77	2014	semi-detached house	19
district	77	2014	flat	0
district	77	2014	tenement (muzigo)	8
district	77	2014	others	25
district	90	2014	detached house	76
district	90	2014	semi-detached house	16
district	90	2014	flat	0
district	90	2014	tenement (muzigo)	5
district	90	2014	others	3
district	32	2014	detached house	78
district	32	2014	semi-detached house	18
district	32	2014	flat	0
district	32	2014	tenement (muzigo)	3
district	32	2014	others	1
district	323	2014	detached house	21
district	323	2014	semi-detached house	77
district	323	2014	flat	0
district	323	2014	tenement (muzigo)	1
district	323	2014	others	1
district	33	2014	detached house	20
district	33	2014	semi-detached house	5
district	33	2014	flat	0
district	33	2014	tenement (muzigo)	2
district	33	2014	others	73
district	76	2014	detached house	73
district	76	2014	semi-detached house	12
district	76	2014	flat	0
district	76	2014	tenement (muzigo)	13
district	76	2014	others	2
district	88	2014	detached house	59
district	88	2014	semi-detached house	30
district	88	2014	flat	1
district	88	2014	tenement (muzigo)	8
district	88	2014	others	2
district	34	2014	detached house	64
district	34	2014	semi-detached house	9
district	34	2014	flat	0
district	34	2014	tenement (muzigo)	2
district	34	2014	others	24
district	383	2014	detached house	74
district	383	2014	semi-detached house	19
district	383	2014	flat	0
district	383	2014	tenement (muzigo)	3
district	383	2014	others	3
district	73	2014	detached house	82
district	73	2014	semi-detached house	10
district	73	2014	flat	0
district	73	2014	tenement (muzigo)	5
district	73	2014	others	2
district	89	2014	detached house	77
district	89	2014	semi-detached house	16
district	89	2014	flat	0
district	89	2014	tenement (muzigo)	6
district	89	2014	others	1
region	115	2014	detached house	64
region	115	2014	semi-detached house	19
region	115	2014	flat	0
region	115	2014	tenement (muzigo)	8
region	115	2014	others	9
district	44	2014	detached house	3
district	44	2014	semi-detached house	3
district	44	2014	flat	1
district	44	2014	tenement (muzigo)	2
district	44	2014	others	92
district	12	2014	detached house	87
district	12	2014	semi-detached house	11
district	12	2014	flat	0
district	12	2014	tenement (muzigo)	1
district	12	2014	others	1
district	104	2014	detached house	77
district	104	2014	semi-detached house	7
district	104	2014	flat	0
district	104	2014	tenement (muzigo)	4
district	104	2014	others	12
district	45	2014	detached house	21
district	45	2014	semi-detached house	13
district	45	2014	flat	1
district	45	2014	tenement (muzigo)	6
district	45	2014	others	60
district	14	2014	detached house	71
district	14	2014	semi-detached house	16
district	14	2014	flat	1
district	14	2014	tenement (muzigo)	6
district	14	2014	others	6
district	46	2014	detached house	0
district	46	2014	semi-detached house	0
district	46	2014	flat	0
district	46	2014	tenement (muzigo)	0
district	46	2014	others	0
district	6	2014	detached house	73
district	6	2014	semi-detached house	12
district	6	2014	flat	0
district	6	2014	tenement (muzigo)	3
district	6	2014	others	12
district	93	2014	detached house	35
district	93	2014	semi-detached house	19
district	93	2014	flat	1
district	93	2014	tenement (muzigo)	7
district	93	2014	others	39
district	47	2014	detached house	79
district	47	2014	semi-detached house	6
district	47	2014	flat	0
district	47	2014	tenement (muzigo)	1
district	47	2014	others	14
district	95	2014	detached house	78
district	95	2014	semi-detached house	10
district	95	2014	flat	0
district	95	2014	tenement (muzigo)	4
district	95	2014	others	8
district	111	2014	detached house	67
district	111	2014	semi-detached house	18
district	111	2014	flat	0
district	111	2014	tenement (muzigo)	2
district	111	2014	others	13
district	11	2014	detached house	10
district	11	2014	semi-detached house	12
district	11	2014	flat	1
district	11	2014	tenement (muzigo)	37
district	11	2014	others	41
district	48	2014	detached house	88
district	48	2014	semi-detached house	10
district	48	2014	flat	0
district	48	2014	tenement (muzigo)	1
district	48	2014	others	0
region	116	2014	detached house	63
region	116	2014	semi-detached house	11
region	116	2014	flat	0
region	116	2014	tenement (muzigo)	5
region	116	2014	others	20
district	107	2014	detached house	61
district	107	2014	semi-detached house	30
district	107	2014	flat	0
district	107	2014	tenement (muzigo)	5
district	107	2014	others	4
district	103	2014	detached house	83
district	103	2014	semi-detached house	11
district	103	2014	flat	0
district	103	2014	tenement (muzigo)	4
district	103	2014	others	1
district	55	2014	detached house	81
district	55	2014	semi-detached house	10
district	55	2014	flat	0
district	55	2014	tenement (muzigo)	8
district	55	2014	others	1
district	56	2014	detached house	87
district	56	2014	semi-detached house	9
district	56	2014	flat	0
district	56	2014	tenement (muzigo)	3
district	56	2014	others	1
district	57	2014	detached house	69
district	57	2014	semi-detached house	20
district	57	2014	flat	0
district	57	2014	tenement (muzigo)	10
district	57	2014	others	2
district	58	2014	detached house	84
district	58	2014	semi-detached house	11
district	58	2014	flat	0
district	58	2014	tenement (muzigo)	4
district	58	2014	others	1
district	59	2014	detached house	84
district	59	2014	semi-detached house	11
district	59	2014	flat	0
district	59	2014	tenement (muzigo)	2
district	59	2014	others	3
district	60	2014	detached house	69
district	60	2014	semi-detached house	18
district	60	2014	flat	0
district	60	2014	tenement (muzigo)	11
district	60	2014	others	2
district	97	2014	detached house	83
district	97	2014	semi-detached house	12
district	97	2014	flat	0
district	97	2014	tenement (muzigo)	4
district	97	2014	others	1
district	61	2014	detached house	91
district	61	2014	semi-detached house	8
district	61	2014	flat	0
district	61	2014	tenement (muzigo)	1
district	61	2014	others	1
district	62	2014	detached house	88
district	62	2014	semi-detached house	9
district	62	2014	flat	0
district	62	2014	tenement (muzigo)	3
district	62	2014	others	0
district	63	2014	detached house	75
district	63	2014	semi-detached house	17
district	63	2014	flat	0
district	63	2014	tenement (muzigo)	4
district	63	2014	others	4
district	64	2014	detached house	71
district	64	2014	semi-detached house	18
district	64	2014	flat	0
district	64	2014	tenement (muzigo)	9
district	64	2014	others	1
district	65	2014	detached house	79
district	65	2014	semi-detached house	16
district	65	2014	flat	0
district	65	2014	tenement (muzigo)	4
district	65	2014	others	1
district	69	2014	detached house	88
district	69	2014	semi-detached house	8
district	69	2014	flat	0
district	69	2014	tenement (muzigo)	4
district	69	2014	others	0
region	117	2014	detached house	79
region	117	2014	semi-detached house	14
region	117	2014	flat	0
region	117	2014	tenement (muzigo)	6
region	117	2014	others	1
country	UG	2014	detached house	65
country	UG	2014	semi-detached house	14
country	UG	2014	flat	0
country	UG	2014	tenement (muzigo)	12
country	UG	2014	others	8
\.


--
-- Name: householdpercentagebypermanency pk_householdpercentagebypermanency; Type: CONSTRAINT; Schema: public; Owner: hurumap_ug
--

ALTER TABLE ONLY householdpercentagebypermanency
    ADD CONSTRAINT pk_householdpercentagebypermanency PRIMARY KEY (geo_level, geo_code, geo_version, "household percentage by permanency");


--
-- PostgreSQL database dump complete
--

