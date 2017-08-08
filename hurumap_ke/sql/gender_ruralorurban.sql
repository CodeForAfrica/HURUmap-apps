--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 10:56:48 EAT

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
-- TOC entry 209 (class 1259 OID 17831)
-- Name: gender_ruralorurban; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE gender_ruralorurban (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    gender character varying(128) NOT NULL,
    "rural or urban" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE gender_ruralorurban OWNER TO hurumap_ke;

--
-- TOC entry 3177 (class 0 OID 17831)
-- Dependencies: 209
-- Data for Name: gender_ruralorurban; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY gender_ruralorurban (geo_level, geo_code, gender, "rural or urban", total) FROM stdin;
\.


--
-- TOC entry 3062 (class 2606 OID 17987)
-- Name: gender_ruralorurban gender_ruralorurban_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY gender_ruralorurban
    ADD CONSTRAINT gender_ruralorurban_pkey PRIMARY KEY (geo_level, geo_code, gender, "rural or urban");


-- Completed on 2017-07-31 10:57:05 EAT

--
-- PostgreSQL database dump complete
--

