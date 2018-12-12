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
province	1	2010	Decreased a lot	8
province	1	2010	Decreased somewhat	28
province	1	2010	Don't know	3
province	1	2010	Increased a lot	41
province	1	2010	Increased somewhat	16
province	1	2010	Stayed the same	24
province	2	2010	Decreased a lot	19
province	2	2010	Decreased somewhat	31
province	2	2010	Don't know	3
province	2	2010	Increased a lot	83
province	2	2010	Increased somewhat	24
province	2	2010	Stayed the same	32
province	3	2010	Decreased a lot	4
province	3	2010	Decreased somewhat	16
province	3	2010	Don't know	18
province	3	2010	Increased a lot	69
province	3	2010	Increased somewhat	8
province	3	2010	Stayed the same	21
province	4	2010	Decreased a lot	3
province	4	2010	Decreased somewhat	38
province	4	2010	Don't know	4
province	4	2010	Increased a lot	11
province	4	2010	Increased somewhat	19
province	4	2010	Stayed the same	12
province	5	2010	Decreased a lot	11
province	5	2010	Decreased somewhat	48
province	5	2010	Don't know	9
province	5	2010	Increased a lot	86
province	5	2010	Increased somewhat	30
province	5	2010	Stayed the same	40
province	6	2010	Decreased a lot	2
province	6	2010	Decreased somewhat	12
province	6	2010	Don't know	4
province	6	2010	Increased a lot	28
province	6	2010	Increased somewhat	5
province	6	2010	Stayed the same	13
province	8	2010	Decreased a lot	1
province	8	2010	Decreased somewhat	11
province	8	2010	Increased a lot	30
province	8	2010	Increased somewhat	9
province	8	2010	Stayed the same	13
province	7	2010	Decreased a lot	17
province	7	2010	Decreased somewhat	19
province	7	2010	Don't know	9
province	7	2010	Increased a lot	29
province	7	2010	Increased somewhat	6
province	7	2010	Stayed the same	16
province	9	2010	Decreased a lot	3
province	9	2010	Decreased somewhat	15
province	9	2010	Don't know	3
province	9	2010	Increased a lot	89
province	9	2010	Increased somewhat	12
province	9	2010	Stayed the same	13
province	10	2010	Decreased somewhat	11
province	10	2010	Don't know	3
province	10	2010	Increased a lot	41
province	10	2010	Increased somewhat	12
province	10	2010	Stayed the same	13
country	ZM	2010	Increased somewhat	141
country	ZM	2010	Decreased a lot	68
country	ZM	2010	Increased a lot	507
country	ZM	2010	Stayed the same	197
country	ZM	2010	Decreased somewhat	229
country	ZM	2010	Don't know	56
\.


--
-- Name: level_of_corruption pk_level_of_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.level_of_corruption
    ADD CONSTRAINT pk_level_of_corruption PRIMARY KEY (geo_level, geo_code, geo_version, level_of_corruption);


--
-- PostgreSQL database dump complete
--

