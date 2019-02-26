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
province	10	2009	No, don't own	46
province	10	2009	Yes, do own	106
province	19	2009	No, don't own	88
province	19	2009	Yes, do own	360
province	11	2009	No, don't own	211
province	11	2009	Yes, do own	93
province	12	2009	No, don't own	137
province	12	2009	Yes, do own	71
province	13	2009	No, don't own	178
province	13	2009	Yes, do own	70
province	14	2009	No, don't own	167
province	14	2009	Yes, do own	105
province	18	2009	No, don't own	192
province	18	2009	Yes, do own	56
province	15	2009	No, don't own	100
province	15	2009	Yes, do own	28
province	16	2009	No, don't own	85
province	16	2009	Yes, do own	19
province	17	2009	No, don't own	182
province	17	2009	Yes, do own	106
country	ZW	2009	Yes, do own	1014
country	ZW	2009	No, don't own	1386
\.


--
-- Name: own_television pk_own_television; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_television
    ADD CONSTRAINT pk_own_television PRIMARY KEY (geo_level, geo_code, geo_version, own_television);


--
-- PostgreSQL database dump complete
--

