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

ALTER TABLE IF EXISTS ONLY public.total_state_employment_2017 DROP CONSTRAINT IF EXISTS total_state_employment_2017_pkey;
DROP TABLE IF EXISTS public.total_state_employment_2017;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: total_state_employment_2017; gender: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.total_state_employment_2017 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: total_state_employment_2017; gender: TABLE DATA; Schema: public; Owner: -
--

COPY public.total_state_employment_2017 (geo_level, geo_code, geo_version, gender, total) FROM stdin;
country	NG	2016	Female	1255028
state	1	2016	Female	53925
state	2	2016	Female	6536
state	3	2016	Female	46546
state	4	2016	Female	39776
state	5	2016	Female	21665
state	6	2016	Female	7214
state	7	2016	Female	31625
state	8	2016	Female	6198
state	9	2016	Female	25979
state	10	2016	Female	31694
state	11	2016	Female	54531
state	12	2016	Female	44793
state	13	2016	Female	15417
state	14	2016	Female	27626
state	15	2016	Female	40418
state	16	2016	Female	7935
state	17	2016	Female	53095
state	18	2016	Female	9476
state	19	2016	Female	48663
state	20	2016	Female	35860
state	21	2016	Female	4797
state	22	2016	Female	4487
state	23	2016	Female	11122
state	24	2016	Female	24372
state	25	2016	Female	149697
state	26	2016	Female	46833
state	27	2016	Female	35425
state	28	2016	Female	41135
state	29	2016	Female	34673
state	30	2016	Female	46495
state	31	2016	Female	138660
state	32	2016	Female	30863
state	33	2016	Female	35519
state	34	2016	Female	14199
state	35	2016	Female	14180
state	36	2016	Female	827
state	37	2016	Female	12769
country	NG	2016	Male	1634686
state	1	2016	Male	38817
state	2	2016	Male	22413
state	3	2016	Male	28213
state	4	2016	Male	19840
state	5	2016	Male	66738
state	6	2016	Male	4669
state	7	2016	Male	39975
state	8	2016	Male	15037
state	9	2016	Male	31592
state	10	2016	Male	28618
state	11	2016	Male	41798
state	12	2016	Male	61024
state	13	2016	Male	21264
state	14	2016	Male	29020
state	15	2016	Male	50232
state	16	2016	Male	27717
state	17	2016	Male	26970
state	18	2016	Male	31514
state	19	2016	Male	77076
state	20	2016	Male	113293
state	21	2016	Male	49034
state	22	2016	Male	27625
state	23	2016	Male	29405
state	24	2016	Male	31607
state	25	2016	Male	182246
state	26	2016	Male	56135
state	27	2016	Male	48413
state	28	2016	Male	56300
state	29	2016	Male	58676
state	30	2016	Male	72322
state	31	2016	Male	104095
state	32	2016	Male	31406
state	33	2016	Male	30368
state	34	2016	Male	19478
state	35	2016	Male	22565
state	36	2016	Male	3194
state	37	2016	Male	35998
\.


--
-- Name: total_state_employment_2017 total_state_employment_2017_pkey; gender: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.total_state_employment_2017
    ADD CONSTRAINT total_state_employment_2017_pkey PRIMARY KEY (geo_level, geo_code, geo_version, gender);


--
-- PostgreSQL database dump complete
--
