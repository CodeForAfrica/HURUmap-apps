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

ALTER TABLE IF EXISTS ONLY public.number_of_dentist_year_sex DROP CONSTRAINT IF EXISTS pk_number_of_dentist_year_sex;
DROP TABLE IF EXISTS public.number_of_dentist_year_sex;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: number_of_dentist_year_sex; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.number_of_dentist_year_sex (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    number_of_dentist_sex character varying(10) NOT NULL,
    number_of_dentist_year character varying(10) NOT NULL,
    total integer
);


--
-- Data for Name: number_of_dentist_year_sex; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.number_of_dentist_year_sex (geo_level, geo_code, geo_version, number_of_dentist_sex, number_of_dentist_year, total) FROM stdin;
country	NG	2016	Female	2015	704
country	NG	2016	Male	2015	1686
country	NG	2016	Female	2016	1261
country	NG	2016	Male	2016	1602
country	NG	2016	Female	2017	1287
country	NG	2016	Male	2017	1614
state	1	2016	Female	2015	21
state	1	2016	Male	2015	0
state	1	2016	Female	2016	9
state	1	2016	Male	2016	19
state	1	2016	Female	2017	10
state	1	2016	Male	2017	19
state	2	2016	Female	2015	0
state	2	2016	Male	2015	19
state	2	2016	Female	2016	0
state	2	2016	Male	2016	3
state	2	2016	Female	2017	1
state	2	2016	Male	2017	3
state	3	2016	Female	2015	4
state	3	2016	Male	2015	22
state	3	2016	Female	2016	6
state	3	2016	Male	2016	12
state	3	2016	Female	2017	6
state	3	2016	Male	2017	12
state	4	2016	Female	2015	7
state	4	2016	Male	2015	15
state	4	2016	Female	2016	5
state	4	2016	Male	2016	8
state	4	2016	Female	2017	5
state	4	2016	Male	2017	8
state	5	2016	Female	2015	0
state	5	2016	Male	2015	45
state	5	2016	Female	2016	2
state	5	2016	Male	2016	6
state	5	2016	Female	2017	2
state	5	2016	Male	2017	6
state	6	2016	Female	2015	0
state	6	2016	Male	2015	10
state	6	2016	Female	2016	2
state	6	2016	Male	2016	9
state	6	2016	Female	2017	2
state	6	2016	Male	2017	9
state	7	2016	Female	2015	0
state	7	2016	Male	2015	21
state	7	2016	Female	2016	5
state	7	2016	Male	2016	17
state	7	2016	Female	2017	5
state	7	2016	Male	2017	17
state	8	2016	Female	2015	0
state	8	2016	Male	2015	29
state	8	2016	Female	2016	14
state	8	2016	Male	2016	46
state	8	2016	Female	2017	15
state	8	2016	Male	2017	46
state	9	2016	Female	2015	4
state	9	2016	Male	2015	10
state	9	2016	Female	2016	3
state	9	2016	Male	2016	8
state	9	2016	Female	2017	3
state	9	2016	Male	2017	8
state	10	2016	Female	2015	48
state	10	2016	Male	2015	60
state	10	2016	Female	2016	19
state	10	2016	Male	2016	45
state	10	2016	Female	2017	20
state	10	2016	Male	2017	45
state	11	2016	Female	2015	0
state	11	2016	Male	2015	21
state	11	2016	Female	2016	0
state	11	2016	Male	2016	9
state	11	2016	Female	2017	0
state	11	2016	Male	2017	9
state	12	2016	Female	2015	86
state	12	2016	Male	2015	134
state	12	2016	Female	2016	70
state	12	2016	Male	2016	204
state	12	2016	Female	2017	74
state	12	2016	Male	2017	204
state	13	2016	Female	2015	9
state	13	2016	Male	2015	36
state	13	2016	Female	2016	28
state	13	2016	Male	2016	105
state	13	2016	Female	2017	30
state	13	2016	Male	2017	105
state	14	2016	Female	2015	29
state	14	2016	Male	2015	7
state	14	2016	Female	2016	9
state	14	2016	Male	2016	36
state	14	2016	Female	2017	9
state	14	2016	Male	2017	37
state	15	2016	Female	2015	3
state	15	2016	Male	2015	19
state	15	2016	Female	2016	65
state	15	2016	Male	2016	116
state	15	2016	Female	2017	67
state	15	2016	Male	2017	117
state	16	2016	Female	2015	38
state	16	2016	Male	2015	60
state	16	2016	Female	2016	0
state	16	2016	Male	2016	6
state	16	2016	Female	2017	0
state	16	2016	Male	2017	6
state	17	2016	Female	2015	4
state	17	2016	Male	2015	9
state	17	2016	Female	2016	3
state	17	2016	Male	2016	8
state	17	2016	Female	2017	3
state	17	2016	Male	2017	8
state	18	2016	Female	2015	1
state	18	2016	Male	2015	15
state	18	2016	Female	2016	0
state	18	2016	Male	2016	11
state	18	2016	Female	2017	0
state	18	2016	Male	2017	11
state	19	2016	Female	2015	0
state	19	2016	Male	2015	51
state	19	2016	Female	2016	175
state	19	2016	Male	2016	46
state	19	2016	Female	2017	176
state	19	2016	Male	2017	48
state	20	2016	Female	2015	0
state	20	2016	Male	2015	48
state	20	2016	Female	2016	2
state	20	2016	Male	2016	28
state	20	2016	Female	2017	4
state	20	2016	Male	2017	28
state	21	2016	Female	2015	4
state	21	2016	Male	2015	19
state	21	2016	Female	2016	2
state	21	2016	Male	2016	8
state	21	2016	Female	2017	2
state	21	2016	Male	2017	8
state	22	2016	Female	2015	0
state	22	2016	Male	2015	10
state	22	2016	Female	2016	0
state	22	2016	Male	2016	3
state	22	2016	Female	2017	0
state	22	2016	Male	2017	3
state	23	2016	Female	2015	0
state	23	2016	Male	2015	15
state	23	2016	Female	2016	3
state	23	2016	Male	2016	15
state	23	2016	Female	2017	3
state	23	2016	Male	2017	15
state	24	2016	Female	2015	0
state	24	2016	Male	2015	22
state	24	2016	Female	2016	2
state	24	2016	Male	2016	11
state	24	2016	Female	2017	2
state	24	2016	Male	2017	11
state	25	2016	Female	2015	229
state	25	2016	Male	2015	452
state	25	2016	Female	2016	412
state	25	2016	Male	2016	340
state	25	2016	Female	2017	417
state	25	2016	Male	2017	345
state	26	2016	Female	2015	4
state	26	2016	Male	2015	15
state	26	2016	Female	2016	2
state	26	2016	Male	2016	8
state	26	2016	Female	2017	2
state	26	2016	Male	2017	8
state	27	2016	Female	2015	0
state	27	2016	Male	2015	22
state	27	2016	Female	2016	2
state	27	2016	Male	2016	25
state	27	2016	Female	2017	2
state	27	2016	Male	2017	25
state	28	2016	Female	2015	15
state	28	2016	Male	2015	38
state	28	2016	Female	2016	15
state	28	2016	Male	2016	17
state	28	2016	Female	2017	16
state	28	2016	Male	2017	17
state	29	2016	Female	2015	15
state	29	2016	Male	2015	38
state	29	2016	Female	2016	6
state	29	2016	Male	2016	31
state	29	2016	Female	2017	6
state	29	2016	Male	2017	31
state	30	2016	Female	2015	24
state	30	2016	Male	2015	51
state	30	2016	Female	2016	45
state	30	2016	Male	2016	99
state	30	2016	Female	2017	46
state	30	2016	Male	2017	100
state	31	2016	Female	2015	43
state	31	2016	Male	2015	132
state	31	2016	Female	2016	302
state	31	2016	Male	2016	152
state	31	2016	Female	2017	305
state	31	2016	Male	2017	155
state	32	2016	Female	2015	84
state	32	2016	Male	2015	122
state	32	2016	Female	2016	6
state	32	2016	Male	2016	19
state	32	2016	Female	2017	6
state	32	2016	Male	2017	19
state	33	2016	Female	2015	17
state	33	2016	Male	2015	19
state	33	2016	Female	2016	40
state	33	2016	Male	2016	101
state	33	2016	Female	2017	41
state	33	2016	Male	2017	101
state	34	2016	Female	2015	3
state	34	2016	Male	2015	69
state	34	2016	Female	2016	0
state	34	2016	Male	2016	11
state	34	2016	Female	2017	0
state	34	2016	Male	2017	11
state	35	2016	Female	2015	2
state	35	2016	Male	2015	14
state	35	2016	Female	2016	0
state	35	2016	Male	2016	3
state	35	2016	Female	2017	0
state	35	2016	Male	2017	3
state	36	2016	Female	2015	3
state	36	2016	Male	2015	5
state	36	2016	Female	2016	0
state	36	2016	Male	2016	5
state	36	2016	Female	2017	0
state	36	2016	Male	2017	5
state	37	2016	Female	2015	1
state	37	2016	Male	2015	2
state	37	2016	Female	2016	2
state	37	2016	Male	2016	5
state	37	2016	Female	2017	2
state	37	2016	Male	2017	4
\.


--
-- Name: number_of_dentist_year_sex pk_number_of_dentist_year_sex; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.number_of_dentist_year_sex
    ADD CONSTRAINT pk_number_of_dentist_year_sex PRIMARY KEY (geo_level, geo_code, geo_version, number_of_dentist_sex, number_of_dentist_year);


--
-- PostgreSQL database dump complete
--
