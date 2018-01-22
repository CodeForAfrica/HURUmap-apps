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

ALTER TABLE IF EXISTS ONLY public.hiv_prevalence DROP CONSTRAINT IF EXISTS pk_hiv_prevalence;
DROP TABLE IF EXISTS public.hiv_prevalence;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: hiv_prevalence; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE hiv_prevalence (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: hiv_prevalence; Type: TABLE DATA; Schema: public; Owner: -
--

COPY hiv_prevalence (geo_level, geo_code, geo_version, year, total) FROM stdin;
country	NGA	2011	2000	4
country	SEN	2011	2000	1
country	TZA	2011	2000	9
country	NGA	2011	2001	4
country	SEN	2011	2001	1
country	TZA	2011	2001	9
country	NGA	2011	2002	4
country	SEN	2011	2002	1
country	TZA	2011	2002	8
country	NGA	2011	2003	4
country	SEN	2011	2003	1
country	TZA	2011	2003	8
country	NGA	2011	2004	4
country	SEN	2011	2004	1
country	TZA	2011	2004	8
country	NGA	2011	2005	4
country	SEN	2011	2005	1
country	TZA	2011	2005	7
country	NGA	2011	2006	4
country	SEN	2011	2006	1
country	TZA	2011	2006	7
country	NGA	2011	2007	4
country	SEN	2011	2007	1
country	TZA	2011	2007	6
country	NGA	2011	2008	4
country	SEN	2011	2008	1
country	TZA	2011	2008	6
country	NGA	2011	2009	4
country	SEN	2011	2009	1
country	TZA	2011	2009	6
country	NGA	2011	2010	3
country	SEN	2011	2010	1
country	TZA	2011	2010	6
country	NGA	2011	2011	3
country	SEN	2011	2011	1
country	TZA	2011	2011	5
country	NGA	2011	2012	3
country	SEN	2011	2012	1
country	TZA	2011	2012	5
country	NGA	2011	2013	3
country	SEN	2011	2013	1
country	TZA	2011	2013	5
country	NGA	2011	2014	3
country	SEN	2011	2014	1
country	TZA	2011	2014	5
country	NGA	2011	2015	3
country	SEN	2011	2015	1
country	TZA	2011	2015	5
country	NGA	2011	2016	3
country	SEN	2011	2016	0
country	TZA	2011	2016	5
\.


--
-- Name: hiv_prevalence pk_hiv_prevalence; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY hiv_prevalence
    ADD CONSTRAINT pk_hiv_prevalence PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--

