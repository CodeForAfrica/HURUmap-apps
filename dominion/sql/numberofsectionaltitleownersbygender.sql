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

ALTER TABLE IF EXISTS ONLY public.numberofsectionaltitleownersbygender DROP CONSTRAINT IF EXISTS pk_numberofsectionaltitleownersbygender;
DROP TABLE IF EXISTS public.numberofsectionaltitleownersbygender;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberofsectionaltitleownersbygender; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.numberofsectionaltitleownersbygender (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of sectional title owners by gender" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: numberofsectionaltitleownersbygender; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.numberofsectionaltitleownersbygender (geo_level, geo_code, geo_version, "number of sectional title owners by gender", total) FROM stdin;
level1	ZA_1_002	2009	Female	16059
level1	ZA_1_004	2009	Female	13998
level1	ZA_1_007	2009	Female	184221
level1	ZA_1_009	2009	Female	80483
level1	ZA_1_008	2009	Female	5603
level1	ZA_1_006	2009	Female	8945
level1	ZA_1_003	2009	Female	465
level1	ZA_1_001	2009	Female	57388
country	ZA	2009	Female	371525
level1	ZA_1_002	2009	Male	13389
level1	ZA_1_004	2009	Male	11535
level1	ZA_1_007	2009	Male	162642
level1	ZA_1_009	2009	Male	69834
level1	ZA_1_008	2009	Male	5823
level1	ZA_1_006	2009	Male	9037
level1	ZA_1_003	2009	Male	346
level1	ZA_1_001	2009	Male	51681
country	ZA	2009	Male	328295
level1	ZA_1_002	2009	Other	714
level1	ZA_1_004	2009	Other	311
level1	ZA_1_007	2009	Other	13939
level1	ZA_1_009	2009	Other	3789
level1	ZA_1_008	2009	Other	292
level1	ZA_1_006	2009	Other	412
level1	ZA_1_003	2009	Other	6
level1	ZA_1_001	2009	Other	7447
country	ZA	2009	Other	27146
level1	ZA_1_005	2009	Female	4363
level1	ZA_1_005	2009	Male	4008
level1	ZA_1_005	2009	Other	236
\.


--
-- Name: numberofsectionaltitleownersbygender pk_numberofsectionaltitleownersbygender; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.numberofsectionaltitleownersbygender
    ADD CONSTRAINT pk_numberofsectionaltitleownersbygender PRIMARY KEY (geo_level, geo_code, geo_version, "number of sectional title owners by gender");


--
-- PostgreSQL database dump complete
--

