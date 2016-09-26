--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.typesofcrime DROP CONSTRAINT IF EXISTS typesofcrimepkey;
DROP TABLE IF EXISTS public.typesofcrime;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: typesofcrime; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE typesofcrime (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    typesofcrime character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: typesofcrime; Type: TABLE DATA; Schema: public; Owner: -
--
COPY typesofcrime (geo_level, geo_code, typesofcrime, total) FROM stdin;
county	22	homicide	135
county	22	offences against morality	238
county	22	theft of vehicle and other parts	1310
county	22	robbery	252
county	22	breakings	319
county	22	theft of stock	43
county	22	stealing	632
county	22	theft by servant	197
county	22	dangerous drugs	741
county	22	traffic offences	2
county	22	criminal damage	252
county	22	economic crimes	299
county	22	corruption	1
county	22	offences involving officers	2
county	22	offences involving tourist	0
county	22	other penal code offences	345
county	32	homicide	128
county	32	offences against morality	419
county	32	theft of vehicle and other parts	1115
county	32	robbery	187
county	32	breakings	344
county	32	theft of stock	104
county	32	stealing	695
county	32	theft by servant	161
county	32	dangerous drugs	358
county	32	traffic offences	12
county	32	criminal damage	221
county	32	economic crimes	292
county	32	corruption	5
county	32	offences involving officers	0
county	32	offences involving tourist	0
county	32	other penal code offences	343
county	47	homicide	93
county	47	offences against morality	236
county	47	theft of vehicle and other parts	1154
county	47	robbery	256
county	47	breakings	279
county	47	theft of stock	2
county	47	stealing	858
county	47	theft by servant	245
county	47	dangerous drugs	270
county	47	traffic offences	5
county	47	criminal damage	132
county	47	economic crimes	539
county	47	corruption	8
county	47	offences involving officers	3
county	47	offences involving tourist	4
county	47	other penal code offences	299
county	1	homicide	43
county	1	offences against morality	226
county	1	theft of vehicle and other parts	664
county	1	robbery	136
county	1	breakings	212
county	1	theft of stock	15
county	1	stealing	619
county	1	theft by servant	131
county	1	dangerous drugs	498
county	1	traffic offences	6
county	1	criminal damage	104
county	1	economic crimes	219
county	1	corruption	12
county	1	offences involving officers	8
county	1	offences involving tourist	0
county	1	other penal code offences	301
county	12	homicide	107
county	12	offences against morality	152
county	12	theft of vehicle and other parts	1267
county	12	robbery	253
county	12	breakings	240
county	12	theft of stock	121
county	12	stealing	831
county	12	theft by servant	165
county	12	dangerous drugs	143
county	12	traffic offences	4
county	12	criminal damage	374
county	12	economic crimes	133
county	12	corruption	2
county	12	offences involving officers	12
county	12	offences involving tourist	0
county	12	other penal code offences	411
county	39	homicide	101
county	39	offences against morality	373
county	39	theft of vehicle and other parts	893
county	39	robbery	108
county	39	breakings	257
county	39	theft of stock	58
county	39	stealing	317
county	39	theft by servant	56
county	39	dangerous drugs	123
county	39	traffic offences	1
county	39	criminal damage	184
county	39	economic crimes	113
county	39	corruption	0
county	39	offences involving officers	0
county	39	offences involving tourist	1
county	39	other penal code offences	267
county	37	homicide	99
county	37	offences against morality	227
county	37	theft of vehicle and other parts	869
county	37	robbery	104
county	37	breakings	231
county	37	theft of stock	59
county	37	stealing	309
county	37	theft by servant	58
county	37	dangerous drugs	108
county	37	traffic offences	0
county	37	criminal damage	122
county	37	economic crimes	129
county	37	corruption	1
county	37	offences involving officers	0
county	37	offences involving tourist	0
county	37	other penal code offences	198
county	21	homicide	112
county	21	offences against morality	150
county	21	theft of vehicle and other parts	593
county	21	robbery	63
county	21	breakings	170
county	21	theft of stock	37
county	21	stealing	258
county	21	theft by servant	49
county	21	dangerous drugs	502
county	21	traffic offences	3
county	21	criminal damage	122
county	21	economic crimes	40
county	21	corruption	1
county	21	offences involving officers	0
county	21	offences involving tourist	0
county	21	other penal code offences	263
county	42	homicide	76
county	42	offences against morality	167
county	42	theft of vehicle and other parts	636
county	42	robbery	105
county	42	breakings	184
county	42	theft of stock	119
county	42	stealing	296
county	42	theft by servant	78
county	42	dangerous drugs	190
county	42	traffic offences	0
county	42	criminal damage	92
county	42	economic crimes	82
county	42	corruption	1
county	42	offences involving officers	3
county	42	offences involving tourist	0
county	42	other penal code offences	264
county	3	homicide	238
county	3	offences against morality	293
county	3	theft of vehicle and other parts	631
county	3	robbery	78
county	3	breakings	119
county	3	theft of stock	31
county	3	stealing	203
county	3	theft by servant	48
county	3	dangerous drugs	206
county	3	traffic offences	20
county	3	criminal damage	85
county	3	economic crimes	76
county	3	corruption	4
county	3	offences involving officers	0
county	3	offences involving tourist	2
county	3	other penal code offences	165
county	45	homicide	87
county	45	offences against morality	175
county	45	theft of vehicle and other parts	895
county	45	robbery	50
county	45	breakings	160
county	45	theft of stock	29
county	45	stealing	190
county	45	theft by servant	21
county	45	dangerous drugs	70
county	45	traffic offences	26
county	45	criminal damage	98
county	45	economic crimes	63
county	45	corruption	2
county	45	offences involving officers	0
county	45	offences involving tourist	1
county	45	other penal code offences	151
county	26	homicide	38
county	26	offences against morality	215
county	26	theft of vehicle and other parts	590
county	26	robbery	58
county	26	breakings	158
county	26	theft of stock	50
county	26	stealing	186
county	26	theft by servant	48
county	26	dangerous drugs	62
county	26	traffic offences	0
county	26	criminal damage	92
county	26	economic crimes	88
county	26	corruption	0
county	26	offences involving officers	1
county	26	offences involving tourist	0
county	26	other penal code offences	195
county	19	homicide	116
county	19	offences against morality	139
county	19	theft of vehicle and other parts	431
county	19	robbery	76
county	19	breakings	169
county	19	theft of stock	41
county	19	stealing	192
county	19	theft by servant	54
county	19	dangerous drugs	171
county	19	traffic offences	1
county	19	criminal damage	107
county	19	economic crimes	55
county	19	corruption	1
county	19	offences involving officers	0
county	19	offences involving tourist	0
county	19	other penal code offences	115
county	27	homicide	27
county	27	offences against morality	170
county	27	theft of vehicle and other parts	533
county	27	robbery	37
county	27	breakings	174
county	27	theft of stock	34
county	27	stealing	212
county	27	theft by servant	60
county	27	dangerous drugs	56
county	27	traffic offences	1
county	27	criminal damage	79
county	27	economic crimes	130
county	27	corruption	1
county	27	offences involving officers	3
county	27	offences involving tourist	0
county	27	other penal code offences	137
county	43	homicide	59
county	43	offences against morality	148
county	43	theft of vehicle and other parts	562
county	43	robbery	46
county	43	breakings	132
county	43	theft of stock	44
county	43	stealing	169
county	43	theft by servant	30
county	43	dangerous drugs	102
county	43	traffic offences	0
county	43	criminal damage	105
county	43	economic crimes	59
county	43	corruption	0
county	43	offences involving officers	2
county	43	offences involving tourist	0
county	43	other penal code offences	110
county	40	homicide	62
county	40	offences against morality	207
county	40	theft of vehicle and other parts	493
county	40	robbery	45
county	40	breakings	124
county	40	theft of stock	40
county	40	stealing	205
county	40	theft by servant	33
county	40	dangerous drugs	63
county	40	traffic offences	1
county	40	criminal damage	89
county	40	economic crimes	67
county	40	corruption	1
county	40	offences involving officers	0
county	40	offences involving tourist	0
county	40	other penal code offences	123
county	35	homicide	62
county	35	offences against morality	116
county	35	theft of vehicle and other parts	596
county	35	robbery	46
county	35	breakings	151
county	35	theft of stock	44
county	35	stealing	164
county	35	theft by servant	28
county	35	dangerous drugs	50
county	35	traffic offences	1
county	35	criminal damage	94
county	35	economic crimes	66
county	35	corruption	1
county	35	offences involving officers	0
county	35	offences involving tourist	0
county	35	other penal code offences	91
county	41	homicide	79
county	41	offences against morality	146
county	41	theft of vehicle and other parts	514
county	41	robbery	54
county	41	breakings	136
county	41	theft of stock	105
county	41	stealing	139
county	41	theft by servant	25
county	41	dangerous drugs	66
county	41	traffic offences	0
county	41	criminal damage	81
county	41	economic crimes	27
county	41	corruption	1
county	41	offences involving officers	0
county	41	offences involving tourist	0
county	41	other penal code offences	120
county	16	homicide	25
county	16	offences against morality	88
county	16	theft of vehicle and other parts	431
county	16	robbery	55
county	16	breakings	139
county	16	theft of stock	41
county	16	stealing	186
county	16	theft by servant	58
county	16	dangerous drugs	167
county	16	traffic offences	1
county	16	criminal damage	120
county	16	economic crimes	43
county	16	corruption	3
county	16	offences involving officers	2
county	16	offences involving tourist	0
county	16	other penal code offences	102
county	18	homicide	56
county	18	offences against morality	144
county	18	theft of vehicle and other parts	354
county	18	robbery	39
county	18	breakings	168
county	18	theft of stock	72
county	18	stealing	176
county	18	theft by servant	56
county	18	dangerous drugs	132
county	18	traffic offences	0
county	18	criminal damage	80
county	18	economic crimes	49
county	18	corruption	1
county	18	offences involving officers	0
county	18	offences involving tourist	0
county	18	other penal code offences	119
county	33	homicide	47
county	33	offences against morality	127
county	33	theft of vehicle and other parts	477
county	33	robbery	43
county	33	breakings	101
county	33	theft of stock	82
county	33	stealing	171
county	33	theft by servant	35
county	33	dangerous drugs	46
county	33	traffic offences	1
county	33	criminal damage	48
county	33	economic crimes	46
county	33	corruption	0
county	33	offences involving officers	0
county	33	offences involving tourist	0
county	33	other penal code offences	111
county	44	homicide	68
county	44	offences against morality	109
county	44	theft of vehicle and other parts	361
county	44	robbery	66
county	44	breakings	92
county	44	theft of stock	32
county	44	stealing	168
county	44	theft by servant	12
county	44	dangerous drugs	87
county	44	traffic offences	2
county	44	criminal damage	78
county	44	economic crimes	49
county	44	corruption	0
county	44	offences involving officers	0
county	44	offences involving tourist	0
county	44	other penal code offences	158
county	34	homicide	41
county	34	offences against morality	96
county	34	theft of vehicle and other parts	346
county	34	robbery	85
county	34	breakings	82
county	34	theft of stock	40
county	34	stealing	185
county	34	theft by servant	54
county	34	dangerous drugs	107
county	34	traffic offences	0
county	34	criminal damage	57
county	34	economic crimes	72
county	34	corruption	2
county	34	offences involving officers	1
county	34	offences involving tourist	0
county	34	other penal code offences	88
county	20	homicide	54
county	20	offences against morality	61
county	20	theft of vehicle and other parts	320
county	20	robbery	31
county	20	breakings	82
county	20	theft of stock	21
county	20	stealing	112
county	20	theft by servant	53
county	20	dangerous drugs	119
county	20	traffic offences	3
county	20	criminal damage	83
county	20	economic crimes	39
county	20	corruption	1
county	20	offences involving officers	0
county	20	offences involving tourist	0
county	20	other penal code offences	198
county	38	homicide	37
county	38	offences against morality	135
county	38	theft of vehicle and other parts	390
county	38	robbery	52
county	38	breakings	97
county	38	theft of stock	25
county	38	stealing	106
county	38	theft by servant	13
county	38	dangerous drugs	118
county	38	traffic offences	0
county	38	criminal damage	46
county	38	economic crimes	31
county	38	corruption	0
county	38	offences involving officers	0
county	38	offences involving tourist	0
county	38	other penal code offences	96
county	15	homicide	60
county	15	offences against morality	165
county	15	theft of vehicle and other parts	429
county	15	robbery	57
county	15	breakings	115
county	15	theft of stock	78
county	15	stealing	200
county	15	theft by servant	53
county	15	dangerous drugs	129
county	15	traffic offences	12
county	15	criminal damage	92
county	15	economic crimes	39
county	15	corruption	0
county	15	offences involving officers	2
county	15	offences involving tourist	0
county	15	other penal code offences	142
county	46	homicide	89
county	46	offences against morality	120
county	46	theft of vehicle and other parts	428
county	46	robbery	51
county	46	breakings	79
county	46	theft of stock	40
county	46	stealing	99
county	46	theft by servant	16
county	46	dangerous drugs	43
county	46	traffic offences	0
county	46	criminal damage	75
county	46	economic crimes	10
county	46	corruption	0
county	46	offences involving officers	0
county	46	offences involving tourist	0
county	46	other penal code offences	74
county	2	homicide	43
county	2	offences against morality	193
county	2	theft of vehicle and other parts	342
county	2	robbery	52
county	2	breakings	47
county	2	theft of stock	34
county	2	stealing	130
county	2	theft by servant	46
county	2	dangerous drugs	58
county	2	traffic offences	2
county	2	criminal damage	40
county	2	economic crimes	42
county	2	corruption	1
county	2	offences involving officers	6
county	2	offences involving tourist	4
county	2	other penal code offences	57
county	30	homicide	81
county	30	offences against morality	101
county	30	theft of vehicle and other parts	430
county	30	robbery	16
county	30	breakings	78
county	30	theft of stock	83
county	30	stealing	66
county	30	theft by servant	18
county	30	dangerous drugs	7
county	30	traffic offences	0
county	30	criminal damage	53
county	30	economic crimes	10
county	30	corruption	0
county	30	offences involving officers	0
county	30	offences involving tourist	0
county	30	other penal code offences	92
county	29	homicide	26
county	29	offences against morality	108
county	29	theft of vehicle and other parts	400
county	29	robbery	27
county	29	breakings	99
county	29	theft of stock	26
county	29	stealing	84
county	29	theft by servant	6
county	29	dangerous drugs	54
county	29	traffic offences	0
county	29	criminal damage	58
county	29	economic crimes	11
county	29	corruption	0
county	29	offences involving officers	0
county	29	offences involving tourist	0
county	29	other penal code offences	90
county	23	homicide	20
county	23	offences against morality	87
county	23	theft of vehicle and other parts	353
county	23	robbery	51
county	23	breakings	61
county	23	theft of stock	86
county	23	stealing	87
county	23	theft by servant	11
county	23	dangerous drugs	50
county	23	traffic offences	2
county	23	criminal damage	42
county	23	economic crimes	21
county	23	corruption	0
county	23	offences involving officers	0
county	23	offences involving tourist	0
county	23	other penal code offences	103
county	36	homicide	25
county	36	offences against morality	59
county	36	theft of vehicle and other parts	426
county	36	robbery	7
county	36	breakings	88
county	36	theft of stock	34
county	36	stealing	109
county	36	theft by servant	34
county	36	dangerous drugs	27
county	36	traffic offences	0
county	36	criminal damage	96
county	36	economic crimes	36
county	36	corruption	0
county	36	offences involving officers	0
county	36	offences involving tourist	0
county	36	other penal code offences	27
county	6	homicide	25
county	6	offences against morality	85
county	6	theft of vehicle and other parts	265
county	6	robbery	23
county	6	breakings	86
county	6	theft of stock	37
county	6	stealing	149
county	6	theft by servant	46
county	6	dangerous drugs	84
county	6	traffic offences	0
county	6	criminal damage	46
county	6	economic crimes	39
county	6	corruption	0
county	6	offences involving officers	1
county	6	offences involving tourist	0
county	6	other penal code offences	75
county	17	homicide	33
county	17	offences against morality	96
county	17	theft of vehicle and other parts	325
county	17	robbery	32
county	17	breakings	93
county	17	theft of stock	19
county	17	stealing	127
county	17	theft by servant	41
county	17	dangerous drugs	66
county	17	traffic offences	0
county	17	criminal damage	67
county	17	economic crimes	19
county	17	corruption	0
county	17	offences involving officers	0
county	17	offences involving tourist	2
county	17	other penal code offences	105
county	14	homicide	23
county	14	offences against morality	67
county	14	theft of vehicle and other parts	253
county	14	robbery	26
county	14	breakings	70
county	14	theft of stock	15
county	14	stealing	102
county	14	theft by servant	26
county	14	dangerous drugs	83
county	14	traffic offences	0
county	14	criminal damage	75
county	14	economic crimes	30
county	14	corruption	3
county	14	offences involving officers	3
county	14	offences involving tourist	0
county	14	other penal code offences	72
county	31	homicide	28
county	31	offences against morality	84
county	31	theft of vehicle and other parts	184
county	31	robbery	38
county	31	breakings	69
county	31	theft of stock	61
county	31	stealing	103
county	31	theft by servant	30
county	31	dangerous drugs	46
county	31	traffic offences	0
county	31	criminal damage	83
county	31	economic crimes	37
county	31	corruption	0
county	31	offences involving officers	1
county	31	offences involving tourist	0
county	31	other penal code offences	66
county	24	homicide	30
county	24	offences against morality	49
county	24	theft of vehicle and other parts	322
county	24	robbery	8
county	24	breakings	25
county	24	theft of stock	21
county	24	stealing	61
county	24	theft by servant	4
county	24	dangerous drugs	18
county	24	traffic offences	2
county	24	criminal damage	51
county	24	economic crimes	20
county	24	corruption	0
county	24	offences involving officers	0
county	24	offences involving tourist	0
county	24	other penal code offences	73
county	7	homicide	20
county	7	offences against morality	50
county	7	theft of vehicle and other parts	206
county	7	robbery	24
county	7	breakings	67
county	7	theft of stock	11
county	7	stealing	84
county	7	theft by servant	11
county	7	dangerous drugs	40
county	7	traffic offences	2
county	7	criminal damage	27
county	7	economic crimes	22
county	7	corruption	2
county	7	offences involving officers	0
county	7	offences involving tourist	0
county	7	other penal code offences	72
county	4	homicide	17
county	4	offences against morality	84
county	4	theft of vehicle and other parts	189
county	4	robbery	39
county	4	breakings	56
county	4	theft of stock	16
county	4	stealing	47
county	4	theft by servant	18
county	4	dangerous drugs	52
county	4	traffic offences	6
county	4	criminal damage	24
county	4	economic crimes	26
county	4	corruption	2
county	4	offences involving officers	2
county	4	offences involving tourist	0
county	4	other penal code offences	44
county	13	homicide	25
county	13	offences against morality	33
county	13	theft of vehicle and other parts	280
county	13	robbery	15
county	13	breakings	43
county	13	theft of stock	17
county	13	stealing	73
county	13	theft by servant	9
county	13	dangerous drugs	46
county	13	traffic offences	0
county	13	criminal damage	41
county	13	economic crimes	14
county	13	corruption	0
county	13	offences involving officers	1
county	13	offences involving tourist	5
county	13	other penal code offences	26
county	28	homicide	40
county	28	offences against morality	54
county	28	theft of vehicle and other parts	272
county	28	robbery	8
county	28	breakings	47
county	28	theft of stock	14
county	28	stealing	47
county	28	theft by servant	6
county	28	dangerous drugs	4
county	28	traffic offences	0
county	28	criminal damage	45
county	28	economic crimes	5
county	28	corruption	0
county	28	offences involving officers	0
county	28	offences involving tourist	0
county	28	other penal code offences	29
county	5	homicide	12
county	5	offences against morality	67
county	5	theft of vehicle and other parts	141
county	5	robbery	8
county	5	breakings	50
county	5	theft of stock	10
county	5	stealing	56
county	5	theft by servant	5
county	5	dangerous drugs	61
county	5	traffic offences	0
county	5	criminal damage	23
county	5	economic crimes	14
county	5	corruption	5
county	5	offences involving officers	5
county	5	offences involving tourist	0
county	5	other penal code offences	35
county	25	homicide	17
county	25	offences against morality	21
county	25	theft of vehicle and other parts	102
county	25	robbery	13
county	25	breakings	24
county	25	theft of stock	31
county	25	stealing	52
county	25	theft by servant	2
county	25	dangerous drugs	15
county	25	traffic offences	0
county	25	criminal damage	19
county	25	economic crimes	10
county	25	corruption	0
county	25	offences involving officers	1
county	25	offences involving tourist	0
county	25	other penal code offences	48
county	10	homicide	19
county	10	offences against morality	28
county	10	theft of vehicle and other parts	174
county	10	robbery	23
county	10	breakings	19
county	10	theft of stock	13
county	10	stealing	51
county	10	theft by servant	13
county	10	dangerous drugs	24
county	10	traffic offences	3
county	10	criminal damage	31
county	10	economic crimes	4
county	10	corruption	0
county	10	offences involving officers	9
county	10	offences involving tourist	0
county	10	other penal code offences	57
county	8	homicide	10
county	8	offences against morality	25
county	8	theft of vehicle and other parts	130
county	8	robbery	4
county	8	breakings	17
county	8	theft of stock	9
county	8	stealing	38
county	8	theft by servant	2
county	8	dangerous drugs	11
county	8	traffic offences	1
county	8	criminal damage	12
county	8	economic crimes	2
county	8	corruption	0
county	8	offences involving officers	0
county	8	offences involving tourist	0
county	8	other penal code offences	56
county	9	homicide	14
county	9	offences against morality	19
county	9	theft of vehicle and other parts	97
county	9	robbery	8
county	9	breakings	17
county	9	theft of stock	3
county	9	stealing	18
county	9	theft by servant	1
county	9	dangerous drugs	34
county	9	traffic offences	0
county	9	criminal damage	8
county	9	economic crimes	4
county	9	corruption	0
county	9	offences involving officers	0
county	9	offences involving tourist	0
county	9	other penal code offences	48
county	11	homicide	0
county	11	offences against morality	10
county	11	theft of vehicle and other parts	85
county	11	robbery	8
county	11	breakings	9
county	11	theft of stock	14
county	11	stealing	31
county	11	theft by servant	9
county	11	dangerous drugs	2
county	11	traffic offences	0
county	11	criminal damage	21
county	11	economic crimes	2
county	11	corruption	1
county	11	offences involving officers	0
county	11	offences involving tourist	0
county	11	other penal code offences	21
country	KE	homicide	2554
country	KE	offences against morality	6051
country	KE	theft of vehicle and other parts	21718
country	KE	robbery	2685
country	KE	breakings	5470
country	KE	theft of stock	1890
country	KE	stealing	9199
country	KE	theft by servant	2053
country	KE	dangerous drugs	5431
country	KE	traffic offences	107
country	KE	criminal damage	3919
country	KE	economic crimes	3205
country	KE	corruption	77
country	KE	offences involving officers	60
country	KE	offences involving tourist	21
country	KE	other penal code offences	6010
\.
--
-- Name: typesofcrimepkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY typesofcrime
    ADD CONSTRAINT typesofcrimepkey PRIMARY KEY (geo_level, geo_code, typesofcrime);


--
-- PostgreSQL database dump complete
--

