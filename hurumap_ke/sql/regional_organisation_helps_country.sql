--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.regional_organisation_helps_country DROP CONSTRAINT IF EXISTS pk_regional_organisation_helps_country;
DROP TABLE IF EXISTS public.regional_organisation_helps_country;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: regional_organisation_helps_country; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.regional_organisation_helps_country (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    regional_organisation_helps_country character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: regional_organisation_helps_country; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.regional_organisation_helps_country (geo_level, geo_code, geo_version, regional_organisation_helps_country, total) FROM stdin;
county	30	2009	Do nothing, no help	3
county	36	2009	Do nothing, no help	1
county	39	2009	Do nothing, no help	2
county	40	2009	Do nothing, no help	7
county	28	2009	Do nothing, no help	2
county	14	2009	Do nothing, no help	2
county	7	2009	Do nothing, no help	1
county	43	2009	Do nothing, no help	9
county	34	2009	Do nothing, no help	2
county	37	2009	Do nothing, no help	12
county	35	2009	Do nothing, no help	1
county	22	2009	Do nothing, no help	5
county	3	2009	Do nothing, no help	7
county	20	2009	Do nothing, no help	1
county	45	2009	Do nothing, no help	10
county	42	2009	Do nothing, no help	12
county	15	2009	Do nothing, no help	1
county	2	2009	Do nothing, no help	4
county	31	2009	Do nothing, no help	1
county	16	2009	Do nothing, no help	5
county	17	2009	Do nothing, no help	5
county	9	2009	Do nothing, no help	2
county	12	2009	Do nothing, no help	1
county	44	2009	Do nothing, no help	7
county	1	2009	Do nothing, no help	9
county	21	2009	Do nothing, no help	5
county	47	2009	Do nothing, no help	30
county	32	2009	Do nothing, no help	5
county	29	2009	Do nothing, no help	4
county	33	2009	Do nothing, no help	4
county	46	2009	Do nothing, no help	4
county	18	2009	Do nothing, no help	2
county	19	2009	Do nothing, no help	2
county	41	2009	Do nothing, no help	4
county	6	2009	Do nothing, no help	2
county	4	2009	Do nothing, no help	1
county	26	2009	Do nothing, no help	6
county	23	2009	Do nothing, no help	1
county	27	2009	Do nothing, no help	3
county	38	2009	Do nothing, no help	10
county	8	2009	Do nothing, no help	2
county	24	2009	Do nothing, no help	1
county	30	2009	Don't know	6
county	36	2009	Don't know	4
county	39	2009	Don't know	19
county	40	2009	Don't know	8
county	28	2009	Don't know	6
county	14	2009	Don't know	10
county	7	2009	Don't know	15
county	43	2009	Don't know	12
county	11	2009	Don't know	3
county	34	2009	Don't know	8
county	37	2009	Don't know	23
county	35	2009	Don't know	7
county	22	2009	Don't know	7
county	3	2009	Don't know	35
county	20	2009	Don't know	4
county	45	2009	Don't know	16
county	42	2009	Don't know	6
county	15	2009	Don't know	10
county	2	2009	Don't know	15
county	31	2009	Don't know	11
county	5	2009	Don't know	2
county	16	2009	Don't know	25
county	17	2009	Don't know	19
county	9	2009	Don't know	15
county	10	2009	Don't know	5
county	12	2009	Don't know	13
county	44	2009	Don't know	3
county	1	2009	Don't know	11
county	21	2009	Don't know	1
county	47	2009	Don't know	39
county	32	2009	Don't know	20
county	29	2009	Don't know	7
county	33	2009	Don't know	15
county	46	2009	Don't know	11
county	18	2009	Don't know	3
county	19	2009	Don't know	4
county	25	2009	Don't know	5
county	41	2009	Don't know	16
county	6	2009	Don't know	3
county	4	2009	Don't know	4
county	13	2009	Don't know	2
county	26	2009	Don't know	13
county	23	2009	Don't know	13
county	27	2009	Don't know	6
county	38	2009	Don't know	4
county	8	2009	Don't know	16
county	24	2009	Don't know	5
county	30	2009	Help a little bit	10
county	36	2009	Help a little bit	18
county	39	2009	Help a little bit	21
county	40	2009	Help a little bit	7
county	28	2009	Help a little bit	3
county	14	2009	Help a little bit	5
county	7	2009	Help a little bit	6
county	43	2009	Help a little bit	19
county	11	2009	Help a little bit	2
county	34	2009	Help a little bit	21
county	37	2009	Help a little bit	23
county	35	2009	Help a little bit	11
county	22	2009	Help a little bit	41
county	3	2009	Help a little bit	14
county	20	2009	Help a little bit	14
county	45	2009	Help a little bit	18
county	42	2009	Help a little bit	15
county	15	2009	Help a little bit	5
county	2	2009	Help a little bit	9
county	31	2009	Help a little bit	6
county	5	2009	Help a little bit	2
county	16	2009	Help a little bit	14
county	17	2009	Help a little bit	10
county	9	2009	Help a little bit	7
county	10	2009	Help a little bit	1
county	12	2009	Help a little bit	15
county	44	2009	Help a little bit	19
county	1	2009	Help a little bit	30
county	21	2009	Help a little bit	22
county	47	2009	Help a little bit	78
county	32	2009	Help a little bit	41
county	29	2009	Help a little bit	12
county	33	2009	Help a little bit	14
county	46	2009	Help a little bit	8
county	18	2009	Help a little bit	13
county	19	2009	Help a little bit	12
county	25	2009	Help a little bit	3
county	41	2009	Help a little bit	12
county	6	2009	Help a little bit	4
county	13	2009	Help a little bit	4
county	26	2009	Help a little bit	12
county	23	2009	Help a little bit	16
county	27	2009	Help a little bit	13
county	38	2009	Help a little bit	7
county	8	2009	Help a little bit	3
county	24	2009	Help a little bit	6
county	30	2009	Help a lot	6
county	36	2009	Help a lot	5
county	39	2009	Help a lot	22
county	40	2009	Help a lot	9
county	14	2009	Help a lot	14
county	11	2009	Help a lot	1
county	34	2009	Help a lot	3
county	37	2009	Help a lot	10
county	35	2009	Help a lot	1
county	22	2009	Help a lot	26
county	3	2009	Help a lot	2
county	20	2009	Help a lot	9
county	45	2009	Help a lot	9
county	42	2009	Help a lot	6
county	15	2009	Help a lot	18
county	2	2009	Help a lot	3
county	31	2009	Help a lot	2
county	5	2009	Help a lot	3
county	16	2009	Help a lot	16
county	17	2009	Help a lot	11
county	9	2009	Help a lot	3
county	10	2009	Help a lot	2
county	12	2009	Help a lot	35
county	44	2009	Help a lot	4
county	1	2009	Help a lot	10
county	21	2009	Help a lot	15
county	47	2009	Help a lot	25
county	32	2009	Help a lot	12
county	29	2009	Help a lot	6
county	33	2009	Help a lot	4
county	46	2009	Help a lot	4
county	18	2009	Help a lot	10
county	19	2009	Help a lot	15
county	41	2009	Help a lot	3
county	6	2009	Help a lot	4
county	13	2009	Help a lot	9
county	26	2009	Help a lot	12
county	23	2009	Help a lot	7
county	27	2009	Help a lot	12
county	38	2009	Help a lot	3
county	24	2009	Help a lot	4
county	30	2009	Help somewhat	7
county	36	2009	Help somewhat	20
county	39	2009	Help somewhat	16
county	40	2009	Help somewhat	9
county	28	2009	Help somewhat	5
county	14	2009	Help somewhat	9
county	7	2009	Help somewhat	10
county	43	2009	Help somewhat	16
county	11	2009	Help somewhat	2
county	34	2009	Help somewhat	14
county	37	2009	Help somewhat	28
county	35	2009	Help somewhat	20
county	22	2009	Help somewhat	41
county	3	2009	Help somewhat	6
county	20	2009	Help somewhat	12
county	45	2009	Help somewhat	19
county	42	2009	Help somewhat	17
county	15	2009	Help somewhat	22
county	2	2009	Help somewhat	9
county	31	2009	Help somewhat	4
county	5	2009	Help somewhat	1
county	16	2009	Help somewhat	12
county	17	2009	Help somewhat	11
county	9	2009	Help somewhat	21
county	10	2009	Help somewhat	8
county	12	2009	Help somewhat	21
county	44	2009	Help somewhat	15
county	1	2009	Help somewhat	12
county	21	2009	Help somewhat	21
county	47	2009	Help somewhat	76
county	32	2009	Help somewhat	26
county	29	2009	Help somewhat	19
county	33	2009	Help somewhat	11
county	46	2009	Help somewhat	13
county	18	2009	Help somewhat	12
county	19	2009	Help somewhat	15
county	41	2009	Help somewhat	13
county	6	2009	Help somewhat	3
county	4	2009	Help somewhat	3
county	13	2009	Help somewhat	9
county	26	2009	Help somewhat	5
county	23	2009	Help somewhat	11
county	27	2009	Help somewhat	22
county	38	2009	Help somewhat	8
county	8	2009	Help somewhat	11
county	24	2009	Help somewhat	8
\.


--
-- Name: regional_organisation_helps_country pk_regional_organisation_helps_country; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.regional_organisation_helps_country
    ADD CONSTRAINT pk_regional_organisation_helps_country PRIMARY KEY (geo_level, geo_code, geo_version, regional_organisation_helps_country);


--
-- PostgreSQL database dump complete
--

