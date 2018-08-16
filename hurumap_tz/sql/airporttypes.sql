--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

-- Started on 2018-04-12 15:38:55 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.airporttypes DROP CONSTRAINT IF EXISTS pk_airporttypes;
DROP TABLE IF EXISTS public.airporttypes;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 221 (class 1259 OID 29052)
-- Name: airporttypes; Type: TABLE; Schema: public; Owner: hurumap_tz
--

CREATE TABLE public.airporttypes (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "airport types" character varying(128) NOT NULL,
    total integer
);


--
-- TOC entry 2265 (class 0 OID 29052)
-- Dependencies: 221
-- Data for Name: airporttypes; Type: TABLE DATA; Schema: public; Owner: hurumap_tz
--

COPY public.airporttypes (geo_level, geo_code, geo_version, "airport types", total) FROM stdin;
country	TZ	2009	international	4
country	TZ	2009	domestic entry point	9
country	TZ	2009	domestic non entry point	14
country	TZ	2009	airstrip	32
region	1	2009	airstrip	1
region	1	2009	domestic non entry point	1
region	2	2009	international	1
region	3	2009	airstrip	4
region	3	2009	domestic entry point	1
region	5	2009	airstrip	2
region	5	2009	domestic non entry point	1
region	6	2009	airstrip	1
region	6	2009	domestic entry point	1
region	6	2009	domestic non entry point	1
region	9	2009	airstrip	1
region	9	2009	domestic non entry point	1
region	10	2009	airstrip	3
region	10	2009	domestic entry point	1
region	11	2009	airstrip	2
region	11	2009	domestic non entry point	1
region	11	2009	international	1
region	12	2009	domestic entry point	1
region	14	2009	domestic non entry point	2
region	15	2009	domestic non entry point	1
region	16	2009	domestic entry point	1
region	17	2009	airstrip	2
region	17	2009	international	1
region	30	2009	international	1
region	18	2009	airstrip	3
region	19	2009	domestic entry point	1
region	19	2009	domestic non entry point	1
region	20	2009	airstrip	1
region	20	2009	domestic entry point	1
region	21	2009	airstrip	1
region	22	2009	airstrip	1
region	22	2009	domestic non entry point	1
region	23	2009	domestic non entry point	1
region	24	2009	airstrip	3
region	24	2009	domestic non entry point	1
region	25	2009	airstrip	1
region	25	2009	domestic non entry point	1
region	26	2009	airstrip	1
region	27	2009	airstrip	2
region	27	2009	domestic non entry point	1
region	29	2009	airstrip	1
region	29	2009	domestic entry point	1
region	28	2009	airstrip	2
region	28	2009	domestic entry point	1
district	10	2009	domestic non entry point	1
district	12	2009	airstrip	1
district	48	2009	international	1
district	4	2009	airstrip	1
district	5	2009	domestic entry point	1
district	1	2009	airstrip	1
district	3	2009	airstrip	1
district	2	2009	airstrip	1
district	68	2009	domestic non entry point	1
district	72	2009	airstrip	1
district	69	2009	airstrip	1
district	116	2009	airstrip	1
district	118	2009	domestic non entry point	1
district	117	2009	domestic entry point	1
district	148	2009	airstrip	1
district	146	2009	domestic non entry point	1
district	101	2009	airstrip	1
district	100	2009	airstrip	1
district	103	2009	domestic entry point	1
district	104	2009	airstrip	1
district	19	2009	international	1
district	18	2009	airstrip	1
district	20	2009	domestic non entry point	1
district	17	2009	airstrip	1
district	167	2009	domestic entry point	1
district	49	2009	domestic non entry point	1
district	51	2009	domestic non entry point	1
district	134	2009	domestic non entry point	1
district	130	2009	domestic entry point	1
district	73	2009	airstrip	1
district	74	2009	airstrip	1
district	78	2009	international	1
district	34	2009	airstrip	1
district	32	2009	airstrip	1
district	33	2009	airstrip	1
district	57	2009	domestic non entry point	1
district	59	2009	domestic entry point	1
district	126	2009	domestic entry point	1
district	121	2009	airstrip	1
district	140	2009	airstrip	1
district	44	2009	domestic non entry point	1
district	43	2009	airstrip	1
district	99	2009	domestic non entry point	1
district	64	2009	airstrip	1
district	67	2009	airstrip	1
district	65	2009	domestic non entry point	1
district	62	2009	airstrip	1
district	111	2009	airstrip	1
district	108	2009	domestic non entry point	1
district	152	2009	airstrip	1
district	83	2009	airstrip	1
district	85	2009	airstrip	1
district	86	2009	domestic non entry point	1
district	94	2009	domestic entry point	1
district	92	2009	airstrip	1
district	23	2009	airstrip	1
district	26	2009	airstrip	1
district	25	2009	domestic entry point	1
\.


--
-- TOC entry 2150 (class 2606 OID 29057)
-- Name: pk_airporttypes; Type: CONSTRAINT; Schema: public; Owner: hurumap_tz
--

ALTER TABLE ONLY public.airporttypes
    ADD CONSTRAINT pk_airporttypes PRIMARY KEY (geo_level, geo_code, geo_version, "airport types");


-- Completed on 2018-04-12 15:38:55 EAT

--
-- PostgreSQL database dump complete
--

