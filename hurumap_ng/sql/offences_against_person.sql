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

ALTER TABLE IF EXISTS ONLY public.offences_against_person DROP CONSTRAINT IF EXISTS offences_against_person_pkey;
DROP TABLE IF EXISTS public.offences_against_person;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: offences_against_person; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.offences_against_person (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    crime character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: offences_against_person; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.offences_against_person (geo_level, geo_code, geo_version, crime, total) FROM stdin;
state	1	2016	Assault	8945
state	1	2016	Attempted Murder	69
state	1	2016	Attempted Suicide	0
state	1	2016	Child Stealing	68
state	1	2016	Greivous Harm Wounding	124
state	1	2016	Kidnapping	104
state	1	2016	Man Slaughter	6
state	1	2016	Murder	97
state	1	2016	Other Offence	117
state	1	2016	Rape and Incident Assault	98
state	1	2016	Slave Dealing	0
state	1	2016	Suicide	6
state	1	2016	Unnatural Offence	182
state	2	2016	Assault	68
state	2	2016	Attempted Murder	89
state	2	2016	Attempted Suicide	0
state	2	2016	Child Stealing	0
state	2	2016	Greivous Harm Wounding	126
state	2	2016	Kidnapping	9
state	2	2016	Man Slaughter	0
state	2	2016	Murder	114
state	2	2016	Other Offence	372
state	2	2016	Rape and Incident Assault	24
state	2	2016	Slave Dealing	0
state	2	2016	Suicide	4
state	2	2016	Unnatural Offence	5
state	3	2016	Assault	341
state	3	2016	Attempted Murder	78
state	3	2016	Attempted Suicide	0
state	3	2016	Child Stealing	52
state	3	2016	Greivous Harm Wounding	41
state	3	2016	Kidnapping	11
state	3	2016	Man Slaughter	5
state	3	2016	Murder	81
state	3	2016	Other Offence	0
state	3	2016	Rape and Incident Assault	83
state	3	2016	Slave Dealing	6
state	3	2016	Suicide	0
state	3	2016	Unnatural Offence	4
state	4	2016	Assault	0
state	4	2016	Attempted Murder	0
state	4	2016	Attempted Suicide	0
state	4	2016	Child Stealing	0
state	4	2016	Greivous Harm Wounding	84
state	4	2016	Kidnapping	0
state	4	2016	Man Slaughter	0
state	4	2016	Murder	41
state	4	2016	Other Offence	0
state	4	2016	Rape and Incident Assault	0
state	4	2016	Slave Dealing	0
state	4	2016	Suicide	2
state	4	2016	Unnatural Offence	0
state	5	2016	Assault	3
state	5	2016	Attempted Murder	1
state	5	2016	Attempted Suicide	0
state	5	2016	Child Stealing	0
state	5	2016	Greivous Harm Wounding	13
state	5	2016	Kidnapping	44
state	5	2016	Man Slaughter	0
state	5	2016	Murder	58
state	5	2016	Other Offence	41
state	5	2016	Rape and Incident Assault	33
state	5	2016	Slave Dealing	0
state	5	2016	Suicide	0
state	5	2016	Unnatural Offence	3
state	6	2016	Assault	187
state	6	2016	Attempted Murder	19
state	6	2016	Attempted Suicide	1
state	6	2016	Child Stealing	4
state	6	2016	Greivous Harm Wounding	31
state	6	2016	Kidnapping	53
state	6	2016	Man Slaughter	0
state	6	2016	Murder	30
state	6	2016	Other Offence	182
state	6	2016	Rape and Incident Assault	88
state	6	2016	Slave Dealing	0
state	6	2016	Suicide	15
state	6	2016	Unnatural Offence	2
state	7	2016	Assault	76
state	7	2016	Attempted Murder	6
state	7	2016	Attempted Suicide	2
state	7	2016	Child Stealing	45
state	7	2016	Greivous Harm Wounding	90
state	7	2016	Kidnapping	67
state	7	2016	Man Slaughter	3
state	7	2016	Murder	51
state	7	2016	Other Offence	56
state	7	2016	Rape and Incident Assault	23
state	7	2016	Slave Dealing	0
state	7	2016	Suicide	3
state	7	2016	Unnatural Offence	9
state	8	2016	Assault	39
state	8	2016	Attempted Murder	12
state	8	2016	Attempted Suicide	3
state	8	2016	Child Stealing	0
state	8	2016	Greivous Harm Wounding	73
state	8	2016	Kidnapping	2
state	8	2016	Man Slaughter	48
state	8	2016	Murder	123
state	8	2016	Other Offence	194
state	8	2016	Rape and Incident Assault	97
state	8	2016	Slave Dealing	0
state	8	2016	Suicide	45
state	8	2016	Unnatural Offence	45
state	9	2016	Assault	347
state	9	2016	Attempted Murder	22
state	9	2016	Attempted Suicide	0
state	9	2016	Child Stealing	6
state	9	2016	Greivous Harm Wounding	48
state	9	2016	Kidnapping	31
state	9	2016	Man Slaughter	0
state	9	2016	Murder	87
state	9	2016	Other Offence	335
state	9	2016	Rape and Incident Assault	65
state	9	2016	Slave Dealing	0
state	9	2016	Suicide	0
state	9	2016	Unnatural Offence	8
state	10	2016	Assault	1895
state	10	2016	Attempted Murder	21
state	10	2016	Attempted Suicide	0
state	10	2016	Child Stealing	9
state	10	2016	Greivous Harm Wounding	325
state	10	2016	Kidnapping	49
state	10	2016	Man Slaughter	2
state	10	2016	Murder	117
state	10	2016	Other Offence	645
state	10	2016	Rape and Incident Assault	93
state	10	2016	Slave Dealing	0
state	10	2016	Suicide	13
state	10	2016	Unnatural Offence	141
state	11	2016	Assault	87
state	11	2016	Attempted Murder	13
state	11	2016	Attempted Suicide	0
state	11	2016	Child Stealing	6
state	11	2016	Greivous Harm Wounding	690
state	11	2016	Kidnapping	98
state	11	2016	Man Slaughter	12
state	11	2016	Murder	204
state	11	2016	Other Offence	91
state	11	2016	Rape and Incident Assault	44
state	11	2016	Slave Dealing	0
state	11	2016	Suicide	4
state	11	2016	Unnatural Offence	26
state	12	2016	Assault	3
state	12	2016	Attempted Murder	98
state	12	2016	Attempted Suicide	54
state	12	2016	Child Stealing	8
state	12	2016	Greivous Harm Wounding	178
state	12	2016	Kidnapping	2
state	12	2016	Man Slaughter	5
state	12	2016	Murder	187
state	12	2016	Other Offence	80
state	12	2016	Rape and Incident Assault	10
state	12	2016	Slave Dealing	16
state	12	2016	Suicide	3
state	12	2016	Unnatural Offence	85
state	13	2016	Assault	11
state	13	2016	Attempted Murder	78
state	13	2016	Attempted Suicide	8
state	13	2016	Child Stealing	0
state	13	2016	Greivous Harm Wounding	72
state	13	2016	Kidnapping	3
state	13	2016	Man Slaughter	4
state	13	2016	Murder	78
state	13	2016	Other Offence	109
state	13	2016	Rape and Incident Assault	51
state	13	2016	Slave Dealing	0
state	13	2016	Suicide	2
state	13	2016	Unnatural Offence	11
state	14	2016	Assault	621
state	14	2016	Attempted Murder	31
state	14	2016	Attempted Suicide	0
state	14	2016	Child Stealing	4
state	14	2016	Greivous Harm Wounding	72
state	14	2016	Kidnapping	25
state	14	2016	Man Slaughter	4
state	14	2016	Murder	40
state	14	2016	Other Offence	105
state	14	2016	Rape and Incident Assault	32
state	14	2016	Slave Dealing	0
state	14	2016	Suicide	0
state	14	2016	Unnatural Offence	1
state	15	2016	Assault	217
state	15	2016	Attempted Murder	0
state	15	2016	Attempted Suicide	0
state	15	2016	Child Stealing	3
state	15	2016	Greivous Harm Wounding	429
state	15	2016	Kidnapping	49
state	15	2016	Man Slaughter	3
state	15	2016	Murder	91
state	15	2016	Other Offence	216
state	15	2016	Rape and Incident Assault	132
state	15	2016	Slave Dealing	0
state	15	2016	Suicide	2
state	15	2016	Unnatural Offence	41
state	16	2016	Assault	44
state	16	2016	Attempted Murder	1
state	16	2016	Attempted Suicide	2
state	16	2016	Child Stealing	0
state	16	2016	Greivous Harm Wounding	111
state	16	2016	Kidnapping	10
state	16	2016	Man Slaughter	0
state	16	2016	Murder	73
state	16	2016	Other Offence	110
state	16	2016	Rape and Incident Assault	52
state	16	2016	Slave Dealing	0
state	16	2016	Suicide	1
state	16	2016	Unnatural Offence	4
state	17	2016	Assault	184
state	17	2016	Attempted Murder	43
state	17	2016	Attempted Suicide	0
state	17	2016	Child Stealing	0
state	17	2016	Greivous Harm Wounding	38
state	17	2016	Kidnapping	33
state	17	2016	Man Slaughter	0
state	17	2016	Murder	52
state	17	2016	Other Offence	520
state	17	2016	Rape and Incident Assault	23
state	17	2016	Slave Dealing	0
state	17	2016	Suicide	0
state	17	2016	Unnatural Offence	0
state	18	2016	Assault	28
state	18	2016	Attempted Murder	4
state	18	2016	Attempted Suicide	0
state	18	2016	Child Stealing	0
state	18	2016	Greivous Harm Wounding	56
state	18	2016	Kidnapping	5
state	18	2016	Man Slaughter	0
state	18	2016	Murder	62
state	18	2016	Other Offence	90
state	18	2016	Rape and Incident Assault	83
state	18	2016	Slave Dealing	0
state	18	2016	Suicide	2
state	18	2016	Unnatural Offence	15
state	19	2016	Assault	26
state	19	2016	Attempted Murder	0
state	19	2016	Attempted Suicide	0
state	19	2016	Child Stealing	0
state	19	2016	Greivous Harm Wounding	47
state	19	2016	Kidnapping	64
state	19	2016	Man Slaughter	0
state	19	2016	Murder	128
state	19	2016	Other Offence	0
state	19	2016	Rape and Incident Assault	95
state	19	2016	Slave Dealing	0
state	19	2016	Suicide	0
state	19	2016	Unnatural Offence	25
state	20	2016	Assault	414
state	20	2016	Attempted Murder	3
state	20	2016	Attempted Suicide	1
state	20	2016	Child Stealing	0
state	20	2016	Greivous Harm Wounding	452
state	20	2016	Kidnapping	43
state	20	2016	Man Slaughter	0
state	20	2016	Murder	124
state	20	2016	Other Offence	727
state	20	2016	Rape and Incident Assault	237
state	20	2016	Slave Dealing	0
state	20	2016	Suicide	4
state	20	2016	Unnatural Offence	97
state	21	2016	Assault	150
state	21	2016	Attempted Murder	25
state	21	2016	Attempted Suicide	2
state	21	2016	Child Stealing	15
state	21	2016	Greivous Harm Wounding	22
state	21	2016	Kidnapping	30
state	21	2016	Man Slaughter	5
state	21	2016	Murder	52
state	21	2016	Other Offence	208
state	21	2016	Rape and Incident Assault	2
state	21	2016	Slave Dealing	10
state	21	2016	Suicide	23
state	21	2016	Unnatural Offence	58
state	22	2016	Assault	0
state	22	2016	Attempted Murder	0
state	22	2016	Attempted Suicide	0
state	22	2016	Child Stealing	0
state	22	2016	Greivous Harm Wounding	7
state	22	2016	Kidnapping	8
state	22	2016	Man Slaughter	0
state	22	2016	Murder	55
state	22	2016	Other Offence	0
state	22	2016	Rape and Incident Assault	15
state	22	2016	Slave Dealing	0
state	22	2016	Suicide	0
state	22	2016	Unnatural Offence	3
state	23	2016	Assault	0
state	23	2016	Attempted Murder	13
state	23	2016	Attempted Suicide	0
state	23	2016	Child Stealing	0
state	23	2016	Greivous Harm Wounding	0
state	23	2016	Kidnapping	46
state	23	2016	Man Slaughter	0
state	23	2016	Murder	76
state	23	2016	Other Offence	0
state	23	2016	Rape and Incident Assault	11
state	23	2016	Slave Dealing	0
state	23	2016	Suicide	0
state	23	2016	Unnatural Offence	0
state	24	2016	Assault	14
state	24	2016	Attempted Murder	12
state	24	2016	Attempted Suicide	1
state	24	2016	Child Stealing	3
state	24	2016	Greivous Harm Wounding	47
state	24	2016	Kidnapping	10
state	24	2016	Man Slaughter	0
state	24	2016	Murder	78
state	24	2016	Other Offence	85
state	24	2016	Rape and Incident Assault	16
state	24	2016	Slave Dealing	8
state	24	2016	Suicide	3
state	24	2016	Unnatural Offence	2
state	25	2016	Assault	8236
state	25	2016	Attempted Murder	43
state	25	2016	Attempted Suicide	5
state	25	2016	Child Stealing	65
state	25	2016	Greivous Harm Wounding	6523
state	25	2016	Kidnapping	98
state	25	2016	Man Slaughter	11
state	25	2016	Murder	216
state	25	2016	Other Offence	2931
state	25	2016	Rape and Incident Assault	441
state	25	2016	Slave Dealing	41
state	25	2016	Suicide	47
state	25	2016	Unnatural Offence	269
state	26	2016	Assault	112
state	26	2016	Attempted Murder	10
state	26	2016	Attempted Suicide	0
state	26	2016	Child Stealing	0
state	26	2016	Greivous Harm Wounding	162
state	26	2016	Kidnapping	10
state	26	2016	Man Slaughter	0
state	26	2016	Murder	51
state	26	2016	Other Offence	82
state	26	2016	Rape and Incident Assault	31
state	26	2016	Slave Dealing	0
state	26	2016	Suicide	3
state	26	2016	Unnatural Offence	5
state	27	2016	Assault	65
state	27	2016	Attempted Murder	3
state	27	2016	Attempted Suicide	1
state	27	2016	Child Stealing	1
state	27	2016	Greivous Harm Wounding	95
state	27	2016	Kidnapping	30
state	27	2016	Man Slaughter	0
state	27	2016	Murder	121
state	27	2016	Other Offence	197
state	27	2016	Rape and Incident Assault	41
state	27	2016	Slave Dealing	0
state	27	2016	Suicide	2
state	27	2016	Unnatural Offence	8
country	NG	2016	Assault	24025
country	NG	2016	Attempted Murder	771
country	NG	2016	Attempted Suicide	196
country	NG	2016	Child Stealing	345
country	NG	2016	Greivous Harm Wounding	11191
country	NG	2016	Kidnapping	1134
country	NG	2016	Man Slaughter	120
country	NG	2016	Murder	3219
country	NG	2016	Other Offence	8757
country	NG	2016	Rape and Incident Assault	2279
country	NG	2016	Slave Dealing	107
country	NG	2016	Suicide	333
country	NG	2016	Unnatural Offence	1164
state	28	2016	Assault	150
state	28	2016	Attempted Murder	14
state	28	2016	Attempted Suicide	4
state	28	2016	Child Stealing	4
state	28	2016	Greivous Harm Wounding	88
state	28	2016	Kidnapping	15
state	28	2016	Man Slaughter	0
state	28	2016	Murder	105
state	28	2016	Other Offence	68
state	28	2016	Rape and Incident Assault	43
state	28	2016	Slave Dealing	0
state	28	2016	Suicide	20
state	28	2016	Unnatural Offence	7
state	29	2016	Assault	686
state	29	2016	Attempted Murder	17
state	29	2016	Attempted Suicide	0
state	29	2016	Child Stealing	12
state	29	2016	Greivous Harm Wounding	107
state	29	2016	Kidnapping	22
state	29	2016	Man Slaughter	0
state	29	2016	Murder	108
state	29	2016	Other Offence	301
state	29	2016	Rape and Incident Assault	27
state	29	2016	Slave Dealing	0
state	29	2016	Suicide	0
state	29	2016	Unnatural Offence	2
state	30	2016	Assault	144
state	30	2016	Attempted Murder	14
state	30	2016	Attempted Suicide	0
state	30	2016	Child Stealing	1
state	30	2016	Greivous Harm Wounding	88
state	30	2016	Kidnapping	15
state	30	2016	Man Slaughter	0
state	30	2016	Murder	25
state	30	2016	Other Offence	19
state	30	2016	Rape and Incident Assault	2
state	30	2016	Slave Dealing	1
state	30	2016	Suicide	2
state	30	2016	Unnatural Offence	7
state	31	2016	Assault	660
state	31	2016	Attempted Murder	1
state	31	2016	Attempted Suicide	0
state	31	2016	Child Stealing	8
state	31	2016	Greivous Harm Wounding	246
state	31	2016	Kidnapping	2
state	31	2016	Man Slaughter	0
state	31	2016	Murder	30
state	31	2016	Other Offence	0
state	31	2016	Rape and Incident Assault	83
state	31	2016	Slave Dealing	2
state	31	2016	Suicide	10
state	31	2016	Unnatural Offence	16
state	32	2016	Assault	68
state	32	2016	Attempted Murder	5
state	32	2016	Attempted Suicide	0
state	32	2016	Child Stealing	0
state	32	2016	Greivous Harm Wounding	236
state	32	2016	Kidnapping	10
state	32	2016	Man Slaughter	1
state	32	2016	Murder	71
state	32	2016	Other Offence	265
state	32	2016	Rape and Incident Assault	66
state	32	2016	Slave Dealing	0
state	32	2016	Suicide	6
state	32	2016	Unnatural Offence	8
state	33	2016	Assault	0
state	33	2016	Attempted Murder	3
state	33	2016	Attempted Suicide	112
state	33	2016	Child Stealing	31
state	33	2016	Greivous Harm Wounding	0
state	33	2016	Kidnapping	82
state	33	2016	Man Slaughter	10
state	33	2016	Murder	67
state	33	2016	Other Offence	0
state	33	2016	Rape and Incident Assault	5
state	33	2016	Slave Dealing	23
state	33	2016	Suicide	105
state	33	2016	Unnatural Offence	29
state	34	2016	Assault	115
state	34	2016	Attempted Murder	4
state	34	2016	Attempted Suicide	0
state	34	2016	Child Stealing	0
state	34	2016	Greivous Harm Wounding	206
state	34	2016	Kidnapping	27
state	34	2016	Man Slaughter	0
state	34	2016	Murder	55
state	34	2016	Other Offence	315
state	34	2016	Rape and Incident Assault	28
state	34	2016	Slave Dealing	0
state	34	2016	Suicide	4
state	34	2016	Unnatural Offence	12
state	35	2016	Assault	54
state	35	2016	Attempted Murder	0
state	35	2016	Attempted Suicide	0
state	35	2016	Child Stealing	0
state	35	2016	Greivous Harm Wounding	158
state	35	2016	Kidnapping	14
state	35	2016	Man Slaughter	0
state	35	2016	Murder	115
state	35	2016	Other Offence	176
state	35	2016	Rape and Incident Assault	30
state	35	2016	Slave Dealing	0
state	35	2016	Suicide	1
state	35	2016	Unnatural Offence	2
state	36	2016	Assault	11
state	36	2016	Attempted Murder	0
state	36	2016	Attempted Suicide	0
state	36	2016	Child Stealing	0
state	36	2016	Greivous Harm Wounding	72
state	36	2016	Kidnapping	3
state	36	2016	Man Slaughter	0
state	36	2016	Murder	110
state	36	2016	Other Offence	109
state	36	2016	Rape and Incident Assault	51
state	36	2016	Slave Dealing	0
state	36	2016	Suicide	0
state	36	2016	Unnatural Offence	11
state	37	2016	Assault	21
state	37	2016	Attempted Murder	19
state	37	2016	Attempted Suicide	0
state	37	2016	Child Stealing	0
state	37	2016	Greivous Harm Wounding	34
state	37	2016	Kidnapping	9
state	37	2016	Man Slaughter	0
state	37	2016	Murder	44
state	37	2016	Other Offence	9
state	37	2016	Rape and Incident Assault	23
state	37	2016	Slave Dealing	0
state	37	2016	Suicide	0
state	37	2016	Unnatural Offence	10
\.


--
-- Name: offences_against_person offences_against_person_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.offences_against_person
    ADD CONSTRAINT offences_against_person_pkey PRIMARY KEY (geo_level, geo_code, geo_version, crime);


--
-- PostgreSQL database dump complete
--
