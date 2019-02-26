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

ALTER TABLE IF EXISTS ONLY public.level_of_corruption DROP CONSTRAINT IF EXISTS pk_level_of_corruption;
DROP TABLE IF EXISTS public.level_of_corruption;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: level_of_corruption; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.level_of_corruption (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    level_of_corruption character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: level_of_corruption; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.level_of_corruption (geo_level, geo_code, geo_version, level_of_corruption, total) FROM stdin;
province	10	2009	Decreased a lot	3
province	10	2009	Decreased somewhat	14
province	10	2009	Don't know	4
province	10	2009	Increased a lot	87
province	10	2009	Increased somewhat	20
province	10	2009	Stayed the same	24
province	19	2009	Decreased somewhat	37
province	19	2009	Don't know	6
province	19	2009	Increased a lot	301
province	19	2009	Increased somewhat	63
province	19	2009	Stayed the same	39
province	11	2009	Decreased a lot	4
province	11	2009	Decreased somewhat	26
province	11	2009	Don't know	23
province	11	2009	Increased a lot	174
province	11	2009	Increased somewhat	55
province	11	2009	Stayed the same	22
province	12	2009	Decreased a lot	7
province	12	2009	Decreased somewhat	21
province	12	2009	Don't know	16
province	12	2009	Increased a lot	112
province	12	2009	Increased somewhat	36
province	12	2009	Stayed the same	16
province	13	2009	Decreased a lot	4
province	13	2009	Decreased somewhat	4
province	13	2009	Don't know	14
province	13	2009	Increased a lot	112
province	13	2009	Increased somewhat	52
province	13	2009	Stayed the same	62
province	14	2009	Decreased a lot	7
province	14	2009	Decreased somewhat	41
province	14	2009	Don't know	16
province	14	2009	Increased a lot	118
province	14	2009	Increased somewhat	35
province	14	2009	Stayed the same	55
province	18	2009	Decreased a lot	8
province	18	2009	Decreased somewhat	40
province	18	2009	Don't know	9
province	18	2009	Increased a lot	80
province	18	2009	Increased somewhat	74
province	18	2009	Stayed the same	37
province	15	2009	Decreased a lot	3
province	15	2009	Decreased somewhat	11
province	15	2009	Don't know	19
province	15	2009	Increased a lot	18
province	15	2009	Increased somewhat	20
province	15	2009	Stayed the same	57
province	16	2009	Decreased a lot	1
province	16	2009	Decreased somewhat	6
province	16	2009	Don't know	10
province	16	2009	Increased a lot	29
province	16	2009	Increased somewhat	35
province	16	2009	Stayed the same	23
province	17	2009	Decreased a lot	17
province	17	2009	Decreased somewhat	19
province	17	2009	Don't know	15
province	17	2009	Increased a lot	121
province	17	2009	Increased somewhat	82
province	17	2009	Stayed the same	34
country	ZW	2009	Increased somewhat	472
country	ZW	2009	Decreased a lot	54
country	ZW	2009	Increased a lot	1152
country	ZW	2009	Stayed the same	369
country	ZW	2009	Decreased somewhat	219
country	ZW	2009	Don't know	132
\.


--
-- Name: level_of_corruption pk_level_of_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.level_of_corruption
    ADD CONSTRAINT pk_level_of_corruption PRIMARY KEY (geo_level, geo_code, geo_version, level_of_corruption);


--
-- PostgreSQL database dump complete
--

