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

ALTER TABLE IF EXISTS ONLY public.access_to_information DROP CONSTRAINT IF EXISTS pk_access_to_information;
DROP TABLE IF EXISTS public.access_to_information;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: access_to_information; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.access_to_information (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    access_to_information character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: access_to_information; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.access_to_information (geo_level, geo_code, geo_version, access_to_information, total) FROM stdin;
level1	ZA_1_003	2016	Not at all likely	37
level1	ZA_1_003	2016	Not very likely	8
level1	ZA_1_003	2016	Somewhat likely	21
level1	ZA_1_003	2016	Very likely	25
level1	ZA_1_003	2016	Refused	0
level1	ZA_1_003	2016	Don't know/Haven't heard	9
level1	ZA_1_002	2016	Not at all likely	18
level1	ZA_1_002	2016	Not very likely	17
level1	ZA_1_002	2016	Somewhat likely	39
level1	ZA_1_002	2016	Very likely	18
level1	ZA_1_002	2016	Refused	0
level1	ZA_1_002	2016	Don't know/Haven't heard	7
level1	ZA_1_009	2016	Not at all likely	50
level1	ZA_1_009	2016	Not very likely	16
level1	ZA_1_009	2016	Somewhat likely	18
level1	ZA_1_009	2016	Very likely	13
level1	ZA_1_009	2016	Refused	0
level1	ZA_1_009	2016	Don't know/Haven't heard	2
level1	ZA_1_001	2016	Not at all likely	36
level1	ZA_1_001	2016	Not very likely	19
level1	ZA_1_001	2016	Somewhat likely	27
level1	ZA_1_001	2016	Very likely	9
level1	ZA_1_001	2016	Refused	0
level1	ZA_1_001	2016	Don't know/Haven't heard	10
level1	ZA_1_005	2016	Not at all likely	37
level1	ZA_1_005	2016	Not very likely	17
level1	ZA_1_005	2016	Somewhat likely	8
level1	ZA_1_005	2016	Very likely	29
level1	ZA_1_005	2016	Refused	0
level1	ZA_1_005	2016	Don't know/Haven't heard	8
level1	ZA_1_004	2016	Not at all likely	42
level1	ZA_1_004	2016	Not very likely	9
level1	ZA_1_004	2016	Somewhat likely	16
level1	ZA_1_004	2016	Very likely	21
level1	ZA_1_004	2016	Refused	0
level1	ZA_1_004	2016	Don't know/Haven't heard	12
level1	ZA_1_007	2016	Not at all likely	36
level1	ZA_1_007	2016	Not very likely	15
level1	ZA_1_007	2016	Somewhat likely	33
level1	ZA_1_007	2016	Very likely	10
level1	ZA_1_007	2016	Refused	0
level1	ZA_1_007	2016	Don't know/Haven't heard	6
level1	ZA_1_006	2016	Not at all likely	44
level1	ZA_1_006	2016	Not very likely	20
level1	ZA_1_006	2016	Somewhat likely	20
level1	ZA_1_006	2016	Very likely	15
level1	ZA_1_006	2016	Refused	0
level1	ZA_1_006	2016	Don't know/Haven't heard	2
level1	ZA_1_008	2016	Not at all likely	39
level1	ZA_1_008	2016	Not very likely	16
level1	ZA_1_008	2016	Somewhat likely	17
level1	ZA_1_008	2016	Very likely	19
level1	ZA_1_008	2016	Refused	0
level1	ZA_1_008	2016	Don't know/Haven't heard	10
country	ZA	2016	Don't know/Haven't heard	65
country	ZA	2016	Not at all likely	339
country	ZA	2016	Not very likely	138
country	ZA	2016	Refused	0
country	ZA	2016	Somewhat likely	200
country	ZA	2016	Very likely	158
\.


--
-- Name: access_to_information pk_access_to_information; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.access_to_information
    ADD CONSTRAINT pk_access_to_information PRIMARY KEY (geo_level, geo_code, geo_version, access_to_information);


--
-- PostgreSQL database dump complete
--
