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

ALTER TABLE IF EXISTS ONLY public.handling_managing_the_economy DROP CONSTRAINT IF EXISTS pk_handling_managing_the_economy;
DROP TABLE IF EXISTS public.handling_managing_the_economy;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: handling_managing_the_economy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.handling_managing_the_economy (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    handling_managing_the_economy character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: handling_managing_the_economy; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.handling_managing_the_economy (geo_level, geo_code, geo_version, handling_managing_the_economy, total) FROM stdin;
county	11	2009	Don't know / Haven't heard enough	2
county	22	2009	Don't know / Haven't heard enough	1
county	15	2009	Don't know / Haven't heard enough	2
county	2	2009	Don't know / Haven't heard enough	1
county	31	2009	Don't know / Haven't heard enough	2
county	17	2009	Don't know / Haven't heard enough	1
county	9	2009	Don't know / Haven't heard enough	1
county	10	2009	Don't know / Haven't heard enough	2
county	12	2009	Don't know / Haven't heard enough	3
county	44	2009	Don't know / Haven't heard enough	1
county	47	2009	Don't know / Haven't heard enough	1
county	4	2009	Don't know / Haven't heard enough	2
county	38	2009	Don't know / Haven't heard enough	1
county	30	2009	Fairly Badly	10
county	36	2009	Fairly Badly	12
county	39	2009	Fairly Badly	20
county	40	2009	Fairly Badly	11
county	28	2009	Fairly Badly	7
county	14	2009	Fairly Badly	7
county	7	2009	Fairly Badly	10
county	43	2009	Fairly Badly	8
county	34	2009	Fairly Badly	18
county	37	2009	Fairly Badly	27
county	35	2009	Fairly Badly	14
county	22	2009	Fairly Badly	12
county	3	2009	Fairly Badly	20
county	20	2009	Fairly Badly	6
county	45	2009	Fairly Badly	17
county	42	2009	Fairly Badly	8
county	15	2009	Fairly Badly	15
county	2	2009	Fairly Badly	18
county	31	2009	Fairly Badly	4
county	5	2009	Fairly Badly	2
county	16	2009	Fairly Badly	22
county	17	2009	Fairly Badly	23
county	9	2009	Fairly Badly	6
county	10	2009	Fairly Badly	2
county	12	2009	Fairly Badly	11
county	44	2009	Fairly Badly	15
county	1	2009	Fairly Badly	28
county	21	2009	Fairly Badly	8
county	47	2009	Fairly Badly	80
county	32	2009	Fairly Badly	41
county	29	2009	Fairly Badly	8
county	33	2009	Fairly Badly	10
county	46	2009	Fairly Badly	12
county	18	2009	Fairly Badly	4
county	19	2009	Fairly Badly	6
county	25	2009	Fairly Badly	2
county	41	2009	Fairly Badly	10
county	6	2009	Fairly Badly	9
county	4	2009	Fairly Badly	2
county	13	2009	Fairly Badly	8
county	26	2009	Fairly Badly	12
county	23	2009	Fairly Badly	20
county	27	2009	Fairly Badly	11
county	38	2009	Fairly Badly	9
county	8	2009	Fairly Badly	8
county	24	2009	Fairly Badly	8
county	30	2009	Fairly Well	16
county	36	2009	Fairly Well	27
county	39	2009	Fairly Well	19
county	40	2009	Fairly Well	6
county	28	2009	Fairly Well	2
county	14	2009	Fairly Well	19
county	7	2009	Fairly Well	7
county	43	2009	Fairly Well	6
county	11	2009	Fairly Well	3
county	34	2009	Fairly Well	15
county	37	2009	Fairly Well	15
county	35	2009	Fairly Well	16
county	22	2009	Fairly Well	84
county	3	2009	Fairly Well	9
county	20	2009	Fairly Well	26
county	45	2009	Fairly Well	9
county	42	2009	Fairly Well	7
county	15	2009	Fairly Well	22
county	2	2009	Fairly Well	12
county	31	2009	Fairly Well	12
county	5	2009	Fairly Well	1
county	16	2009	Fairly Well	30
county	17	2009	Fairly Well	19
county	9	2009	Fairly Well	16
county	10	2009	Fairly Well	7
county	12	2009	Fairly Well	48
county	44	2009	Fairly Well	4
county	1	2009	Fairly Well	13
county	21	2009	Fairly Well	50
county	47	2009	Fairly Well	84
county	32	2009	Fairly Well	39
county	29	2009	Fairly Well	21
county	33	2009	Fairly Well	19
county	46	2009	Fairly Well	3
county	18	2009	Fairly Well	30
county	19	2009	Fairly Well	35
county	25	2009	Fairly Well	2
county	41	2009	Fairly Well	7
county	6	2009	Fairly Well	3
county	4	2009	Fairly Well	1
county	13	2009	Fairly Well	7
county	26	2009	Fairly Well	9
county	23	2009	Fairly Well	10
county	27	2009	Fairly Well	21
county	38	2009	Fairly Well	8
county	8	2009	Fairly Well	8
county	24	2009	Fairly Well	7
county	14	2009	Missing	1
county	47	2009	Missing	1
county	30	2009	Very Badly	6
county	36	2009	Very Badly	3
county	39	2009	Very Badly	34
county	40	2009	Very Badly	20
county	28	2009	Very Badly	5
county	14	2009	Very Badly	3
county	7	2009	Very Badly	15
county	43	2009	Very Badly	42
county	11	2009	Very Badly	2
county	34	2009	Very Badly	10
county	37	2009	Very Badly	52
county	35	2009	Very Badly	6
county	22	2009	Very Badly	13
county	3	2009	Very Badly	35
county	20	2009	Very Badly	3
county	45	2009	Very Badly	46
county	42	2009	Very Badly	41
county	15	2009	Very Badly	16
county	2	2009	Very Badly	9
county	31	2009	Very Badly	4
county	5	2009	Very Badly	2
county	16	2009	Very Badly	18
county	17	2009	Very Badly	10
county	9	2009	Very Badly	25
county	10	2009	Very Badly	4
county	12	2009	Very Badly	10
county	44	2009	Very Badly	28
county	1	2009	Very Badly	31
county	21	2009	Very Badly	4
county	47	2009	Very Badly	69
county	32	2009	Very Badly	7
county	29	2009	Very Badly	14
county	33	2009	Very Badly	5
county	46	2009	Very Badly	25
county	18	2009	Very Badly	3
county	19	2009	Very Badly	1
county	25	2009	Very Badly	4
county	41	2009	Very Badly	29
county	6	2009	Very Badly	4
county	4	2009	Very Badly	3
county	13	2009	Very Badly	3
county	26	2009	Very Badly	20
county	23	2009	Very Badly	17
county	27	2009	Very Badly	21
county	38	2009	Very Badly	14
county	8	2009	Very Badly	16
county	24	2009	Very Badly	6
county	36	2009	Very Well	6
county	39	2009	Very Well	7
county	40	2009	Very Well	3
county	28	2009	Very Well	2
county	14	2009	Very Well	10
county	11	2009	Very Well	1
county	34	2009	Very Well	5
county	37	2009	Very Well	2
county	35	2009	Very Well	4
county	22	2009	Very Well	10
county	20	2009	Very Well	5
county	15	2009	Very Well	1
county	31	2009	Very Well	2
county	5	2009	Very Well	3
county	16	2009	Very Well	2
county	17	2009	Very Well	3
county	10	2009	Very Well	1
county	12	2009	Very Well	13
county	21	2009	Very Well	2
county	47	2009	Very Well	13
county	32	2009	Very Well	17
county	29	2009	Very Well	5
county	33	2009	Very Well	14
county	18	2009	Very Well	3
county	19	2009	Very Well	6
county	41	2009	Very Well	2
county	13	2009	Very Well	6
county	26	2009	Very Well	7
county	23	2009	Very Well	1
county	27	2009	Very Well	3
county	24	2009	Very Well	3
\.


--
-- Name: handling_managing_the_economy pk_handling_managing_the_economy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.handling_managing_the_economy
    ADD CONSTRAINT pk_handling_managing_the_economy PRIMARY KEY (geo_level, geo_code, geo_version, handling_managing_the_economy);


--
-- PostgreSQL database dump complete
--

