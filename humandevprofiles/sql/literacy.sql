--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.literacy DROP CONSTRAINT IF EXISTS pk_literacy;
DROP TABLE IF EXISTS public.literacy;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: literacy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE literacy (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: literacy; Type: TABLE DATA; Schema: public; Owner: -
--

COPY literacy (geo_level, geo_code, geo_version, year, total) FROM stdin;
country	NGA	2011	1991	55
country	NGA	2011	2003	55
country	NGA	2011	2008	51
country	NGA	2011	2015	60
country	SEN	2011	1988	27
country	SEN	2011	2002	39
country	SEN	2011	2006	42
country	SEN	2011	2009	50
country	SEN	2011	2011	52
country	SEN	2011	2013	43
country	SEN	2011	2015	56
country	TZA	2011	1988	59
country	TZA	2011	2002	69
country	TZA	2011	2010	68
country	TZA	2011	2012	78
country	TZA	2011	2015	80
\.


--
-- Name: literacy pk_literacy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY literacy
    ADD CONSTRAINT pk_literacy PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--

