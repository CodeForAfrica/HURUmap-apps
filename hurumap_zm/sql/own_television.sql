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

ALTER TABLE IF EXISTS ONLY public.own_television DROP CONSTRAINT IF EXISTS pk_own_television;
DROP TABLE IF EXISTS public.own_television;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: own_television; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.own_television (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    own_television character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: own_television; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.own_television (geo_level, geo_code, geo_version, own_television, total) FROM stdin;
province	1	2010	No, don't own	68
province	1	2010	Yes, do own	52
province	2	2010	No, don't own	67
province	2	2010	Yes, do own	125
province	3	2010	Don't know	1
province	3	2010	No, don't own	88
province	3	2010	Yes, do own	47
province	4	2010	No, don't own	63
province	4	2010	Yes, do own	23
province	5	2010	Don't know	1
province	5	2010	No, don't own	74
province	5	2010	Yes, do own	148
province	6	2010	No, don't own	44
province	6	2010	Yes, do own	20
province	8	2010	No, don't own	42
province	8	2010	Yes, do own	22
province	7	2010	No, don't own	69
province	7	2010	Yes, do own	27
province	9	2010	No, don't own	88
province	9	2010	Yes, do own	48
province	10	2010	No, don't own	44
province	10	2010	Yes, do own	36
country	ZM	2010	Yes, do own	548
country	ZM	2010	No, don't own	647
country	ZM	2010	Don't know	2
\.


--
-- Name: own_television pk_own_television; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_television
    ADD CONSTRAINT pk_own_television PRIMARY KEY (geo_level, geo_code, geo_version, own_television);


--
-- PostgreSQL database dump complete
--

