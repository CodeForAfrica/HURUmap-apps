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

ALTER TABLE IF EXISTS ONLY public.postal_data DROP CONSTRAINT IF EXISTS postal_data_pkey;
DROP TABLE IF EXISTS public.postal_data;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: postal_data; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.postal_data (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: postal_data; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.postal_data (geo_level, geo_code, geo_version, year, total) FROM stdin;
country	NG	2016	2016	24462
state	1	2016	2016	30618
state	2	2016	2016	11338
state	3	2016	2016	16179
state	4	2016	2016	60947
state	5	2016	2016	17900
state	7	2016	2016	14790
state	8	2016	2016	19873
state	9	2016	2016	14192
state	10	2016	2016	32188
state	12	2016	2016	24306
state	14	2016	2016	29304
state	15	2016	2016	29190
state	17	2016	2016	34973
state	18	2016	2016	3396
state	19	2016	2016	29129
state	20	2016	2016	18403
state	21	2016	2016	4532
state	22	2016	2016	7348
state	23	2016	2016	14532
state	24	2016	2016	16178
state	25	2016	2016	137685
state	27	2016	2016	14548
state	28	2016	2016	24064
state	29	2016	2016	29143
state	30	2016	2016	27014
state	31	2016	2016	49468
state	32	2016	2016	21779
state	33	2016	2016	28323
state	34	2016	2016	12380
state	35	2016	2016	5379
state	36	2016	2016	3696
\.


--
-- Name: postal_data postal_data_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.postal_data
    ADD CONSTRAINT postal_data_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
