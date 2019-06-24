--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.faac DROP CONSTRAINT IF EXISTS faac_pkey;
DROP TABLE IF EXISTS public.faac;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: faac; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.faac (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    allocation character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: faac; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.faac (geo_level, geo_code, geo_version, allocation, total) FROM stdin;
state	1	2016	Gross Statutory Allocation	1890
state	2	2016	Gross Statutory Allocation	2380
state	3	2016	Gross Statutory Allocation	3170
state	4	2016	Gross Statutory Allocation	2400
state	5	2016	Gross Statutory Allocation	2720
state	6	2016	Gross Statutory Allocation	1110
state	7	2016	Gross Statutory Allocation	2960
state	8	2016	Gross Statutory Allocation	3210
state	9	2016	Gross Statutory Allocation	2070
state	10	2016	Gross Statutory Allocation	2650
state	11	2016	Gross Statutory Allocation	1530
state	12	2016	Gross Statutory Allocation	2030
state	13	2016	Gross Statutory Allocation	1610
state	14	2016	Gross Statutory Allocation	2060
state	15	2016	Gross Statutory Allocation	827
state	16	2016	Gross Statutory Allocation	1410
state	17	2016	Gross Statutory Allocation	2770
state	18	2016	Gross Statutory Allocation	2910
state	19	2016	Gross Statutory Allocation	3270
state	20	2016	Gross Statutory Allocation	5200
state	21	2016	Gross Statutory Allocation	3960
state	22	2016	Gross Statutory Allocation	2500
state	23	2016	Gross Statutory Allocation	2580
state	24	2016	Gross Statutory Allocation	1830
state	25	2016	Gross Statutory Allocation	3110
state	26	2016	Gross Statutory Allocation	1630
state	27	2016	Gross Statutory Allocation	3020
state	28	2016	Gross Statutory Allocation	2150
state	29	2016	Gross Statutory Allocation	2060
state	30	2016	Gross Statutory Allocation	2790
state	31	2016	Gross Statutory Allocation	3510
state	32	2016	Gross Statutory Allocation	2200
state	33	2016	Gross Statutory Allocation	2730
state	34	2016	Gross Statutory Allocation	2750
state	35	2016	Gross Statutory Allocation	2060
state	36	2016	Gross Statutory Allocation	2070
state	37	2016	Gross Statutory Allocation	1870
country	NG	2016	Gross Statutory Allocation	90997
state	1	2016	Total Net Amount	2730
state	2	2016	Total Net Amount	3400
state	3	2016	Total Net Amount	4550
state	4	2016	Total Net Amount	3490
state	5	2016	Total Net Amount	3850
state	6	2016	Total Net Amount	1560
state	7	2016	Total Net Amount	4020
state	8	2016	Total Net Amount	4520
state	9	2016	Total Net Amount	2910
state	10	2016	Total Net Amount	3900
state	11	2016	Total Net Amount	2140
state	12	2016	Total Net Amount	2970
state	13	2016	Total Net Amount	2360
state	14	2016	Total Net Amount	2970
state	15	2016	Total Net Amount	2760
state	16	2016	Total Net Amount	1960
state	17	2016	Total Net Amount	4010
state	18	2016	Total Net Amount	4240
state	19	2016	Total Net Amount	4700
state	20	2016	Total Net Amount	7630
state	21	2016	Total Net Amount	5650
state	22	2016	Total Net Amount	3520
state	23	2016	Total Net Amount	3540
state	24	2016	Total Net Amount	2590
state	25	2016	Total Net Amount	8870
state	26	2016	Total Net Amount	2240
state	27	2016	Total Net Amount	4260
state	28	2016	Total Net Amount	3080
state	29	2016	Total Net Amount	2940
state	30	2016	Total Net Amount	3980
state	31	2016	Total Net Amount	5270
state	32	2016	Total Net Amount	3100
state	33	2016	Total Net Amount	4130
state	34	2016	Total Net Amount	3860
state	35	2016	Total Net Amount	2840
state	36	2016	Total Net Amount	2890
state	37	2016	Total Net Amount	2670
country	NG	2016	Total Net Amount	136100
\.


--
-- Name: faac faac_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.faac
    ADD CONSTRAINT faac_pkey PRIMARY KEY (geo_level, geo_code, geo_version, allocation);


--
-- PostgreSQL database dump complete
--
