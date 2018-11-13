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

ALTER TABLE IF EXISTS ONLY public.handling_addressing_educational_needs DROP CONSTRAINT IF EXISTS pk_handling_addressing_educational_needs;
DROP TABLE IF EXISTS public.handling_addressing_educational_needs;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: handling_addressing_educational_needs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.handling_addressing_educational_needs (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    handling_addressing_educational_needs character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: handling_addressing_educational_needs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.handling_addressing_educational_needs (geo_level, geo_code, geo_version, handling_addressing_educational_needs, total) FROM stdin;
county	7	2009	Don't know / Haven't heard enough	4
county	11	2009	Don't know / Haven't heard enough	1
county	34	2009	Don't know / Haven't heard enough	1
county	37	2009	Don't know / Haven't heard enough	1
county	31	2009	Don't know / Haven't heard enough	2
county	16	2009	Don't know / Haven't heard enough	2
county	17	2009	Don't know / Haven't heard enough	1
county	9	2009	Don't know / Haven't heard enough	1
county	47	2009	Don't know / Haven't heard enough	1
county	6	2009	Don't know / Haven't heard enough	1
county	4	2009	Don't know / Haven't heard enough	2
county	38	2009	Don't know / Haven't heard enough	1
county	8	2009	Don't know / Haven't heard enough	1
county	30	2009	Fairly Badly	4
county	36	2009	Fairly Badly	5
county	39	2009	Fairly Badly	4
county	40	2009	Fairly Badly	8
county	28	2009	Fairly Badly	6
county	14	2009	Fairly Badly	11
county	7	2009	Fairly Badly	9
county	43	2009	Fairly Badly	16
county	11	2009	Fairly Badly	1
county	34	2009	Fairly Badly	22
county	37	2009	Fairly Badly	20
county	35	2009	Fairly Badly	5
county	22	2009	Fairly Badly	6
county	3	2009	Fairly Badly	12
county	20	2009	Fairly Badly	5
county	45	2009	Fairly Badly	15
county	42	2009	Fairly Badly	11
county	15	2009	Fairly Badly	13
county	2	2009	Fairly Badly	7
county	31	2009	Fairly Badly	2
county	16	2009	Fairly Badly	11
county	17	2009	Fairly Badly	13
county	9	2009	Fairly Badly	10
county	10	2009	Fairly Badly	5
county	12	2009	Fairly Badly	8
county	44	2009	Fairly Badly	13
county	1	2009	Fairly Badly	10
county	21	2009	Fairly Badly	1
county	47	2009	Fairly Badly	64
county	32	2009	Fairly Badly	9
county	29	2009	Fairly Badly	11
county	33	2009	Fairly Badly	9
county	46	2009	Fairly Badly	4
county	18	2009	Fairly Badly	1
county	19	2009	Fairly Badly	3
county	25	2009	Fairly Badly	3
county	41	2009	Fairly Badly	14
county	6	2009	Fairly Badly	1
county	4	2009	Fairly Badly	2
county	13	2009	Fairly Badly	5
county	26	2009	Fairly Badly	6
county	23	2009	Fairly Badly	20
county	27	2009	Fairly Badly	10
county	38	2009	Fairly Badly	9
county	8	2009	Fairly Badly	10
county	24	2009	Fairly Badly	1
county	30	2009	Fairly Well	24
county	36	2009	Fairly Well	27
county	39	2009	Fairly Well	43
county	40	2009	Fairly Well	17
county	28	2009	Fairly Well	8
county	14	2009	Fairly Well	19
county	7	2009	Fairly Well	16
county	43	2009	Fairly Well	33
county	11	2009	Fairly Well	3
county	34	2009	Fairly Well	18
county	37	2009	Fairly Well	45
county	35	2009	Fairly Well	29
county	22	2009	Fairly Well	87
county	3	2009	Fairly Well	39
county	20	2009	Fairly Well	19
county	45	2009	Fairly Well	49
county	42	2009	Fairly Well	36
county	15	2009	Fairly Well	34
county	2	2009	Fairly Well	27
county	31	2009	Fairly Well	15
county	5	2009	Fairly Well	6
county	16	2009	Fairly Well	44
county	17	2009	Fairly Well	35
county	9	2009	Fairly Well	23
county	10	2009	Fairly Well	7
county	12	2009	Fairly Well	60
county	44	2009	Fairly Well	27
county	1	2009	Fairly Well	44
county	21	2009	Fairly Well	51
county	47	2009	Fairly Well	125
county	32	2009	Fairly Well	63
county	29	2009	Fairly Well	29
county	33	2009	Fairly Well	22
county	46	2009	Fairly Well	31
county	18	2009	Fairly Well	27
county	19	2009	Fairly Well	34
county	25	2009	Fairly Well	3
county	41	2009	Fairly Well	31
county	6	2009	Fairly Well	9
county	4	2009	Fairly Well	2
county	13	2009	Fairly Well	10
county	26	2009	Fairly Well	22
county	23	2009	Fairly Well	20
county	27	2009	Fairly Well	38
county	38	2009	Fairly Well	12
county	8	2009	Fairly Well	14
county	24	2009	Fairly Well	15
county	14	2009	Missing	1
county	15	2009	Missing	1
county	30	2009	Very Badly	1
county	39	2009	Very Badly	17
county	40	2009	Very Badly	10
county	14	2009	Very Badly	3
county	7	2009	Very Badly	3
county	43	2009	Very Badly	7
county	11	2009	Very Badly	2
county	34	2009	Very Badly	2
county	37	2009	Very Badly	20
county	22	2009	Very Badly	5
county	3	2009	Very Badly	3
county	20	2009	Very Badly	1
county	45	2009	Very Badly	8
county	42	2009	Very Badly	4
county	15	2009	Very Badly	5
county	2	2009	Very Badly	3
county	31	2009	Very Badly	2
county	16	2009	Very Badly	12
county	17	2009	Very Badly	6
county	9	2009	Very Badly	13
county	10	2009	Very Badly	4
county	12	2009	Very Badly	5
county	44	2009	Very Badly	8
county	1	2009	Very Badly	3
county	21	2009	Very Badly	2
county	47	2009	Very Badly	30
county	32	2009	Very Badly	4
county	29	2009	Very Badly	1
county	33	2009	Very Badly	3
county	46	2009	Very Badly	3
county	18	2009	Very Badly	1
county	19	2009	Very Badly	1
county	25	2009	Very Badly	1
county	41	2009	Very Badly	2
county	6	2009	Very Badly	3
county	4	2009	Very Badly	1
county	13	2009	Very Badly	3
county	26	2009	Very Badly	13
county	23	2009	Very Badly	4
county	27	2009	Very Badly	2
county	38	2009	Very Badly	7
county	8	2009	Very Badly	7
county	24	2009	Very Badly	2
county	30	2009	Very Well	3
county	36	2009	Very Well	16
county	39	2009	Very Well	16
county	40	2009	Very Well	5
county	28	2009	Very Well	2
county	14	2009	Very Well	6
county	11	2009	Very Well	1
county	34	2009	Very Well	5
county	37	2009	Very Well	10
county	35	2009	Very Well	6
county	22	2009	Very Well	22
county	3	2009	Very Well	10
county	20	2009	Very Well	15
county	42	2009	Very Well	5
county	15	2009	Very Well	3
county	2	2009	Very Well	3
county	31	2009	Very Well	3
county	5	2009	Very Well	2
county	16	2009	Very Well	3
county	17	2009	Very Well	1
county	9	2009	Very Well	1
county	12	2009	Very Well	12
county	1	2009	Very Well	15
county	21	2009	Very Well	10
county	47	2009	Very Well	28
county	32	2009	Very Well	28
county	29	2009	Very Well	7
county	33	2009	Very Well	14
county	46	2009	Very Well	2
county	18	2009	Very Well	11
county	19	2009	Very Well	10
county	25	2009	Very Well	1
county	41	2009	Very Well	1
county	6	2009	Very Well	2
county	4	2009	Very Well	1
county	13	2009	Very Well	6
county	26	2009	Very Well	7
county	23	2009	Very Well	4
county	27	2009	Very Well	6
county	38	2009	Very Well	3
county	24	2009	Very Well	6
\.


--
-- Name: handling_addressing_educational_needs pk_handling_addressing_educational_needs; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.handling_addressing_educational_needs
    ADD CONSTRAINT pk_handling_addressing_educational_needs PRIMARY KEY (geo_level, geo_code, geo_version, handling_addressing_educational_needs);


--
-- PostgreSQL database dump complete
--

