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

ALTER TABLE IF EXISTS ONLY public.handling_ensuring_enough_to_eat DROP CONSTRAINT IF EXISTS pk_handling_ensuring_enough_to_eat;
DROP TABLE IF EXISTS public.handling_ensuring_enough_to_eat;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: handling_ensuring_enough_to_eat; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.handling_ensuring_enough_to_eat (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    handling_ensuring_enough_to_eat character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: handling_ensuring_enough_to_eat; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.handling_ensuring_enough_to_eat (geo_level, geo_code, geo_version, handling_ensuring_enough_to_eat, total) FROM stdin;
county	14	2009	Don't know / Haven't heard enough	1
county	15	2009	Don't know / Haven't heard enough	1
county	31	2009	Don't know / Haven't heard enough	1
county	16	2009	Don't know / Haven't heard enough	4
county	12	2009	Don't know / Haven't heard enough	2
county	47	2009	Don't know / Haven't heard enough	7
county	32	2009	Don't know / Haven't heard enough	1
county	13	2009	Don't know / Haven't heard enough	2
county	23	2009	Don't know / Haven't heard enough	1
county	27	2009	Don't know / Haven't heard enough	1
county	30	2009	Fairly Badly	17
county	36	2009	Fairly Badly	15
county	39	2009	Fairly Badly	14
county	40	2009	Fairly Badly	12
county	28	2009	Fairly Badly	8
county	14	2009	Fairly Badly	11
county	7	2009	Fairly Badly	8
county	43	2009	Fairly Badly	11
county	11	2009	Fairly Badly	4
county	34	2009	Fairly Badly	20
county	37	2009	Fairly Badly	16
county	35	2009	Fairly Badly	14
county	22	2009	Fairly Badly	35
county	3	2009	Fairly Badly	14
county	20	2009	Fairly Badly	12
county	45	2009	Fairly Badly	21
county	42	2009	Fairly Badly	16
county	15	2009	Fairly Badly	28
county	2	2009	Fairly Badly	14
county	31	2009	Fairly Badly	9
county	5	2009	Fairly Badly	1
county	16	2009	Fairly Badly	23
county	17	2009	Fairly Badly	16
county	9	2009	Fairly Badly	12
county	10	2009	Fairly Badly	8
county	12	2009	Fairly Badly	44
county	44	2009	Fairly Badly	7
county	1	2009	Fairly Badly	29
county	21	2009	Fairly Badly	16
county	47	2009	Fairly Badly	68
county	32	2009	Fairly Badly	44
county	29	2009	Fairly Badly	18
county	33	2009	Fairly Badly	16
county	46	2009	Fairly Badly	9
county	18	2009	Fairly Badly	12
county	19	2009	Fairly Badly	12
county	25	2009	Fairly Badly	1
county	41	2009	Fairly Badly	24
county	6	2009	Fairly Badly	8
county	4	2009	Fairly Badly	1
county	13	2009	Fairly Badly	11
county	26	2009	Fairly Badly	8
county	23	2009	Fairly Badly	10
county	27	2009	Fairly Badly	14
county	38	2009	Fairly Badly	6
county	8	2009	Fairly Badly	5
county	24	2009	Fairly Badly	11
county	30	2009	Fairly Well	4
county	36	2009	Fairly Well	20
county	39	2009	Fairly Well	12
county	40	2009	Fairly Well	3
county	14	2009	Fairly Well	8
county	43	2009	Fairly Well	2
county	34	2009	Fairly Well	5
county	37	2009	Fairly Well	3
county	35	2009	Fairly Well	12
county	22	2009	Fairly Well	28
county	3	2009	Fairly Well	4
county	20	2009	Fairly Well	15
county	45	2009	Fairly Well	4
county	42	2009	Fairly Well	5
county	15	2009	Fairly Well	2
county	2	2009	Fairly Well	5
county	31	2009	Fairly Well	5
county	5	2009	Fairly Well	3
county	16	2009	Fairly Well	10
county	17	2009	Fairly Well	12
county	9	2009	Fairly Well	2
county	12	2009	Fairly Well	13
county	44	2009	Fairly Well	3
county	1	2009	Fairly Well	4
county	21	2009	Fairly Well	28
county	47	2009	Fairly Well	29
county	32	2009	Fairly Well	29
county	29	2009	Fairly Well	9
county	33	2009	Fairly Well	13
county	18	2009	Fairly Well	16
county	19	2009	Fairly Well	22
county	25	2009	Fairly Well	1
county	41	2009	Fairly Well	4
county	6	2009	Fairly Well	2
county	13	2009	Fairly Well	4
county	26	2009	Fairly Well	10
county	23	2009	Fairly Well	2
county	27	2009	Fairly Well	11
county	38	2009	Fairly Well	1
county	34	2009	Missing	1
county	30	2009	Very Badly	11
county	36	2009	Very Badly	9
county	39	2009	Very Badly	44
county	40	2009	Very Badly	22
county	28	2009	Very Badly	8
county	14	2009	Very Badly	19
county	7	2009	Very Badly	24
county	43	2009	Very Badly	43
county	11	2009	Very Badly	4
county	34	2009	Very Badly	21
county	37	2009	Very Badly	76
county	35	2009	Very Badly	11
county	22	2009	Very Badly	51
county	3	2009	Very Badly	46
county	20	2009	Very Badly	9
county	45	2009	Very Badly	47
county	42	2009	Very Badly	35
county	15	2009	Very Badly	24
county	2	2009	Very Badly	20
county	31	2009	Very Badly	7
county	5	2009	Very Badly	4
county	16	2009	Very Badly	35
county	17	2009	Very Badly	28
county	9	2009	Very Badly	34
county	10	2009	Very Badly	8
county	12	2009	Very Badly	22
county	44	2009	Very Badly	38
county	1	2009	Very Badly	39
county	21	2009	Very Badly	17
county	47	2009	Very Badly	137
county	32	2009	Very Badly	20
county	29	2009	Very Badly	21
county	33	2009	Very Badly	14
county	46	2009	Very Badly	31
county	18	2009	Very Badly	10
county	19	2009	Very Badly	12
county	25	2009	Very Badly	6
county	41	2009	Very Badly	20
county	6	2009	Very Badly	6
county	4	2009	Very Badly	7
county	13	2009	Very Badly	5
county	26	2009	Very Badly	24
county	23	2009	Very Badly	35
county	27	2009	Very Badly	30
county	38	2009	Very Badly	24
county	8	2009	Very Badly	27
county	24	2009	Very Badly	13
county	36	2009	Very Well	4
county	39	2009	Very Well	10
county	40	2009	Very Well	3
county	14	2009	Very Well	1
county	34	2009	Very Well	1
county	37	2009	Very Well	1
county	35	2009	Very Well	3
county	22	2009	Very Well	6
county	20	2009	Very Well	4
county	15	2009	Very Well	1
county	2	2009	Very Well	1
county	31	2009	Very Well	2
county	12	2009	Very Well	4
county	21	2009	Very Well	3
county	47	2009	Very Well	7
county	32	2009	Very Well	10
county	33	2009	Very Well	5
county	18	2009	Very Well	2
county	19	2009	Very Well	2
county	13	2009	Very Well	2
county	26	2009	Very Well	6
county	38	2009	Very Well	1
\.


--
-- Name: handling_ensuring_enough_to_eat pk_handling_ensuring_enough_to_eat; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.handling_ensuring_enough_to_eat
    ADD CONSTRAINT pk_handling_ensuring_enough_to_eat PRIMARY KEY (geo_level, geo_code, geo_version, handling_ensuring_enough_to_eat);


--
-- PostgreSQL database dump complete
--

