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
province	1	2010	Decreased a lot	51
province	1	2010	Decreased somewhat	162
province	1	2010	Don't know	37
province	1	2010	Increased a lot	341
province	1	2010	Increased somewhat	105
province	1	2010	Stayed the same	135
province	2	2010	Decreased a lot	4
province	2	2010	Decreased somewhat	4
province	2	2010	Don't know	1
province	2	2010	Increased a lot	15
province	2	2010	Increased somewhat	3
province	2	2010	Stayed the same	5
province	3	2010	Decreased a lot	2
province	3	2010	Decreased somewhat	3
province	3	2010	Don't know	6
province	3	2010	Increased a lot	18
province	3	2010	Increased somewhat	3
province	3	2010	Stayed the same	8
province	4	2010	Decreased a lot	1
province	4	2010	Decreased somewhat	19
province	4	2010	Don't know	1
province	4	2010	Increased a lot	7
province	4	2010	Increased somewhat	7
province	4	2010	Stayed the same	5
province	6	2010	Decreased a lot	1
province	6	2010	Decreased somewhat	7
province	6	2010	Don't know	3
province	6	2010	Increased a lot	25
province	6	2010	Increased somewhat	3
province	6	2010	Stayed the same	9
province	8	2010	Decreased a lot	1
province	8	2010	Decreased somewhat	6
province	8	2010	Increased a lot	12
province	8	2010	Increased somewhat	1
province	8	2010	Stayed the same	4
province	7	2010	Decreased a lot	7
province	7	2010	Decreased somewhat	10
province	7	2010	Don't know	3
province	7	2010	Increased a lot	12
province	7	2010	Increased somewhat	3
province	7	2010	Stayed the same	13
province	9	2010	Decreased a lot	1
province	9	2010	Decreased somewhat	10
province	9	2010	Don't know	3
province	9	2010	Increased a lot	45
province	9	2010	Increased somewhat	10
province	9	2010	Stayed the same	10
province	10	2010	Decreased somewhat	8
province	10	2010	Don't know	2
province	10	2010	Increased a lot	32
province	10	2010	Increased somewhat	6
province	10	2010	Stayed the same	8
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

