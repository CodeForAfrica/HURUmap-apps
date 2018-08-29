--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.numberoflandownerspergender DROP CONSTRAINT IF EXISTS pk_numberoflandownerspergender;
DROP TABLE IF EXISTS public.numberoflandownerspergender;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberoflandownerspergender; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.numberoflandownerspergender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of land owners per gender" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.numberoflandownerspergender OWNER TO our_land;

--
-- Data for Name: numberoflandownerspergender; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.numberoflandownerspergender (geo_level, geo_code, geo_version, "number of land owners per gender", total) FROM stdin;
province	EC	2011	Female	6145
province	FS	2011	Female	9182
province	GT	2011	Female	26690
province	KZN	2011	Female	12674
province	MP	2011	Female	7139
province	NW	2011	Female	11154
province	NC	2011	Female	4536
province	WC	2011	Female	9395
country	ZA	2011	Female	95050
province	EC	2011	Male	3016
province	FS	2011	Male	5119
province	GT	2011	Male	19139
province	KZN	2011	Male	8780
province	MP	2011	Male	4480
province	NW	2011	Male	6739
province	NC	2011	Male	2318
province	WC	2011	Male	5775
country	ZA	2011	Male	60649
province	EC	2011	Other	2519
province	FS	2011	Other	876
province	GT	2011	Other	1762
province	KZN	2011	Other	8538
province	MP	2011	Other	1401
province	NW	2011	Other	6228
province	NC	2011	Other	333
province	WC	2011	Other	1681
country	ZA	2011	Other	25833
province	LIM	2011	Female	8135
province	LIM	2011	Male	5283
province	LIM	2011	Other	2495
\.


--
-- Name: numberoflandownerspergender pk_numberoflandownerspergender; Type: CONSTRAINT; Schema: public; Owner: our_land
--

ALTER TABLE IF EXISTS ONLY public.numberoflandownerspergender
    ADD CONSTRAINT pk_numberoflandownerspergender PRIMARY KEY (geo_level, geo_code, geo_version, "number of land owners per gender");


--
-- PostgreSQL database dump complete
--

