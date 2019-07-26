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

ALTER TABLE IF EXISTS ONLY public.crime_summary DROP CONSTRAINT IF EXISTS crime_summary_pkey;
DROP TABLE IF EXISTS public.crime_summary;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: crime_summary; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.crime_summary (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    crime character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: crime_summary; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.crime_summary (geo_level, geo_code, geo_version, crime, total) FROM stdin;
state	1	2016	  Lawful Authority	272
state	1	2016	  Persons	9816
state	1	2016	  Property	2320
state	2	2016	  Lawful Authority	52
state	2	2016	  Persons	811
state	2	2016	  Property	1406
state	3	2016	  Lawful Authority	378
state	3	2016	  Persons	702
state	3	2016	  Property	593
state	4	2016	  Lawful Authority	731
state	4	2016	  Persons	127
state	4	2016	  Property	1030
state	5	2016	  Lawful Authority	4
state	5	2016	  Persons	196
state	5	2016	  Property	186
state	6	2016	  Lawful Authority	91
state	6	2016	  Persons	612
state	6	2016	  Property	840
state	7	2016	  Lawful Authority	110
state	7	2016	  Persons	431
state	7	2016	  Property	1500
state	8	2016	  Lawful Authority	3
state	8	2016	  Persons	681
state	8	2016	  Property	907
state	9	2016	  Lawful Authority	56
state	9	2016	  Persons	949
state	9	2016	  Property	1158
state	10	2016	  Lawful Authority	731
state	10	2016	  Persons	3310
state	10	2016	  Property	3109
state	11	2016	  Lawful Authority	152
state	11	2016	  Persons	1275
state	11	2016	  Property	2787
state	12	2016	  Lawful Authority	152
state	12	2016	  Persons	729
state	12	2016	  Property	848
state	13	2016	  Lawful Authority	0
state	13	2016	  Persons	427
state	13	2016	  Property	554
state	14	2016	  Lawful Authority	125
state	14	2016	  Persons	935
state	14	2016	  Property	1111
state	15	2016	  Lawful Authority	39
state	15	2016	  Persons	1183
state	15	2016	  Property	4160
state	16	2016	  Lawful Authority	33
state	16	2016	  Persons	408
state	16	2016	  Property	972
state	17	2016	  Lawful Authority	0
state	17	2016	  Persons	893
state	17	2016	  Property	697
state	18	2016	  Lawful Authority	47
state	18	2016	  Persons	345
state	18	2016	  Property	397
state	19	2016	  Lawful Authority	4
state	19	2016	  Persons	385
state	19	2016	  Property	694
state	20	2016	  Lawful Authority	289
state	20	2016	  Persons	2102
state	20	2016	  Property	3314
state	21	2016	  Lawful Authority	58
state	21	2016	  Persons	602
state	21	2016	  Property	902
state	22	2016	  Lawful Authority	11
state	22	2016	  Persons	88
state	22	2016	  Property	106
state	23	2016	  Lawful Authority	25
state	23	2016	  Persons	146
state	23	2016	  Property	111
state	24	2016	  Lawful Authority	25
state	24	2016	  Persons	279
state	24	2016	  Property	526
state	25	2016	  Lawful Authority	7060
state	25	2016	  Persons	18926
state	25	2016	  Property	24989
state	26	2016	  Lawful Authority	133
state	26	2016	  Persons	466
state	26	2016	  Property	481
state	27	2016	  Lawful Authority	754
state	27	2016	  Persons	564
state	27	2016	  Property	1343
country	NG	2016	  Lawful Authority	12443
country	NG	2016	  Persons	53641
country	NG	2016	  Property	68579
state	28	2016	  Lawful Authority	537
state	28	2016	  Persons	518
state	28	2016	  Property	546
state	29	2016	  Lawful Authority	289
state	29	2016	  Persons	1282
state	29	2016	  Property	2142
state	30	2016	  Lawful Authority	54
state	30	2016	  Persons	318
state	30	2016	  Property	514
state	31	2016	  Lawful Authority	46
state	31	2016	  Persons	1058
state	31	2016	  Property	1865
state	32	2016	  Lawful Authority	2
state	32	2016	  Persons	736
state	32	2016	  Property	1869
state	33	2016	  Persons	467
state	33	2016	  Property	1103
state	34	2016	  Lawful Authority	26
state	34	2016	  Persons	766
state	34	2016	  Property	1622
state	35	2016	  Lawful Authority	33
state	35	2016	  Persons	550
state	35	2016	  Property	998
state	36	2016	  Lawful Authority	88
state	36	2016	  Persons	367
state	36	2016	  Property	535
state	37	2016	  Lawful Authority	32
state	37	2016	  Persons	169
state	37	2016	  Property	318
\.


--
-- Name: crime_summary crime_summary_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.crime_summary
    ADD CONSTRAINT crime_summary_pkey PRIMARY KEY (geo_level, geo_code, geo_version, crime);


--
-- PostgreSQL database dump complete
--
