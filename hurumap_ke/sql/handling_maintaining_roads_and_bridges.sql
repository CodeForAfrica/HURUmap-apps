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

ALTER TABLE IF EXISTS ONLY public.handling_maintaining_roads_and_bridges DROP CONSTRAINT IF EXISTS pk_handling_maintaining_roads_and_bridges;
DROP TABLE IF EXISTS public.handling_maintaining_roads_and_bridges;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: handling_maintaining_roads_and_bridges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.handling_maintaining_roads_and_bridges (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    handling_maintaining_roads_and_bridges character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: handling_maintaining_roads_and_bridges; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.handling_maintaining_roads_and_bridges (geo_level, geo_code, geo_version, handling_maintaining_roads_and_bridges, total) FROM stdin;
county	14	2009	Don't know / Haven't heard enough	1
county	7	2009	Don't know / Haven't heard enough	3
county	37	2009	Don't know / Haven't heard enough	1
county	22	2009	Don't know / Haven't heard enough	2
county	2	2009	Don't know / Haven't heard enough	1
county	31	2009	Don't know / Haven't heard enough	1
county	16	2009	Don't know / Haven't heard enough	1
county	9	2009	Don't know / Haven't heard enough	2
county	4	2009	Don't know / Haven't heard enough	2
county	13	2009	Don't know / Haven't heard enough	1
county	27	2009	Don't know / Haven't heard enough	1
county	38	2009	Don't know / Haven't heard enough	1
county	8	2009	Don't know / Haven't heard enough	1
county	30	2009	Fairly Badly	8
county	36	2009	Fairly Badly	16
county	39	2009	Fairly Badly	6
county	40	2009	Fairly Badly	5
county	28	2009	Fairly Badly	7
county	14	2009	Fairly Badly	4
county	7	2009	Fairly Badly	9
county	43	2009	Fairly Badly	12
county	11	2009	Fairly Badly	3
county	34	2009	Fairly Badly	17
county	37	2009	Fairly Badly	7
county	35	2009	Fairly Badly	8
county	22	2009	Fairly Badly	13
county	3	2009	Fairly Badly	11
county	20	2009	Fairly Badly	6
county	45	2009	Fairly Badly	33
county	42	2009	Fairly Badly	15
county	15	2009	Fairly Badly	10
county	2	2009	Fairly Badly	11
county	31	2009	Fairly Badly	4
county	16	2009	Fairly Badly	9
county	17	2009	Fairly Badly	9
county	9	2009	Fairly Badly	21
county	10	2009	Fairly Badly	8
county	12	2009	Fairly Badly	26
county	44	2009	Fairly Badly	14
county	1	2009	Fairly Badly	15
county	21	2009	Fairly Badly	7
county	47	2009	Fairly Badly	52
county	32	2009	Fairly Badly	31
county	29	2009	Fairly Badly	11
county	33	2009	Fairly Badly	17
county	46	2009	Fairly Badly	19
county	18	2009	Fairly Badly	3
county	19	2009	Fairly Badly	6
county	25	2009	Fairly Badly	2
county	41	2009	Fairly Badly	16
county	6	2009	Fairly Badly	3
county	13	2009	Fairly Badly	7
county	26	2009	Fairly Badly	7
county	23	2009	Fairly Badly	29
county	27	2009	Fairly Badly	19
county	38	2009	Fairly Badly	4
county	8	2009	Fairly Badly	8
county	24	2009	Fairly Badly	9
county	30	2009	Fairly Well	19
county	36	2009	Fairly Well	29
county	39	2009	Fairly Well	46
county	40	2009	Fairly Well	17
county	28	2009	Fairly Well	6
county	14	2009	Fairly Well	27
county	7	2009	Fairly Well	1
county	43	2009	Fairly Well	29
county	11	2009	Fairly Well	2
county	34	2009	Fairly Well	20
county	37	2009	Fairly Well	48
county	35	2009	Fairly Well	24
county	22	2009	Fairly Well	62
county	3	2009	Fairly Well	42
county	20	2009	Fairly Well	15
county	45	2009	Fairly Well	22
county	42	2009	Fairly Well	26
county	15	2009	Fairly Well	32
county	2	2009	Fairly Well	26
county	31	2009	Fairly Well	12
county	5	2009	Fairly Well	4
county	16	2009	Fairly Well	38
county	17	2009	Fairly Well	31
county	9	2009	Fairly Well	5
county	12	2009	Fairly Well	41
county	44	2009	Fairly Well	21
county	1	2009	Fairly Well	48
county	21	2009	Fairly Well	31
county	47	2009	Fairly Well	102
county	32	2009	Fairly Well	45
county	29	2009	Fairly Well	26
county	33	2009	Fairly Well	18
county	46	2009	Fairly Well	13
county	18	2009	Fairly Well	18
county	19	2009	Fairly Well	29
county	25	2009	Fairly Well	1
county	41	2009	Fairly Well	19
county	6	2009	Fairly Well	9
county	4	2009	Fairly Well	2
county	13	2009	Fairly Well	10
county	26	2009	Fairly Well	27
county	23	2009	Fairly Well	5
county	27	2009	Fairly Well	31
county	38	2009	Fairly Well	15
county	24	2009	Fairly Well	9
county	7	2009	Missing	1
county	15	2009	Missing	1
county	1	2009	Missing	1
county	30	2009	Very Badly	4
county	39	2009	Very Badly	20
county	40	2009	Very Badly	15
county	28	2009	Very Badly	2
county	14	2009	Very Badly	6
county	7	2009	Very Badly	17
county	43	2009	Very Badly	14
county	11	2009	Very Badly	3
county	34	2009	Very Badly	3
county	37	2009	Very Badly	37
county	22	2009	Very Badly	3
county	3	2009	Very Badly	5
county	20	2009	Very Badly	4
county	45	2009	Very Badly	16
county	42	2009	Very Badly	9
county	15	2009	Very Badly	13
county	2	2009	Very Badly	2
county	31	2009	Very Badly	6
county	5	2009	Very Badly	1
county	16	2009	Very Badly	19
county	17	2009	Very Badly	10
county	9	2009	Very Badly	20
county	10	2009	Very Badly	8
county	12	2009	Very Badly	3
county	44	2009	Very Badly	13
county	21	2009	Very Badly	3
county	47	2009	Very Badly	36
county	32	2009	Very Badly	11
county	29	2009	Very Badly	4
county	33	2009	Very Badly	5
county	46	2009	Very Badly	7
county	18	2009	Very Badly	2
county	19	2009	Very Badly	3
county	25	2009	Very Badly	5
county	41	2009	Very Badly	10
county	6	2009	Very Badly	3
county	4	2009	Very Badly	4
county	26	2009	Very Badly	7
county	23	2009	Very Badly	13
county	27	2009	Very Badly	3
county	38	2009	Very Badly	10
county	8	2009	Very Badly	23
county	24	2009	Very Badly	5
county	30	2009	Very Well	1
county	36	2009	Very Well	3
county	39	2009	Very Well	8
county	40	2009	Very Well	3
county	28	2009	Very Well	1
county	14	2009	Very Well	2
county	7	2009	Very Well	1
county	43	2009	Very Well	1
county	34	2009	Very Well	8
county	37	2009	Very Well	3
county	35	2009	Very Well	8
county	22	2009	Very Well	40
county	3	2009	Very Well	6
county	20	2009	Very Well	15
county	45	2009	Very Well	1
county	42	2009	Very Well	6
county	31	2009	Very Well	1
county	5	2009	Very Well	3
county	16	2009	Very Well	5
county	17	2009	Very Well	6
county	12	2009	Very Well	15
county	1	2009	Very Well	8
county	21	2009	Very Well	23
county	47	2009	Very Well	58
county	32	2009	Very Well	17
county	29	2009	Very Well	7
county	33	2009	Very Well	8
county	46	2009	Very Well	1
county	18	2009	Very Well	17
county	19	2009	Very Well	10
county	41	2009	Very Well	3
county	6	2009	Very Well	1
county	13	2009	Very Well	6
county	26	2009	Very Well	7
county	23	2009	Very Well	1
county	27	2009	Very Well	2
county	38	2009	Very Well	2
county	24	2009	Very Well	1
\.


--
-- Name: handling_maintaining_roads_and_bridges pk_handling_maintaining_roads_and_bridges; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.handling_maintaining_roads_and_bridges
    ADD CONSTRAINT pk_handling_maintaining_roads_and_bridges PRIMARY KEY (geo_level, geo_code, geo_version, handling_maintaining_roads_and_bridges);


--
-- PostgreSQL database dump complete
--

