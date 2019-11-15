--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.awareness_of_fed_gov_intiative DROP CONSTRAINT IF EXISTS awareness_of_fed_gov_intiative_pkey;
DROP TABLE IF EXISTS public.awareness_of_fed_gov_intiative;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: awareness_of_fed_gov_intiative; type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.awareness_of_fed_gov_intiative (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    type character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: awareness_of_fed_gov_intiative; type: TABLE DATA; Schema: public; Owner: -
--

COPY public.awareness_of_fed_gov_intiative (geo_level, geo_code, geo_version, type, total) FROM stdin;
country	NG	2016	National Collateral Registry	1414
country	NG	2016	National MSMEs Clinic	13654
country	NG	2016	Nigerian Public Procurement Act	8126
state	1	2016	National Collateral Registry	32
state	1	2016	National MSMEs Clinic	386
state	1	2016	Nigerian Public Procurement Act	87
state	2	2016	National Collateral Registry	2
state	2	2016	National MSMEs Clinic	115
state	2	2016	Nigerian Public Procurement Act	62
state	3	2016	National Collateral Registry	0
state	3	2016	National MSMEs Clinic	1148
state	3	2016	Nigerian Public Procurement Act	44
state	4	2016	National Collateral Registry	20
state	4	2016	National MSMEs Clinic	541
state	4	2016	Nigerian Public Procurement Act	387
state	5	2016	National Collateral Registry	91
state	5	2016	National MSMEs Clinic	280
state	5	2016	Nigerian Public Procurement Act	142
state	6	2016	National Collateral Registry	0
state	6	2016	National MSMEs Clinic	52
state	6	2016	Nigerian Public Procurement Act	31
state	7	2016	National Collateral Registry	218
state	7	2016	National MSMEs Clinic	66
state	7	2016	Nigerian Public Procurement Act	167
state	8	2016	National Collateral Registry	8
state	8	2016	National MSMEs Clinic	73
state	8	2016	Nigerian Public Procurement Act	138
state	9	2016	National Collateral Registry	2
state	9	2016	National MSMEs Clinic	95
state	9	2016	Nigerian Public Procurement Act	549
state	10	2016	National Collateral Registry	0
state	10	2016	National MSMEs Clinic	311
state	10	2016	Nigerian Public Procurement Act	88
state	11	2016	National Collateral Registry	216
state	11	2016	National MSMEs Clinic	189
state	11	2016	Nigerian Public Procurement Act	437
state	12	2016	National Collateral Registry	1
state	12	2016	National MSMEs Clinic	402
state	12	2016	Nigerian Public Procurement Act	38
state	13	2016	National Collateral Registry	1
state	13	2016	National MSMEs Clinic	152
state	13	2016	Nigerian Public Procurement Act	167
state	14	2016	National Collateral Registry	0
state	14	2016	National MSMEs Clinic	33
state	14	2016	Nigerian Public Procurement Act	29
state	15	2016	National Collateral Registry	84
state	15	2016	National MSMEs Clinic	349
state	15	2016	Nigerian Public Procurement Act	201
state	16	2016	National Collateral Registry	44
state	16	2016	National MSMEs Clinic	46
state	16	2016	Nigerian Public Procurement Act	52
state	17	2016	National Collateral Registry	44
state	17	2016	National MSMEs Clinic	217
state	17	2016	Nigerian Public Procurement Act	464
state	18	2016	National Collateral Registry	0
state	18	2016	National MSMEs Clinic	1040
state	18	2016	Nigerian Public Procurement Act	403
state	19	2016	National Collateral Registry	28
state	19	2016	National MSMEs Clinic	457
state	19	2016	Nigerian Public Procurement Act	468
state	20	2016	National Collateral Registry	0
state	20	2016	National MSMEs Clinic	349
state	20	2016	Nigerian Public Procurement Act	270
state	21	2016	National Collateral Registry	12
state	21	2016	National MSMEs Clinic	120
state	21	2016	Nigerian Public Procurement Act	171
state	22	2016	National Collateral Registry	0
state	22	2016	National MSMEs Clinic	100
state	22	2016	Nigerian Public Procurement Act	48
state	23	2016	National Collateral Registry	0
state	23	2016	National MSMEs Clinic	487
state	23	2016	Nigerian Public Procurement Act	52
state	24	2016	National Collateral Registry	12
state	24	2016	National MSMEs Clinic	145
state	24	2016	Nigerian Public Procurement Act	4
state	25	2016	National Collateral Registry	171
state	25	2016	National MSMEs Clinic	1413
state	25	2016	Nigerian Public Procurement Act	1247
state	26	2016	National Collateral Registry	1
state	26	2016	National MSMEs Clinic	1115
state	26	2016	Nigerian Public Procurement Act	21
state	27	2016	National Collateral Registry	27
state	27	2016	National MSMEs Clinic	85
state	27	2016	Nigerian Public Procurement Act	136
state	28	2016	National Collateral Registry	6
state	28	2016	National MSMEs Clinic	760
state	28	2016	Nigerian Public Procurement Act	30
state	29	2016	National Collateral Registry	15
state	29	2016	National MSMEs Clinic	561
state	29	2016	Nigerian Public Procurement Act	218
state	30	2016	National Collateral Registry	109
state	30	2016	National MSMEs Clinic	462
state	30	2016	Nigerian Public Procurement Act	257
state	31	2016	National Collateral Registry	67
state	31	2016	National MSMEs Clinic	1013
state	31	2016	Nigerian Public Procurement Act	719
state	32	2016	National Collateral Registry	76
state	32	2016	National MSMEs Clinic	326
state	32	2016	Nigerian Public Procurement Act	163
state	33	2016	National Collateral Registry	64
state	33	2016	National MSMEs Clinic	316
state	33	2016	Nigerian Public Procurement Act	372
state	34	2016	National Collateral Registry	0
state	34	2016	National MSMEs Clinic	123
state	34	2016	Nigerian Public Procurement Act	120
state	35	2016	National Collateral Registry	37
state	35	2016	National MSMEs Clinic	42
state	35	2016	Nigerian Public Procurement Act	133
state	36	2016	National Collateral Registry	2
state	36	2016	National MSMEs Clinic	11
state	36	2016	Nigerian Public Procurement Act	10
state	37	2016	National Collateral Registry	20
state	37	2016	National MSMEs Clinic	273
state	37	2016	Nigerian Public Procurement Act	199
\.


--
-- Name: awareness_of_fed_gov_intiative awareness_of_fed_gov_intiative_pkey; type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.awareness_of_fed_gov_intiative
    ADD CONSTRAINT awareness_of_fed_gov_intiative_pkey PRIMARY KEY (geo_level, geo_code, geo_version, type);


--
-- PostgreSQL database dump complete
--
