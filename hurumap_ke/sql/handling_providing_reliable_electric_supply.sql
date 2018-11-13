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

ALTER TABLE IF EXISTS ONLY public.handling_providing_reliable_electric_supply DROP CONSTRAINT IF EXISTS pk_handling_providing_reliable_electric_supply;
DROP TABLE IF EXISTS public.handling_providing_reliable_electric_supply;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: handling_providing_reliable_electric_supply; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.handling_providing_reliable_electric_supply (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    handling_providing_reliable_electric_supply character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: handling_providing_reliable_electric_supply; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.handling_providing_reliable_electric_supply (geo_level, geo_code, geo_version, handling_providing_reliable_electric_supply, total) FROM stdin;
county	30	2009	Don't know / Haven't heard enough	2
county	28	2009	Don't know / Haven't heard enough	1
county	7	2009	Don't know / Haven't heard enough	3
county	11	2009	Don't know / Haven't heard enough	1
county	15	2009	Don't know / Haven't heard enough	7
county	2	2009	Don't know / Haven't heard enough	2
county	31	2009	Don't know / Haven't heard enough	2
county	16	2009	Don't know / Haven't heard enough	4
county	9	2009	Don't know / Haven't heard enough	1
county	47	2009	Don't know / Haven't heard enough	3
county	29	2009	Don't know / Haven't heard enough	1
county	41	2009	Don't know / Haven't heard enough	3
county	4	2009	Don't know / Haven't heard enough	3
county	23	2009	Don't know / Haven't heard enough	2
county	27	2009	Don't know / Haven't heard enough	3
county	38	2009	Don't know / Haven't heard enough	1
county	8	2009	Don't know / Haven't heard enough	1
county	30	2009	Fairly Badly	10
county	36	2009	Fairly Badly	11
county	39	2009	Fairly Badly	15
county	40	2009	Fairly Badly	11
county	28	2009	Fairly Badly	6
county	14	2009	Fairly Badly	7
county	7	2009	Fairly Badly	7
county	43	2009	Fairly Badly	12
county	11	2009	Fairly Badly	4
county	34	2009	Fairly Badly	21
county	37	2009	Fairly Badly	24
county	35	2009	Fairly Badly	11
county	22	2009	Fairly Badly	9
county	3	2009	Fairly Badly	13
county	20	2009	Fairly Badly	3
county	45	2009	Fairly Badly	24
county	42	2009	Fairly Badly	9
county	15	2009	Fairly Badly	9
county	2	2009	Fairly Badly	11
county	31	2009	Fairly Badly	2
county	5	2009	Fairly Badly	1
county	16	2009	Fairly Badly	9
county	17	2009	Fairly Badly	15
county	9	2009	Fairly Badly	18
county	10	2009	Fairly Badly	5
county	12	2009	Fairly Badly	17
county	44	2009	Fairly Badly	11
county	1	2009	Fairly Badly	12
county	21	2009	Fairly Badly	2
county	47	2009	Fairly Badly	35
county	32	2009	Fairly Badly	28
county	29	2009	Fairly Badly	18
county	33	2009	Fairly Badly	13
county	46	2009	Fairly Badly	8
county	18	2009	Fairly Badly	1
county	19	2009	Fairly Badly	5
county	25	2009	Fairly Badly	2
county	41	2009	Fairly Badly	11
county	13	2009	Fairly Badly	6
county	26	2009	Fairly Badly	9
county	23	2009	Fairly Badly	20
county	27	2009	Fairly Badly	20
county	38	2009	Fairly Badly	11
county	8	2009	Fairly Badly	6
county	24	2009	Fairly Badly	11
county	30	2009	Fairly Well	13
county	36	2009	Fairly Well	29
county	39	2009	Fairly Well	39
county	40	2009	Fairly Well	13
county	28	2009	Fairly Well	3
county	14	2009	Fairly Well	26
county	7	2009	Fairly Well	14
county	43	2009	Fairly Well	30
county	34	2009	Fairly Well	12
county	37	2009	Fairly Well	40
county	35	2009	Fairly Well	21
county	22	2009	Fairly Well	72
county	3	2009	Fairly Well	37
county	20	2009	Fairly Well	22
county	45	2009	Fairly Well	36
county	42	2009	Fairly Well	35
county	15	2009	Fairly Well	21
county	2	2009	Fairly Well	21
county	31	2009	Fairly Well	10
county	5	2009	Fairly Well	5
county	16	2009	Fairly Well	32
county	17	2009	Fairly Well	26
county	9	2009	Fairly Well	10
county	12	2009	Fairly Well	53
county	44	2009	Fairly Well	21
county	1	2009	Fairly Well	43
county	21	2009	Fairly Well	40
county	47	2009	Fairly Well	135
county	32	2009	Fairly Well	45
county	29	2009	Fairly Well	14
county	33	2009	Fairly Well	17
county	46	2009	Fairly Well	23
county	18	2009	Fairly Well	22
county	19	2009	Fairly Well	28
county	25	2009	Fairly Well	2
county	41	2009	Fairly Well	21
county	6	2009	Fairly Well	11
county	13	2009	Fairly Well	11
county	26	2009	Fairly Well	20
county	23	2009	Fairly Well	1
county	27	2009	Fairly Well	19
county	38	2009	Fairly Well	11
county	8	2009	Fairly Well	7
county	24	2009	Fairly Well	6
county	2	2009	Missing	1
county	1	2009	Missing	1
county	30	2009	Very Badly	4
county	36	2009	Very Badly	3
county	39	2009	Very Badly	19
county	40	2009	Very Badly	13
county	28	2009	Very Badly	4
county	14	2009	Very Badly	3
county	7	2009	Very Badly	8
county	43	2009	Very Badly	13
county	11	2009	Very Badly	3
county	34	2009	Very Badly	5
county	37	2009	Very Badly	31
county	35	2009	Very Badly	3
county	22	2009	Very Badly	6
county	3	2009	Very Badly	5
county	20	2009	Very Badly	1
county	45	2009	Very Badly	12
county	42	2009	Very Badly	5
county	15	2009	Very Badly	15
county	31	2009	Very Badly	8
county	16	2009	Very Badly	21
county	17	2009	Very Badly	10
county	9	2009	Very Badly	19
county	10	2009	Very Badly	11
county	12	2009	Very Badly	3
county	44	2009	Very Badly	13
county	1	2009	Very Badly	2
county	21	2009	Very Badly	1
county	47	2009	Very Badly	31
county	32	2009	Very Badly	11
county	29	2009	Very Badly	10
county	33	2009	Very Badly	9
county	46	2009	Very Badly	8
county	18	2009	Very Badly	1
county	19	2009	Very Badly	2
county	25	2009	Very Badly	4
county	41	2009	Very Badly	9
county	6	2009	Very Badly	1
county	4	2009	Very Badly	5
county	26	2009	Very Badly	11
county	23	2009	Very Badly	25
county	27	2009	Very Badly	8
county	38	2009	Very Badly	8
county	8	2009	Very Badly	17
county	24	2009	Very Badly	6
county	30	2009	Very Well	3
county	36	2009	Very Well	5
county	39	2009	Very Well	7
county	40	2009	Very Well	3
county	28	2009	Very Well	2
county	14	2009	Very Well	4
county	43	2009	Very Well	1
county	34	2009	Very Well	10
county	37	2009	Very Well	1
county	35	2009	Very Well	5
county	22	2009	Very Well	33
county	3	2009	Very Well	9
county	20	2009	Very Well	14
county	42	2009	Very Well	7
county	15	2009	Very Well	4
county	2	2009	Very Well	5
county	31	2009	Very Well	2
county	5	2009	Very Well	2
county	16	2009	Very Well	6
county	17	2009	Very Well	5
county	12	2009	Very Well	12
county	44	2009	Very Well	3
county	1	2009	Very Well	14
county	21	2009	Very Well	21
county	47	2009	Very Well	44
county	32	2009	Very Well	20
county	29	2009	Very Well	5
county	33	2009	Very Well	9
county	46	2009	Very Well	1
county	18	2009	Very Well	16
county	19	2009	Very Well	13
county	41	2009	Very Well	4
county	6	2009	Very Well	4
county	13	2009	Very Well	7
county	26	2009	Very Well	8
county	27	2009	Very Well	6
county	38	2009	Very Well	1
county	8	2009	Very Well	1
county	24	2009	Very Well	1
\.


--
-- Name: handling_providing_reliable_electric_supply pk_handling_providing_reliable_electric_supply; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.handling_providing_reliable_electric_supply
    ADD CONSTRAINT pk_handling_providing_reliable_electric_supply PRIMARY KEY (geo_level, geo_code, geo_version, handling_providing_reliable_electric_supply);


--
-- PostgreSQL database dump complete
--

