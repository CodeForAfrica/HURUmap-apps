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

ALTER TABLE IF EXISTS ONLY public.handling_providing_water_and_sanitation_services DROP CONSTRAINT IF EXISTS pk_handling_providing_water_and_sanitation_services;
DROP TABLE IF EXISTS public.handling_providing_water_and_sanitation_services;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: handling_providing_water_and_sanitation_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.handling_providing_water_and_sanitation_services (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    handling_providing_water_and_sanitation_services character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: handling_providing_water_and_sanitation_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.handling_providing_water_and_sanitation_services (geo_level, geo_code, geo_version, handling_providing_water_and_sanitation_services, total) FROM stdin;
county	36	2009	Don't know / Haven't heard enough	1
county	39	2009	Don't know / Haven't heard enough	2
county	7	2009	Don't know / Haven't heard enough	2
county	11	2009	Don't know / Haven't heard enough	1
county	22	2009	Don't know / Haven't heard enough	1
county	42	2009	Don't know / Haven't heard enough	1
county	31	2009	Don't know / Haven't heard enough	1
county	9	2009	Don't know / Haven't heard enough	1
county	47	2009	Don't know / Haven't heard enough	1
county	32	2009	Don't know / Haven't heard enough	1
county	18	2009	Don't know / Haven't heard enough	1
county	41	2009	Don't know / Haven't heard enough	4
county	4	2009	Don't know / Haven't heard enough	1
county	38	2009	Don't know / Haven't heard enough	1
county	30	2009	Fairly Badly	14
county	36	2009	Fairly Badly	19
county	39	2009	Fairly Badly	19
county	40	2009	Fairly Badly	12
county	28	2009	Fairly Badly	12
county	14	2009	Fairly Badly	12
county	7	2009	Fairly Badly	13
county	43	2009	Fairly Badly	14
county	11	2009	Fairly Badly	4
county	34	2009	Fairly Badly	28
county	37	2009	Fairly Badly	35
county	35	2009	Fairly Badly	20
county	22	2009	Fairly Badly	24
county	3	2009	Fairly Badly	19
county	20	2009	Fairly Badly	7
county	45	2009	Fairly Badly	32
county	42	2009	Fairly Badly	16
county	15	2009	Fairly Badly	17
county	2	2009	Fairly Badly	11
county	31	2009	Fairly Badly	7
county	5	2009	Fairly Badly	2
county	16	2009	Fairly Badly	19
county	17	2009	Fairly Badly	13
county	9	2009	Fairly Badly	16
county	10	2009	Fairly Badly	11
county	12	2009	Fairly Badly	12
county	44	2009	Fairly Badly	14
county	1	2009	Fairly Badly	18
county	21	2009	Fairly Badly	4
county	47	2009	Fairly Badly	80
county	32	2009	Fairly Badly	33
county	29	2009	Fairly Badly	25
county	33	2009	Fairly Badly	17
county	46	2009	Fairly Badly	20
county	18	2009	Fairly Badly	6
county	19	2009	Fairly Badly	6
county	25	2009	Fairly Badly	6
county	41	2009	Fairly Badly	10
county	6	2009	Fairly Badly	1
county	4	2009	Fairly Badly	1
county	13	2009	Fairly Badly	5
county	26	2009	Fairly Badly	12
county	23	2009	Fairly Badly	25
county	27	2009	Fairly Badly	29
county	38	2009	Fairly Badly	8
county	8	2009	Fairly Badly	7
county	24	2009	Fairly Badly	14
county	30	2009	Fairly Well	13
county	36	2009	Fairly Well	18
county	39	2009	Fairly Well	17
county	40	2009	Fairly Well	14
county	28	2009	Fairly Well	4
county	14	2009	Fairly Well	20
county	7	2009	Fairly Well	3
county	43	2009	Fairly Well	9
county	34	2009	Fairly Well	15
county	37	2009	Fairly Well	15
county	35	2009	Fairly Well	11
county	22	2009	Fairly Well	62
county	3	2009	Fairly Well	32
county	20	2009	Fairly Well	22
county	45	2009	Fairly Well	13
county	42	2009	Fairly Well	23
county	15	2009	Fairly Well	13
county	2	2009	Fairly Well	21
county	31	2009	Fairly Well	3
county	5	2009	Fairly Well	3
county	16	2009	Fairly Well	15
county	17	2009	Fairly Well	25
county	9	2009	Fairly Well	4
county	12	2009	Fairly Well	51
county	44	2009	Fairly Well	8
county	1	2009	Fairly Well	41
county	21	2009	Fairly Well	44
county	47	2009	Fairly Well	93
county	32	2009	Fairly Well	31
county	29	2009	Fairly Well	15
county	33	2009	Fairly Well	17
county	46	2009	Fairly Well	9
county	18	2009	Fairly Well	25
county	19	2009	Fairly Well	34
county	41	2009	Fairly Well	14
county	6	2009	Fairly Well	8
county	13	2009	Fairly Well	10
county	26	2009	Fairly Well	12
county	23	2009	Fairly Well	10
county	27	2009	Fairly Well	19
county	38	2009	Fairly Well	10
county	8	2009	Fairly Well	2
county	24	2009	Fairly Well	5
county	34	2009	Missing	1
county	30	2009	Very Badly	5
county	36	2009	Very Badly	2
county	39	2009	Very Badly	32
county	40	2009	Very Badly	11
county	14	2009	Very Badly	6
county	7	2009	Very Badly	13
county	43	2009	Very Badly	32
county	11	2009	Very Badly	3
county	34	2009	Very Badly	1
county	37	2009	Very Badly	42
county	35	2009	Very Badly	5
county	22	2009	Very Badly	15
county	3	2009	Very Badly	12
county	20	2009	Very Badly	3
county	45	2009	Very Badly	27
county	42	2009	Very Badly	15
county	15	2009	Very Badly	26
county	2	2009	Very Badly	4
county	31	2009	Very Badly	8
county	16	2009	Very Badly	36
county	17	2009	Very Badly	14
county	9	2009	Very Badly	27
county	10	2009	Very Badly	5
county	12	2009	Very Badly	6
county	44	2009	Very Badly	26
county	1	2009	Very Badly	7
county	21	2009	Very Badly	5
county	47	2009	Very Badly	57
county	32	2009	Very Badly	20
county	29	2009	Very Badly	7
county	33	2009	Very Badly	7
county	46	2009	Very Badly	11
county	18	2009	Very Badly	4
county	19	2009	Very Badly	2
county	25	2009	Very Badly	2
county	41	2009	Very Badly	17
county	6	2009	Very Badly	6
county	4	2009	Very Badly	6
county	13	2009	Very Badly	1
county	26	2009	Very Badly	18
county	23	2009	Very Badly	13
county	27	2009	Very Badly	6
county	38	2009	Very Badly	12
county	8	2009	Very Badly	23
county	24	2009	Very Badly	5
county	36	2009	Very Well	8
county	39	2009	Very Well	10
county	40	2009	Very Well	3
county	14	2009	Very Well	2
county	7	2009	Very Well	1
county	43	2009	Very Well	1
county	34	2009	Very Well	3
county	37	2009	Very Well	4
county	35	2009	Very Well	4
county	22	2009	Very Well	18
county	3	2009	Very Well	1
county	20	2009	Very Well	8
county	42	2009	Very Well	1
county	2	2009	Very Well	4
county	31	2009	Very Well	5
county	5	2009	Very Well	3
county	16	2009	Very Well	2
county	17	2009	Very Well	4
county	12	2009	Very Well	16
county	1	2009	Very Well	6
county	21	2009	Very Well	11
county	47	2009	Very Well	17
county	32	2009	Very Well	19
county	29	2009	Very Well	1
county	33	2009	Very Well	7
county	18	2009	Very Well	4
county	19	2009	Very Well	6
county	41	2009	Very Well	3
county	6	2009	Very Well	1
county	13	2009	Very Well	8
county	26	2009	Very Well	6
county	27	2009	Very Well	2
county	38	2009	Very Well	1
\.


--
-- Name: handling_providing_water_and_sanitation_services pk_handling_providing_water_and_sanitation_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.handling_providing_water_and_sanitation_services
    ADD CONSTRAINT pk_handling_providing_water_and_sanitation_services PRIMARY KEY (geo_level, geo_code, geo_version, handling_providing_water_and_sanitation_services);


--
-- PostgreSQL database dump complete
--

