--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 10:50:41 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 17749)
-- Name: agegroup_gender; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE agegroup_gender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    gender character varying(128) NOT NULL,
    "age group" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE agegroup_gender OWNER TO hurumap_ke;

--
-- TOC entry 3177 (class 0 OID 17749)
-- Dependencies: 181
-- Data for Name: agegroup_gender; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY agegroup_gender (geo_level, geo_code, gender, "age group", total) FROM stdin;
\.


--
-- TOC entry 3062 (class 2606 OID 17935)
-- Name: agegroup_gender agegroup_gender_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY agegroup_gender
    ADD CONSTRAINT agegroup_gender_pkey PRIMARY KEY (geo_level, geo_code, gender, "age group");


-- Completed on 2017-07-31 10:50:59 EAT

--
-- PostgreSQL database dump complete
--

