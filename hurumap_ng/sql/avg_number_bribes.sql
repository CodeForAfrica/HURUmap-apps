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

ALTER TABLE IF EXISTS ONLY public.avg_number_bribes DROP CONSTRAINT IF EXISTS avg_number_bribes_pkey;
DROP TABLE IF EXISTS public.avg_number_bribes;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: avg_number_bribes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.avg_number_bribes (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: avg_number_bribes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.avg_number_bribes (geo_level, geo_code, geo_version, year, total) FROM stdin;
state	1	2016	2016	4
state	2	2016	2016	5
state	3	2016	2016	4
state	4	2016	2016	6
state	5	2016	2016	5
state	6	2016	2016	4
state	7	2016	2016	11
state	8	2016	2016	4
state	9	2016	2016	5
state	10	2016	2016	14
state	11	2016	2016	6
state	12	2016	2016	4
state	13	2016	2016	7
state	14	2016	2016	6
state	15	2016	2016	4
state	16	2016	2016	7
state	17	2016	2016	3
state	18	2016	2016	5
state	19	2016	2016	3
state	20	2016	2016	6
state	21	2016	2016	6
state	22	2016	2016	7
state	23	2016	2016	4
state	24	2016	2016	3
state	25	2016	2016	5
state	26	2016	2016	5
state	27	2016	2016	5
state	28	2016	2016	4
state	29	2016	2016	12
state	30	2016	2016	4
state	31	2016	2016	4
state	32	2016	2016	7
state	33	2016	2016	5
state	34	2016	2016	5
state	35	2016	2016	12
state	36	2016	2016	5
state	37	2016	2016	6
\.


--
-- Name: avg_number_bribes avg_number_bribes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.avg_number_bribes
    ADD CONSTRAINT avg_number_bribes_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
