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

ALTER TABLE IF EXISTS ONLY public.offences_against_property DROP CONSTRAINT IF EXISTS offences_against_property_pkey;
DROP TABLE IF EXISTS public.offences_against_property;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: offences_against_property; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.offences_against_property (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    crime character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: offences_against_property; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.offences_against_property (geo_level, geo_code, geo_version, crime, total) FROM stdin;
state	1	2016	Armed Robbery	88
state	1	2016	Arson	345
state	1	2016	Burglary	23
state	1	2016	False Pretence and Cheating/Fraud	544
state	1	2016	Forgery	4
state	1	2016	House Breaking	576
state	1	2016	Other Offences	89
state	1	2016	Receiving Stolen Property	9
state	1	2016	Store Breaking	23
state	1	2016	Theft/Stealing	570
state	1	2016	Unlawful Possess	49
state	1	2016	Wounding with Menace	0
state	2	2016	Armed Robbery	45
state	2	2016	Arson	0
state	2	2016	Burglary	0
state	2	2016	False Pretence and Cheating/Fraud	106
state	2	2016	Forgery	5
state	2	2016	House Breaking	62
state	2	2016	Other Offences	246
state	2	2016	Receiving Stolen Property	65
state	2	2016	Store Breaking	24
state	2	2016	Theft/Stealing	825
state	2	2016	Unlawful Possess	28
state	2	2016	Wounding with Menace	0
state	3	2016	Armed Robbery	47
state	3	2016	Arson	4
state	3	2016	Burglary	14
state	3	2016	False Pretence and Cheating/Fraud	168
state	3	2016	Forgery	11
state	3	2016	House Breaking	13
state	3	2016	Other Offences	5
state	3	2016	Receiving Stolen Property	8
state	3	2016	Store Breaking	0
state	3	2016	Theft/Stealing	310
state	3	2016	Unlawful Possess	7
state	3	2016	Wounding with Menace	6
state	4	2016	Armed Robbery	6
state	4	2016	Arson	12
state	4	2016	Burglary	22
state	4	2016	False Pretence and Cheating/Fraud	0
state	4	2016	Forgery	20
state	4	2016	House Breaking	76
state	4	2016	Other Offences	341
state	4	2016	Receiving Stolen Property	19
state	4	2016	Store Breaking	7
state	4	2016	Theft/Stealing	484
state	4	2016	Unlawful Possess	43
state	4	2016	Wounding with Menace	0
state	5	2016	Armed Robbery	57
state	5	2016	Arson	9
state	5	2016	Burglary	0
state	5	2016	False Pretence and Cheating/Fraud	43
state	5	2016	Forgery	10
state	5	2016	House Breaking	0
state	5	2016	Other Offences	25
state	5	2016	Receiving Stolen Property	4
state	5	2016	Store Breaking	0
state	5	2016	Theft/Stealing	33
state	5	2016	Unlawful Possess	5
state	5	2016	Wounding with Menace	0
state	6	2016	Armed Robbery	148
state	6	2016	Arson	7
state	6	2016	Burglary	31
state	6	2016	False Pretence and Cheating/Fraud	137
state	6	2016	Forgery	12
state	6	2016	House Breaking	11
state	6	2016	Other Offences	168
state	6	2016	Receiving Stolen Property	4
state	6	2016	Store Breaking	13
state	6	2016	Theft/Stealing	266
state	6	2016	Unlawful Possess	41
state	6	2016	Wounding with Menace	2
state	7	2016	Armed Robbery	59
state	7	2016	Arson	8
state	7	2016	Burglary	32
state	7	2016	False Pretence and Cheating/Fraud	22
state	7	2016	Forgery	11
state	7	2016	House Breaking	34
state	7	2016	Other Offences	420
state	7	2016	Receiving Stolen Property	5
state	7	2016	Store Breaking	90
state	7	2016	Theft/Stealing	811
state	7	2016	Unlawful Possess	3
state	7	2016	Wounding with Menace	5
state	8	2016	Armed Robbery	25
state	8	2016	Arson	4
state	8	2016	Burglary	4
state	8	2016	False Pretence and Cheating/Fraud	234
state	8	2016	Forgery	10
state	8	2016	House Breaking	16
state	8	2016	Other Offences	191
state	8	2016	Receiving Stolen Property	4
state	8	2016	Store Breaking	44
state	8	2016	Theft/Stealing	357
state	8	2016	Unlawful Possess	11
state	8	2016	Wounding with Menace	7
state	9	2016	Armed Robbery	112
state	9	2016	Arson	16
state	9	2016	Burglary	28
state	9	2016	False Pretence and Cheating/Fraud	131
state	9	2016	Forgery	11
state	9	2016	House Breaking	25
state	9	2016	Other Offences	152
state	9	2016	Receiving Stolen Property	5
state	9	2016	Store Breaking	19
state	9	2016	Theft/Stealing	624
state	9	2016	Unlawful Possess	31
state	9	2016	Wounding with Menace	4
state	10	2016	Armed Robbery	60
state	10	2016	Arson	12
state	10	2016	Burglary	156
state	10	2016	False Pretence and Cheating/Fraud	345
state	10	2016	Forgery	20
state	10	2016	House Breaking	146
state	10	2016	Other Offences	341
state	10	2016	Receiving Stolen Property	19
state	10	2016	Store Breaking	370
state	10	2016	Theft/Stealing	1,586
state	10	2016	Unlawful Possess	43
state	10	2016	Wounding with Menace	11
state	11	2016	Armed Robbery	370
state	11	2016	Arson	22
state	11	2016	Burglary	45
state	11	2016	False Pretence and Cheating/Fraud	562
state	11	2016	Forgery	40
state	11	2016	House Breaking	66
state	11	2016	Other Offences	275
state	11	2016	Receiving Stolen Property	23
state	11	2016	Store Breaking	41
state	11	2016	Theft/Stealing	1,272
state	11	2016	Unlawful Possess	64
state	11	2016	Wounding with Menace	7
state	12	2016	Armed Robbery	1
state	12	2016	Arson	89
state	12	2016	Burglary	36
state	12	2016	False Pretence and Cheating/Fraud	5
state	12	2016	Forgery	8
state	12	2016	House Breaking	18
state	12	2016	Other Offences	4
state	12	2016	Receiving Stolen Property	49
state	12	2016	Store Breaking	20
state	12	2016	Theft/Stealing	20
state	12	2016	Unlawful Possess	345
state	12	2016	Wounding with Menace	253
state	13	2016	Armed Robbery	52
state	13	2016	Arson	15
state	13	2016	Burglary	0
state	13	2016	False Pretence and Cheating/Fraud	45
state	13	2016	Forgery	7
state	13	2016	House Breaking	5
state	13	2016	Other Offences	77
state	13	2016	Receiving Stolen Property	3
state	13	2016	Store Breaking	2
state	13	2016	Theft/Stealing	335
state	13	2016	Unlawful Possess	13
state	13	2016	Wounding with Menace	0
state	14	2016	Armed Robbery	52
state	14	2016	Arson	1
state	14	2016	Burglary	71
state	14	2016	False Pretence and Cheating/Fraud	114
state	14	2016	Forgery	29
state	14	2016	House Breaking	71
state	14	2016	Other Offences	96
state	14	2016	Receiving Stolen Property	41
state	14	2016	Store Breaking	66
state	14	2016	Theft/Stealing	425
state	14	2016	Unlawful Possess	115
state	14	2016	Wounding with Menace	30
state	15	2016	Armed Robbery	384
state	15	2016	Arson	12
state	15	2016	Burglary	32
state	15	2016	False Pretence and Cheating/Fraud	518
state	15	2016	Forgery	7
state	15	2016	House Breaking	129
state	15	2016	Other Offences	188
state	15	2016	Receiving Stolen Property	288
state	15	2016	Store Breaking	16
state	15	2016	Theft/Stealing	2,586
state	15	2016	Unlawful Possess	0
state	15	2016	Wounding with Menace	0
state	16	2016	Armed Robbery	89
state	16	2016	Arson	47
state	16	2016	Burglary	0
state	16	2016	False Pretence and Cheating/Fraud	164
state	16	2016	Forgery	3
state	16	2016	House Breaking	59
state	16	2016	Other Offences	99
state	16	2016	Receiving Stolen Property	35
state	16	2016	Store Breaking	8
state	16	2016	Theft/Stealing	458
state	16	2016	Unlawful Possess	10
state	16	2016	Wounding with Menace	0
state	17	2016	Armed Robbery	40
state	17	2016	Arson	6
state	17	2016	Burglary	27
state	17	2016	False Pretence and Cheating/Fraud	120
state	17	2016	Forgery	0
state	17	2016	House Breaking	31
state	17	2016	Other Offences	270
state	17	2016	Receiving Stolen Property	0
state	17	2016	Store Breaking	21
state	17	2016	Theft/Stealing	166
state	17	2016	Unlawful Possess	16
state	17	2016	Wounding with Menace	0
state	18	2016	Armed Robbery	44
state	18	2016	Arson	5
state	18	2016	Burglary	1
state	18	2016	False Pretence and Cheating/Fraud	15
state	18	2016	Forgery	0
state	18	2016	House Breaking	41
state	18	2016	Other Offences	127
state	18	2016	Receiving Stolen Property	7
state	18	2016	Store Breaking	0
state	18	2016	Theft/Stealing	150
state	18	2016	Unlawful Possess	7
state	18	2016	Wounding with Menace	0
state	19	2016	Armed Robbery	67
state	19	2016	Arson	0
state	19	2016	Burglary	0
state	19	2016	False Pretence and Cheating/Fraud	309
state	19	2016	Forgery	43
state	19	2016	House Breaking	40
state	19	2016	Other Offences	3
state	19	2016	Receiving Stolen Property	27
state	19	2016	Store Breaking	43
state	19	2016	Theft/Stealing	133
state	19	2016	Unlawful Possess	29
state	19	2016	Wounding with Menace	0
state	20	2016	Armed Robbery	36
state	20	2016	Arson	22
state	20	2016	Burglary	8
state	20	2016	False Pretence and Cheating/Fraud	699
state	20	2016	Forgery	10
state	20	2016	House Breaking	135
state	20	2016	Other Offences	466
state	20	2016	Receiving Stolen Property	199
state	20	2016	Store Breaking	137
state	20	2016	Theft/Stealing	1,385
state	20	2016	Unlawful Possess	213
state	20	2016	Wounding with Menace	4
state	21	2016	Armed Robbery	98
state	21	2016	Arson	6
state	21	2016	Burglary	5
state	21	2016	False Pretence and Cheating/Fraud	101
state	21	2016	Forgery	23
state	21	2016	House Breaking	7
state	21	2016	Other Offences	104
state	21	2016	Receiving Stolen Property	1
state	21	2016	Store Breaking	11
state	21	2016	Theft/Stealing	498
state	21	2016	Unlawful Possess	19
state	21	2016	Wounding with Menace	29
state	22	2016	Armed Robbery	30
state	22	2016	Arson	5
state	22	2016	Burglary	0
state	22	2016	False Pretence and Cheating/Fraud	20
state	22	2016	Forgery	0
state	22	2016	House Breaking	2
state	22	2016	Other Offences	7
state	22	2016	Receiving Stolen Property	5
state	22	2016	Store Breaking	1
state	22	2016	Theft/Stealing	27
state	22	2016	Unlawful Possess	9
state	22	2016	Wounding with Menace	0
state	23	2016	Armed Robbery	37
state	23	2016	Arson	0
state	23	2016	Burglary	0
state	23	2016	False Pretence and Cheating/Fraud	7
state	23	2016	Forgery	2
state	23	2016	House Breaking	1
state	23	2016	Other Offences	22
state	23	2016	Receiving Stolen Property	0
state	23	2016	Store Breaking	0
state	23	2016	Theft/Stealing	20
state	23	2016	Unlawful Possess	22
state	23	2016	Wounding with Menace	0
state	24	2016	Armed Robbery	80
state	24	2016	Arson	12
state	24	2016	Burglary	20
state	24	2016	False Pretence and Cheating/Fraud	20
state	24	2016	Forgery	5
state	24	2016	House Breaking	36
state	24	2016	Other Offences	67
state	24	2016	Receiving Stolen Property	8
state	24	2016	Store Breaking	18
state	24	2016	Theft/Stealing	253
state	24	2016	Unlawful Possess	6
state	24	2016	Wounding with Menace	1
state	25	2016	Armed Robbery	370
state	25	2016	Arson	222
state	25	2016	Burglary	1,213
state	25	2016	False Pretence and Cheating/Fraud	5,623
state	25	2016	Forgery	403
state	25	2016	House Breaking	668
state	25	2016	Other Offences	2,275
state	25	2016	Receiving Stolen Property	233
state	25	2016	Store Breaking	417
state	25	2016	Theft/Stealing	12,724
state	25	2016	Unlawful Possess	764
state	25	2016	Wounding with Menace	77
state	26	2016	Armed Robbery	29
state	26	2016	Arson	20
state	26	2016	Burglary	0
state	26	2016	False Pretence and Cheating/Fraud	144
state	26	2016	Forgery	4
state	26	2016	House Breaking	121
state	26	2016	Other Offences	61
state	26	2016	Receiving Stolen Property	54
state	26	2016	Store Breaking	45
state	26	2016	Theft/Stealing	0
state	26	2016	Unlawful Possess	3
state	26	2016	Wounding with Menace	0
state	27	2016	Armed Robbery	58
state	27	2016	Arson	66
state	27	2016	Burglary	0
state	27	2016	False Pretence and Cheating/Fraud	137
state	27	2016	Forgery	2
state	27	2016	House Breaking	82
state	27	2016	Other Offences	339
state	27	2016	Receiving Stolen Property	17
state	27	2016	Store Breaking	22
state	27	2016	Theft/Stealing	595
state	27	2016	Unlawful Possess	25
state	27	2016	Wounding with Menace	0
country	NG	2016	Armed Robbery	3,527
country	NG	2016	Arson	1,086
country	NG	2016	Burglary	2,167
country	NG	2016	False Pretence and Cheating/Fraud	11,779
country	NG	2016	Forgery	801
country	NG	2016	House Breaking	3,212
country	NG	2016	Other Offences	7,442
country	NG	2016	Receiving Stolen Property	1,354
country	NG	2016	Store Breaking	1,873
country	NG	2016	Theft/Stealing	32,348
country	NG	2016	Unlawful Possess	2,455
country	NG	2016	Wounding with Menace	535
state	28	2016	Armed Robbery	65
state	28	2016	Arson	11
state	28	2016	Burglary	63
state	28	2016	False Pretence and Cheating/Fraud	70
state	28	2016	Forgery	11
state	28	2016	House Breaking	57
state	28	2016	Other Offences	47
state	28	2016	Receiving Stolen Property	25
state	28	2016	Store Breaking	34
state	28	2016	Theft/Stealing	127
state	28	2016	Unlawful Possess	31
state	28	2016	Wounding with Menace	5
state	29	2016	Armed Robbery	88
state	29	2016	Arson	3
state	29	2016	Burglary	89
state	29	2016	False Pretence and Cheating/Fraud	485
state	29	2016	Forgery	16
state	29	2016	House Breaking	83
state	29	2016	Other Offences	0
state	29	2016	Receiving Stolen Property	8
state	29	2016	Store Breaking	57
state	29	2016	Theft/Stealing	1,107
state	29	2016	Unlawful Possess	203
state	29	2016	Wounding with Menace	3
state	30	2016	Armed Robbery	32
state	30	2016	Arson	0
state	30	2016	Burglary	42
state	30	2016	False Pretence and Cheating/Fraud	60
state	30	2016	Forgery	1
state	30	2016	House Breaking	37
state	30	2016	Other Offences	1
state	30	2016	Receiving Stolen Property	1
state	30	2016	Store Breaking	49
state	30	2016	Theft/Stealing	279
state	30	2016	Unlawful Possess	10
state	30	2016	Wounding with Menace	2
state	31	2016	Armed Robbery	59
state	31	2016	Arson	18
state	31	2016	Burglary	149
state	31	2016	False Pretence and Cheating/Fraud	224
state	31	2016	Forgery	24
state	31	2016	House Breaking	172
state	31	2016	Other Offences	0
state	31	2016	Receiving Stolen Property	4
state	31	2016	Store Breaking	157
state	31	2016	Theft/Stealing	978
state	31	2016	Unlawful Possess	80
state	31	2016	Wounding with Menace	0
state	32	2016	Armed Robbery	44
state	32	2016	Arson	16
state	32	2016	Burglary	9
state	32	2016	False Pretence and Cheating/Fraud	254
state	32	2016	Forgery	26
state	32	2016	House Breaking	138
state	32	2016	Other Offences	342
state	32	2016	Receiving Stolen Property	79
state	32	2016	Store Breaking	72
state	32	2016	Theft/Stealing	801
state	32	2016	Unlawful Possess	86
state	32	2016	Wounding with Menace	2
state	33	2016	Armed Robbery	564
state	33	2016	Arson	0
state	33	2016	Burglary	45
state	33	2016	False Pretence and Cheating/Fraud	54
state	33	2016	Forgery	3
state	33	2016	House Breaking	144
state	33	2016	Other Offences	0
state	33	2016	Receiving Stolen Property	20
state	33	2016	Store Breaking	4
state	33	2016	Theft/Stealing	121
state	33	2016	Unlawful Possess	61
state	33	2016	Wounding with Menace	87
state	34	2016	Armed Robbery	60
state	34	2016	Arson	28
state	34	2016	Burglary	0
state	34	2016	False Pretence and Cheating/Fraud	124
state	34	2016	Forgery	8
state	34	2016	House Breaking	21
state	34	2016	Other Offences	302
state	34	2016	Receiving Stolen Property	38
state	34	2016	Store Breaking	18
state	34	2016	Theft/Stealing	993
state	34	2016	Unlawful Possess	30
state	34	2016	Wounding with Menace	0
state	35	2016	Armed Robbery	51
state	35	2016	Arson	25
state	35	2016	Burglary	1
state	35	2016	False Pretence and Cheating/Fraud	109
state	35	2016	Forgery	3
state	35	2016	House Breaking	64
state	35	2016	Other Offences	176
state	35	2016	Receiving Stolen Property	15
state	35	2016	Store Breaking	19
state	35	2016	Theft/Stealing	521
state	35	2016	Unlawful Possess	14
state	35	2016	Wounding with Menace	0
state	36	2016	Armed Robbery	32
state	36	2016	Arson	15
state	36	2016	Burglary	0
state	36	2016	False Pretence and Cheating/Fraud	45
state	36	2016	Forgery	7
state	36	2016	House Breaking	6
state	36	2016	Other Offences	77
state	36	2016	Receiving Stolen Property	3
state	36	2016	Store Breaking	2
state	36	2016	Theft/Stealing	335
state	36	2016	Unlawful Possess	13
state	36	2016	Wounding with Menace	0
state	37	2016	Armed Robbery	46
state	37	2016	Arson	0
state	37	2016	Burglary	0
state	37	2016	False Pretence and Cheating/Fraud	21
state	37	2016	Forgery	1
state	37	2016	House Breaking	19
state	37	2016	Other Offences	39
state	37	2016	Receiving Stolen Property	29
state	37	2016	Store Breaking	2
state	37	2016	Theft/Stealing	155
state	37	2016	Unlawful Possess	6
state	37	2016	Wounding with Menace	0
\.


--
-- Name: offences_against_property offences_against_property_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.offences_against_property
    ADD CONSTRAINT offences_against_property_pkey PRIMARY KEY (geo_level, geo_code, geo_version, crime);


--
-- PostgreSQL database dump complete
--
