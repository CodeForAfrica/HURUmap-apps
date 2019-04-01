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

DROP TABLE IF EXISTS public.land_traded_colour_cost_breakdown_2018;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: land_traded_colour_cost_breakdown_2018; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.land_traded_colour_cost_breakdown_2018 (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) DEFAULT ''::character varying NOT NULL,
    breakdown_cc character varying(128) NOT NULL,
    month_cc character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: land_traded_colour_cost_breakdown_2018; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.land_traded_colour_cost_breakdown_2018 (geo_level, geo_code, geo_version, breakdown_cc, month_cc, total) FROM stdin;
country	ZA	2009	Government Agriculture	Dec	85
country	ZA	2009	Government Urban	Dec	17
country	ZA	2009	Private	Dec	338
country	ZA	2009	Other	Dec	23
country	ZA	2009	Government Agriculture	Jan	23
country	ZA	2009	Government Urban	Jan	3
country	ZA	2009	Private	Jan	160
country	ZA	2009	Other	Jan	22
country	ZA	2009	Government Agriculture	Feb	23
country	ZA	2009	Government Urban	Feb	70
country	ZA	2009	Private	Feb	151
country	ZA	2009	Other	Feb	166
country	ZA	2009	Government Agriculture	Mar	120
country	ZA	2009	Government Urban	Mar	56
country	ZA	2009	Private	Mar	293
country	ZA	2009	Other	Mar	279
country	ZA	2009	Government Agriculture	Apr	131
country	ZA	2009	Government Urban	Apr	\N
country	ZA	2009	Private	Apr	286
country	ZA	2009	Other	Apr	96
country	ZA	2009	Government Agriculture	May	16
country	ZA	2009	Government Urban	May	1
country	ZA	2009	Private	May	232
country	ZA	2009	Other	May	41
country	ZA	2009	Government Agriculture	Jun	16
country	ZA	2009	Government Urban	Jun	\N
country	ZA	2009	Private	Jun	193
country	ZA	2009	Other	Jun	609
country	ZA	2009	Government Agriculture	Jul	19
country	ZA	2009	Government Urban	Jul	32
country	ZA	2009	Private	Jul	191
country	ZA	2009	Other	Jul	10
country	ZA	2009	Government Agriculture	Aug	6
country	ZA	2009	Government Urban	Aug	53
country	ZA	2009	Private	Aug	412
country	ZA	2009	Other	Aug	111
country	ZA	2009	Government Agriculture	Sep	33
country	ZA	2009	Government Urban	Sep	\N
country	ZA	2009	Private	Sep	210
country	ZA	2009	Other	Sep	64
country	ZA	2009	Government Agriculture	Oct	88
country	ZA	2009	Government Urban	Oct	28
country	ZA	2009	Private	Oct	209
country	ZA	2009	Other	Oct	256
country	ZA	2009	Government Agriculture	Nov	5
country	ZA	2009	Government Urban	Nov	\N
country	ZA	2009	Private	Nov	154
country	ZA	2009	Other	Nov	129
level1	ZA_1_003	2009	Government Agriculture	Dec	5
level1	ZA_1_003	2009	Government Urban	Dec	\N
level1	ZA_1_003	2009	Private	Dec	17
level1	ZA_1_003	2009	Other	Dec	\N
level1	ZA_1_003	2009	Government Agriculture	Jan	\N
level1	ZA_1_003	2009	Government Urban	Jan	\N
level1	ZA_1_003	2009	Private	Jan	\N
level1	ZA_1_003	2009	Other	Jan	\N
level1	ZA_1_003	2009	Government Agriculture	Feb	\N
level1	ZA_1_003	2009	Government Urban	Feb	70
level1	ZA_1_003	2009	Private	Feb	2
level1	ZA_1_003	2009	Other	Feb	8
level1	ZA_1_003	2009	Government Agriculture	Mar	\N
level1	ZA_1_003	2009	Government Urban	Mar	\N
level1	ZA_1_003	2009	Private	Mar	12
level1	ZA_1_003	2009	Other	Mar	26
level1	ZA_1_003	2009	Government Agriculture	Apr	\N
level1	ZA_1_003	2009	Government Urban	Apr	\N
level1	ZA_1_003	2009	Private	Apr	10
level1	ZA_1_003	2009	Other	Apr	\N
level1	ZA_1_003	2009	Government Agriculture	May	\N
level1	ZA_1_003	2009	Government Urban	May	\N
level1	ZA_1_003	2009	Private	May	11
level1	ZA_1_003	2009	Other	May	\N
level1	ZA_1_003	2009	Government Agriculture	Jun	\N
level1	ZA_1_003	2009	Government Urban	Jun	\N
level1	ZA_1_003	2009	Private	Jun	10
level1	ZA_1_003	2009	Other	Jun	\N
level1	ZA_1_003	2009	Government Agriculture	Jul	\N
level1	ZA_1_003	2009	Government Urban	Jul	\N
level1	ZA_1_003	2009	Private	Jul	38
level1	ZA_1_003	2009	Other	Jul	\N
level1	ZA_1_003	2009	Government Agriculture	Aug	\N
level1	ZA_1_003	2009	Government Urban	Aug	\N
level1	ZA_1_003	2009	Private	Aug	15
level1	ZA_1_003	2009	Other	Aug	6
level1	ZA_1_003	2009	Government Agriculture	Sep	\N
level1	ZA_1_003	2009	Government Urban	Sep	\N
level1	ZA_1_003	2009	Private	Sep	16
level1	ZA_1_003	2009	Other	Sep	\N
level1	ZA_1_003	2009	Government Agriculture	Oct	10
level1	ZA_1_003	2009	Government Urban	Oct	\N
level1	ZA_1_003	2009	Private	Oct	3
level1	ZA_1_003	2009	Other	Oct	\N
level1	ZA_1_003	2009	Government Agriculture	Nov	\N
level1	ZA_1_003	2009	Government Urban	Nov	\N
level1	ZA_1_003	2009	Private	Nov	12
level1	ZA_1_003	2009	Other	Nov	\N
level1	ZA_1_002	2009	Government Agriculture	Dec	\N
level1	ZA_1_002	2009	Government Urban	Dec	\N
level1	ZA_1_002	2009	Private	Dec	18
level1	ZA_1_002	2009	Other	Dec	2
level1	ZA_1_002	2009	Government Agriculture	Jan	23
level1	ZA_1_002	2009	Government Urban	Jan	\N
level1	ZA_1_002	2009	Private	Jan	4
level1	ZA_1_002	2009	Other	Jan	\N
level1	ZA_1_002	2009	Government Agriculture	Feb	\N
level1	ZA_1_002	2009	Government Urban	Feb	\N
level1	ZA_1_002	2009	Private	Feb	37
level1	ZA_1_002	2009	Other	Feb	\N
level1	ZA_1_002	2009	Government Agriculture	Mar	5
level1	ZA_1_002	2009	Government Urban	Mar	\N
level1	ZA_1_002	2009	Private	Mar	23
level1	ZA_1_002	2009	Other	Mar	1
level1	ZA_1_002	2009	Government Agriculture	Apr	\N
level1	ZA_1_002	2009	Government Urban	Apr	\N
level1	ZA_1_002	2009	Private	Apr	12
level1	ZA_1_002	2009	Other	Apr	9
level1	ZA_1_002	2009	Government Agriculture	May	\N
level1	ZA_1_002	2009	Government Urban	May	\N
level1	ZA_1_002	2009	Private	May	31
level1	ZA_1_002	2009	Other	May	2
level1	ZA_1_002	2009	Government Agriculture	Jun	\N
level1	ZA_1_002	2009	Government Urban	Jun	\N
level1	ZA_1_002	2009	Private	Jun	22
level1	ZA_1_002	2009	Other	Jun	150
level1	ZA_1_002	2009	Government Agriculture	Jul	4
level1	ZA_1_002	2009	Government Urban	Jul	\N
level1	ZA_1_002	2009	Private	Jul	11
level1	ZA_1_002	2009	Other	Jul	\N
level1	ZA_1_002	2009	Government Agriculture	Aug	\N
level1	ZA_1_002	2009	Government Urban	Aug	\N
level1	ZA_1_002	2009	Private	Aug	8
level1	ZA_1_002	2009	Other	Aug	9
level1	ZA_1_002	2009	Government Agriculture	Sep	\N
level1	ZA_1_002	2009	Government Urban	Sep	\N
level1	ZA_1_002	2009	Private	Sep	13
level1	ZA_1_002	2009	Other	Sep	46
level1	ZA_1_002	2009	Government Agriculture	Oct	18
level1	ZA_1_002	2009	Government Urban	Oct	\N
level1	ZA_1_002	2009	Private	Oct	7
level1	ZA_1_002	2009	Other	Oct	46
level1	ZA_1_002	2009	Government Agriculture	Nov	\N
level1	ZA_1_002	2009	Government Urban	Nov	\N
level1	ZA_1_002	2009	Private	Nov	1
level1	ZA_1_002	2009	Other	Nov	5
level1	ZA_1_009	2009	Government Agriculture	Dec	22
level1	ZA_1_009	2009	Government Urban	Dec	\N
level1	ZA_1_009	2009	Private	Dec	13
level1	ZA_1_009	2009	Other	Dec	\N
level1	ZA_1_009	2009	Government Agriculture	Jan	\N
level1	ZA_1_009	2009	Government Urban	Jan	3
level1	ZA_1_009	2009	Private	Jan	4
level1	ZA_1_009	2009	Other	Jan	2
level1	ZA_1_009	2009	Government Agriculture	Feb	2
level1	ZA_1_009	2009	Government Urban	Feb	\N
level1	ZA_1_009	2009	Private	Feb	9
level1	ZA_1_009	2009	Other	Feb	\N
level1	ZA_1_009	2009	Government Agriculture	Mar	\N
level1	ZA_1_009	2009	Government Urban	Mar	\N
level1	ZA_1_009	2009	Private	Mar	13
level1	ZA_1_009	2009	Other	Mar	150
level1	ZA_1_009	2009	Government Agriculture	Apr	\N
level1	ZA_1_009	2009	Government Urban	Apr	\N
level1	ZA_1_009	2009	Private	Apr	16
level1	ZA_1_009	2009	Other	Apr	\N
level1	ZA_1_009	2009	Government Agriculture	May	\N
level1	ZA_1_009	2009	Government Urban	May	\N
level1	ZA_1_009	2009	Private	May	7
level1	ZA_1_009	2009	Other	May	28
level1	ZA_1_009	2009	Government Agriculture	Jun	\N
level1	ZA_1_009	2009	Government Urban	Jun	\N
level1	ZA_1_009	2009	Private	Jun	39
level1	ZA_1_009	2009	Other	Jun	6
level1	ZA_1_009	2009	Government Agriculture	Jul	\N
level1	ZA_1_009	2009	Government Urban	Jul	19
level1	ZA_1_009	2009	Private	Jul	18
level1	ZA_1_009	2009	Other	Jul	\N
level1	ZA_1_009	2009	Government Agriculture	Aug	1
level1	ZA_1_009	2009	Government Urban	Aug	\N
level1	ZA_1_009	2009	Private	Aug	40
level1	ZA_1_009	2009	Other	Aug	\N
level1	ZA_1_009	2009	Government Agriculture	Sep	\N
level1	ZA_1_009	2009	Government Urban	Sep	\N
level1	ZA_1_009	2009	Private	Sep	75
level1	ZA_1_009	2009	Other	Sep	1
level1	ZA_1_009	2009	Government Agriculture	Oct	10
level1	ZA_1_009	2009	Government Urban	Oct	24
level1	ZA_1_009	2009	Private	Oct	15
level1	ZA_1_009	2009	Other	Oct	76
level1	ZA_1_009	2009	Government Agriculture	Nov	\N
level1	ZA_1_009	2009	Government Urban	Nov	\N
level1	ZA_1_009	2009	Private	Nov	17
level1	ZA_1_009	2009	Other	Nov	8
level1	ZA_1_001	2009	Government Agriculture	Dec	4
level1	ZA_1_001	2009	Government Urban	Dec	17
level1	ZA_1_001	2009	Private	Dec	130
level1	ZA_1_001	2009	Other	Dec	\N
level1	ZA_1_001	2009	Government Agriculture	Jan	\N
level1	ZA_1_001	2009	Government Urban	Jan	\N
level1	ZA_1_001	2009	Private	Jan	21
level1	ZA_1_001	2009	Other	Jan	\N
level1	ZA_1_001	2009	Government Agriculture	Feb	14
level1	ZA_1_001	2009	Government Urban	Feb	\N
level1	ZA_1_001	2009	Private	Feb	5
level1	ZA_1_001	2009	Other	Feb	8
level1	ZA_1_001	2009	Government Agriculture	Mar	49
level1	ZA_1_001	2009	Government Urban	Mar	\N
level1	ZA_1_001	2009	Private	Mar	76
level1	ZA_1_001	2009	Other	Mar	4
level1	ZA_1_001	2009	Government Agriculture	Apr	\N
level1	ZA_1_001	2009	Government Urban	Apr	\N
level1	ZA_1_001	2009	Private	Apr	43
level1	ZA_1_001	2009	Other	Apr	4
level1	ZA_1_001	2009	Government Agriculture	May	\N
level1	ZA_1_001	2009	Government Urban	May	\N
level1	ZA_1_001	2009	Private	May	65
level1	ZA_1_001	2009	Other	May	3
level1	ZA_1_001	2009	Government Agriculture	Jun	\N
level1	ZA_1_001	2009	Government Urban	Jun	\N
level1	ZA_1_001	2009	Private	Jun	34
level1	ZA_1_001	2009	Other	Jun	\N
level1	ZA_1_001	2009	Government Agriculture	Jul	\N
level1	ZA_1_001	2009	Government Urban	Jul	\N
level1	ZA_1_001	2009	Private	Jul	67
level1	ZA_1_001	2009	Other	Jul	\N
level1	ZA_1_004	2009	Other	Nov	52
level1	ZA_1_001	2009	Government Agriculture	Aug	\N
level1	ZA_1_001	2009	Government Urban	Aug	\N
level1	ZA_1_001	2009	Private	Aug	140
level1	ZA_1_001	2009	Other	Aug	38
level1	ZA_1_001	2009	Government Agriculture	Sep	\N
level1	ZA_1_001	2009	Government Urban	Sep	\N
level1	ZA_1_001	2009	Private	Sep	14
level1	ZA_1_001	2009	Other	Sep	11
level1	ZA_1_001	2009	Government Agriculture	Oct	\N
level1	ZA_1_001	2009	Government Urban	Oct	1
level1	ZA_1_001	2009	Private	Oct	66
level1	ZA_1_001	2009	Other	Oct	1
level1	ZA_1_001	2009	Government Agriculture	Nov	\N
level1	ZA_1_001	2009	Government Urban	Nov	\N
level1	ZA_1_001	2009	Private	Nov	44
level1	ZA_1_001	2009	Other	Nov	6
level1	ZA_1_005	2009	Government Agriculture	Dec	\N
level1	ZA_1_005	2009	Government Urban	Dec	\N
level1	ZA_1_005	2009	Private	Dec	23
level1	ZA_1_005	2009	Other	Dec	\N
level1	ZA_1_005	2009	Government Agriculture	Jan	\N
level1	ZA_1_005	2009	Government Urban	Jan	\N
level1	ZA_1_005	2009	Private	Jan	21
level1	ZA_1_005	2009	Other	Jan	3
level1	ZA_1_005	2009	Government Agriculture	Feb	\N
level1	ZA_1_005	2009	Government Urban	Feb	\N
level1	ZA_1_005	2009	Private	Feb	28
level1	ZA_1_005	2009	Other	Feb	6
level1	ZA_1_005	2009	Government Agriculture	Mar	\N
level1	ZA_1_005	2009	Government Urban	Mar	6
level1	ZA_1_005	2009	Private	Mar	15
level1	ZA_1_005	2009	Other	Mar	3
level1	ZA_1_005	2009	Government Agriculture	Apr	\N
level1	ZA_1_005	2009	Government Urban	Apr	\N
level1	ZA_1_005	2009	Private	Apr	20
level1	ZA_1_005	2009	Other	Apr	14
level1	ZA_1_005	2009	Government Agriculture	May	\N
level1	ZA_1_005	2009	Government Urban	May	\N
level1	ZA_1_005	2009	Private	May	58
level1	ZA_1_005	2009	Other	May	\N
level1	ZA_1_005	2009	Government Agriculture	Jun	\N
level1	ZA_1_005	2009	Government Urban	Jun	\N
level1	ZA_1_005	2009	Private	Jun	15
level1	ZA_1_005	2009	Other	Jun	452
level1	ZA_1_005	2009	Government Agriculture	Jul	\N
level1	ZA_1_005	2009	Government Urban	Jul	3
level1	ZA_1_005	2009	Private	Jul	24
level1	ZA_1_005	2009	Other	Jul	\N
level1	ZA_1_005	2009	Government Agriculture	Aug	\N
level1	ZA_1_005	2009	Government Urban	Aug	\N
level1	ZA_1_005	2009	Private	Aug	116
level1	ZA_1_005	2009	Other	Aug	\N
level1	ZA_1_005	2009	Government Agriculture	Sep	\N
level1	ZA_1_005	2009	Government Urban	Sep	\N
level1	ZA_1_005	2009	Private	Sep	8
level1	ZA_1_005	2009	Other	Sep	\N
level1	ZA_1_005	2009	Government Agriculture	Oct	\N
level1	ZA_1_005	2009	Government Urban	Oct	\N
level1	ZA_1_005	2009	Private	Oct	39
level1	ZA_1_005	2009	Other	Oct	3
level1	ZA_1_005	2009	Government Agriculture	Nov	\N
level1	ZA_1_005	2009	Government Urban	Nov	\N
level1	ZA_1_005	2009	Private	Nov	63
level1	ZA_1_005	2009	Other	Nov	4
level1	ZA_1_004	2009	Government Agriculture	Dec	8
level1	ZA_1_004	2009	Government Urban	Dec	\N
level1	ZA_1_004	2009	Private	Dec	19
level1	ZA_1_004	2009	Other	Dec	7
level1	ZA_1_004	2009	Government Agriculture	Jan	\N
level1	ZA_1_004	2009	Government Urban	Jan	\N
level1	ZA_1_004	2009	Private	Jan	20
level1	ZA_1_004	2009	Other	Jan	17
level1	ZA_1_004	2009	Government Agriculture	Feb	7
level1	ZA_1_004	2009	Government Urban	Feb	\N
level1	ZA_1_004	2009	Private	Feb	24
level1	ZA_1_004	2009	Other	Feb	143
level1	ZA_1_004	2009	Government Agriculture	Mar	\N
level1	ZA_1_004	2009	Government Urban	Mar	\N
level1	ZA_1_004	2009	Private	Mar	101
level1	ZA_1_004	2009	Other	Mar	60
level1	ZA_1_004	2009	Government Agriculture	Apr	\N
level1	ZA_1_004	2009	Government Urban	Apr	\N
level1	ZA_1_004	2009	Private	Apr	44
level1	ZA_1_004	2009	Other	Apr	23
level1	ZA_1_004	2009	Government Agriculture	May	\N
level1	ZA_1_004	2009	Government Urban	May	\N
level1	ZA_1_004	2009	Private	May	22
level1	ZA_1_004	2009	Other	May	5
level1	ZA_1_004	2009	Government Agriculture	Jun	\N
level1	ZA_1_004	2009	Government Urban	Jun	\N
level1	ZA_1_004	2009	Private	Jun	14
level1	ZA_1_004	2009	Other	Jun	\N
level1	ZA_1_004	2009	Government Agriculture	Jul	7
level1	ZA_1_004	2009	Government Urban	Jul	10
level1	ZA_1_004	2009	Private	Jul	25
level1	ZA_1_004	2009	Other	Jul	9
level1	ZA_1_004	2009	Government Agriculture	Aug	\N
level1	ZA_1_004	2009	Government Urban	Aug	\N
level1	ZA_1_004	2009	Private	Aug	15
level1	ZA_1_004	2009	Other	Aug	12
level1	ZA_1_004	2009	Government Agriculture	Sep	15
level1	ZA_1_004	2009	Government Urban	Sep	\N
level1	ZA_1_004	2009	Private	Sep	59
level1	ZA_1_004	2009	Other	Sep	2
level1	ZA_1_004	2009	Government Agriculture	Oct	15
level1	ZA_1_004	2009	Government Urban	Oct	\N
level1	ZA_1_004	2009	Private	Oct	58
level1	ZA_1_004	2009	Other	Oct	115
level1	ZA_1_004	2009	Government Agriculture	Nov	\N
level1	ZA_1_004	2009	Government Urban	Nov	\N
level1	ZA_1_004	2009	Private	Nov	3
level1	ZA_1_006	2009	Government Agriculture	Dec	\N
level1	ZA_1_006	2009	Government Urban	Dec	\N
level1	ZA_1_006	2009	Private	Dec	1
level1	ZA_1_006	2009	Other	Dec	12
level1	ZA_1_006	2009	Government Agriculture	Jan	\N
level1	ZA_1_006	2009	Government Urban	Jan	\N
level1	ZA_1_006	2009	Private	Jan	3
level1	ZA_1_006	2009	Other	Jan	\N
level1	ZA_1_006	2009	Government Agriculture	Feb	\N
level1	ZA_1_006	2009	Government Urban	Feb	\N
level1	ZA_1_006	2009	Private	Feb	11
level1	ZA_1_006	2009	Other	Feb	\N
level1	ZA_1_006	2009	Government Agriculture	Mar	\N
level1	ZA_1_006	2009	Government Urban	Mar	50
level1	ZA_1_006	2009	Private	Mar	26
level1	ZA_1_006	2009	Other	Mar	36
level1	ZA_1_006	2009	Government Agriculture	Apr	\N
level1	ZA_1_006	2009	Government Urban	Apr	\N
level1	ZA_1_006	2009	Private	Apr	2
level1	ZA_1_006	2009	Other	Apr	30
level1	ZA_1_006	2009	Government Agriculture	May	\N
level1	ZA_1_006	2009	Government Urban	May	\N
level1	ZA_1_006	2009	Private	May	\N
level1	ZA_1_006	2009	Other	May	\N
level1	ZA_1_006	2009	Government Agriculture	Jun	\N
level1	ZA_1_006	2009	Government Urban	Jun	\N
level1	ZA_1_006	2009	Private	Jun	23
level1	ZA_1_006	2009	Other	Jun	\N
level1	ZA_1_006	2009	Government Agriculture	Jul	\N
level1	ZA_1_006	2009	Government Urban	Jul	\N
level1	ZA_1_006	2009	Private	Jul	\N
level1	ZA_1_006	2009	Other	Jul	\N
level1	ZA_1_006	2009	Government Agriculture	Aug	\N
level1	ZA_1_006	2009	Government Urban	Aug	\N
level1	ZA_1_006	2009	Private	Aug	22
level1	ZA_1_006	2009	Other	Aug	24
level1	ZA_1_006	2009	Government Agriculture	Sep	\N
level1	ZA_1_006	2009	Government Urban	Sep	\N
level1	ZA_1_006	2009	Private	Sep	5
level1	ZA_1_006	2009	Other	Sep	\N
level1	ZA_1_006	2009	Government Agriculture	Oct	28
level1	ZA_1_006	2009	Government Urban	Oct	\N
level1	ZA_1_006	2009	Private	Oct	\N
level1	ZA_1_006	2009	Other	Oct	\N
level1	ZA_1_006	2009	Government Agriculture	Nov	\N
level1	ZA_1_006	2009	Government Urban	Nov	\N
level1	ZA_1_006	2009	Private	Nov	5
level1	ZA_1_006	2009	Other	Nov	\N
level1	ZA_1_007	2009	Government Agriculture	Dec	47
level1	ZA_1_007	2009	Government Urban	Dec	\N
level1	ZA_1_007	2009	Private	Dec	111
level1	ZA_1_007	2009	Other	Dec	\N
level1	ZA_1_007	2009	Government Agriculture	Jan	\N
level1	ZA_1_007	2009	Government Urban	Jan	\N
level1	ZA_1_007	2009	Private	Jan	72
level1	ZA_1_007	2009	Other	Jan	\N
level1	ZA_1_007	2009	Government Agriculture	Feb	\N
level1	ZA_1_007	2009	Government Urban	Feb	\N
level1	ZA_1_007	2009	Private	Feb	22
level1	ZA_1_007	2009	Other	Feb	\N
level1	ZA_1_007	2009	Government Agriculture	Mar	66
level1	ZA_1_007	2009	Government Urban	Mar	\N
level1	ZA_1_007	2009	Private	Mar	14
level1	ZA_1_007	2009	Other	Mar	\N
level1	ZA_1_007	2009	Government Agriculture	Apr	\N
level1	ZA_1_007	2009	Government Urban	Apr	\N
level1	ZA_1_007	2009	Private	Apr	131
level1	ZA_1_007	2009	Other	Apr	18
level1	ZA_1_007	2009	Government Agriculture	May	12
level1	ZA_1_007	2009	Government Urban	May	1
level1	ZA_1_007	2009	Private	May	28
level1	ZA_1_007	2009	Other	May	3
level1	ZA_1_007	2009	Government Agriculture	Jun	16
level1	ZA_1_007	2009	Government Urban	Jun	\N
level1	ZA_1_007	2009	Private	Jun	29
level1	ZA_1_007	2009	Other	Jun	1
level1	ZA_1_007	2009	Government Agriculture	Jul	9
level1	ZA_1_007	2009	Government Urban	Jul	\N
level1	ZA_1_007	2009	Private	Jul	8
level1	ZA_1_007	2009	Other	Jul	1
level1	ZA_1_007	2009	Government Agriculture	Aug	5
level1	ZA_1_007	2009	Government Urban	Aug	53
level1	ZA_1_007	2009	Private	Aug	28
level1	ZA_1_007	2009	Other	Aug	20
level1	ZA_1_007	2009	Government Agriculture	Sep	14
level1	ZA_1_007	2009	Government Urban	Sep	\N
level1	ZA_1_007	2009	Private	Sep	14
level1	ZA_1_007	2009	Other	Sep	\N
level1	ZA_1_007	2009	Government Agriculture	Oct	6
level1	ZA_1_007	2009	Government Urban	Oct	3
level1	ZA_1_007	2009	Private	Oct	16
level1	ZA_1_007	2009	Other	Oct	6
level1	ZA_1_007	2009	Government Agriculture	Nov	\N
level1	ZA_1_007	2009	Government Urban	Nov	\N
level1	ZA_1_007	2009	Private	Nov	11
level1	ZA_1_007	2009	Other	Nov	50
level1	ZA_1_008	2009	Government Agriculture	Dec	\N
level1	ZA_1_008	2009	Government Urban	Dec	\N
level1	ZA_1_008	2009	Private	Dec	5
level1	ZA_1_008	2009	Other	Dec	1
level1	ZA_1_008	2009	Government Agriculture	Jan	\N
level1	ZA_1_008	2009	Government Urban	Jan	\N
level1	ZA_1_008	2009	Private	Jan	14
level1	ZA_1_008	2009	Other	Jan	\N
level1	ZA_1_008	2009	Government Agriculture	Feb	\N
level1	ZA_1_008	2009	Government Urban	Feb	\N
level1	ZA_1_008	2009	Private	Feb	13
level1	ZA_1_008	2009	Other	Feb	2
level1	ZA_1_008	2009	Government Agriculture	Mar	\N
level1	ZA_1_008	2009	Government Urban	Mar	\N
level1	ZA_1_008	2009	Private	Mar	13
level1	ZA_1_008	2009	Other	Mar	\N
level1	ZA_1_008	2009	Government Agriculture	Apr	131
level1	ZA_1_008	2009	Government Urban	Apr	\N
level1	ZA_1_008	2009	Private	Apr	7
level1	ZA_1_008	2009	Other	Apr	\N
level1	ZA_1_008	2009	Government Agriculture	May	4
level1	ZA_1_008	2009	Government Urban	May	\N
level1	ZA_1_008	2009	Private	May	10
level1	ZA_1_008	2009	Other	May	\N
level1	ZA_1_008	2009	Government Agriculture	Jun	\N
level1	ZA_1_008	2009	Government Urban	Jun	\N
level1	ZA_1_008	2009	Private	Jun	7
level1	ZA_1_008	2009	Other	Jun	\N
level1	ZA_1_008	2009	Government Agriculture	Jul	\N
level1	ZA_1_008	2009	Government Urban	Jul	\N
level1	ZA_1_008	2009	Private	Jul	\N
level1	ZA_1_008	2009	Other	Jul	\N
level1	ZA_1_008	2009	Government Agriculture	Aug	\N
level1	ZA_1_008	2009	Government Urban	Aug	\N
level1	ZA_1_008	2009	Private	Aug	27
level1	ZA_1_008	2009	Other	Aug	1
level1	ZA_1_008	2009	Government Agriculture	Sep	3
level1	ZA_1_008	2009	Government Urban	Sep	\N
level1	ZA_1_008	2009	Private	Sep	6
level1	ZA_1_008	2009	Other	Sep	4
level1	ZA_1_008	2009	Government Agriculture	Oct	\N
level1	ZA_1_008	2009	Government Urban	Oct	\N
level1	ZA_1_008	2009	Private	Oct	5
level1	ZA_1_008	2009	Other	Oct	11
level1	ZA_1_008	2009	Government Agriculture	Nov	5
level1	ZA_1_008	2009	Government Urban	Nov	\N
level1	ZA_1_008	2009	Private	Nov	\N
level1	ZA_1_008	2009	Other	Nov	2
\.


--
-- PostgreSQL database dump complete
--
