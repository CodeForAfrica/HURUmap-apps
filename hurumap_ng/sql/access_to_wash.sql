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

ALTER TABLE IF EXISTS ONLY public.access_to_wash DROP CONSTRAINT IF EXISTS access_to_wash_pkey;
DROP TABLE IF EXISTS public.access_to_wash;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: access_to_wash; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.access_to_wash (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    access_to_wash character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: access_to_wash; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.access_to_wash (geo_level, geo_code, geo_version, access_to_wash, total) FROM stdin;
state	1	2016	drinking water	71.6
state	1	2016	sanitation facility	77.4
state	2	2016	drinking water	50.8
state	2	2016	sanitation facility	23.5
state	3	2016	drinking water	68.6
state	3	2016	sanitation facility	55.5
state	4	2016	drinking water	68.4
state	4	2016	sanitation facility	69.5
state	5	2016	drinking water	55.7
state	5	2016	sanitation facility	31.5
state	6	2016	drinking water	30.9
state	6	2016	sanitation facility	19.1
state	7	2016	drinking water	40.6
state	7	2016	sanitation facility	26.3
state	8	2016	drinking water	48.8
state	8	2016	sanitation facility	54
state	9	2016	drinking water	50.6
state	9	2016	sanitation facility	34.2
state	10	2016	drinking water	71.4
state	10	2016	sanitation facility	56
state	11	2016	drinking water	73.7
state	11	2016	sanitation facility	18.9
state	12	2016	drinking water	62.5
state	12	2016	sanitation facility	71.9
state	13	2016	drinking water	72.4
state	13	2016	sanitation facility	54.5
state	14	2016	drinking water	26.8
state	14	2016	sanitation facility	42.7
state	15	2016	drinking water	54
state	15	2016	sanitation facility	75.5
state	16	2016	drinking water	47.3
state	16	2016	sanitation facility	48.2
state	17	2016	drinking water	84.2
state	17	2016	sanitation facility	58.8
state	18	2016	drinking water	75.9
state	18	2016	sanitation facility	24.5
state	19	2016	drinking water	58.9
state	19	2016	sanitation facility	45.6
state	20	2016	drinking water	55.5
state	20	2016	sanitation facility	60.5
state	21	2016	drinking water	48.4
state	21	2016	sanitation facility	17.1
state	22	2016	drinking water	36.1
state	22	2016	sanitation facility	15.7
state	23	2016	drinking water	64.8
state	23	2016	sanitation facility	39.5
state	24	2016	drinking water	62.3
state	24	2016	sanitation facility	37.3
state	25	2016	drinking water	37.1
state	25	2016	sanitation facility	94.3
state	26	2016	drinking water	59.3
state	26	2016	sanitation facility	36.7
state	27	2016	drinking water	50.4
state	27	2016	sanitation facility	35.1
country	NG	2016	drinking water	56.8
country	NG	2016	sanitation facility	46.8
state	28	2016	drinking water	59.2
state	28	2016	sanitation facility	65.6
state	29	2016	drinking water	56.1
state	29	2016	sanitation facility	49.3
state	30	2016	drinking water	67.7
state	30	2016	sanitation facility	60.3
state	31	2016	drinking water	67.7
state	31	2016	sanitation facility	55.6
state	32	2016	drinking water	50.4
state	32	2016	sanitation facility	37.6
state	33	2016	drinking water	80.7
state	33	2016	sanitation facility	44
state	34	2016	drinking water	40.3
state	34	2016	sanitation facility	19.2
state	35	2016	drinking water	36.5
state	35	2016	sanitation facility	24.5
state	36	2016	drinking water	53.7
state	36	2016	sanitation facility	25.2
state	37	2016	drinking water	54.8
state	37	2016	sanitation facility	15.6
\.


--
-- Name: access_to_wash access_to_wash_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.access_to_wash
    ADD CONSTRAINT access_to_wash_pkey PRIMARY KEY (geo_level, geo_code, geo_version, access_to_wash);


--
-- PostgreSQL database dump complete
--
