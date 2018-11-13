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

ALTER TABLE IF EXISTS ONLY public.overall_direction_of_the_country DROP CONSTRAINT IF EXISTS pk_overall_direction_of_the_country;
DROP TABLE IF EXISTS public.overall_direction_of_the_country;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: overall_direction_of_the_country; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.overall_direction_of_the_country (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    overall_direction_of_the_country character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: overall_direction_of_the_country; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.overall_direction_of_the_country (geo_level, geo_code, geo_version, overall_direction_of_the_country, total) FROM stdin;
county	30	2009	Don't know	1
county	39	2009	Don't know	2
county	40	2009	Don't know	1
county	14	2009	Don't know	1
county	7	2009	Don't know	2
county	11	2009	Don't know	1
county	34	2009	Don't know	1
county	37	2009	Don't know	2
county	22	2009	Don't know	2
county	3	2009	Don't know	2
county	2	2009	Don't know	2
county	31	2009	Don't know	2
county	9	2009	Don't know	1
county	12	2009	Don't know	2
county	47	2009	Don't know	8
county	46	2009	Don't know	1
county	18	2009	Don't know	1
county	19	2009	Don't know	1
county	25	2009	Don't know	2
county	6	2009	Don't know	1
county	13	2009	Don't know	3
county	23	2009	Don't know	3
county	27	2009	Don't know	1
county	38	2009	Don't know	1
county	8	2009	Don't know	2
county	24	2009	Don't know	1
county	30	2009	Going in the right direction	14
county	36	2009	Going in the right direction	35
county	39	2009	Going in the right direction	40
county	40	2009	Going in the right direction	9
county	28	2009	Going in the right direction	8
county	14	2009	Going in the right direction	29
county	7	2009	Going in the right direction	12
county	43	2009	Going in the right direction	8
county	11	2009	Going in the right direction	2
county	34	2009	Going in the right direction	21
county	37	2009	Going in the right direction	23
county	35	2009	Going in the right direction	24
county	22	2009	Going in the right direction	97
county	3	2009	Going in the right direction	3
county	20	2009	Going in the right direction	31
county	45	2009	Going in the right direction	14
county	42	2009	Going in the right direction	4
county	15	2009	Going in the right direction	18
county	2	2009	Going in the right direction	9
county	31	2009	Going in the right direction	13
county	5	2009	Going in the right direction	3
county	16	2009	Going in the right direction	25
county	17	2009	Going in the right direction	19
county	9	2009	Going in the right direction	18
county	10	2009	Going in the right direction	5
county	12	2009	Going in the right direction	50
county	44	2009	Going in the right direction	5
county	1	2009	Going in the right direction	7
county	21	2009	Going in the right direction	55
county	47	2009	Going in the right direction	109
county	32	2009	Going in the right direction	67
county	29	2009	Going in the right direction	28
county	33	2009	Going in the right direction	25
county	46	2009	Going in the right direction	9
county	18	2009	Going in the right direction	33
county	19	2009	Going in the right direction	42
county	25	2009	Going in the right direction	1
county	41	2009	Going in the right direction	5
county	6	2009	Going in the right direction	7
county	4	2009	Going in the right direction	1
county	13	2009	Going in the right direction	12
county	26	2009	Going in the right direction	16
county	23	2009	Going in the right direction	7
county	27	2009	Going in the right direction	30
county	38	2009	Going in the right direction	9
county	8	2009	Going in the right direction	9
county	24	2009	Going in the right direction	8
county	30	2009	Going in the wrong direction	17
county	36	2009	Going in the wrong direction	13
county	39	2009	Going in the wrong direction	38
county	40	2009	Going in the wrong direction	30
county	28	2009	Going in the wrong direction	8
county	14	2009	Going in the wrong direction	10
county	7	2009	Going in the wrong direction	18
county	43	2009	Going in the wrong direction	48
county	11	2009	Going in the wrong direction	5
county	34	2009	Going in the wrong direction	26
county	37	2009	Going in the wrong direction	71
county	35	2009	Going in the wrong direction	16
county	22	2009	Going in the wrong direction	21
county	3	2009	Going in the wrong direction	59
county	20	2009	Going in the wrong direction	9
county	45	2009	Going in the wrong direction	58
county	42	2009	Going in the wrong direction	52
county	15	2009	Going in the wrong direction	38
county	2	2009	Going in the wrong direction	29
county	31	2009	Going in the wrong direction	9
county	5	2009	Going in the wrong direction	5
county	16	2009	Going in the wrong direction	47
county	17	2009	Going in the wrong direction	37
county	9	2009	Going in the wrong direction	29
county	10	2009	Going in the wrong direction	11
county	12	2009	Going in the wrong direction	33
county	44	2009	Going in the wrong direction	43
county	1	2009	Going in the wrong direction	65
county	21	2009	Going in the wrong direction	9
county	47	2009	Going in the wrong direction	131
county	32	2009	Going in the wrong direction	37
county	29	2009	Going in the wrong direction	20
county	33	2009	Going in the wrong direction	23
county	46	2009	Going in the wrong direction	30
county	18	2009	Going in the wrong direction	6
county	19	2009	Going in the wrong direction	5
county	25	2009	Going in the wrong direction	5
county	41	2009	Going in the wrong direction	43
county	6	2009	Going in the wrong direction	8
county	4	2009	Going in the wrong direction	7
county	13	2009	Going in the wrong direction	9
county	26	2009	Going in the wrong direction	32
county	23	2009	Going in the wrong direction	38
county	27	2009	Going in the wrong direction	25
county	38	2009	Going in the wrong direction	22
county	8	2009	Going in the wrong direction	21
county	24	2009	Going in the wrong direction	15
\.


--
-- Name: overall_direction_of_the_country pk_overall_direction_of_the_country; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.overall_direction_of_the_country
    ADD CONSTRAINT pk_overall_direction_of_the_country PRIMARY KEY (geo_level, geo_code, geo_version, overall_direction_of_the_country);


--
-- PostgreSQL database dump complete
--

