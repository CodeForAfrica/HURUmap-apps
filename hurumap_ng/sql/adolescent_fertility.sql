--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.adolescent_fertility DROP CONSTRAINT IF EXISTS adolescent_fertility_pkey;
DROP TABLE IF EXISTS public.adolescent_fertility;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: adolescent_fertility; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.adolescent_fertility (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    adolescent_fertility_year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: adolescent_fertility; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.adolescent_fertility (geo_level, geo_code, geo_version, adolescent_fertility_year, total) FROM stdin;
country	NG	2016	2016	120
state	1	2016	2016	37
state	2	2016	2016	113
state	3	2016	2016	67
state	4	2016	2016	40
state	5	2016	2016	186
state	6	2016	2016	78
state	7	2016	2016	79
state	8	2016	2016	128
state	9	2016	2016	68
state	10	2016	2016	57
state	11	2016	2016	53
state	12	2016	2016	42
state	13	2016	2016	60
state	14	2016	2016	23
state	15	2016	2016	39
state	16	2016	2016	181
state	17	2016	2016	36
state	18	2016	2016	186
state	19	2016	2016	134
state	20	2016	2016	169
state	21	2016	2016	218
state	22	2016	2016	157
state	23	2016	2016	36
state	24	2016	2016	70
state	25	2016	2016	21
state	26	2016	2016	101
state	27	2016	2016	138
state	28	2016	2016	50
state	29	2016	2016	47
state	30	2016	2016	57
state	31	2016	2016	54
state	32	2016	2016	94
state	33	2016	2016	18
state	34	2016	2016	174
state	35	2016	2016	81
state	36	2016	2016	159
state	37	2016	2016	208
\.


--
-- Name: adolescent_fertility adolescent_fertility_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.adolescent_fertility
    ADD CONSTRAINT adolescent_fertility_pkey PRIMARY KEY (geo_level, geo_code, geo_version, adolescent_fertility_year);


--
-- PostgreSQL database dump complete
--
