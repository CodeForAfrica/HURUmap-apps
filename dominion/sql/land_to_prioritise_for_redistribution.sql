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

ALTER TABLE IF EXISTS ONLY public.land_to_prioritise_for_redistribution DROP CONSTRAINT IF EXISTS pk_land_to_prioritise_for_redistribution;
DROP TABLE IF EXISTS public.land_to_prioritise_for_redistribution;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: land_to_prioritise_for_redistribution; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.land_to_prioritise_for_redistribution (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    land_to_prioritise_for_redistribution character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: land_to_prioritise_for_redistribution; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.land_to_prioritise_for_redistribution (geo_level, geo_code, geo_version, land_to_prioritise_for_redistribution, total) FROM stdin;
level1	ZA_1_002	2009	Land should not be redistributed	5
level1	ZA_1_002	2009	Agricultural land	22
level1	ZA_1_002	2009	Urban occupied land	2
level1	ZA_1_002	2009	Urban vacant land	11
level1	ZA_1_002	2009	Land taken during forced removals	40
level1	ZA_1_002	2009	Communal land in rural areas	9
level1	ZA_1_002	2009	None of these	1
level1	ZA_1_002	2009	All of the land	9
level1	ZA_1_002	2009	Refused	1
level1	ZA_1_002	2009	Don't know/Haven't heard enough	1
level1	ZA_1_004	2009	Land should not be redistributed	5
level1	ZA_1_004	2009	Agricultural land	31
level1	ZA_1_004	2009	Urban occupied land	5
level1	ZA_1_004	2009	Urban vacant land	7
level1	ZA_1_004	2009	Land taken during forced removals	33
level1	ZA_1_004	2009	Communal land in rural areas	7
level1	ZA_1_004	2009	None of these	0
level1	ZA_1_004	2009	All of the land	5
level1	ZA_1_004	2009	Refused	0
level1	ZA_1_004	2009	Don't know/Haven't heard enough	7
level1	ZA_1_007	2009	Land should not be redistributed	1
level1	ZA_1_007	2009	Agricultural land	30
level1	ZA_1_007	2009	Urban occupied land	9
level1	ZA_1_007	2009	Urban vacant land	16
level1	ZA_1_007	2009	Land taken during forced removals	24
level1	ZA_1_007	2009	Communal land in rural areas	11
level1	ZA_1_007	2009	None of these	1
level1	ZA_1_007	2009	All of the land	1
level1	ZA_1_007	2009	Refused	0
level1	ZA_1_007	2009	Don't know/Haven't heard enough	7
level1	ZA_1_009	2009	Land should not be redistributed	6
level1	ZA_1_009	2009	Agricultural land	9
level1	ZA_1_009	2009	Urban occupied land	7
level1	ZA_1_009	2009	Urban vacant land	22
level1	ZA_1_009	2009	Land taken during forced removals	25
level1	ZA_1_009	2009	Communal land in rural areas	7
level1	ZA_1_009	2009	None of these	3
level1	ZA_1_009	2009	All of the land	2
level1	ZA_1_009	2009	Refused	2
level1	ZA_1_009	2009	Don't know/Haven't heard enough	18
level1	ZA_1_005	2009	Land should not be redistributed	1
level1	ZA_1_005	2009	Agricultural land	35
level1	ZA_1_005	2009	Urban occupied land	6
level1	ZA_1_005	2009	Urban vacant land	14
level1	ZA_1_005	2009	Land taken during forced removals	34
level1	ZA_1_005	2009	Communal land in rural areas	8
level1	ZA_1_005	2009	None of these	0
level1	ZA_1_005	2009	All of the land	1
level1	ZA_1_005	2009	Refused	0
level1	ZA_1_005	2009	Don't know/Haven't heard enough	2
level1	ZA_1_008	2009	Land should not be redistributed	27
level1	ZA_1_008	2009	Agricultural land	13
level1	ZA_1_008	2009	Urban occupied land	2
level1	ZA_1_008	2009	Urban vacant land	18
level1	ZA_1_008	2009	Land taken during forced removals	28
level1	ZA_1_008	2009	Communal land in rural areas	4
level1	ZA_1_008	2009	None of these	1
level1	ZA_1_008	2009	All of the land	1
level1	ZA_1_008	2009	Refused	0
level1	ZA_1_008	2009	Don't know/Haven't heard enough	7
level1	ZA_1_006	2009	Land should not be redistributed	0
level1	ZA_1_006	2009	Agricultural land	12
level1	ZA_1_006	2009	Urban occupied land	17
level1	ZA_1_006	2009	Urban vacant land	15
level1	ZA_1_006	2009	Land taken during forced removals	19
level1	ZA_1_006	2009	Communal land in rural areas	9
level1	ZA_1_006	2009	None of these	2
level1	ZA_1_006	2009	All of the land	2
level1	ZA_1_006	2009	Refused	0
level1	ZA_1_006	2009	Don't know/Haven't heard enough	24
level1	ZA_1_003	2009	Land should not be redistributed	13
level1	ZA_1_003	2009	Agricultural land	25
level1	ZA_1_003	2009	Urban occupied land	13
level1	ZA_1_003	2009	Urban vacant land	13
level1	ZA_1_003	2009	Land taken during forced removals	18
level1	ZA_1_003	2009	Communal land in rural areas	8
level1	ZA_1_003	2009	None of these	0
level1	ZA_1_003	2009	All of the land	0
level1	ZA_1_003	2009	Refused	0
level1	ZA_1_003	2009	Don't know/Haven't heard enough	13
level1	ZA_1_001	2009	Land should not be redistributed	1
level1	ZA_1_001	2009	Agricultural land	16
level1	ZA_1_001	2009	Urban occupied land	6
level1	ZA_1_001	2009	Urban vacant land	29
level1	ZA_1_001	2009	Land taken during forced removals	31
level1	ZA_1_001	2009	Communal land in rural areas	9
level1	ZA_1_001	2009	None of these	2
level1	ZA_1_001	2009	All of the land	1
level1	ZA_1_001	2009	Refused	1
level1	ZA_1_001	2009	Don't know/Haven't heard enough	6
country	ZA	2009	Agricultural land	192
country	ZA	2009	All of the land	22
country	ZA	2009	Communal land in rural areas	70
country	ZA	2009	Don't know/Haven't heard enough	85
country	ZA	2009	Land should not be redistributed	58
country	ZA	2009	Land taken during forced removals	250
country	ZA	2009	None of these	10
country	ZA	2009	Refused	3
country	ZA	2009	Urban occupied land	67
country	ZA	2009	Urban vacant land	143
\.


--
-- Name: land_to_prioritise_for_redistribution pk_land_to_prioritise_for_redistribution; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.land_to_prioritise_for_redistribution
    ADD CONSTRAINT pk_land_to_prioritise_for_redistribution PRIMARY KEY (geo_level, geo_code, geo_version, land_to_prioritise_for_redistribution);


--
-- PostgreSQL database dump complete
--

