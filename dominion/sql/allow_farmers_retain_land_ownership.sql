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

ALTER TABLE IF EXISTS ONLY public.allow_farmers_retain_land_ownership DROP CONSTRAINT IF EXISTS pk_allow_farmers_retain_land_ownership;
DROP TABLE IF EXISTS public.allow_farmers_retain_land_ownership;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: allow_farmers_retain_land_ownership; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.allow_farmers_retain_land_ownership (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    allow_farmers_retain_land_ownership character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: allow_farmers_retain_land_ownership; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.allow_farmers_retain_land_ownership (geo_level, geo_code, geo_version, allow_farmers_retain_land_ownership, total) FROM stdin;
level1	ZA_1_003	2016	Strongly Disagree	21
level1	ZA_1_003	2016	Disagree	12
level1	ZA_1_003	2016	Neither Agree Nor Disagree	5
level1	ZA_1_003	2016	Agree	40
level1	ZA_1_003	2016	Strongly Agree	18
level1	ZA_1_003	2016	Refused	1
level1	ZA_1_003	2016	Don't know	4
level1	ZA_1_002	2016	Strongly Disagree	9
level1	ZA_1_002	2016	Disagree	12
level1	ZA_1_002	2016	Neither Agree Nor Disagree	10
level1	ZA_1_002	2016	Agree	26
level1	ZA_1_002	2016	Strongly Agree	33
level1	ZA_1_002	2016	Refused	0
level1	ZA_1_002	2016	Don't know	10
level1	ZA_1_009	2016	Strongly Disagree	7
level1	ZA_1_009	2016	Disagree	15
level1	ZA_1_009	2016	Neither Agree Nor Disagree	15
level1	ZA_1_009	2016	Agree	31
level1	ZA_1_009	2016	Strongly Agree	19
level1	ZA_1_009	2016	Refused	0
level1	ZA_1_009	2016	Don't know	14
level1	ZA_1_001	2016	Strongly Disagree	9
level1	ZA_1_001	2016	Disagree	11
level1	ZA_1_001	2016	Neither Agree Nor Disagree	22
level1	ZA_1_001	2016	Agree	35
level1	ZA_1_001	2016	Strongly Agree	14
level1	ZA_1_001	2016	Refused	1
level1	ZA_1_001	2016	Don't know	9
level1	ZA_1_005	2016	Strongly Disagree	10
level1	ZA_1_005	2016	Disagree	14
level1	ZA_1_005	2016	Neither Agree Nor Disagree	2
level1	ZA_1_005	2016	Agree	47
level1	ZA_1_005	2016	Strongly Agree	24
level1	ZA_1_005	2016	Refused	0
level1	ZA_1_005	2016	Don't know	3
level1	ZA_1_004	2016	Strongly Disagree	4
level1	ZA_1_004	2016	Disagree	20
level1	ZA_1_004	2016	Neither Agree Nor Disagree	2
level1	ZA_1_004	2016	Agree	32
level1	ZA_1_004	2016	Strongly Agree	25
level1	ZA_1_004	2016	Refused	0
level1	ZA_1_004	2016	Don't know	17
level1	ZA_1_007	2016	Strongly Disagree	4
level1	ZA_1_007	2016	Disagree	19
level1	ZA_1_007	2016	Neither Agree Nor Disagree	16
level1	ZA_1_007	2016	Agree	33
level1	ZA_1_007	2016	Strongly Agree	12
level1	ZA_1_007	2016	Refused	0
level1	ZA_1_007	2016	Don't know	16
level1	ZA_1_006	2016	Strongly Disagree	3
level1	ZA_1_006	2016	Disagree	18
level1	ZA_1_006	2016	Neither Agree Nor Disagree	15
level1	ZA_1_006	2016	Agree	33
level1	ZA_1_006	2016	Strongly Agree	15
level1	ZA_1_006	2016	Refused	0
level1	ZA_1_006	2016	Don't know	18
level1	ZA_1_008	2016	Strongly Disagree	8
level1	ZA_1_008	2016	Disagree	17
level1	ZA_1_008	2016	Neither Agree Nor Disagree	1
level1	ZA_1_008	2016	Agree	34
level1	ZA_1_008	2016	Strongly Agree	30
level1	ZA_1_008	2016	Refused	0
level1	ZA_1_008	2016	Don't know	10
country	ZA	2016	Agree	311
country	ZA	2016	Disagree	136
country	ZA	2016	Don't know	100
country	ZA	2016	Neither Agree Nor Disagree	88
country	ZA	2016	Refused	1
country	ZA	2016	Strongly Agree	190
country	ZA	2016	Strongly Disagree	74
\.


--
-- Name: allow_farmers_retain_land_ownership pk_allow_farmers_retain_land_ownership; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.allow_farmers_retain_land_ownership
    ADD CONSTRAINT pk_allow_farmers_retain_land_ownership PRIMARY KEY (geo_level, geo_code, geo_version, allow_farmers_retain_land_ownership);


--
-- PostgreSQL database dump complete
--

