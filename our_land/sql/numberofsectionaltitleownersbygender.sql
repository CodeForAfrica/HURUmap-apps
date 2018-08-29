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

ALTER TABLE ONLY public.numberofsectionaltitleownersbygender DROP CONSTRAINT pk_numberofsectionaltitleownersbygender;
DROP TABLE public.numberofsectionaltitleownersbygender;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberofsectionaltitleownersbygender; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.numberofsectionaltitleownersbygender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of sectional title owners by gender" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.numberofsectionaltitleownersbygender OWNER TO our_land;

--
-- Data for Name: numberofsectionaltitleownersbygender; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.numberofsectionaltitleownersbygender (geo_level, geo_code, geo_version, "number of sectional title owners by gender", total) FROM stdin;
province	EC	2011	Female	16059
province	FS	2011	Female	13998
province	GT	2011	Female	184221
province	KZN	2011	Female	80483
province	MP	2011	Female	5603
province	NW	2011	Female	8945
province	NC	2011	Female	465
province	WC	2011	Female	57388
country	ZA	2011	Female	371525
province	EC	2011	Male	13389
province	FS	2011	Male	11535
province	GT	2011	Male	162642
province	KZN	2011	Male	69834
province	MP	2011	Male	5823
province	NW	2011	Male	9037
province	NC	2011	Male	346
province	WC	2011	Male	51681
country	ZA	2011	Male	328295
province	EC	2011	Other	714
province	FS	2011	Other	311
province	GT	2011	Other	13939
province	KZN	2011	Other	3789
province	MP	2011	Other	292
province	NW	2011	Other	412
province	NC	2011	Other	6
province	WC	2011	Other	7447
country	ZA	2011	Other	27146
province	LIM	2011	Female	4363
province	LIM	2011	Male	4008
province	LIM	2011	Other	236
\.


--
-- Name: numberofsectionaltitleownersbygender pk_numberofsectionaltitleownersbygender; Type: CONSTRAINT; Schema: public; Owner: our_land
--

ALTER TABLE ONLY public.numberofsectionaltitleownersbygender
    ADD CONSTRAINT pk_numberofsectionaltitleownersbygender PRIMARY KEY (geo_level, geo_code, geo_version, "number of sectional title owners by gender");


--
-- PostgreSQL database dump complete
--

