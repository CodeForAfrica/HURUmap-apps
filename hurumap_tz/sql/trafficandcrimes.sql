--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2017-06-23 15:47:44 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 235 (class 1259 OID 16835)
-- Name: trafficandcrimes; Type: TABLE; Schema: public; Owner: hurumap_tz
--

CREATE TABLE trafficandcrimes (
    geo_level character varying(50),
    geo_code character varying(50),
    "traffic and crimes" character varying(100),
    total integer
);


ALTER TABLE trafficandcrimes OWNER TO hurumap_tz;

--
-- TOC entry 2284 (class 0 OID 16835)
-- Dependencies: 235
-- Data for Name: trafficandcrimes; Type: TABLE DATA; Schema: public; Owner: hurumap_tz
--

COPY trafficandcrimes (geo_level, geo_code, "traffic and crimes", total) FROM stdin;
region	1	Minor Offences	112408
region	10	Minor Offences	17923
region	11	Minor Offences	54449
region	12	Minor Offences	2611
region	12	Minor Offences	2611
region	13	Minor Offences	2639
region	13	Minor Offences	2639
region	14	Minor Offences	18381
region	15	Minor Offences	37694
region	16	Minor Offences	14079
region	17	Minor Offences	71372
region	18	Minor Offences	86123
region	19	Minor Offences	27266
region	20	Minor Offences	69694
region	21	Minor Offences	31260
region	22	Minor Offences	78062
region	23	Minor Offences	11657
region	24	Minor Offences	11229
region	25	Minor Offences	37523
region	26	Minor Offences	13762
region	27	Minor Offences	37224
region	28	Minor Offences	35951
region	29	Minor Offences	30241
region	3	Minor Offences	41537
region	30	Minor Offences	6470
region	4	Minor Offences	24107
region	5	Minor Offences	36542
region	6	Minor Offences	47801
region	7	Minor Offences	1276
region	8	Minor Offences	2528
region	8	Minor Offences	2528
region	9	Minor Offences	7470
region	1	Fatal Accidents	21
region	10	Fatal Accidents	62
region	11	Fatal Accidents	58
region	12	Fatal Accidents	6
region	12	Fatal Accidents	6
region	13	Fatal Accidents	21
region	13	Fatal Accidents	21
region	14	Fatal Accidents	85
region	15	Fatal Accidents	90
region	16	Fatal Accidents	68
region	17	Fatal Accidents	264
region	18	Fatal Accidents	251
region	19	Fatal Accidents	49
region	20	Fatal Accidents	152
region	21	Fatal Accidents	91
region	22	Fatal Accidents	175
region	23	Fatal Accidents	43
region	24	Fatal Accidents	114
region	25	Fatal Accidents	111
region	26	Fatal Accidents	48
region	27	Fatal Accidents	144
region	28	Fatal Accidents	99
region	29	Fatal Accidents	137
region	3	Fatal Accidents	124
region	30	Fatal Accidents	55
region	4	Fatal Accidents	75
region	5	Fatal Accidents	108
region	6	Fatal Accidents	67
region	7	Fatal Accidents	7
region	8	Fatal Accidents	14
region	8	Fatal Accidents	14
region	9	Fatal Accidents	37
region	1	Injury Accidents	20
region	10	Injury Accidents	17
region	11	Injury Accidents	101
region	12	Injury Accidents	4
region	12	Injury Accidents	4
region	13	Injury Accidents	14
region	13	Injury Accidents	14
region	14	Injury Accidents	120
region	15	Injury Accidents	138
region	16	Injury Accidents	23
region	17	Injury Accidents	170
region	18	Injury Accidents	109
region	19	Injury Accidents	12
region	20	Injury Accidents	44
region	21	Injury Accidents	10
region	22	Injury Accidents	283
region	23	Injury Accidents	10
region	24	Injury Accidents	257
region	25	Injury Accidents	64
region	26	Injury Accidents	27
region	27	Injury Accidents	43
region	28	Injury Accidents	15
region	29	Injury Accidents	106
region	3	Injury Accidents	116
region	30	Injury Accidents	158
region	4	Injury Accidents	22
region	5	Injury Accidents	27
region	6	Injury Accidents	27
region	7	Injury Accidents	0
region	8	Injury Accidents	52
region	8	Injury Accidents	52
region	9	Injury Accidents	60
region	1	Normal Accidents	12
region	10	Normal Accidents	3
region	11	Normal Accidents	41
region	12	Normal Accidents	4
region	12	Normal Accidents	4
region	13	Normal Accidents	7
region	13	Normal Accidents	7
region	14	Normal Accidents	53
region	15	Normal Accidents	77
region	16	Normal Accidents	1
region	17	Normal Accidents	0
region	18	Normal Accidents	19
region	19	Normal Accidents	1
region	20	Normal Accidents	10
region	21	Normal Accidents	1
region	22	Normal Accidents	10
region	23	Normal Accidents	0
region	24	Normal Accidents	34
region	25	Normal Accidents	0
region	26	Normal Accidents	1
region	27	Normal Accidents	4
region	28	Normal Accidents	3
region	29	Normal Accidents	47
region	3	Normal Accidents	70
region	30	Normal Accidents	81
region	4	Normal Accidents	1
region	5	Normal Accidents	0
region	6	Normal Accidents	10
region	7	Normal Accidents	16
region	8	Normal Accidents	1
region	8	Normal Accidents	1
region	9	Normal Accidents	15
region	1	Male Dead Persons	21
region	10	Male Dead Persons	63
region	11	Male Dead Persons	57
region	12	Male Dead Persons	7
region	12	Male Dead Persons	7
region	13	Male Dead Persons	18
region	13	Male Dead Persons	18
region	14	Male Dead Persons	83
region	15	Male Dead Persons	94
region	16	Male Dead Persons	58
region	17	Male Dead Persons	181
region	18	Male Dead Persons	276
region	19	Male Dead Persons	42
region	20	Male Dead Persons	136
region	21	Male Dead Persons	78
region	22	Male Dead Persons	184
region	23	Male Dead Persons	37
region	24	Male Dead Persons	118
region	25	Male Dead Persons	104
region	26	Male Dead Persons	45
region	27	Male Dead Persons	143
region	28	Male Dead Persons	111
region	29	Male Dead Persons	131
region	3	Male Dead Persons	131
region	30	Male Dead Persons	50
region	4	Male Dead Persons	75
region	5	Male Dead Persons	169
region	6	Male Dead Persons	68
region	7	Male Dead Persons	7
region	8	Male Dead Persons	10
region	8	Male Dead Persons	10
region	9	Male Dead Persons	42
region	1	Female Dead Persons	5
region	10	Female Dead Persons	16
region	11	Female Dead Persons	15
region	12	Female Dead Persons	1
region	12	Female Dead Persons	1
region	13	Female Dead Persons	0
region	13	Female Dead Persons	0
region	14	Female Dead Persons	19
region	15	Female Dead Persons	22
region	16	Female Dead Persons	19
region	17	Female Dead Persons	153
region	18	Female Dead Persons	45
region	19	Female Dead Persons	16
region	20	Female Dead Persons	35
region	21	Female Dead Persons	25
region	22	Female Dead Persons	33
region	23	Female Dead Persons	10
region	24	Female Dead Persons	20
region	25	Female Dead Persons	22
region	26	Female Dead Persons	9
region	27	Female Dead Persons	42
region	28	Female Dead Persons	22
region	29	Female Dead Persons	31
region	3	Female Dead Persons	13
region	30	Female Dead Persons	5
region	4	Female Dead Persons	13
region	5	Female Dead Persons	44
region	6	Female Dead Persons	18
region	7	Female Dead Persons	1
region	8	Female Dead Persons	7
region	8	Female Dead Persons	7
region	9	Female Dead Persons	7
region	1	Male Injured Persons	43
region	10	Male Injured Persons	84
region	11	Male Injured Persons	180
region	12	Male Injured Persons	28
region	12	Male Injured Persons	28
region	13	Male Injured Persons	26
region	13	Male Injured Persons	26
region	14	Male Injured Persons	203
region	15	Male Injured Persons	319
region	16	Male Injured Persons	60
region	17	Male Injured Persons	265
region	18	Male Injured Persons	457
region	19	Male Injured Persons	47
region	20	Male Injured Persons	178
region	21	Male Injured Persons	45
region	22	Male Injured Persons	585
region	23	Male Injured Persons	24
region	24	Male Injured Persons	361
region	25	Male Injured Persons	144
region	26	Male Injured Persons	97
region	27	Male Injured Persons	170
region	28	Male Injured Persons	134
region	29	Male Injured Persons	296
region	3	Male Injured Persons	212
region	30	Male Injured Persons	250
region	4	Male Injured Persons	138
region	5	Male Injured Persons	140
region	6	Male Injured Persons	77
region	7	Male Injured Persons	53
region	8	Male Injured Persons	100
region	8	Male Injured Persons	100
region	9	Male Injured Persons	96
region	1	Female Injured Persons	17
region	10	Female Injured Persons	49
region	11	Female Injured Persons	59
region	12	Female Injured Persons	5
region	12	Female Injured Persons	5
region	13	Female Injured Persons	7
region	13	Female Injured Persons	7
region	14	Female Injured Persons	89
region	15	Female Injured Persons	131
region	16	Female Injured Persons	33
region	17	Female Injured Persons	216
region	18	Female Injured Persons	178
region	19	Female Injured Persons	15
region	20	Female Injured Persons	37
region	21	Female Injured Persons	28
region	22	Female Injured Persons	147
region	23	Female Injured Persons	6
region	24	Female Injured Persons	142
region	25	Female Injured Persons	32
region	26	Female Injured Persons	44
region	27	Female Injured Persons	89
region	28	Female Injured Persons	57
region	29	Female Injured Persons	110
region	3	Female Injured Persons	68
region	30	Female Injured Persons	39
region	4	Female Injured Persons	57
region	5	Female Injured Persons	37
region	6	Female Injured Persons	22
region	7	Female Injured Persons	15
region	8	Female Injured Persons	27
region	8	Female Injured Persons	27
region	9	Female Injured Persons	26
region	1	Male Suspects	101500
region	10	Male Suspects	16584
region	11	Male Suspects	49124
region	12	Male Suspects	3916
region	12	Male Suspects	3916
region	13	Male Suspects	3621
region	13	Male Suspects	3621
region	14	Male Suspects	17103
region	15	Male Suspects	34008
region	16	Male Suspects	13043
region	17	Male Suspects	63952
region	18	Male Suspects	78437
region	19	Male Suspects	25197
region	20	Male Suspects	61295
region	21	Male Suspects	28410
region	22	Male Suspects	70323
region	23	Male Suspects	10623
region	24	Male Suspects	10270
region	25	Male Suspects	33109
region	26	Male Suspects	12289
region	27	Male Suspects	32662
region	28	Male Suspects	34803
region	29	Male Suspects	27741
region	3	Male Suspects	37389
region	30	Male Suspects	6860
region	4	Male Suspects	21998
region	5	Male Suspects	33434
region	6	Male Suspects	43530
region	7	Male Suspects	1474
region	8	Male Suspects	2561
region	8	Male Suspects	2561
region	9	Male Suspects	6891
region	1	Female Suspects	0
region	10	Female Suspects	0
region	11	Female Suspects	0
region	12	Female Suspects	7
region	12	Female Suspects	7
region	13	Female Suspects	6
region	13	Female Suspects	6
region	14	Female Suspects	0
region	15	Female Suspects	0
region	16	Female Suspects	0
region	17	Female Suspects	0
region	18	Female Suspects	0
region	19	Female Suspects	0
region	20	Female Suspects	0
region	21	Female Suspects	0
region	22	Female Suspects	0
region	23	Female Suspects	0
region	24	Female Suspects	0
region	25	Female Suspects	0
region	26	Female Suspects	0
region	27	Female Suspects	0
region	28	Female Suspects	0
region	29	Female Suspects	0
region	3	Female Suspects	0
region	30	Female Suspects	6
region	4	Female Suspects	0
region	5	Female Suspects	0
region	6	Female Suspects	0
region	7	Female Suspects	0
region	8	Female Suspects	0
region	8	Female Suspects	0
region	9	Female Suspects	0
country	TZ	Minor Offences	1389483
country	TZ	Fatal Accidents	2950
country	TZ	Injury Accidents	4304
country	TZ	Normal Accidents	1646
country	TZ	Male Dead Persons	2880
country	TZ	Female Dead Persons	737
country	TZ	Male Injured Persons	7494
country	TZ	Female Injured Persons	2632
country	TZ	Male Suspects	1259720
country	TZ	Female Suspects	32
region	2	Minor Offences	397789
region	2	Fatal Accidents	293
region	2	Injury Accidents	2169
region	2	Normal Accidents	1112
region	2	Male Dead Persons	269
region	2	Female Dead Persons	53
region	2	Male Injured Persons	2501
region	2	Female Injured Persons	808
region	2	Male Suspects	357863
region	2	Female Suspects	0
\.


-- Completed on 2017-06-23 15:47:44 EAT

--
-- PostgreSQL database dump complete
--

