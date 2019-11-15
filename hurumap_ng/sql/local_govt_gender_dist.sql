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

ALTER TABLE IF EXISTS ONLY public.local_govt_gender_dist DROP CONSTRAINT IF EXISTS local_govt_gender_dist_pkey;
DROP TABLE IF EXISTS public.local_govt_gender_dist;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: local_govt_gender_dist; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.local_govt_gender_dist (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    position character varying(128) NOT NULL,
    gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: local_govt_gender_dist; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.local_govt_gender_dist (geo_level, geo_code, geo_version, position, gender, total) FROM stdin;
state	1	2016	Councillor	Female	0
state	1	2016	Councillor	Male	0
state	1	2016	Local Government Chairperson	Female	6
state	1	2016	Local Government Chairperson	Male	11
state	2	2016	Councillor	Female	0
state	2	2016	Councillor	Male	0
state	2	2016	Local Government Chairperson	Female	2
state	2	2016	Local Government Chairperson	Male	122
state	3	2016	Councillor	Female	56
state	3	2016	Councillor	Male	127
state	3	2016	Local Government Chairperson	Female	0
state	3	2016	Local Government Chairperson	Male	0
state	4	2016	Councillor	Female	0
state	4	2016	Councillor	Male	0
state	4	2016	Local Government Chairperson	Female	0
state	4	2016	Local Government Chairperson	Male	0
state	5	2016	Councillor	Female	3
state	5	2016	Councillor	Male	275
state	5	2016	Local Government Chairperson	Female	0
state	5	2016	Local Government Chairperson	Male	37
state	6	2016	Councillor	Female	0
state	6	2016	Councillor	Male	0
state	6	2016	Local Government Chairperson	Female	0
state	6	2016	Local Government Chairperson	Male	0
state	7	2016	Councillor	Female	30
state	7	2016	Councillor	Male	745
state	7	2016	Local Government Chairperson	Female	5
state	7	2016	Local Government Chairperson	Male	89
state	8	2016	Councillor	Female	0
state	8	2016	Councillor	Male	0
state	8	2016	Local Government Chairperson	Female	0
state	8	2016	Local Government Chairperson	Male	28
state	9	2016	Councillor	Female	20
state	9	2016	Councillor	Male	143
state	9	2016	Local Government Chairperson	Female	5
state	9	2016	Local Government Chairperson	Male	52
state	10	2016	Councillor	Female	61
state	10	2016	Councillor	Male	785
state	10	2016	Local Government Chairperson	Female	5
state	10	2016	Local Government Chairperson	Male	45
state	11	2016	Councillor	Female	153
state	11	2016	Councillor	Male	920
state	11	2016	Local Government Chairperson	Female	25
state	11	2016	Local Government Chairperson	Male	80
state	12	2016	Councillor	Female	0
state	12	2016	Councillor	Male	0
state	12	2016	Local Government Chairperson	Female	0
state	12	2016	Local Government Chairperson	Male	0
state	13	2016	Councillor	Female	63
state	13	2016	Councillor	Male	1159
state	13	2016	Local Government Chairperson	Female	5
state	13	2016	Local Government Chairperson	Male	139
state	14	2016	Councillor	Female	54
state	14	2016	Councillor	Male	136
state	14	2016	Local Government Chairperson	Female	44
state	14	2016	Local Government Chairperson	Male	58
state	15	2016	Councillor	Female	12
state	15	2016	Councillor	Male	254
state	15	2016	Local Government Chairperson	Female	1
state	15	2016	Local Government Chairperson	Male	26
state	16	2016	Councillor	Female	0
state	16	2016	Councillor	Male	0
state	16	2016	Local Government Chairperson	Female	0
state	16	2016	Local Government Chairperson	Male	0
state	17	2016	Councillor	Female	0
state	17	2016	Councillor	Male	0
state	17	2016	Local Government Chairperson	Female	78
state	17	2016	Local Government Chairperson	Male	30
state	18	2016	Councillor	Female	7
state	18	2016	Councillor	Male	1009
state	18	2016	Local Government Chairperson	Female	0
state	18	2016	Local Government Chairperson	Male	76
state	19	2016	Councillor	Female	0
state	19	2016	Councillor	Male	0
state	19	2016	Local Government Chairperson	Female	12
state	19	2016	Local Government Chairperson	Male	141
state	20	2016	Councillor	Female	4
state	20	2016	Councillor	Male	555
state	20	2016	Local Government Chairperson	Female	0
state	20	2016	Local Government Chairperson	Male	75
state	21	2016	Councillor	Female	2
state	21	2016	Councillor	Male	1401
state	21	2016	Local Government Chairperson	Female	0
state	21	2016	Local Government Chairperson	Male	133
state	22	2016	Councillor	Female	25
state	22	2016	Councillor	Male	366
state	22	2016	Local Government Chairperson	Female	2
state	22	2016	Local Government Chairperson	Male	64
state	23	2016	Councillor	Female	0
state	23	2016	Councillor	Male	0
state	23	2016	Local Government Chairperson	Female	0
state	23	2016	Local Government Chairperson	Male	64
state	24	2016	Councillor	Female	33
state	24	2016	Councillor	Male	494
state	24	2016	Local Government Chairperson	Female	3
state	24	2016	Local Government Chairperson	Male	46
state	25	2016	Councillor	Female	0
state	25	2016	Councillor	Male	0
state	25	2016	Local Government Chairperson	Female	1
state	25	2016	Local Government Chairperson	Male	20
state	26	2016	Councillor	Female	6
state	26	2016	Councillor	Male	82
state	26	2016	Local Government Chairperson	Female	0
state	26	2016	Local Government Chairperson	Male	13
state	27	2016	Councillor	Female	16
state	27	2016	Councillor	Male	61
state	27	2016	Local Government Chairperson	Female	11
state	27	2016	Local Government Chairperson	Male	295
country	NG	2016	Councillor	Female	603
country	NG	2016	Councillor	Male	9605
country	NG	2016	Local Government Chairperson	Female	225
country	NG	2016	Local Government Chairperson	Male	2263
state	28	2016	Councillor	Female	0
state	28	2016	Councillor	Male	0
state	28	2016	Local Government Chairperson	Female	0
state	28	2016	Local Government Chairperson	Male	0
state	29	2016	Councillor	Female	0
state	29	2016	Councillor	Male	0
state	29	2016	Local Government Chairperson	Female	0
state	29	2016	Local Government Chairperson	Male	0
state	30	2016	Councillor	Female	0
state	30	2016	Councillor	Male	0
state	30	2016	Local Government Chairperson	Female	0
state	30	2016	Local Government Chairperson	Male	13
state	31	2016	Councillor	Female	0
state	31	2016	Councillor	Male	0
state	31	2016	Local Government Chairperson	Female	3
state	31	2016	Local Government Chairperson	Male	120
state	32	2016	Councillor	Female	12
state	32	2016	Councillor	Male	56
state	32	2016	Local Government Chairperson	Female	7
state	32	2016	Local Government Chairperson	Male	71
state	33	2016	Councillor	Female	46
state	33	2016	Councillor	Male	480
state	33	2016	Local Government Chairperson	Female	8
state	33	2016	Local Government Chairperson	Male	270
state	34	2016	Councillor	Female	0
state	34	2016	Councillor	Male	342
state	34	2016	Local Government Chairperson	Female	1
state	34	2016	Local Government Chairperson	Male	51
state	35	2016	Councillor	Female	0
state	35	2016	Councillor	Male	0
state	35	2016	Local Government Chairperson	Female	0
state	35	2016	Local Government Chairperson	Male	0
state	36	2016	Councillor	Female	0
state	36	2016	Councillor	Male	0
state	36	2016	Local Government Chairperson	Female	1
state	36	2016	Local Government Chairperson	Male	31
state	37	2016	Councillor	Female	0
state	37	2016	Councillor	Male	215
state	37	2016	Local Government Chairperson	Female	0
state	37	2016	Local Government Chairperson	Male	63
\.


--
-- Name: local_govt_gender_dist local_govt_gender_dist_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.local_govt_gender_dist
    ADD CONSTRAINT local_govt_gender_dist_pkey PRIMARY KEY (geo_level, geo_code, geo_version, position, gender);


--
-- PostgreSQL database dump complete
--
