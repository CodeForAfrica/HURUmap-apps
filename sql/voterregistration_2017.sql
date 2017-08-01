-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.voterregistration_2017 DROP CONSTRAINT IF EXISTS voterregistration_2017_pkey;
DROP TABLE IF EXISTS public.voterregistration_2017;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: voterregistration_2017; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE voterregistration_2017 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "voterregistration_2017" character varying(128) NOT NULL,
    total float NOT NULL
);



ALTER TABLE ONLY voterregistration_2017
    ADD CONSTRAINT voterregistration_2017_pkey PRIMARY KEY (geo_level, geo_code, "voterregistration_2017");


--
-- PostgreSQL database dump complete
--

