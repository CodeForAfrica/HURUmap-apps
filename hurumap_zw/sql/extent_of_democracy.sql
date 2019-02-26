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
province	10	2009	A democracy, but with minor problems	28
province	10	2009	A democracy, with major problems	49
province	10	2009	A full democracy	7
province	10	2009	Do not understand question / democracy	16
province	10	2009	Don't know	2
province	10	2009	Not a democracy	50
province	19	2009	A democracy, but with minor problems	107
province	19	2009	A democracy, with major problems	161
province	19	2009	A full democracy	29
province	19	2009	Do not understand question / democracy	31
province	19	2009	Don't know	11
province	19	2009	Not a democracy	109
province	11	2009	A democracy, but with minor problems	43
province	11	2009	A democracy, with major problems	75
province	11	2009	A full democracy	32
province	11	2009	Do not understand question / democracy	58
province	11	2009	Don't know	28
province	11	2009	Not a democracy	68
province	12	2009	A democracy, but with minor problems	74
province	12	2009	A democracy, with major problems	58
province	12	2009	A full democracy	29
province	12	2009	Do not understand question / democracy	5
province	12	2009	Don't know	15
province	12	2009	Not a democracy	27
province	13	2009	A democracy, but with minor problems	63
province	13	2009	A democracy, with major problems	76
province	13	2009	A full democracy	14
province	13	2009	Do not understand question / democracy	31
province	13	2009	Don't know	20
province	13	2009	Not a democracy	44
province	14	2009	A democracy, but with minor problems	86
province	14	2009	A democracy, with major problems	50
province	14	2009	A full democracy	53
province	14	2009	Do not understand question / democracy	30
province	14	2009	Don't know	19
province	14	2009	Not a democracy	34
province	18	2009	A democracy, but with minor problems	58
province	18	2009	A democracy, with major problems	44
province	18	2009	A full democracy	13
province	18	2009	Do not understand question / democracy	54
province	18	2009	Don't know	33
province	18	2009	Not a democracy	46
province	15	2009	A democracy, but with minor problems	38
province	15	2009	A democracy, with major problems	17
province	15	2009	A full democracy	18
province	15	2009	Do not understand question / democracy	25
province	15	2009	Don't know	19
province	15	2009	Not a democracy	11
province	16	2009	A democracy, but with minor problems	12
province	16	2009	A democracy, with major problems	18
province	16	2009	A full democracy	10
province	16	2009	Do not understand question / democracy	34
province	16	2009	Don't know	3
province	16	2009	Not a democracy	27
province	17	2009	A democracy, but with minor problems	83
province	17	2009	A democracy, with major problems	88
province	17	2009	A full democracy	56
province	17	2009	Do not understand question / democracy	17
province	17	2009	Don't know	8
province	17	2009	Not a democracy	36
country	ZW	2009	A democracy, but with minor problems	592
country	ZW	2009	Not a democracy	452
country	ZW	2009	Do not understand question / democracy	301
country	ZW	2009	A democracy, with major problems	636
country	ZW	2009	Don't know	158
country	ZW	2009	A full democracy	261
\.


--
-- Name: extent_of_democracy pk_extent_of_democracy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.extent_of_democracy
    ADD CONSTRAINT pk_extent_of_democracy PRIMARY KEY (geo_level, geo_code, geo_version, extent_of_democracy);


--
-- PostgreSQL database dump complete
--

