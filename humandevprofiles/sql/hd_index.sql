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

ALTER TABLE IF EXISTS ONLY public.hd_index DROP CONSTRAINT IF EXISTS pk_hd_index;
DROP TABLE IF EXISTS public.hd_index;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: hd_index; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE hd_index (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "Rank" character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: hd_index; Type: TABLE DATA; Schema: public; Owner: -
--

COPY hd_index (geo_level, geo_code, geo_version, "Rank", year, total) FROM stdin;
country	NGA	2011	152	2003	0
country	SEN	2011	162	2003	0
country	TZA	2011	151	2003	0
country	NGA	2011	152	2004	0
country	SEN	2011	162	2004	0
country	TZA	2011	151	2004	0
country	NGA	2011	152	2005	0
country	SEN	2011	162	2005	0
country	TZA	2011	151	2005	0
country	NGA	2011	152	2006	0
country	SEN	2011	162	2006	0
country	TZA	2011	151	2006	0
country	NGA	2011	152	2007	0
country	SEN	2011	162	2007	0
country	TZA	2011	151	2007	0
country	NGA	2011	152	2008	0
country	SEN	2011	162	2008	0
country	TZA	2011	151	2008	0
country	NGA	2011	152	2009	0
country	SEN	2011	162	2009	0
country	TZA	2011	151	2009	0
country	NGA	2011	152	2010	1
country	SEN	2011	162	2010	0
country	TZA	2011	151	2010	0
country	NGA	2011	152	2011	1
country	SEN	2011	162	2011	0
country	TZA	2011	151	2011	1
country	NGA	2011	152	2012	1
country	SEN	2011	162	2012	0
country	TZA	2011	151	2012	1
country	NGA	2011	152	2013	1
country	SEN	2011	162	2013	0
country	TZA	2011	151	2013	1
country	NGA	2011	152	2014	1
country	SEN	2011	162	2014	0
country	TZA	2011	151	2014	1
country	NGA	2011	152	2015	1
country	SEN	2011	162	2015	0
country	TZA	2011	151	2015	1
\.


--
-- Name: hd_index pk_hd_index; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY hd_index
    ADD CONSTRAINT pk_hd_index PRIMARY KEY (geo_level, geo_code, geo_version, "Rank", year);


--
-- PostgreSQL database dump complete
--

