--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP TABLE IF EXISTS public.land_traded_colour_transactions_2018;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: land_traded_colour_transactions_2018; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.land_traded_colour_transactions_2018 (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) DEFAULT ''::character varying NOT NULL,
    breakdown_cc character varying(128) NOT NULL,
    month_cc character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: land_traded_colour_transactions_2018; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.land_traded_colour_transactions_2018 (geo_level, geo_code, geo_version, breakdown_cc, month_cc, total) FROM stdin;
country	ZA	2016	Government Agriculture	DZA_1_003	5
country	ZA	2016	Government Urban	DZA_1_003	1
country	ZA	2016	Private	DZA_1_003	52
country	ZA	2016	Other	DZA_1_003	6
country	ZA	2016	Government Agriculture	Jan	2
country	ZA	2016	Government Urban	Jan	1
country	ZA	2016	Private	Jan	40
country	ZA	2016	Other	Jan	4
country	ZA	2016	Government Agriculture	Feb	3
country	ZA	2016	Government Urban	Feb	2
country	ZA	2016	Private	Feb	51
country	ZA	2016	Other	Feb	11
country	ZA	2016	Government Agriculture	Mar	9
country	ZA	2016	Government Urban	Mar	2
country	ZA	2016	Private	Mar	79
country	ZA	2016	Other	Mar	17
country	ZA	2016	Government Agriculture	Apr	2
country	ZA	2016	Government Urban	Apr	\N
country	ZA	2016	Private	Apr	58
country	ZA	2016	Other	Apr	7
country	ZA	2016	Government Agriculture	May	3
country	ZA	2016	Government Urban	May	1
country	ZA	2016	Private	May	65
country	ZA	2016	Other	May	8
country	ZA	2016	Government Agriculture	Jun	2
country	ZA	2016	Government Urban	Jun	\N
country	ZA	2016	Private	Jun	48
country	ZA	2016	Other	Jun	7
country	ZA	2016	Government Agriculture	Jul	6
country	ZA	2016	Government Urban	Jul	4
country	ZA	2016	Private	Jul	59
country	ZA	2016	Other	Jul	3
country	ZA	2016	Government Agriculture	Aug	2
country	ZA	2016	Government Urban	Aug	1
country	ZA	2016	Private	Aug	51
country	ZA	2016	Other	Aug	11
country	ZA	2016	Government Agriculture	Sep	5
country	ZA	2016	Government Urban	Sep	\N
country	ZA	2016	Private	Sep	41
country	ZA	2016	Other	Sep	5
country	ZA	2016	Government Agriculture	Oct	17
country	ZA	2016	Government Urban	Oct	3
country	ZA	2016	Private	Oct	60
country	ZA	2016	Other	Oct	17
country	ZA	2016	Government Agriculture	Nov	1
country	ZA	2016	Government Urban	Nov	\N
country	ZA	2016	Private	Nov	38
country	ZA	2016	Other	Nov	17
level1	ZA_1_003	2016	Government Agriculture	DZA_1_003	1
level1	ZA_1_003	2016	Government Urban	DZA_1_003	\N
level1	ZA_1_003	2016	Private	DZA_1_003	4
level1	ZA_1_003	2016	Other	DZA_1_003	\N
level1	ZA_1_003	2016	Government Agriculture	Jan	\N
level1	ZA_1_003	2016	Government Urban	Jan	\N
level1	ZA_1_003	2016	Private	Jan	1
level1	ZA_1_003	2016	Other	Jan	\N
level1	ZA_1_003	2016	Government Agriculture	Feb	\N
level1	ZA_1_003	2016	Government Urban	Feb	1
level1	ZA_1_003	2016	Private	Feb	2
level1	ZA_1_003	2016	Other	Feb	1
level1	ZA_1_003	2016	Government Agriculture	Mar	\N
level1	ZA_1_003	2016	Government Urban	Mar	\N
level1	ZA_1_003	2016	Private	Mar	4
level1	ZA_1_003	2016	Other	Mar	3
level1	ZA_1_003	2016	Government Agriculture	Apr	\N
level1	ZA_1_003	2016	Government Urban	Apr	\N
level1	ZA_1_003	2016	Private	Apr	6
level1	ZA_1_003	2016	Other	Apr	\N
level1	ZA_1_003	2016	Government Agriculture	May	\N
level1	ZA_1_003	2016	Government Urban	May	\N
level1	ZA_1_003	2016	Private	May	3
level1	ZA_1_003	2016	Other	May	\N
level1	ZA_1_003	2016	Government Agriculture	Jun	\N
level1	ZA_1_003	2016	Government Urban	Jun	\N
level1	ZA_1_003	2016	Private	Jun	5
level1	ZA_1_003	2016	Other	Jun	\N
level1	ZA_1_003	2016	Government Agriculture	Jul	\N
level1	ZA_1_003	2016	Government Urban	Jul	\N
level1	ZA_1_003	2016	Private	Jul	13
level1	ZA_1_003	2016	Other	Jul	\N
level1	ZA_1_003	2016	Government Agriculture	Aug	\N
level1	ZA_1_003	2016	Government Urban	Aug	\N
level1	ZA_1_003	2016	Private	Aug	5
level1	ZA_1_003	2016	Other	Aug	1
level1	ZA_1_003	2016	Government Agriculture	Sep	\N
level1	ZA_1_003	2016	Government Urban	Sep	\N
level1	ZA_1_003	2016	Private	Sep	6
level1	ZA_1_003	2016	Other	Sep	\N
level1	ZA_1_003	2016	Government Agriculture	Oct	1
level1	ZA_1_003	2016	Government Urban	Oct	\N
level1	ZA_1_003	2016	Private	Oct	3
level1	ZA_1_003	2016	Other	Oct	\N
level1	ZA_1_003	2016	Government Agriculture	Nov	\N
level1	ZA_1_003	2016	Government Urban	Nov	\N
level1	ZA_1_003	2016	Private	Nov	5
level1	ZA_1_003	2016	Other	Nov	1
level1	ZA_1_002	2016	Government Agriculture	DZA_1_003	\N
level1	ZA_1_002	2016	Government Urban	DZA_1_003	\N
level1	ZA_1_002	2016	Private	DZA_1_003	4
level1	ZA_1_002	2016	Other	DZA_1_003	1
level1	ZA_1_002	2016	Government Agriculture	Jan	2
level1	ZA_1_002	2016	Government Urban	Jan	\N
level1	ZA_1_002	2016	Private	Jan	1
level1	ZA_1_002	2016	Other	Jan	\N
level1	ZA_1_002	2016	Government Agriculture	Feb	\N
level1	ZA_1_002	2016	Government Urban	Feb	\N
level1	ZA_1_002	2016	Private	Feb	7
level1	ZA_1_002	2016	Other	Feb	\N
level1	ZA_1_002	2016	Government Agriculture	Mar	1
level1	ZA_1_002	2016	Government Urban	Mar	\N
level1	ZA_1_002	2016	Private	Mar	10
level1	ZA_1_002	2016	Other	Mar	2
level1	ZA_1_002	2016	Government Agriculture	Apr	\N
level1	ZA_1_002	2016	Government Urban	Apr	\N
level1	ZA_1_002	2016	Private	Apr	4
level1	ZA_1_002	2016	Other	Apr	1
level1	ZA_1_002	2016	Government Agriculture	May	\N
level1	ZA_1_002	2016	Government Urban	May	\N
level1	ZA_1_002	2016	Private	May	10
level1	ZA_1_002	2016	Other	May	1
level1	ZA_1_002	2016	Government Agriculture	Jun	\N
level1	ZA_1_002	2016	Government Urban	Jun	\N
level1	ZA_1_002	2016	Private	Jun	6
level1	ZA_1_002	2016	Other	Jun	1
level1	ZA_1_002	2016	Government Agriculture	Jul	3
level1	ZA_1_002	2016	Government Urban	Jul	\N
level1	ZA_1_002	2016	Private	Jul	7
level1	ZA_1_002	2016	Other	Jul	\N
level1	ZA_1_002	2016	Government Agriculture	Aug	\N
level1	ZA_1_002	2016	Government Urban	Aug	\N
level1	ZA_1_002	2016	Private	Aug	3
level1	ZA_1_002	2016	Other	Aug	2
level1	ZA_1_002	2016	Government Agriculture	Sep	\N
level1	ZA_1_002	2016	Government Urban	Sep	\N
level1	ZA_1_002	2016	Private	Sep	4
level1	ZA_1_002	2016	Other	Sep	1
level1	ZA_1_002	2016	Government Agriculture	Oct	4
level1	ZA_1_002	2016	Government Urban	Oct	\N
level1	ZA_1_002	2016	Private	Oct	6
level1	ZA_1_002	2016	Other	Oct	1
level1	ZA_1_002	2016	Government Agriculture	Nov	\N
level1	ZA_1_002	2016	Government Urban	Nov	\N
level1	ZA_1_002	2016	Private	Nov	3
level1	ZA_1_002	2016	Other	Nov	1
level1	ZA_1_009	2016	Government Agriculture	DZA_1_003	1
level1	ZA_1_009	2016	Government Urban	DZA_1_003	\N
level1	ZA_1_009	2016	Private	DZA_1_003	6
level1	ZA_1_009	2016	Other	DZA_1_003	\N
level1	ZA_1_009	2016	Government Agriculture	Jan	\N
level1	ZA_1_009	2016	Government Urban	Jan	1
level1	ZA_1_009	2016	Private	Jan	3
level1	ZA_1_009	2016	Other	Jan	1
level1	ZA_1_009	2016	Government Agriculture	Feb	1
level1	ZA_1_009	2016	Government Urban	Feb	\N
level1	ZA_1_009	2016	Private	Feb	5
level1	ZA_1_009	2016	Other	Feb	\N
level1	ZA_1_009	2016	Government Agriculture	Mar	\N
level1	ZA_1_009	2016	Government Urban	Mar	\N
level1	ZA_1_009	2016	Private	Mar	10
level1	ZA_1_009	2016	Other	Mar	3
level1	ZA_1_009	2016	Government Agriculture	Apr	\N
level1	ZA_1_009	2016	Government Urban	Apr	\N
level1	ZA_1_009	2016	Private	Apr	9
level1	ZA_1_009	2016	Other	Apr	\N
level1	ZA_1_009	2016	Government Agriculture	May	\N
level1	ZA_1_009	2016	Government Urban	May	\N
level1	ZA_1_009	2016	Private	May	7
level1	ZA_1_009	2016	Other	May	3
level1	ZA_1_009	2016	Government Agriculture	Jun	\N
level1	ZA_1_009	2016	Government Urban	Jun	\N
level1	ZA_1_009	2016	Private	Jun	10
level1	ZA_1_009	2016	Other	Jun	2
level1	ZA_1_009	2016	Government Agriculture	Jul	\N
level1	ZA_1_009	2016	Government Urban	Jul	2
level1	ZA_1_009	2016	Private	Jul	8
level1	ZA_1_009	2016	Other	Jul	\N
level1	ZA_1_009	2016	Government Agriculture	Aug	1
level1	ZA_1_009	2016	Government Urban	Aug	\N
level1	ZA_1_009	2016	Private	Aug	5
level1	ZA_1_009	2016	Other	Aug	1
level1	ZA_1_009	2016	Government Agriculture	Sep	\N
level1	ZA_1_009	2016	Government Urban	Sep	\N
level1	ZA_1_009	2016	Private	Sep	7
level1	ZA_1_009	2016	Other	Sep	1
level1	ZA_1_009	2016	Government Agriculture	Oct	4
level1	ZA_1_009	2016	Government Urban	Oct	1
level1	ZA_1_009	2016	Private	Oct	13
level1	ZA_1_009	2016	Other	Oct	3
level1	ZA_1_009	2016	Government Agriculture	Nov	\N
level1	ZA_1_009	2016	Government Urban	Nov	\N
level1	ZA_1_009	2016	Private	Nov	6
level1	ZA_1_009	2016	Other	Nov	5
level1	ZA_1_001	2016	Government Agriculture	DZA_1_003	1
level1	ZA_1_001	2016	Government Urban	DZA_1_003	1
level1	ZA_1_001	2016	Private	DZA_1_003	8
level1	ZA_1_001	2016	Other	DZA_1_003	\N
level1	ZA_1_001	2016	Government Agriculture	Jan	\N
level1	ZA_1_001	2016	Government Urban	Jan	\N
level1	ZA_1_001	2016	Private	Jan	6
level1	ZA_1_001	2016	Other	Jan	\N
level1	ZA_1_001	2016	Government Agriculture	Feb	1
level1	ZA_1_001	2016	Government Urban	Feb	\N
level1	ZA_1_001	2016	Private	Feb	4
level1	ZA_1_001	2016	Other	Feb	3
level1	ZA_1_001	2016	Government Agriculture	Mar	3
level1	ZA_1_001	2016	Government Urban	Mar	\N
level1	ZA_1_001	2016	Private	Mar	22
level1	ZA_1_001	2016	Other	Mar	2
level1	ZA_1_001	2016	Government Agriculture	Apr	\N
level1	ZA_1_001	2016	Government Urban	Apr	\N
level1	ZA_1_001	2016	Private	Apr	8
level1	ZA_1_001	2016	Other	Apr	1
level1	ZA_1_001	2016	Government Agriculture	May	\N
level1	ZA_1_001	2016	Government Urban	May	\N
level1	ZA_1_001	2016	Private	May	14
level1	ZA_1_001	2016	Other	May	1
level1	ZA_1_001	2016	Government Agriculture	Jun	\N
level1	ZA_1_001	2016	Government Urban	Jun	\N
level1	ZA_1_001	2016	Private	Jun	4
level1	ZA_1_001	2016	Other	Jun	\N
level1	ZA_1_001	2016	Government Agriculture	Jul	\N
level1	ZA_1_001	2016	Government Urban	Jul	\N
level1	ZA_1_001	2016	Private	Jul	10
level1	ZA_1_001	2016	Other	Jul	\N
level1	ZA_1_001	2016	Government Agriculture	Aug	\N
level1	ZA_1_001	2016	Government Urban	Aug	\N
level1	ZA_1_001	2016	Private	Aug	5
level1	ZA_1_001	2016	Other	Aug	2
level1	ZA_1_001	2016	Government Agriculture	Sep	\N
level1	ZA_1_001	2016	Government Urban	Sep	\N
level1	ZA_1_001	2016	Private	Sep	3
level1	ZA_1_001	2016	Other	Sep	1
level1	ZA_1_001	2016	Government Agriculture	Oct	\N
level1	ZA_1_001	2016	Government Urban	Oct	1
level1	ZA_1_001	2016	Private	Oct	11
level1	ZA_1_001	2016	Other	Oct	1
level1	ZA_1_001	2016	Government Agriculture	Nov	\N
level1	ZA_1_001	2016	Government Urban	Nov	\N
level1	ZA_1_001	2016	Private	Nov	9
level1	ZA_1_001	2016	Other	Nov	2
level1	ZA_1_005	2016	Government Agriculture	DZA_1_003	\N
level1	ZA_1_005	2016	Government Urban	DZA_1_003	\N
level1	ZA_1_005	2016	Private	DZA_1_003	7
level1	ZA_1_005	2016	Other	DZA_1_003	1
level1	ZA_1_005	2016	Government Agriculture	Jan	\N
level1	ZA_1_005	2016	Government Urban	Jan	\N
level1	ZA_1_005	2016	Private	Jan	6
level1	ZA_1_005	2016	Other	Jan	1
level1	ZA_1_005	2016	Government Agriculture	Feb	\N
level1	ZA_1_005	2016	Government Urban	Feb	1
level1	ZA_1_005	2016	Private	Feb	8
level1	ZA_1_005	2016	Other	Feb	2
level1	ZA_1_005	2016	Government Agriculture	Mar	\N
level1	ZA_1_005	2016	Government Urban	Mar	1
level1	ZA_1_005	2016	Private	Mar	10
level1	ZA_1_005	2016	Other	Mar	1
level1	ZA_1_005	2016	Government Agriculture	Apr	\N
level1	ZA_1_005	2016	Government Urban	Apr	\N
level1	ZA_1_005	2016	Private	Apr	7
level1	ZA_1_005	2016	Other	Apr	1
level1	ZA_1_005	2016	Government Agriculture	May	\N
level1	ZA_1_005	2016	Government Urban	May	\N
level1	ZA_1_005	2016	Private	May	15
level1	ZA_1_005	2016	Other	May	\N
level1	ZA_1_005	2016	Government Agriculture	Jun	\N
level1	ZA_1_005	2016	Government Urban	Jun	\N
level1	ZA_1_005	2016	Private	Jun	2
level1	ZA_1_005	2016	Other	Jun	3
level1	ZA_1_005	2016	Government Agriculture	Jul	\N
level1	ZA_1_005	2016	Government Urban	Jul	1
level1	ZA_1_005	2016	Private	Jul	8
level1	ZA_1_005	2016	Other	Jul	\N
level1	ZA_1_005	2016	Government Agriculture	Aug	\N
level1	ZA_1_005	2016	Government Urban	Aug	\N
level1	ZA_1_005	2016	Private	Aug	8
level1	ZA_1_005	2016	Other	Aug	\N
level1	ZA_1_005	2016	Government Agriculture	Sep	\N
level1	ZA_1_005	2016	Government Urban	Sep	\N
level1	ZA_1_005	2016	Private	Sep	3
level1	ZA_1_005	2016	Other	Sep	\N
level1	ZA_1_005	2016	Government Agriculture	Oct	\N
level1	ZA_1_005	2016	Government Urban	Oct	\N
level1	ZA_1_005	2016	Private	Oct	9
level1	ZA_1_005	2016	Other	Oct	2
level1	ZA_1_005	2016	Government Agriculture	Nov	\N
level1	ZA_1_005	2016	Government Urban	Nov	\N
level1	ZA_1_005	2016	Private	Nov	8
level1	ZA_1_005	2016	Other	Nov	1
level1	ZA_1_004	2016	Government Agriculture	DZA_1_003	1
level1	ZA_1_004	2016	Government Urban	DZA_1_003	\N
level1	ZA_1_004	2016	Private	DZA_1_003	4
level1	ZA_1_004	2016	Other	DZA_1_003	1
level1	ZA_1_004	2016	Government Agriculture	Jan	\N
level1	ZA_1_004	2016	Government Urban	Jan	\N
level1	ZA_1_004	2016	Private	Jan	6
level1	ZA_1_004	2016	Other	Jan	2
level1	ZA_1_004	2016	Government Agriculture	Feb	1
level1	ZA_1_004	2016	Government Urban	Feb	\N
level1	ZA_1_004	2016	Private	Feb	9
level1	ZA_1_004	2016	Other	Feb	3
level1	ZA_1_004	2016	Government Agriculture	Mar	\N
level1	ZA_1_004	2016	Government Urban	Mar	\N
level1	ZA_1_004	2016	Private	Mar	9
level1	ZA_1_004	2016	Other	Mar	2
level1	ZA_1_004	2016	Government Agriculture	Apr	\N
level1	ZA_1_004	2016	Government Urban	Apr	\N
level1	ZA_1_004	2016	Private	Apr	7
level1	ZA_1_004	2016	Other	Apr	1
level1	ZA_1_004	2016	Government Agriculture	May	\N
level1	ZA_1_004	2016	Government Urban	May	\N
level1	ZA_1_004	2016	Private	May	6
level1	ZA_1_004	2016	Other	May	1
level1	ZA_1_004	2016	Government Agriculture	Jun	\N
level1	ZA_1_004	2016	Government Urban	Jun	\N
level1	ZA_1_004	2016	Private	Jun	5
level1	ZA_1_004	2016	Other	Jun	\N
level1	ZA_1_004	2016	Government Agriculture	Jul	2
level1	ZA_1_004	2016	Government Urban	Jul	1
level1	ZA_1_004	2016	Private	Jul	8
level1	ZA_1_004	2016	Other	Jul	1
level1	ZA_1_004	2016	Government Agriculture	Aug	\N
level1	ZA_1_004	2016	Government Urban	Aug	\N
level1	ZA_1_004	2016	Private	Aug	7
level1	ZA_1_004	2016	Other	Aug	2
level1	ZA_1_004	2016	Government Agriculture	Sep	3
level1	ZA_1_004	2016	Government Urban	Sep	\N
level1	ZA_1_004	2016	Private	Sep	7
level1	ZA_1_004	2016	Other	Sep	1
level1	ZA_1_004	2016	Government Agriculture	Oct	4
level1	ZA_1_004	2016	Government Urban	Oct	\N
level1	ZA_1_004	2016	Private	Oct	9
level1	ZA_1_004	2016	Other	Oct	5
level1	ZA_1_004	2016	Government Agriculture	Nov	\N
level1	ZA_1_004	2016	Government Urban	Nov	\N
level1	ZA_1_004	2016	Private	Nov	3
level1	ZA_1_004	2016	Other	Nov	5
level1	ZA_1_006	2016	Government Agriculture	DZA_1_003	\N
level1	ZA_1_006	2016	Government Urban	DZA_1_003	\N
level1	ZA_1_006	2016	Private	DZA_1_003	1
level1	ZA_1_006	2016	Other	DZA_1_003	2
level1	ZA_1_006	2016	Government Agriculture	Jan	\N
level1	ZA_1_006	2016	Government Urban	Jan	\N
level1	ZA_1_006	2016	Private	Jan	1
level1	ZA_1_006	2016	Other	Jan	\N
level1	ZA_1_006	2016	Government Agriculture	Feb	\N
level1	ZA_1_006	2016	Government Urban	Feb	\N
level1	ZA_1_006	2016	Private	Feb	1
level1	ZA_1_006	2016	Other	Feb	1
level1	ZA_1_006	2016	Government Agriculture	Mar	\N
level1	ZA_1_006	2016	Government Urban	Mar	1
level1	ZA_1_006	2016	Private	Mar	2
level1	ZA_1_006	2016	Other	Mar	3
level1	ZA_1_006	2016	Government Agriculture	Apr	\N
level1	ZA_1_006	2016	Government Urban	Apr	\N
level1	ZA_1_006	2016	Private	Apr	2
level1	ZA_1_006	2016	Other	Apr	1
level1	ZA_1_006	2016	Government Agriculture	May	\N
level1	ZA_1_006	2016	Government Urban	May	\N
level1	ZA_1_006	2016	Private	May	\N
level1	ZA_1_006	2016	Other	May	\N
level1	ZA_1_006	2016	Government Agriculture	Jun	\N
level1	ZA_1_006	2016	Government Urban	Jun	\N
level1	ZA_1_006	2016	Private	Jun	4
level1	ZA_1_006	2016	Other	Jun	\N
level1	ZA_1_006	2016	Government Agriculture	Jul	\N
level1	ZA_1_006	2016	Government Urban	Jul	\N
level1	ZA_1_006	2016	Private	Jul	\N
level1	ZA_1_006	2016	Other	Jul	\N
level1	ZA_1_006	2016	Government Agriculture	Aug	\N
level1	ZA_1_006	2016	Government Urban	Aug	\N
level1	ZA_1_006	2016	Private	Aug	3
level1	ZA_1_006	2016	Other	Aug	1
level1	ZA_1_006	2016	Government Agriculture	Sep	\N
level1	ZA_1_006	2016	Government Urban	Sep	\N
level1	ZA_1_006	2016	Private	Sep	1
level1	ZA_1_006	2016	Other	Sep	\N
level1	ZA_1_006	2016	Government Agriculture	Oct	3
level1	ZA_1_006	2016	Government Urban	Oct	\N
level1	ZA_1_006	2016	Private	Oct	\N
level1	ZA_1_006	2016	Other	Oct	\N
level1	ZA_1_006	2016	Government Agriculture	Nov	\N
level1	ZA_1_006	2016	Government Urban	Nov	\N
level1	ZA_1_006	2016	Private	Nov	1
level1	ZA_1_006	2016	Other	Nov	\N
level1	ZA_1_007	2016	Government Agriculture	DZA_1_003	1
level1	ZA_1_007	2016	Government Urban	DZA_1_003	\N
level1	ZA_1_007	2016	Private	DZA_1_003	16
level1	ZA_1_007	2016	Other	DZA_1_003	\N
level1	ZA_1_007	2016	Government Agriculture	Jan	\N
level1	ZA_1_007	2016	Government Urban	Jan	\N
level1	ZA_1_007	2016	Private	Jan	13
level1	ZA_1_007	2016	Other	Jan	\N
level1	ZA_1_007	2016	Government Agriculture	Feb	\N
level1	ZA_1_007	2016	Government Urban	Feb	\N
level1	ZA_1_007	2016	Private	Feb	10
level1	ZA_1_007	2016	Other	Feb	\N
level1	ZA_1_007	2016	Government Agriculture	Mar	5
level1	ZA_1_007	2016	Government Urban	Mar	\N
level1	ZA_1_007	2016	Private	Mar	9
level1	ZA_1_007	2016	Other	Mar	\N
level1	ZA_1_007	2016	Government Agriculture	Apr	\N
level1	ZA_1_007	2016	Government Urban	Apr	\N
level1	ZA_1_007	2016	Private	Apr	11
level1	ZA_1_007	2016	Other	Apr	2
level1	ZA_1_007	2016	Government Agriculture	May	2
level1	ZA_1_007	2016	Government Urban	May	1
level1	ZA_1_007	2016	Private	May	8
level1	ZA_1_007	2016	Other	May	2
level1	ZA_1_007	2016	Government Agriculture	Jun	2
level1	ZA_1_007	2016	Government Urban	Jun	\N
level1	ZA_1_007	2016	Private	Jun	9
level1	ZA_1_007	2016	Other	Jun	1
level1	ZA_1_007	2016	Government Agriculture	Jul	1
level1	ZA_1_007	2016	Government Urban	Jul	\N
level1	ZA_1_007	2016	Private	Jul	5
level1	ZA_1_007	2016	Other	Jul	2
level1	ZA_1_007	2016	Government Agriculture	Aug	1
level1	ZA_1_007	2016	Government Urban	Aug	1
level1	ZA_1_007	2016	Private	Aug	11
level1	ZA_1_007	2016	Other	Aug	1
level1	ZA_1_007	2016	Government Agriculture	Sep	1
level1	ZA_1_007	2016	Government Urban	Sep	\N
level1	ZA_1_007	2016	Private	Sep	6
level1	ZA_1_007	2016	Other	Sep	\N
level1	ZA_1_007	2016	Government Agriculture	Oct	1
level1	ZA_1_007	2016	Government Urban	Oct	1
level1	ZA_1_007	2016	Private	Oct	6
level1	ZA_1_007	2016	Other	Oct	4
level1	ZA_1_007	2016	Government Agriculture	Nov	\N
level1	ZA_1_007	2016	Government Urban	Nov	\N
level1	ZA_1_007	2016	Private	Nov	3
level1	ZA_1_007	2016	Other	Nov	1
level1	ZA_1_008	2016	Government Agriculture	DZA_1_003	\N
level1	ZA_1_008	2016	Government Urban	DZA_1_003	\N
level1	ZA_1_008	2016	Private	DZA_1_003	2
level1	ZA_1_008	2016	Other	DZA_1_003	1
level1	ZA_1_008	2016	Government Agriculture	Jan	\N
level1	ZA_1_008	2016	Government Urban	Jan	\N
level1	ZA_1_008	2016	Private	Jan	3
level1	ZA_1_008	2016	Other	Jan	\N
level1	ZA_1_008	2016	Government Agriculture	Feb	\N
level1	ZA_1_008	2016	Government Urban	Feb	\N
level1	ZA_1_008	2016	Private	Feb	5
level1	ZA_1_008	2016	Other	Feb	1
level1	ZA_1_008	2016	Government Agriculture	Mar	\N
level1	ZA_1_008	2016	Government Urban	Mar	\N
level1	ZA_1_008	2016	Private	Mar	3
level1	ZA_1_008	2016	Other	Mar	1
level1	ZA_1_008	2016	Government Agriculture	Apr	2
level1	ZA_1_008	2016	Government Urban	Apr	\N
level1	ZA_1_008	2016	Private	Apr	4
level1	ZA_1_008	2016	Other	Apr	\N
level1	ZA_1_008	2016	Government Agriculture	May	1
level1	ZA_1_008	2016	Government Urban	May	\N
level1	ZA_1_008	2016	Private	May	2
level1	ZA_1_008	2016	Other	May	\N
level1	ZA_1_008	2016	Government Agriculture	Jun	\N
level1	ZA_1_008	2016	Government Urban	Jun	\N
level1	ZA_1_008	2016	Private	Jun	3
level1	ZA_1_008	2016	Other	Jun	\N
level1	ZA_1_008	2016	Government Agriculture	Jul	\N
level1	ZA_1_008	2016	Government Urban	Jul	\N
level1	ZA_1_008	2016	Private	Jul	\N
level1	ZA_1_008	2016	Other	Jul	\N
level1	ZA_1_008	2016	Government Agriculture	Aug	\N
level1	ZA_1_008	2016	Government Urban	Aug	\N
level1	ZA_1_008	2016	Private	Aug	4
level1	ZA_1_008	2016	Other	Aug	1
level1	ZA_1_008	2016	Government Agriculture	Sep	1
level1	ZA_1_008	2016	Government Urban	Sep	\N
level1	ZA_1_008	2016	Private	Sep	4
level1	ZA_1_008	2016	Other	Sep	1
level1	ZA_1_008	2016	Government Agriculture	Oct	\N
level1	ZA_1_008	2016	Government Urban	Oct	\N
level1	ZA_1_008	2016	Private	Oct	3
level1	ZA_1_008	2016	Other	Oct	1
level1	ZA_1_008	2016	Government Agriculture	Nov	1
level1	ZA_1_008	2016	Government Urban	Nov	\N
level1	ZA_1_008	2016	Private	Nov	\N
level1	ZA_1_008	2016	Other	Nov	1
\.


--
-- PostgreSQL database dump complete
--
