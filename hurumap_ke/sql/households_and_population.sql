--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.households_and_population DROP CONSTRAINT IF EXISTS pk_households_and_population;
DROP TABLE IF EXISTS public.households_and_population;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: households_and_population; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.households_and_population (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    year character varying(128) NOT NULL,
    variable character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: households_and_population; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.households_and_population (geo_level, geo_code, geo_version, year, variable, total) FROM stdin;
county	30	2009	2019	Population	662760
county	36	2009	2019	Population	873023
county	39	2009	2019	Population	1663898
county	40	2009	2019	Population	886856
county	28	2009	2019	Population	453403
county	14	2009	2019	Population	604769
county	7	2009	2019	Population	835482
county	43	2009	2019	Population	1125823
county	11	2009	2019	Population	267997
county	34	2009	2019	Population	1107296
county	37	2009	2019	Population	1861332
country	KE	2009	2019	Population	47213282
county	35	2009	2019	Population	896863
county	22	2009	2019	Population	2402834
county	3	2009	2019	Population	1440958
county	20	2009	2019	Population	605630
county	45	2009	2019	Population	1260509
county	42	2009	2019	Population	1144777
county	15	2009	2019	Population	1130134
county	2	2009	2019	Population	858748
county	31	2009	2019	Population	513879
county	5	2009	2019	Population	141909
county	16	2009	2019	Population	1414022
county	17	2009	2019	Population	977015
county	9	2009	2019	Population	862079
county	10	2009	2019	Population	447150
county	12	2009	2019	Population	1535635
county	44	2009	2019	Population	1108950
county	1	2009	2019	Population	1190987
county	21	2009	2019	Population	1053059
county	47	2009	2019	Population	4337080
county	32	2009	2019	Population	2142667
county	29	2009	2019	Population	883634
county	33	2009	2019	Population	1149379
county	46	2009	2019	Population	603051
county	18	2009	2019	Population	636002
county	19	2009	2019	Population	752695
county	25	2009	2019	Population	307957
county	41	2009	2019	Population	989708
county	6	2009	2019	Population	335747
county	4	2009	2019	Population	314710
county	13	2009	2019	Population	391303
county	26	2009	2019	Population	985333
county	23	2009	2019	Population	922210
county	27	2009	2019	Population	1152671
county	38	2009	2019	Population	587189
county	8	2009	2019	Population	775302
county	24	2009	2019	Population	618867
county	30	2009	2019	Number of Households	142518
county	36	2009	2019	Number of Households	187641
county	39	2009	2019	Number of Households	358796
county	40	2009	2019	Number of Households	198152
county	28	2009	2019	Number of Households	99861
county	14	2009	2019	Number of Households	182743
county	7	2009	2019	Number of Households	141394
county	43	2009	2019	Number of Households	262036
county	11	2009	2019	Number of Households	58072
county	34	2009	2019	Number of Households	316179
county	37	2009	2019	Number of Households	433207
country	KE	2009	2019	Number of Households	12143913
county	35	2009	2019	Number of Households	206036
county	22	2009	2019	Number of Households	795241
county	3	2009	2019	Number of Households	298472
county	20	2009	2019	Number of Households	204188
county	45	2009	2019	Number of Households	308054
county	42	2009	2019	Number of Households	300745
county	15	2009	2019	Number of Households	262942
county	2	2009	2019	Number of Households	173176
county	31	2009	2019	Number of Households	149271
county	5	2009	2019	Number of Households	37963
county	16	2009	2019	Number of Households	402466
county	17	2009	2019	Number of Households	244669
county	9	2009	2019	Number of Households	125763
county	10	2009	2019	Number of Households	77495
county	12	2009	2019	Number of Households	426360
county	44	2009	2019	Number of Households	240168
county	1	2009	2019	Number of Households	378422
county	21	2009	2019	Number of Households	318105
county	47	2009	2019	Number of Households	1506888
county	32	2009	2019	Number of Households	616046
county	29	2009	2019	Number of Households	199426
county	33	2009	2019	Number of Households	241125
county	46	2009	2019	Number of Households	150669
county	18	2009	2019	Number of Households	179686
county	19	2009	2019	Number of Households	248050
county	25	2009	2019	Number of Households	65910
county	41	2009	2019	Number of Households	250698
county	6	2009	2019	Number of Households	96429
county	4	2009	2019	Number of Households	68242
county	13	2009	2019	Number of Households	109860
county	26	2009	2019	Number of Households	223808
county	23	2009	2019	Number of Households	164519
county	27	2009	2019	Number of Households	304943
county	38	2009	2019	Number of Households	143365
county	8	2009	2019	Number of Households	127932
county	24	2009	2019	Number of Households	116182
\.


--
-- Name: households_and_population pk_households_and_population; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.households_and_population
    ADD CONSTRAINT pk_households_and_population PRIMARY KEY (geo_level, geo_code, geo_version, year, variable);


--
-- PostgreSQL database dump complete
--

