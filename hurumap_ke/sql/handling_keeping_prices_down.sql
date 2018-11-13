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

ALTER TABLE IF EXISTS ONLY public.handling_keeping_prices_down DROP CONSTRAINT IF EXISTS pk_handling_keeping_prices_down;
DROP TABLE IF EXISTS public.handling_keeping_prices_down;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: handling_keeping_prices_down; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.handling_keeping_prices_down (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    handling_keeping_prices_down character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: handling_keeping_prices_down; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.handling_keeping_prices_down (geo_level, geo_code, geo_version, handling_keeping_prices_down, total) FROM stdin;
county	7	2009	Don't know / Haven't heard enough	3
county	37	2009	Don't know / Haven't heard enough	1
county	31	2009	Don't know / Haven't heard enough	1
county	16	2009	Don't know / Haven't heard enough	1
county	9	2009	Don't know / Haven't heard enough	2
county	10	2009	Don't know / Haven't heard enough	1
county	12	2009	Don't know / Haven't heard enough	1
county	47	2009	Don't know / Haven't heard enough	1
county	33	2009	Don't know / Haven't heard enough	1
county	41	2009	Don't know / Haven't heard enough	1
county	4	2009	Don't know / Haven't heard enough	1
county	13	2009	Don't know / Haven't heard enough	2
county	23	2009	Don't know / Haven't heard enough	1
county	30	2009	Fairly Badly	13
county	36	2009	Fairly Badly	19
county	39	2009	Fairly Badly	18
county	40	2009	Fairly Badly	8
county	28	2009	Fairly Badly	6
county	14	2009	Fairly Badly	18
county	7	2009	Fairly Badly	6
county	43	2009	Fairly Badly	7
county	11	2009	Fairly Badly	2
county	34	2009	Fairly Badly	14
county	37	2009	Fairly Badly	16
county	35	2009	Fairly Badly	14
county	22	2009	Fairly Badly	38
county	3	2009	Fairly Badly	21
county	20	2009	Fairly Badly	8
county	45	2009	Fairly Badly	11
county	42	2009	Fairly Badly	9
county	15	2009	Fairly Badly	21
county	2	2009	Fairly Badly	16
county	31	2009	Fairly Badly	10
county	5	2009	Fairly Badly	3
county	16	2009	Fairly Badly	28
county	17	2009	Fairly Badly	14
county	9	2009	Fairly Badly	15
county	10	2009	Fairly Badly	6
county	12	2009	Fairly Badly	50
county	44	2009	Fairly Badly	4
county	1	2009	Fairly Badly	32
county	21	2009	Fairly Badly	25
county	47	2009	Fairly Badly	72
county	32	2009	Fairly Badly	36
county	29	2009	Fairly Badly	16
county	33	2009	Fairly Badly	13
county	46	2009	Fairly Badly	5
county	18	2009	Fairly Badly	10
county	19	2009	Fairly Badly	13
county	25	2009	Fairly Badly	2
county	41	2009	Fairly Badly	6
county	6	2009	Fairly Badly	6
county	4	2009	Fairly Badly	1
county	13	2009	Fairly Badly	15
county	26	2009	Fairly Badly	12
county	23	2009	Fairly Badly	11
county	27	2009	Fairly Badly	13
county	38	2009	Fairly Badly	7
county	8	2009	Fairly Badly	8
county	24	2009	Fairly Badly	9
county	30	2009	Fairly Well	6
county	36	2009	Fairly Well	11
county	39	2009	Fairly Well	7
county	40	2009	Fairly Well	3
county	28	2009	Fairly Well	2
county	14	2009	Fairly Well	4
county	43	2009	Fairly Well	1
county	34	2009	Fairly Well	5
county	37	2009	Fairly Well	8
county	35	2009	Fairly Well	9
county	22	2009	Fairly Well	30
county	3	2009	Fairly Well	3
county	20	2009	Fairly Well	14
county	42	2009	Fairly Well	2
county	15	2009	Fairly Well	7
county	2	2009	Fairly Well	2
county	31	2009	Fairly Well	5
county	5	2009	Fairly Well	2
county	16	2009	Fairly Well	6
county	17	2009	Fairly Well	13
county	9	2009	Fairly Well	4
county	12	2009	Fairly Well	8
county	44	2009	Fairly Well	2
county	1	2009	Fairly Well	6
county	21	2009	Fairly Well	17
county	47	2009	Fairly Well	28
county	32	2009	Fairly Well	29
county	29	2009	Fairly Well	13
county	33	2009	Fairly Well	13
county	18	2009	Fairly Well	13
county	19	2009	Fairly Well	16
county	25	2009	Fairly Well	1
county	41	2009	Fairly Well	5
county	6	2009	Fairly Well	2
county	13	2009	Fairly Well	1
county	26	2009	Fairly Well	7
county	23	2009	Fairly Well	1
county	27	2009	Fairly Well	12
county	38	2009	Fairly Well	4
county	24	2009	Fairly Well	3
county	12	2009	Missing	1
county	25	2009	Missing	1
county	30	2009	Very Badly	13
county	36	2009	Very Badly	15
county	39	2009	Very Badly	48
county	40	2009	Very Badly	28
county	28	2009	Very Badly	8
county	14	2009	Very Badly	17
county	7	2009	Very Badly	23
county	43	2009	Very Badly	48
county	11	2009	Very Badly	6
county	34	2009	Very Badly	26
county	37	2009	Very Badly	70
county	35	2009	Very Badly	15
county	22	2009	Very Badly	51
county	3	2009	Very Badly	40
county	20	2009	Very Badly	15
county	45	2009	Very Badly	61
county	42	2009	Very Badly	45
county	15	2009	Very Badly	27
county	2	2009	Very Badly	22
county	31	2009	Very Badly	7
county	5	2009	Very Badly	2
county	16	2009	Very Badly	37
county	17	2009	Very Badly	28
county	9	2009	Very Badly	27
county	10	2009	Very Badly	9
county	12	2009	Very Badly	22
county	44	2009	Very Badly	42
county	1	2009	Very Badly	34
county	21	2009	Very Badly	19
county	47	2009	Very Badly	138
county	32	2009	Very Badly	31
county	29	2009	Very Badly	19
county	33	2009	Very Badly	16
county	46	2009	Very Badly	35
county	18	2009	Very Badly	14
county	19	2009	Very Badly	14
county	25	2009	Very Badly	4
county	41	2009	Very Badly	36
county	6	2009	Very Badly	8
county	4	2009	Very Badly	6
county	13	2009	Very Badly	5
county	26	2009	Very Badly	23
county	23	2009	Very Badly	35
county	27	2009	Very Badly	31
county	38	2009	Very Badly	21
county	8	2009	Very Badly	24
county	24	2009	Very Badly	12
county	36	2009	Very Well	3
county	39	2009	Very Well	7
county	40	2009	Very Well	1
county	14	2009	Very Well	1
county	34	2009	Very Well	3
county	37	2009	Very Well	1
county	35	2009	Very Well	2
county	22	2009	Very Well	1
county	20	2009	Very Well	3
county	15	2009	Very Well	1
county	31	2009	Very Well	1
county	5	2009	Very Well	1
county	17	2009	Very Well	1
county	12	2009	Very Well	3
county	21	2009	Very Well	3
county	47	2009	Very Well	9
county	32	2009	Very Well	8
county	33	2009	Very Well	5
county	18	2009	Very Well	3
county	19	2009	Very Well	5
county	13	2009	Very Well	1
county	26	2009	Very Well	6
\.


--
-- Name: handling_keeping_prices_down pk_handling_keeping_prices_down; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.handling_keeping_prices_down
    ADD CONSTRAINT pk_handling_keeping_prices_down PRIMARY KEY (geo_level, geo_code, geo_version, handling_keeping_prices_down);


--
-- PostgreSQL database dump complete
--

