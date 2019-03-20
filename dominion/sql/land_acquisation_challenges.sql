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

ALTER TABLE IF EXISTS ONLY public.land_acquisation_challenges DROP CONSTRAINT IF EXISTS pk_land_acquisation_challenges;
DROP TABLE IF EXISTS public.land_acquisation_challenges;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: land_acquisation_challenges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.land_acquisation_challenges (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    land_acquisation_challenges character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: land_acquisation_challenges; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.land_acquisation_challenges (geo_level, geo_code, geo_version, land_acquisation_challenges, total) FROM stdin;
level1	ZA_1_003	2016	There are no challenges	2
level1	ZA_1_003	2016	Traditional leaders that favour certain groups of people	9
level1	ZA_1_003	2016	Difficulties in getting title documents	12
level1	ZA_1_003	2016	Unscrupulous sellers	12
level1	ZA_1_003	2016	Land is too expensive	23
level1	ZA_1_003	2016	Land is racialized	15
level1	ZA_1_003	2016	Land scarcity	22
level1	ZA_1_003	2016	None of these	2
level1	ZA_1_003	2016	Refused	1
level1	ZA_1_003	2016	Don't know/Haven't heard enough	2
level1	ZA_1_002	2016	There are no challenges	6
level1	ZA_1_002	2016	Traditional leaders that favour certain groups of people	5
level1	ZA_1_002	2016	Difficulties in getting title documents	11
level1	ZA_1_002	2016	Unscrupulous sellers	7
level1	ZA_1_002	2016	Land is too expensive	31
level1	ZA_1_002	2016	Land is racialized	20
level1	ZA_1_002	2016	Land scarcity	16
level1	ZA_1_002	2016	None of these	0
level1	ZA_1_002	2016	Refused	0
level1	ZA_1_002	2016	Don't know/Haven't heard enough	4
level1	ZA_1_009	2016	There are no challenges	2
level1	ZA_1_009	2016	Traditional leaders that favour certain groups of people	3
level1	ZA_1_009	2016	Difficulties in getting title documents	12
level1	ZA_1_009	2016	Unscrupulous sellers	6
level1	ZA_1_009	2016	Land is too expensive	37
level1	ZA_1_009	2016	Land is racialized	16
level1	ZA_1_009	2016	Land scarcity	17
level1	ZA_1_009	2016	None of these	1
level1	ZA_1_009	2016	Refused	0
level1	ZA_1_009	2016	Don't know/Haven't heard enough	6
level1	ZA_1_001	2016	There are no challenges	3
level1	ZA_1_001	2016	Traditional leaders that favour certain groups of people	6
level1	ZA_1_001	2016	Difficulties in getting title documents	12
level1	ZA_1_001	2016	Unscrupulous sellers	9
level1	ZA_1_001	2016	Land is too expensive	16
level1	ZA_1_001	2016	Land is racialized	15
level1	ZA_1_001	2016	Land scarcity	16
level1	ZA_1_001	2016	None of these	5
level1	ZA_1_001	2016	Refused	1
level1	ZA_1_001	2016	Don't know/Haven't heard enough	17
level1	ZA_1_005	2016	There are no challenges	5
level1	ZA_1_005	2016	Traditional leaders that favour certain groups of people	13
level1	ZA_1_005	2016	Difficulties in getting title documents	10
level1	ZA_1_005	2016	Unscrupulous sellers	1
level1	ZA_1_005	2016	Land is too expensive	36
level1	ZA_1_005	2016	Land is racialized	13
level1	ZA_1_005	2016	Land scarcity	18
level1	ZA_1_005	2016	None of these	1
level1	ZA_1_005	2016	Refused	0
level1	ZA_1_005	2016	Don't know/Haven't heard enough	3
level1	ZA_1_004	2016	There are no challenges	21
level1	ZA_1_004	2016	Traditional leaders that favour certain groups of people	1
level1	ZA_1_004	2016	Difficulties in getting title documents	8
level1	ZA_1_004	2016	Unscrupulous sellers	3
level1	ZA_1_004	2016	Land is too expensive	22
level1	ZA_1_004	2016	Land is racialized	12
level1	ZA_1_004	2016	Land scarcity	26
level1	ZA_1_004	2016	None of these	2
level1	ZA_1_004	2016	Refused	0
level1	ZA_1_004	2016	Don't know/Haven't heard enough	4
level1	ZA_1_007	2016	There are no challenges	1
level1	ZA_1_007	2016	Traditional leaders that favour certain groups of people	7
level1	ZA_1_007	2016	Difficulties in getting title documents	8
level1	ZA_1_007	2016	Unscrupulous sellers	7
level1	ZA_1_007	2016	Land is too expensive	21
level1	ZA_1_007	2016	Land is racialized	27
level1	ZA_1_007	2016	Land scarcity	12
level1	ZA_1_007	2016	None of these	2
level1	ZA_1_007	2016	Refused	0
level1	ZA_1_007	2016	Don't know/Haven't heard enough	15
level1	ZA_1_006	2016	There are no challenges	10
level1	ZA_1_006	2016	Traditional leaders that favour certain groups of people	0
level1	ZA_1_006	2016	Difficulties in getting title documents	17
level1	ZA_1_006	2016	Unscrupulous sellers	2
level1	ZA_1_006	2016	Land is too expensive	24
level1	ZA_1_006	2016	Land is racialized	15
level1	ZA_1_006	2016	Land scarcity	20
level1	ZA_1_006	2016	None of these	0
level1	ZA_1_006	2016	Refused	0
level1	ZA_1_006	2016	Don't know/Haven't heard enough	12
level1	ZA_1_008	2016	There are no challenges	0
level1	ZA_1_008	2016	Traditional leaders that favour certain groups of people	10
level1	ZA_1_008	2016	Difficulties in getting title documents	4
level1	ZA_1_008	2016	Unscrupulous sellers	3
level1	ZA_1_008	2016	Land is too expensive	44
level1	ZA_1_008	2016	Land is racialized	18
level1	ZA_1_008	2016	Land scarcity	11
level1	ZA_1_008	2016	None of these	1
level1	ZA_1_008	2016	Refused	0
level1	ZA_1_008	2016	Don't know/Haven't heard enough	9
country	ZA	2016	Difficulties in getting title documents	94
country	ZA	2016	Don't know/Haven't heard enough	72
country	ZA	2016	Land is racialized	151
country	ZA	2016	Land is too expensive	254
country	ZA	2016	Land scarcity	158
country	ZA	2016	None of these	16
country	ZA	2016	Refused	1
country	ZA	2016	There are no challenges	50
country	ZA	2016	Traditional leaders that favour certain groups of people	53
country	ZA	2016	Unscrupulous sellers	52
\.


--
-- Name: land_acquisation_challenges pk_land_acquisation_challenges; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.land_acquisation_challenges
    ADD CONSTRAINT pk_land_acquisation_challenges PRIMARY KEY (geo_level, geo_code, geo_version, land_acquisation_challenges);


--
-- PostgreSQL database dump complete
--

