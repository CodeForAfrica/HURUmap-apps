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

ALTER TABLE IF EXISTS ONLY public.extent_of_democracy DROP CONSTRAINT IF EXISTS pk_extent_of_democracy;
DROP TABLE IF EXISTS public.extent_of_democracy;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: extent_of_democracy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.extent_of_democracy (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    extent_of_democracy character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: extent_of_democracy; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.extent_of_democracy (geo_level, geo_code, geo_version, extent_of_democracy, total) FROM stdin;
province	1	2010	A democracy, but with minor problems	43
province	1	2010	A democracy, with major problems	36
province	1	2010	A full democracy	29
province	1	2010	Do not understand question / democracy	8
province	1	2010	Not a democracy	4
province	2	2010	A democracy, but with minor problems	84
province	2	2010	A democracy, with major problems	58
province	2	2010	A full democracy	43
province	2	2010	Do not understand question / democracy	1
province	2	2010	Don't know	2
province	2	2010	Not a democracy	4
province	3	2010	A democracy, but with minor problems	25
province	3	2010	A democracy, with major problems	21
province	3	2010	A full democracy	49
province	3	2010	Do not understand question / democracy	3
province	3	2010	Don't know	37
province	3	2010	Not a democracy	1
province	4	2010	A democracy, but with minor problems	35
province	4	2010	A democracy, with major problems	12
province	4	2010	A full democracy	37
province	4	2010	Don't know	3
province	5	2010	A democracy, but with minor problems	90
province	5	2010	A democracy, with major problems	39
province	5	2010	A full democracy	65
province	5	2010	Do not understand question / democracy	12
province	5	2010	Don't know	11
province	5	2010	Not a democracy	7
province	6	2010	A democracy, but with minor problems	21
province	6	2010	A democracy, with major problems	7
province	6	2010	A full democracy	25
province	6	2010	Do not understand question / democracy	5
province	6	2010	Don't know	5
province	6	2010	Not a democracy	1
province	8	2010	A democracy, but with minor problems	23
province	8	2010	A democracy, with major problems	12
province	8	2010	A full democracy	25
province	8	2010	Don't know	3
province	8	2010	Not a democracy	1
province	7	2010	A democracy, but with minor problems	20
province	7	2010	A democracy, with major problems	22
province	7	2010	A full democracy	41
province	7	2010	Do not understand question / democracy	2
province	7	2010	Don't know	7
province	7	2010	Not a democracy	4
province	9	2010	A democracy, but with minor problems	52
province	9	2010	A democracy, with major problems	46
province	9	2010	A full democracy	30
province	9	2010	Do not understand question / democracy	1
province	9	2010	Don't know	3
province	9	2010	Not a democracy	4
province	10	2010	A democracy, but with minor problems	21
province	10	2010	A democracy, with major problems	33
province	10	2010	A full democracy	18
province	10	2010	Do not understand question / democracy	1
province	10	2010	Don't know	2
province	10	2010	Not a democracy	5
country	ZM	2010	A democracy, but with minor problems	414
country	ZM	2010	Not a democracy	31
country	ZM	2010	Do not understand question / democracy	33
country	ZM	2010	A democracy, with major problems	286
country	ZM	2010	Don't know	73
country	ZM	2010	A full democracy	362
\.


--
-- Name: extent_of_democracy pk_extent_of_democracy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.extent_of_democracy
    ADD CONSTRAINT pk_extent_of_democracy PRIMARY KEY (geo_level, geo_code, geo_version, extent_of_democracy);


--
-- PostgreSQL database dump complete
--

