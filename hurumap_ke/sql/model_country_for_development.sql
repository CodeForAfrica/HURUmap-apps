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

ALTER TABLE IF EXISTS ONLY public.model_country_for_development DROP CONSTRAINT IF EXISTS pk_model_country_for_development;
DROP TABLE IF EXISTS public.model_country_for_development;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: model_country_for_development; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.model_country_for_development (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    model_country_for_development character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: model_country_for_development; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.model_country_for_development (geo_level, geo_code, geo_version, model_country_for_development, total) FROM stdin;
county	30	2009	China	10
county	36	2009	China	12
county	39	2009	China	19
county	40	2009	China	4
county	28	2009	China	6
county	14	2009	China	2
county	7	2009	China	9
county	43	2009	China	3
county	34	2009	China	12
county	37	2009	China	19
county	35	2009	China	7
county	22	2009	China	56
county	3	2009	China	11
county	20	2009	China	19
county	45	2009	China	1
county	42	2009	China	2
county	15	2009	China	4
county	2	2009	China	8
county	31	2009	China	3
county	5	2009	China	4
county	16	2009	China	10
county	17	2009	China	11
county	9	2009	China	11
county	10	2009	China	1
county	12	2009	China	13
county	44	2009	China	4
county	1	2009	China	14
county	21	2009	China	40
county	47	2009	China	74
county	32	2009	China	28
county	29	2009	China	22
county	33	2009	China	9
county	46	2009	China	3
county	18	2009	China	26
county	19	2009	China	29
county	25	2009	China	2
county	41	2009	China	2
county	6	2009	China	3
county	13	2009	China	3
county	26	2009	China	9
county	23	2009	China	7
county	27	2009	China	24
county	38	2009	China	5
county	8	2009	China	5
county	24	2009	China	6
county	30	2009	Don't know	1
county	39	2009	Don't know	8
county	40	2009	Don't know	4
county	28	2009	Don't know	2
county	14	2009	Don't know	2
county	7	2009	Don't know	10
county	43	2009	Don't know	1
county	11	2009	Don't know	2
county	34	2009	Don't know	1
county	37	2009	Don't know	8
county	35	2009	Don't know	2
county	22	2009	Don't know	2
county	3	2009	Don't know	7
county	20	2009	Don't know	1
county	42	2009	Don't know	1
county	15	2009	Don't know	2
county	2	2009	Don't know	3
county	31	2009	Don't know	4
county	5	2009	Don't know	1
county	16	2009	Don't know	2
county	17	2009	Don't know	5
county	9	2009	Don't know	5
county	10	2009	Don't know	2
county	12	2009	Don't know	4
county	44	2009	Don't know	1
county	1	2009	Don't know	1
county	21	2009	Don't know	2
county	47	2009	Don't know	14
county	29	2009	Don't know	2
county	33	2009	Don't know	4
county	46	2009	Don't know	1
county	19	2009	Don't know	3
county	25	2009	Don't know	2
county	41	2009	Don't know	2
county	6	2009	Don't know	1
county	4	2009	Don't know	6
county	13	2009	Don't know	1
county	26	2009	Don't know	6
county	23	2009	Don't know	5
county	27	2009	Don't know	1
county	38	2009	Don't know	4
county	8	2009	Don't know	11
county	24	2009	Don't know	1
county	36	2009	Former Colonial Power	7
county	39	2009	Former Colonial Power	7
county	40	2009	Former Colonial Power	3
county	28	2009	Former Colonial Power	1
county	14	2009	Former Colonial Power	2
county	7	2009	Former Colonial Power	2
county	34	2009	Former Colonial Power	1
county	37	2009	Former Colonial Power	8
county	35	2009	Former Colonial Power	7
county	22	2009	Former Colonial Power	7
county	3	2009	Former Colonial Power	4
county	20	2009	Former Colonial Power	2
county	45	2009	Former Colonial Power	3
county	42	2009	Former Colonial Power	3
county	15	2009	Former Colonial Power	9
county	2	2009	Former Colonial Power	2
county	31	2009	Former Colonial Power	3
county	16	2009	Former Colonial Power	6
county	17	2009	Former Colonial Power	6
county	9	2009	Former Colonial Power	4
county	12	2009	Former Colonial Power	9
county	44	2009	Former Colonial Power	1
county	1	2009	Former Colonial Power	5
county	21	2009	Former Colonial Power	3
county	47	2009	Former Colonial Power	23
county	32	2009	Former Colonial Power	18
county	29	2009	Former Colonial Power	5
county	33	2009	Former Colonial Power	7
county	46	2009	Former Colonial Power	2
county	18	2009	Former Colonial Power	3
county	19	2009	Former Colonial Power	1
county	41	2009	Former Colonial Power	5
county	6	2009	Former Colonial Power	1
county	4	2009	Former Colonial Power	1
county	13	2009	Former Colonial Power	2
county	26	2009	Former Colonial Power	1
county	23	2009	Former Colonial Power	2
county	27	2009	Former Colonial Power	5
county	38	2009	Former Colonial Power	4
county	24	2009	Former Colonial Power	4
county	30	2009	India	1
county	39	2009	India	3
county	14	2009	India	4
county	37	2009	India	3
county	35	2009	India	1
county	3	2009	India	2
county	45	2009	India	1
county	15	2009	India	7
county	16	2009	India	2
county	17	2009	India	3
county	9	2009	India	1
county	44	2009	India	2
county	21	2009	India	2
county	47	2009	India	2
county	32	2009	India	1
county	29	2009	India	1
county	46	2009	India	1
county	19	2009	India	1
county	13	2009	India	1
county	27	2009	India	1
county	38	2009	India	1
county	8	2009	India	1
county	37	2009	Missing	1
county	16	2009	Missing	1
county	21	2009	Missing	1
county	14	2009	None of these	2
county	43	2009	None of these	1
county	37	2009	None of these	1
county	45	2009	None of these	1
county	42	2009	None of these	1
county	15	2009	None of these	1
county	10	2009	None of these	2
county	47	2009	None of these	2
county	32	2009	None of these	1
county	8	2009	None of these	1
county	39	2009	Other	1
county	7	2009	Other	1
county	37	2009	Other	1
county	3	2009	Other	3
county	2	2009	Other	1
county	17	2009	Other	1
county	1	2009	Other	2
county	47	2009	Other	5
county	46	2009	Other	1
county	6	2009	Other	1
county	27	2009	Other	1
county	8	2009	Other	1
county	36	2009	South Africa	9
county	39	2009	South Africa	8
county	40	2009	South Africa	3
county	28	2009	South Africa	1
county	43	2009	South Africa	3
county	11	2009	South Africa	1
county	34	2009	South Africa	5
county	37	2009	South Africa	9
county	35	2009	South Africa	7
county	22	2009	South Africa	11
county	3	2009	South Africa	3
county	45	2009	South Africa	10
county	15	2009	South Africa	4
county	2	2009	South Africa	7
county	31	2009	South Africa	4
county	5	2009	South Africa	1
county	16	2009	South Africa	2
county	17	2009	South Africa	8
county	9	2009	South Africa	1
county	12	2009	South Africa	3
county	44	2009	South Africa	4
county	1	2009	South Africa	6
county	21	2009	South Africa	4
county	47	2009	South Africa	14
county	32	2009	South Africa	16
county	29	2009	South Africa	3
county	33	2009	South Africa	7
county	46	2009	South Africa	3
county	18	2009	South Africa	2
county	19	2009	South Africa	3
county	41	2009	South Africa	3
county	6	2009	South Africa	1
county	13	2009	South Africa	1
county	26	2009	South Africa	5
county	27	2009	South Africa	2
county	38	2009	South Africa	4
county	8	2009	South Africa	1
county	30	2009	United States	20
county	36	2009	United States	15
county	39	2009	United States	31
county	40	2009	United States	25
county	28	2009	United States	6
county	14	2009	United States	26
county	7	2009	United States	9
county	43	2009	United States	46
county	11	2009	United States	5
county	34	2009	United States	29
county	37	2009	United States	45
county	35	2009	United States	13
county	22	2009	United States	42
county	3	2009	United States	31
county	20	2009	United States	16
county	45	2009	United States	55
county	42	2009	United States	45
county	15	2009	United States	27
county	2	2009	United States	18
county	31	2009	United States	4
county	5	2009	United States	2
county	16	2009	United States	49
county	17	2009	United States	20
county	9	2009	United States	26
county	10	2009	United States	11
county	12	2009	United States	55
county	44	2009	United States	35
county	1	2009	United States	38
county	21	2009	United States	12
county	47	2009	United States	106
county	32	2009	United States	32
county	29	2009	United States	15
county	33	2009	United States	20
county	46	2009	United States	26
county	18	2009	United States	9
county	19	2009	United States	9
county	25	2009	United States	4
county	41	2009	United States	34
county	6	2009	United States	9
county	4	2009	United States	1
county	13	2009	United States	15
county	26	2009	United States	24
county	23	2009	United States	34
county	27	2009	United States	22
county	38	2009	United States	14
county	8	2009	United States	12
county	24	2009	United States	13
county	36	2009	We should follow our own country's model	5
county	39	2009	We should follow our own country's model	3
county	40	2009	We should follow our own country's model	1
county	14	2009	We should follow our own country's model	2
county	7	2009	We should follow our own country's model	1
county	43	2009	We should follow our own country's model	2
county	37	2009	We should follow our own country's model	1
county	35	2009	We should follow our own country's model	3
county	22	2009	We should follow our own country's model	2
county	3	2009	We should follow our own country's model	3
county	20	2009	We should follow our own country's model	2
county	45	2009	We should follow our own country's model	1
county	42	2009	We should follow our own country's model	4
county	15	2009	We should follow our own country's model	2
county	2	2009	We should follow our own country's model	1
county	31	2009	We should follow our own country's model	6
county	17	2009	We should follow our own country's model	2
county	12	2009	We should follow our own country's model	1
county	44	2009	We should follow our own country's model	1
county	1	2009	We should follow our own country's model	6
county	47	2009	We should follow our own country's model	8
county	32	2009	We should follow our own country's model	8
county	33	2009	We should follow our own country's model	1
county	46	2009	We should follow our own country's model	3
county	19	2009	We should follow our own country's model	2
county	41	2009	We should follow our own country's model	2
county	13	2009	We should follow our own country's model	1
county	26	2009	We should follow our own country's model	3
\.


--
-- Name: model_country_for_development pk_model_country_for_development; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.model_country_for_development
    ADD CONSTRAINT pk_model_country_for_development PRIMARY KEY (geo_level, geo_code, geo_version, model_country_for_development);


--
-- PostgreSQL database dump complete
--

