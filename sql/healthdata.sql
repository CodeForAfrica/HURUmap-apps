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

ALTER TABLE IF EXISTS ONLY public.causesofdeathunderfive DROP CONSTRAINT IF EXISTS causesofdeathunderfive_pkey;
DROP TABLE IF EXISTS public.causesofdeathunderfive;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: causesofdeathunderfive; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE causesofdeathunderfive (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "causes of death under five" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: causesofdeathunderfive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY causesofdeathunderfive (geo_level, geo_code, "causes of death under five", total) FROM stdin;
region	1	acute respiratory infections	1
region	1	diarrhoeal diseases	43
region	1	malaria	39
region	1	nutritional disorders	21
region	1	anaemia	19
region	1	pneumonia	237
region	1	pre-natal conditions	17
region	1	HIV/AIDS	21
region	1	others	84
region	3	acute respiratory infections	52
region	3	diarrhoeal diseases	34
region	3	malaria	56
region	3	nutritional disorders	22
region	3	anaemia	27
region	3	pneumonia	105
region	3	pre-natal conditions	64
region	3	HIV/AIDS	27
region	3	others	118
region	2	acute respiratory infections	0
region	2	diarrhoeal diseases	31
region	2	malaria	234
region	2	nutritional disorders	6
region	2	anaemia	180
region	2	pneumonia	223
region	2	pre-natal conditions	517
region	2	HIV/AIDS	10
region	2	others	106
region	4	acute respiratory infections	18
region	4	diarrhoeal diseases	42
region	4	malaria	260
region	4	nutritional disorders	4
region	4	anaemia	157
region	4	pneumonia	45
region	4	pre-natal conditions	15
region	4	HIV/AIDS	16
region	4	others	21
region	5	acute respiratory infections	4
region	5	diarrhoeal diseases	15
region	5	malaria	34
region	5	nutritional disorders	7
region	5	anaemia	9
region	5	pneumonia	80
region	5	pre-natal conditions	3
region	5	HIV/AIDS	5
region	5	others	21
region	6	acute respiratory infections	6
region	6	diarrhoeal diseases	26
region	6	malaria	438
region	6	nutritional disorders	58
region	6	anaemia	176
region	6	pneumonia	169
region	6	pre-natal conditions	23
region	6	HIV/AIDS	7
region	6	others	43
region	9	acute respiratory infections	9
region	9	diarrhoeal diseases	52
region	9	malaria	161
region	9	nutritional disorders	11
region	9	anaemia	110
region	9	pneumonia	55
region	9	pre-natal conditions	18
region	9	HIV/AIDS	4
region	9	others	76
region	10	acute respiratory infections	23
region	10	diarrhoeal diseases	8
region	10	malaria	338
region	10	nutritional disorders	17
region	10	anaemia	128
region	10	pneumonia	136
region	10	pre-natal conditions	60
region	10	HIV/AIDS	2
region	10	others	163
region	11	acute respiratory infections	31
region	11	diarrhoeal diseases	14
region	11	malaria	66
region	11	nutritional disorders	14
region	11	anaemia	8
region	11	pneumonia	50
region	11	pre-natal conditions	3
region	11	HIV/AIDS	13
region	11	others	50
region	14	acute respiratory infections	1
region	14	diarrhoeal diseases	27
region	14	malaria	143
region	14	nutritional disorders	0
region	14	anaemia	14
region	14	pneumonia	20
region	14	pre-natal conditions	0
region	14	HIV/AIDS	1
region	14	others	5
region	15	acute respiratory infections	1
region	15	diarrhoeal diseases	11
region	15	malaria	62
region	15	nutritional disorders	16
region	15	anaemia	24
region	15	pneumonia	58
region	15	pre-natal conditions	4
region	15	HIV/AIDS	5
region	15	others	153
region	16	acute respiratory infections	69
region	16	diarrhoeal diseases	66
region	16	malaria	551
region	16	nutritional disorders	20
region	16	anaemia	287
region	16	pneumonia	100
region	16	pre-natal conditions	0
region	16	HIV/AIDS	0
region	16	others	78
region	17	acute respiratory infections	14
region	17	diarrhoeal diseases	104
region	17	malaria	76
region	17	nutritional disorders	46
region	17	anaemia	36
region	17	pneumonia	170
region	17	pre-natal conditions	33
region	17	HIV/AIDS	5
region	17	others	340
region	18	acute respiratory infections	11
region	18	diarrhoeal diseases	21
region	18	malaria	288
region	18	nutritional disorders	12
region	18	anaemia	79
region	18	pneumonia	142
region	18	pre-natal conditions	47
region	18	HIV/AIDS	82
region	18	others	329
region	19	acute respiratory infections	13
region	19	diarrhoeal diseases	14
region	19	malaria	172
region	19	nutritional disorders	0
region	19	anaemia	64
region	19	pneumonia	46
region	19	pre-natal conditions	79
region	19	HIV/AIDS	1
region	19	others	40
region	20	acute respiratory infections	2
region	20	diarrhoeal diseases	19
region	20	malaria	349
region	20	nutritional disorders	18
region	20	anaemia	135
region	20	pneumonia	74
region	20	pre-natal conditions	4
region	20	HIV/AIDS	21
region	20	others	18
region	21	acute respiratory infections	13
region	21	diarrhoeal diseases	9
region	21	malaria	43
region	21	nutritional disorders	12
region	21	anaemia	15
region	21	pneumonia	30
region	21	pre-natal conditions	0
region	21	HIV/AIDS	8
region	21	others	25
region	22	acute respiratory infections	0
region	22	diarrhoeal diseases	25
region	22	malaria	72
region	22	nutritional disorders	2
region	22	anaemia	25
region	22	pneumonia	45
region	22	pre-natal conditions	27
region	22	HIV/AIDS	10
region	22	others	23
region	23	acute respiratory infections	11
region	23	diarrhoeal diseases	34
region	23	malaria	128
region	23	nutritional disorders	28
region	23	anaemia	52
region	23	pneumonia	53
region	23	pre-natal conditions	2
region	23	HIV/AIDS	0
region	23	others	24
region	24	acute respiratory infections	1
region	24	diarrhoeal diseases	21
region	24	malaria	271
region	24	nutritional disorders	19
region	24	anaemia	70
region	24	pneumonia	74
region	24	pre-natal conditions	12
region	24	HIV/AIDS	10
region	24	others	42
region	25	acute respiratory infections	0
region	25	diarrhoeal diseases	10
region	25	malaria	370
region	25	nutritional disorders	3
region	25	anaemia	100
region	25	pneumonia	45
region	25	pre-natal conditions	0
region	25	HIV/AIDS	0
region	25	others	33
region	26	acute respiratory infections	2
region	26	diarrhoeal diseases	12
region	26	malaria	205
region	26	nutritional disorders	20
region	26	anaemia	241
region	26	pneumonia	49
region	26	pre-natal conditions	12
region	26	HIV/AIDS	10
region	26	others	126
region	27	acute respiratory infections	38
region	27	diarrhoeal diseases	76
region	27	malaria	146
region	27	nutritional disorders	23
region	27	anaemia	45
region	27	pneumonia	92
region	27	pre-natal conditions	25
region	27	HIV/AIDS	7
region	27	others	75
region	29	acute respiratory infections	2
region	29	diarrhoeal diseases	60
region	29	malaria	380
region	29	nutritional disorders	16
region	29	anaemia	172
region	29	pneumonia	93
region	29	pre-natal conditions	0
region	29	HIV/AIDS	44
region	29	others	123
region	28	acute respiratory infections	34
region	28	diarrhoeal diseases	26
region	28	malaria	149
region	28	nutritional disorders	1
region	28	anaemia	68
region	28	pneumonia	124
region	28	pre-natal conditions	2
region	28	HIV/AIDS	40
region	28	others	22
region	7	acute respiratory infections	0
region	7	diarrhoeal diseases	0
region	7	malaria	0
region	7	nutritional disorders	0
region	7	anaemia	0
region	7	pneumonia	0
region	7	pre-natal conditions	0
region	7	HIV/AIDS	0
region	7	others	0
region	8	acute respiratory infections	0
region	8	diarrhoeal diseases	0
region	8	malaria	0
region	8	nutritional disorders	0
region	8	anaemia	0
region	8	pneumonia	0
region	8	pre-natal conditions	0
region	8	HIV/AIDS	0
region	8	others	0
region	12	acute respiratory infections	0
region	12	diarrhoeal diseases	0
region	12	malaria	0
region	12	nutritional disorders	0
region	12	anaemia	0
region	12	pneumonia	0
region	12	pre-natal conditions	0
region	12	HIV/AIDS	0
region	12	others	0
region	13	acute respiratory infections	0
region	13	diarrhoeal diseases	0
region	13	malaria	0
region	13	nutritional disorders	0
region	13	anaemia	0
region	13	pneumonia	0
region	13	pre-natal conditions	0
region	13	HIV/AIDS	0
region	13	others	0
region	30	acute respiratory infections	0
region	30	diarrhoeal diseases	0
region	30	malaria	0
region	30	nutritional disorders	0
region	30	anaemia	0
region	30	pneumonia	0
region	30	pre-natal conditions	0
region	30	HIV/AIDS	0
region	30	others	0
country	TZ	acute respiratory infections	356
country	TZ	diarrhoeal diseases	800
country	TZ	malaria	5031
country	TZ	nutritional disorders	396
country	TZ	anaemia	2241
country	TZ	pneumonia	2315
country	TZ	pre-natal conditions	967
country	TZ	HIV/AIDS	349
country	TZ	others	2138
\.
--
-- Name: causesofdeathunderfive_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY causesofdeathunderfive
    ADD CONSTRAINT causesofdeathunderfive_pkey PRIMARY KEY (geo_level, geo_code, "causes of death under five");


--
-- PostgreSQL database dump complete
--


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

ALTER TABLE IF EXISTS ONLY public.causesofdeathoverfive DROP CONSTRAINT IF EXISTS causesofdeathoverfive_pkey;
DROP TABLE IF EXISTS public.causesofdeathoverfive;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: causesofdeathoverfive; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE causesofdeathoverfive (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "causes of death over five" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: causesofdeathoverfive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY causesofdeathoverfive (geo_level, geo_code, "causes of death over five", total) FROM stdin;
region	1	diarrhoeal diseases	8
region	1	malaria	77
region	1	TB	97
region	1	anaemia	96
region	1	cardiac failure	123
region	1	hypertension	61
region	1	pneumonia	139
region	1	HIV/AIDS	345
region	1	Diabetes Mellitus	64
region	1	others	534
region	3	diarrhoeal diseases	21
region	3	malaria	138
region	3	TB	41
region	3	anaemia	50
region	3	cardiac failure	14
region	3	hypertension	32
region	3	pneumonia	51
region	3	HIV/AIDS	164
region	3	Diabetes Mellitus	5
region	3	others	80
region	2	diarrhoeal diseases	30
region	2	malaria	300
region	2	TB	271
region	2	anaemia	297
region	2	cardiac failure	178
region	2	hypertension	259
region	2	pneumonia	205
region	2	HIV/AIDS	437
region	2	Diabetes Mellitus	112
region	2	others	696
region	4	diarrhoeal diseases	5
region	4	malaria	205
region	4	TB	22
region	4	anaemia	63
region	4	cardiac failure	7
region	4	hypertension	10
region	4	pneumonia	5
region	4	HIV/AIDS	90
region	4	Diabetes Mellitus	3
region	4	others	47
region	5	diarrhoeal diseases	45
region	5	malaria	87
region	5	TB	13
region	5	anaemia	34
region	5	cardiac failure	95
region	5	hypertension	88
region	5	pneumonia	51
region	5	HIV/AIDS	38
region	5	Diabetes Mellitus	19
region	5	others	91
region	6	diarrhoeal diseases	24
region	6	malaria	184
region	6	TB	48
region	6	anaemia	53
region	6	cardiac failure	42
region	6	hypertension	56
region	6	pneumonia	54
region	6	HIV/AIDS	124
region	6	Diabetes Mellitus	21
region	6	others	264
region	9	diarrhoeal diseases	9
region	9	malaria	217
region	9	TB	29
region	9	anaemia	92
region	9	cardiac failure	47
region	9	hypertension	12
region	9	pneumonia	44
region	9	HIV/AIDS	61
region	9	Diabetes Mellitus	36
region	9	others	271
region	10	diarrhoeal diseases	23
region	10	malaria	54
region	10	TB	3
region	10	anaemia	33
region	10	cardiac failure	5
region	10	hypertension	10
region	10	pneumonia	21
region	10	HIV/AIDS	49
region	10	Diabetes Mellitus	2
region	10	others	94
region	11	diarrhoeal diseases	15
region	11	malaria	92
region	11	TB	39
region	11	anaemia	42
region	11	cardiac failure	85
region	11	hypertension	99
region	11	pneumonia	100
region	11	HIV/AIDS	63
region	11	Diabetes Mellitus	38
region	11	others	227
region	14	diarrhoeal diseases	10
region	14	malaria	169
region	14	TB	16
region	14	anaemia	19
region	14	cardiac failure	5
region	14	hypertension	38
region	14	pneumonia	22
region	14	HIV/AIDS	32
region	14	Diabetes Mellitus	6
region	14	others	41
region	15	diarrhoeal diseases	16
region	15	malaria	112
region	15	TB	92
region	15	anaemia	28
region	15	cardiac failure	63
region	15	hypertension	13
region	15	pneumonia	104
region	15	HIV/AIDS	60
region	15	Diabetes Mellitus	10
region	15	others	295
region	16	diarrhoeal diseases	36
region	16	malaria	648
region	16	TB	36
region	16	anaemia	86
region	16	cardiac failure	11
region	16	hypertension	5
region	16	pneumonia	17
region	16	HIV/AIDS	306
region	16	Diabetes Mellitus	16
region	16	others	584
region	17	diarrhoeal diseases	74
region	17	malaria	243
region	17	TB	100
region	17	anaemia	151
region	17	cardiac failure	61
region	17	hypertension	19
region	17	pneumonia	159
region	17	HIV/AIDS	212
region	17	Diabetes Mellitus	31
region	17	others	357
region	18	diarrhoeal diseases	24
region	18	malaria	283
region	18	TB	74
region	18	anaemia	66
region	18	cardiac failure	12
region	18	hypertension	20
region	18	pneumonia	49
region	18	HIV/AIDS	187
region	18	Diabetes Mellitus	19
region	18	others	150
region	19	diarrhoeal diseases	26
region	19	malaria	270
region	19	TB	33
region	19	anaemia	82
region	19	cardiac failure	40
region	19	hypertension	79
region	19	pneumonia	33
region	19	HIV/AIDS	61
region	19	Diabetes Mellitus	20
region	19	others	260
region	20	diarrhoeal diseases	19
region	20	malaria	105
region	20	TB	23
region	20	anaemia	36
region	20	cardiac failure	1
region	20	hypertension	14
region	20	pneumonia	17
region	20	HIV/AIDS	118
region	20	Diabetes Mellitus	7
region	20	others	143
region	21	diarrhoeal diseases	19
region	21	malaria	82
region	21	TB	11
region	21	anaemia	36
region	21	cardiac failure	15
region	21	hypertension	16
region	21	pneumonia	39
region	21	HIV/AIDS	1717
region	21	Diabetes Mellitus	3
region	21	others	147
region	22	diarrhoeal diseases	14
region	22	malaria	59
region	22	TB	36
region	22	anaemia	22
region	22	cardiac failure	19
region	22	hypertension	27
region	22	pneumonia	24
region	22	HIV/AIDS	42
region	22	Diabetes Mellitus	7
region	22	others	121
region	23	diarrhoeal diseases	13
region	23	malaria	169
region	23	TB	11
region	23	anaemia	57
region	23	cardiac failure	3
region	23	hypertension	8
region	23	pneumonia	37
region	23	HIV/AIDS	5
region	23	Diabetes Mellitus	1
region	23	others	104
region	24	diarrhoeal diseases	14
region	24	malaria	148
region	24	TB	18
region	24	anaemia	25
region	24	cardiac failure	47
region	24	hypertension	33
region	24	pneumonia	65
region	24	HIV/AIDS	76
region	24	Diabetes Mellitus	2
region	24	others	150
region	25	diarrhoeal diseases	11
region	25	malaria	302
region	25	TB	11
region	25	anaemia	114
region	25	cardiac failure	5
region	25	hypertension	12
region	25	pneumonia	14
region	25	HIV/AIDS	53
region	25	Diabetes Mellitus	4
region	25	others	97
region	26	diarrhoeal diseases	13
region	26	malaria	79
region	26	TB	64
region	26	anaemia	89
region	26	cardiac failure	31
region	26	hypertension	23
region	26	pneumonia	7
region	26	HIV/AIDS	75
region	26	Diabetes Mellitus	9
region	26	others	79
region	27	diarrhoeal diseases	46
region	27	malaria	468
region	27	TB	31
region	27	anaemia	56
region	27	cardiac failure	34
region	27	hypertension	23
region	27	pneumonia	38
region	27	HIV/AIDS	46
region	27	Diabetes Mellitus	10
region	27	others	501
region	29	diarrhoeal diseases	80
region	29	malaria	348
region	29	TB	37
region	29	anaemia	79
region	29	cardiac failure	29
region	29	hypertension	49
region	29	pneumonia	73
region	29	HIV/AIDS	236
region	29	Diabetes Mellitus	25
region	29	others	208
region	28	diarrhoeal diseases	29
region	28	malaria	163
region	28	TB	46
region	28	anaemia	75
region	28	cardiac failure	47
region	28	hypertension	61
region	28	pneumonia	55
region	28	HIV/AIDS	185
region	28	Diabetes Mellitus	65
region	28	others	287
region	7	diarrhoeal diseases	0
region	7	malaria	0
region	7	TB	0
region	7	anaemia	0
region	7	cardiac failure	0
region	7	hypertension	0
region	7	pneumonia	0
region	7	HIV/AIDS	0
region	7	Diabetes Mellitus	0
region	7	others	0
region	8	diarrhoeal diseases	0
region	8	malaria	0
region	8	TB	0
region	8	anaemia	0
region	8	cardiac failure	0
region	8	hypertension	0
region	8	pneumonia	0
region	8	HIV/AIDS	0
region	8	Diabetes Mellitus	0
region	8	others	0
region	12	diarrhoeal diseases	0
region	12	malaria	0
region	12	TB	0
region	12	anaemia	0
region	12	cardiac failure	0
region	12	hypertension	0
region	12	pneumonia	0
region	12	HIV/AIDS	0
region	12	Diabetes Mellitus	0
region	12	others	0
region	13	diarrhoeal diseases	0
region	13	malaria	0
region	13	TB	0
region	13	anaemia	0
region	13	cardiac failure	0
region	13	hypertension	0
region	13	pneumonia	0
region	13	HIV/AIDS	0
region	13	Diabetes Mellitus	0
region	13	others	0
region	30	diarrhoeal diseases	0
region	30	malaria	0
region	30	TB	0
region	30	anaemia	0
region	30	cardiac failure	0
region	30	hypertension	0
region	30	pneumonia	0
region	30	HIV/AIDS	0
region	30	Diabetes Mellitus	0
region	30	others	0
country	TZ	diarrhoeal diseases	624
country	TZ	malaria	5002
country	TZ	TB	1202
country	TZ	anaemia	1781
country	TZ	cardiac failure	1019
country	TZ	hypertension	1067
country	TZ	pneumonia	1423
country	TZ	HIV/AIDS	4782
country	TZ	Diabetes Mellitus	535
country	TZ	others	5828
\.
--
-- Name: causesofdeathoverfive_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY causesofdeathoverfive
    ADD CONSTRAINT causesofdeathoverfive_pkey PRIMARY KEY (geo_level, geo_code, "causes of death over five");


--
-- PostgreSQL database dump complete
--

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

ALTER TABLE IF EXISTS ONLY public.familyplanningclients DROP CONSTRAINT IF EXISTS familyplanningclients_pkey;
DROP TABLE IF EXISTS public.familyplanningclients;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: familyplanningclients; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE familyplanningclients (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "family planning clients" character varying(128) NOT NULL,
    total float NULL
);


--
-- Data for Name: familyplanningclients; Type: TABLE DATA; Schema: public; Owner: -
--

COPY familyplanningclients (geo_level, geo_code, "family planning clients", total) FROM stdin;
region	1	total	181397
region	1	new client rate	31.5
region	3	total	394359
region	3	new client rate	44.7
region	2	total	560997
region	2	new client rate	60.4
region	4	total	70517
region	4	new client rate	62.4
region	5	total	106703
region	5	new client rate	24.6
region	6	total	213373
region	6	new client rate	33.4
region	9	total	51826
region	9	new client rate	24.1
region	10	total	233129
region	10	new client rate	37.8
region	11	total	217253
region	11	new client rate	26.4
region	14	total	154135
region	14	new client rate	31.3
region	15	total	100378
region	15	new client rate	43.1
region	16	total	164283
region	16	new client rate	37
region	17	total	285693
region	17	new client rate	39.1
region	18	total	205754
region	18	new client rate	29.1
region	19	total	220667
region	19	new client rate	41.9
region	20	total	210661
region	20	new client rate	67.5
region	21	total	78217
region	21	new client rate	27
region	22	total	188698
region	22	new client rate	40.3
region	23	total	99729
region	23	new client rate	52.1
region	24	total	152679
region	24	new client rate	35.4
region	25	total	115849
region	25	new client rate	53.9
region	26	total	73089
region	26	new client rate	64.4
region	27	total	175278
region	27	new client rate	36.4
region	29	total	120894
region	29	new client rate	43.7
region	28	total	308559
region	28	new client rate	25.4
region 	7	total	\N
region 	7	new client rate	\N
region 	8	total	\N
region 	8	new client rate	\N
region 	12	total	\N
region 	12	new client rate	\N
region 	13	total	\N
region 	13	new client rate	\N
region	30	total	\N
region	30	new client rate	\N
country	TZ	total	4684117
country	TZ	new client rate	40.5
\.
--
-- Name: familyplanningclients_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY familyplanningclients
    ADD CONSTRAINT familyplanningclients_pkey PRIMARY KEY (geo_level, geo_code, "family planning clients");


--
-- PostgreSQL database dump complete
--


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

ALTER TABLE IF EXISTS ONLY public.placeofdelivery DROP CONSTRAINT IF EXISTS placeofdelivery_pkey;
DROP TABLE IF EXISTS public.placeofdelivery;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: placeofdelivery; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE placeofdelivery (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "place of delivery" character varying(128) NOT NULL,
    total float NULL
);


--
-- Data for Name: placeofdelivery; Type: TABLE DATA; Schema: public; Owner: -
--

COPY placeofdelivery (geo_level, geo_code, "place of delivery", total) FROM stdin;
region	1	ANC projection	50037
region	1	facility delivery	42278
region	1	birth before arrival	1090
region	1	traditional birth attendance	5535
region	1	home delivery	4530
region	1	facility birth rate	84
region	3	ANC projection	166517
region	3	facility delivery	128853
region	3	birth before arrival	2709
region	3	traditional birth attendance	1974
region	3	home delivery	7562
region	3	facility birth rate	77
region	2	ANC projection	60631
region	2	facility delivery	63208
region	2	birth before arrival	2451
region	2	traditional birth attendance	3740
region	2	home delivery	3982
region	2	facility birth rate	104
region	4	ANC projection	83170
region	4	facility delivery	40494
region	4	birth before arrival	985
region	4	traditional birth attendance	1189
region	4	home delivery	4630
region	4	facility birth rate	49
region	5	ANC projection	27730
region	5	facility delivery	32025
region	5	birth before arrival	712
region	5	traditional birth attendance	228
region	5	home delivery	686
region	5	facility birth rate	115
region	6	ANC projection	83081
region	6	facility delivery	50414
region	6	birth before arrival	1918
region	6	traditional birth attendance	5103
region	6	home delivery	9354
region	6	facility birth rate	61
region	9	ANC projection	48256
region	9	facility delivery	18419
region	9	birth before arrival	421
region	9	traditional birth attendance	1153
region	9	home delivery	498
region	9	facility birth rate	38
region	10	ANC projection	71514
region	10	facility delivery	50898
region	10	birth before arrival	1885
region	10	traditional birth attendance	6767
region	10	home delivery	4172
region	10	facility birth rate	71
region	11	ANC projection	44906
region	11	facility delivery	37581
region	11	birth before arrival	657
region	11	traditional birth attendance	350
region	11	home delivery	911
region	11	facility birth rate	84
region	14	ANC projection	57743
region	14	facility delivery	24335
region	14	birth before arrival	699
region	14	traditional birth attendance	504
region	14	home delivery	1593
region	14	facility birth rate	42
region	15	ANC projection	46334
region	15	facility delivery	29942
region	15	birth before arrival	776
region	15	traditional birth attendance	3240
region	15	home delivery	4313
region	15	facility birth rate	65
region	16	ANC projection	97685
region	16	facility delivery	43715
region	16	birth before arrival	2422
region	16	traditional birth attendance	5265
region	16	home delivery	10586
region	16	facility birth rate	45
region	17	ANC projection	137992
region	17	facility delivery	78732
region	17	birth before arrival	3132
region	17	traditional birth attendance	1788
region	17	home delivery	7171
region	17	facility birth rate	57
region	18	ANC projection	89524
region	18	facility delivery	62457
region	18	birth before arrival	2191
region	18	traditional birth attendance	3625
region	18	home delivery	1658
region	18	facility birth rate	70
region	19	ANC projection	38104
region	19	facility delivery	33546
region	19	birth before arrival	809
region	19	traditional birth attendance	1854
region	19	home delivery	2055
region	19	facility birth rate	88
region	20	ANC projection	200284
region	20	facility delivery	79077
region	20	birth before arrival	2365
region	20	traditional birth attendance	2365
region	20	home delivery	5942
region	20	facility birth rate	39
region	21	ANC projection	31513
region	21	facility delivery	22725
region	21	birth before arrival	632
region	21	traditional birth attendance	91
region	21	home delivery	439
region	21	facility birth rate	72
region	22	ANC projection	36707
region	22	facility delivery	49378
region	22	birth before arrival	662
region	22	traditional birth attendance	600
region	22	home delivery	1189
region	22	facility birth rate	135
region	23	ANC projection	66540
region	23	facility delivery	35457
region	23	birth before arrival	731
region	23	traditional birth attendance	2376
region	23	home delivery	1171
region	23	facility birth rate	53
region	24	ANC projection	61013
region	24	facility delivery	46851
region	24	birth before arrival	1394
region	24	traditional birth attendance	1868
region	24	home delivery	1290
region	24	facility birth rate	77
region	25	ANC projection	89101
region	25	facility delivery	46461
region	25	birth before arrival	1704
region	25	traditional birth attendance	1831
region	25	home delivery	2612
region	25	facility birth rate	52
region	26	ANC projection	93745
region	26	facility delivery	31226
region	26	birth before arrival	1171
region	26	traditional birth attendance	2897
region	26	home delivery	8336
region	26	facility birth rate	33
region	27	ANC projection	67761
region	27	facility delivery	38609
region	27	birth before arrival	1443
region	27	traditional birth attendance	2151
region	27	home delivery	3943
region	27	facility birth rate	57
region	29	ANC projection	136937
region	29	facility delivery	61457
region	29	birth before arrival	2595
region	29	traditional birth attendance	1247
region	29	home delivery	5733
region	29	facility birth rate	45
region	28	ANC projection	123375
region	28	facility delivery	47611
region	28	birth before arrival	1522
region	28	traditional birth attendance	3190
region	28	home delivery	4475
region	28	facility birth rate	39
region 	7	ANC projection	\N
region 	7	facility delivery	\N
region 	7	birth before arrival	\N
region 	7	traditional birth attendance	\N
region 	7	home delivery	\N
region 	7	facility birth rate	\N
region 	8	ANC projection	\N
region 	8	facility delivery	\N
region 	8	birth before arrival	\N
region 	8	traditional birth attendance	\N
region 	8	home delivery	\N
region 	8	facility birth rate	\N
region 	12	ANC projection	\N
region 	12	facility delivery	\N
region 	12	birth before arrival	\N
region 	12	traditional birth attendance	\N
region 	12	home delivery	\N
region 	12	facility birth rate	\N
region 	13	ANC projection	\N
region 	13	facility delivery	\N
region 	13	birth before arrival	\N
region 	13	traditional birth attendance	\N
region 	13	home delivery	\N
region 	13	facility birth rate	\N
region	30	ANC projection	\N
region	30	facility delivery	\N
region	30	birth before arrival	\N
region	30	traditional birth attendance	\N
region	30	home delivery	\N
region	30	facility birth rate	\N
country	TZ	ANC projection	2010200
country	TZ	facility delivery	1195749
country	TZ	birth before arrival	37076
country	TZ	traditional birth attendance	60931
country	TZ	home delivery	98831
country	TZ	facility birth rate	66.08
\.
--
-- Name: placeofdelivery_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY placeofdelivery
    ADD CONSTRAINT placeofdelivery_pkey PRIMARY KEY (geo_level, geo_code, "place of delivery");


--
-- PostgreSQL database dump complete
--

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

ALTER TABLE IF EXISTS ONLY public.healthworkers DROP CONSTRAINT IF EXISTS healthworkers_pkey;
DROP TABLE IF EXISTS public.healthworkers;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: healthworkers; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE healthworkers (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "health workers" character varying(128) NOT NULL,
    total float NULL
);


--
-- Data for Name: healthworkers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY healthworkers (geo_level, geo_code, "health workers", total) FROM stdin;
region	1	assistant medical oficer	67
region	1	assistant nursing officer	258
region	1	clinical assistant	35
region	1	clinical officer	326
region	1	medical attendant	944
region	1	medical officers	82
region	1	nurses	693
region	1	nursing officer	98
region	1	nutrition officer	3
region	1	MO and AMO per 10000	0.82
region	1	nurses and midwives per 10000	3.84
region	1	pharmacists per 10000	0.07
region	1	clinicians per 10000	3.01
region	1	HRH patient ratio	6.85
region	3	assistant medical oficer	217
region	3	assistant nursing officer	1352
region	3	clinical assistant	48
region	3	clinical officer	653
region	3	medical attendant	1640
region	3	medical officers	541
region	3	nurses	1546
region	3	nursing officer	604
region	3	nutrition officer	15
region	3	MO and AMO per 10000	1.52
region	3	nurses and midwives per 10000	3.1
region	3	pharmacists per 10000	0.2
region	3	clinicians per 10000	3.66
region	3	HRH patient ratio	6.77
region	2	assistant medical oficer	72
region	2	assistant nursing officer	201
region	2	clinical assistant	50
region	2	clinical officer	298
region	2	medical attendant	748
region	2	medical officers	98
region	2	nurses	704
region	2	nursing officer	88
region	2	nutrition officer	3
region	2	MO and AMO per 10000	0.78
region	2	nurses and midwives per 10000	3.22
region	2	pharmacists per 10000	0.11
region	2	clinicians per 10000	2.47
region	2	HRH patient ratio	5.69
region	4	assistant medical oficer	37
region	4	assistant nursing officer	115
region	4	clinical assistant	44
region	4	clinical officer	134
region	4	medical attendant	340
region	4	medical officers	15
region	4	nurses	283
region	4	nursing officer	6
region	4	nutrition officer	0
region	4	MO and AMO per 10000	0.28
region	4	nurses and midwives per 10000	1.53
region	4	pharmacists per 10000	0.02
region	4	clinicians per 10000	1.25
region	4	HRH patient ratio	2.78
region	5	assistant medical oficer	53
region	5	assistant nursing officer	90
region	5	clinical assistant	51
region	5	clinical officer	241
region	5	medical attendant	509
region	5	medical officers	51
region	5	nurses	617
region	5	nursing officer	26
region	5	nutrition officer	4
region	5	MO and AMO per 10000	1.08
region	5	nurses and midwives per 10000	6.38
region	5	pharmacists per 10000	0.17
region	5	clinicians per 10000	4.24
region	5	HRH patient ratio	10.62
region	6	assistant medical oficer	64
region	6	assistant nursing officer	281
region	6	clinical assistant	31
region	6	clinical officer	203
region	6	medical attendant	1002
region	6	medical officers	31
region	6	nurses	745
region	6	nursing officer	56
region	6	nutrition officer	2
region	6	MO and AMO per 10000	0.36
region	6	nurses and midwives per 10000	2.81
region	6	pharmacists per 10000	0.03
region	6	clinicians per 10000	1.28
region	6	HRH patient ratio	4.09
region	9	assistant medical oficer	18
region	9	assistant nursing officer	20
region	9	clinical assistant	9
region	9	clinical officer	31
region	9	medical attendant	140
region	9	medical officers	7
region	9	nurses	66
region	9	nursing officer	4
region	9	nutrition officer	0
region	9	MO and AMO per 10000	0.41
region	9	nurses and midwives per 10000	1.08
region	9	pharmacists per 10000	0.03
region	9	clinicians per 10000	1.08
region	9	HRH patient ratio	2.17
region	10	assistant medical oficer	61
region	10	assistant nursing officer	107
region	10	clinical assistant	52
region	10	clinical officer	124
region	10	medical attendant	612
region	10	medical officers	13
region	10	nurses	409
region	10	nursing officer	23
region	10	nutrition officer	0
region	10	MO and AMO per 10000	0.33
region	10	nurses and midwives per 10000	1.82
region	10	pharmacists per 10000	0.03
region	10	clinicians per 10000	1.14
region	10	HRH patient ratio	2.95
region	11	assistant medical oficer	151
region	11	assistant nursing officer	505
region	11	clinical assistant	60
region	11	clinical officer	488
region	11	medical attendant	1927
region	11	medical officers	100
region	11	nurses	1074
region	11	nursing officer	164
region	11	nutrition officer	4
region	11	MO and AMO per 10000	1.47
region	11	nurses and midwives per 10000	6.28
region	11	pharmacists per 10000	0.11
region	11	clinicians per 10000	4.95
region	11	HRH patient ratio	11.24
region	14	assistant medical oficer	57
region	14	assistant nursing officer	150
region	14	clinical assistant	28
region	14	clinical officer	166
region	14	medical attendant	647
region	14	medical officers	27
region	14	nurses	333
region	14	nursing officer	8
region	14	nutrition officer	0
region	14	MO and AMO per 10000	0.95
region	14	nurses and midwives per 10000	3.77
region	14	pharmacists per 10000	0.03
region	14	clinicians per 10000	3.27
region	14	HRH patient ratio	7.04
region	15	assistant medical oficer	51
region	15	assistant nursing officer	354
region	15	clinical assistant	41
region	15	clinical officer	176
region	15	medical attendant	729
region	15	medical officers	37
region	15	nurses	459
region	15	nursing officer	41
region	15	nutrition officer	2
region	15	MO and AMO per 10000	0.57
region	15	nurses and midwives per 10000	2.99
region	15	pharmacists per 10000	0.05
region	15	clinicians per 10000	2.05
region	15	HRH patient ratio	5.04
region	16	assistant medical oficer	49
region	16	assistant nursing officer	136
region	16	clinical assistant	55
region	16	clinical officer	201
region	16	medical attendant	622
region	16	medical officers	33
region	16	nurses	640
region	16	nursing officer	50
region	16	nutrition officer	2
region	16	MO and AMO per 10000	0.44
region	16	nurses and midwives per 10000	3.46
region	16	pharmacists per 10000	0.04
region	16	clinicians per 10000	1.88
region	16	HRH patient ratio	5.35
region	17	assistant medical oficer	126
region	17	assistant nursing officer	379
region	17	clinical assistant	124
region	17	clinical officer	384
region	17	medical attendant	1846
region	17	medical officers	200
region	17	nurses	1332
region	17	nursing officer	193
region	17	nutrition officer	9
region	17	MO and AMO per 10000	1.13
region	17	nurses and midwives per 10000	4.62
region	17	pharmacists per 10000	0.14
region	17	clinicians per 10000	3.07
region	17	HRH patient ratio	7.69
region	18	assistant medical oficer	134
region	18	assistant nursing officer	233
region	18	clinical assistant	68
region	18	clinical officer	529
region	18	medical attendant	1032
region	18	medical officers	75
region	18	nurses	793
region	18	nursing officer	167
region	18	nutrition officer	1
region	18	MO and AMO per 10000	0.89
region	18	nurses and midwives per 10000	3.38
region	18	pharmacists per 10000	0.06
region	18	clinicians per 10000	3.58
region	18	HRH patient ratio	6.97
region	19	assistant medical oficer	54
region	19	assistant nursing officer	212
region	19	clinical assistant	29
region	19	clinical officer	157
region	19	medical attendant	567
region	19	medical officers	42
region	19	nurses	370
region	19	nursing officer	17
region	19	nutrition officer	1
region	19	MO and AMO per 10000	0.73
region	19	nurses and midwives per 10000	2.83
region	19	pharmacists per 10000	0.03
region	19	clinicians per 10000	2.23
region	19	HRH patient ratio	5.06
region	20	assistant medical oficer	66
region	20	assistant nursing officer	381
region	20	clinical assistant	72
region	20	clinical officer	280
region	20	medical attendant	1177
region	20	medical officers	117
region	20	nurses	985
region	20	nursing officer	72
region	20	nutrition officer	1
region	20	MO and AMO per 10000	0.62
region	20	nurses and midwives per 10000	3.31
region	20	pharmacists per 10000	0.07
region	20	clinicians per 10000	1.94
region	20	HRH patient ratio	5.25
region	21	assistant medical oficer	33
region	21	assistant nursing officer	126
region	21	clinical assistant	52
region	21	clinical officer	108
region	21	medical attendant	600
region	21	medical officers	22
region	21	nurses	531
region	21	nursing officer	28
region	21	nutrition officer	0
region	21	MO and AMO per 10000	0.77
region	21	nurses and midwives per 10000	7.42
region	21	pharmacists per 10000	0.13
region	21	clinicians per 10000	3.16
region	21	HRH patient ratio	10.58
region	22	assistant medical oficer	74
region	22	assistant nursing officer	114
region	22	clinical assistant	31
region	22	clinical officer	406
region	22	medical attendant	621
region	22	medical officers	59
region	22	nurses	469
region	22	nursing officer	126
region	22	nutrition officer	1
region	22	MO and AMO per 10000	1.15
region	22	nurses and midwives per 10000	4.06
region	22	pharmacists per 10000	0.16
region	22	clinicians per 10000	5.16
region	22	HRH patient ratio	9.22
region	23	assistant medical oficer	26
region	23	assistant nursing officer	72
region	23	clinical assistant	33
region	23	clinical officer	102
region	23	medical attendant	516
region	23	medical officers	25
region	23	nurses	276
region	23	nursing officer	12
region	23	nutrition officer	0
region	23	MO and AMO per 10000	0.47
region	23	nurses and midwives per 10000	2.55
region	23	pharmacists per 10000	0.04
region	23	clinicians per 10000	1.76
region	23	HRH patient ratio	4.31
region	24	assistant medical oficer	66
region	24	assistant nursing officer	116
region	24	clinical assistant	66
region	24	clinical officer	181
region	24	medical attendant	925
region	24	medical officers	25
region	24	nurses	602
region	24	nursing officer	32
region	24	nutrition officer	5
region	24	MO and AMO per 10000	0.63
region	24	nurses and midwives per 10000	4.16
region	24	pharmacists per 10000	0.04
region	24	clinicians per 10000	2.45
region	24	HRH patient ratio	6.61
region	25	assistant medical oficer	39
region	25	assistant nursing officer	162
region	25	clinical assistant	53
region	25	clinical officer	162
region	25	medical attendant	650
region	25	medical officers	15
region	25	nurses	431
region	25	nursing officer	18
region	25	nutrition officer	1
region	25	MO and AMO per 10000	0.34
region	25	nurses and midwives per 10000	2.68
region	25	pharmacists per 10000	0.04
region	25	clinicians per 10000	1.71
region	25	HRH patient ratio	4.38
region	26	assistant medical oficer	23
region	26	assistant nursing officer	70
region	26	clinical assistant	53
region	26	clinical officer	104
region	26	medical attendant	415
region	26	medical officers	11
region	26	nurses	223
region	26	nursing officer	1
region	26	nutrition officer	0
region	26	MO and AMO per 10000	0.21
region	26	nurses and midwives per 10000	1.35
region	26	pharmacists per 10000	0.02
region	26	clinicians per 10000	1.19
region	26	HRH patient ratio	2.54
region	27	assistant medical oficer	44
region	27	assistant nursing officer	113
region	27	clinical assistant	24
region	27	clinical officer	125
region	27	medical attendant	655
region	27	medical officers	14
region	27	nurses	460
region	27	nursing officer	53
region	27	nutrition officer	3
region	27	MO and AMO per 10000	0.4
region	27	nurses and midwives per 10000	3.18
region	27	pharmacists per 10000	0.03
region	27	clinicians per 10000	1.47
region	27	HRH patient ratio	4.65
region	29	assistant medical oficer	47
region	29	assistant nursing officer	155
region	29	clinical assistant	45
region	29	clinical officer	139
region	29	medical attendant	548
region	29	medical officers	11
region	29	nurses	372
region	29	nursing officer	18
region	29	nutrition officer	0
region	29	MO and AMO per 10000	0.24
region	29	nurses and midwives per 10000	1.52
region	29	pharmacists per 10000	0
region	29	clinicians per 10000	1.02
region	29	HRH patient ratio	2.53
region	28	assistant medical oficer	108
region	28	assistant nursing officer	199
region	28	clinical assistant	62
region	28	clinical officer	446
region	28	medical attendant	1210
region	28	medical officers	58
region	28	nurses	667
region	28	nursing officer	56
region	28	nutrition officer	3
region	28	MO and AMO per 10000	0.77
region	28	nurses and midwives per 10000	3.09
region	28	pharmacists per 10000	0.08
region	28	clinicians per 10000	3.3
region	28	HRH patient ratio	6.39
region	7	assistant medical oficer	\N
region	7	assistant nursing officer	\N
region	7	clinical assistant	\N
region	7	clinical officer	\N
region	7	medical attendant	\N
region	7	medical officers	\N
region	7	nurses	\N
region	7	nursing officer	\N
region	7	nutrition officer	\N
region	7	MO and AMO per 10000	\N
region	7	nurses and midwives per 10000	\N
region	7	pharmacists per 10000	\N
region	7	clinicians per 10000	\N
region	7	HRH patient ratio	\N
region	8	assistant medical oficer	\N
region	8	assistant nursing officer	\N
region	8	clinical assistant	\N
region	8	clinical officer	\N
region	8	medical attendant	\N
region	8	medical officers	\N
region	8	nurses	\N
region	8	nursing officer	\N
region	8	nutrition officer	\N
region	8	MO and AMO per 10000	\N
region	8	nurses and midwives per 10000	\N
region	8	pharmacists per 10000	\N
region	8	clinicians per 10000	\N
region	8	HRH patient ratio	\N
region	12	assistant medical oficer	\N
region	12	assistant nursing officer	\N
region	12	clinical assistant	\N
region	12	clinical officer	\N
region	12	medical attendant	\N
region	12	medical officers	\N
region	12	nurses	\N
region	12	nursing officer	\N
region	12	nutrition officer	\N
region	12	MO and AMO per 10000	\N
region	12	nurses and midwives per 10000	\N
region	12	pharmacists per 10000	\N
region	12	clinicians per 10000	\N
region	12	HRH patient ratio	\N
region	13	assistant medical oficer	\N
region	13	assistant nursing officer	\N
region	13	clinical assistant	\N
region	13	clinical officer	\N
region	13	medical attendant	\N
region	13	medical officers	\N
region	13	nurses	\N
region	13	nursing officer	\N
region	13	nutrition officer	\N
region	13	MO and AMO per 10000	\N
region	13	nurses and midwives per 10000	\N
region	13	pharmacists per 10000	\N
region	13	clinicians per 10000	\N
region	13	HRH patient ratio	\N
region	30	assistant medical oficer	\N
region	30	assistant nursing officer	\N
region	30	clinical assistant	\N
region	30	clinical officer	\N
region	30	medical attendant	\N
region	30	medical officers	\N
region	30	nurses	\N
region	30	nursing officer	\N
region	30	nutrition officer	\N
region	30	MO and AMO per 10000	\N
region	30	nurses and midwives per 10000	\N
region	30	pharmacists per 10000	\N
region	30	clinicians per 10000	\N
region	30	HRH patient ratio	\N
country	TZ	assistant medical oficer	1737
country	TZ	assistant nursing officer	5901
country	TZ	clinical assistant	1216
country	TZ	clinical officer	6164
country	TZ	medical attendant	20622
country	TZ	medical officers	1709
country	TZ	nurses	15080
country	TZ	nursing officer	1961
country	TZ	nutrition officer	60
country	TZ	MO and AMO per 10000	0.69
country	TZ	nurses and midwives per 10000	3.38
country	TZ	pharmacists per 10000	0.07
country	TZ	clinicians per 10000	2.49
country	TZ	HRH patient ratio	5.87
\.
--
-- Name: healthworkers_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY healthworkers
    ADD CONSTRAINT healthworkers_pkey PRIMARY KEY (geo_level, geo_code, "health workers");


--
-- PostgreSQL database dump complete
--

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

ALTER TABLE IF EXISTS ONLY public.tetanusvaccine DROP CONSTRAINT IF EXISTS tetanusvaccine_pkey;
DROP TABLE IF EXISTS public.tetanusvaccine;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: tetanusvaccine; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE tetanusvaccine (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "tetanus vaccine" character varying(128) NOT NULL,
    total float NULL
);


--
-- Data for Name: tetanusvaccine; Type: TABLE DATA; Schema: public; Owner: -
--

COPY tetanusvaccine (geo_level, geo_code, "tetanus vaccine", total) FROM stdin;
region	1	vaccinated	52138
region	1	coverage	83
region	3	vaccinated	126966
region	3	coverage	87
region	2	vaccinated	53216
region	2	coverage	67
region	4	vaccinated	54064
region	4	coverage	59
region	5	vaccinated	22927
region	5	coverage	75
region	6	vaccinated	60455
region	6	coverage	74
region	9	vaccinated	22675
region	9	coverage	72
region	10	vaccinated	52638
region	10	coverage	78
region	11	vaccinated	34174
region	11	coverage	93
region	14	vaccinated	19226
region	14	coverage	69
region	15	vaccinated	35852
region	15	coverage	63
region	16	vaccinated	56399
region	16	coverage	72
region	17	vaccinated	79818
region	17	coverage	81
region	18	vaccinated	56437
region	18	coverage	71
region	19	vaccinated	24727
region	19	coverage	71
region	20	vaccinated	74977
region	20	coverage	65
region	21	vaccinated	15882
region	21	coverage	76
region	22	vaccinated	35282
region	22	coverage	72
region	23	vaccinated	43563
region	23	coverage	82
region	24	vaccinated	33662
region	24	coverage	72
region	25	vaccinated	53979
region	25	coverage	69
region	26	vaccinated	62805
region	26	coverage	80
region	27	vaccinated	34480
region	27	coverage	57
region	29	vaccinated	65647
region	29	coverage	56
region	28	vaccinated	44559
region	28	coverage	61
region	7	vaccinated	\N
region	7	coverage	\N
region	8	vaccinated	\N
region	8	coverage	\N
region	12	vaccinated	\N
region	12	coverage	\N
region	13	vaccinated	\N
region	13	coverage	\N
region	30	vaccinated	\N
region	30	coverage	\N
country	TZ	vaccinated	1216548
country	TZ	coverage	72
\.
--
-- Name: tetanusvaccine_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY tetanusvaccine
    ADD CONSTRAINT tetanusvaccine_pkey PRIMARY KEY (geo_level, geo_code, "tetanus vaccine");


--
-- PostgreSQL database dump complete
--

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

ALTER TABLE IF EXISTS ONLY public.inpatientdiagnosisunderfive DROP CONSTRAINT IF EXISTS inpatientdiagnosisunderfive_pkey;
DROP TABLE IF EXISTS public.inpatientdiagnosisunderfive;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: inpatientdiagnosisunderfive; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE inpatientdiagnosisunderfive (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "inpatient diagnosis under five" character varying(128) NOT NULL,
    total float NULL
);


--
-- Data for Name: inpatientdiagnosisunderfive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY inpatientdiagnosisunderfive (geo_level, geo_code, "inpatient diagnosis under five", total) FROM stdin;
region	1	diarrhoea	1771
region	1	burn	442
region	1	kwashiokor	76
region	1	low birth weight	1288
region	1	malaria	936
region	1	anaemia	621
region	1	moderate malnutrition	203
region	1	neonatal septicaemia	831
region	1	pneumonia	7822
region	3	diarrhoea	1908
region	3	burn	473
region	3	kwashiokor	41
region	3	low birth weight	908
region	3	malaria	5257
region	3	anaemia	1654
region	3	moderate malnutrition	265
region	3	neonatal septicaemia	3340
region	3	pneumonia	4213
region	2	diarrhoea	1926
region	2	burn	256
region	2	kwashiokor	97
region	2	low birth weight	616
region	2	malaria	4837
region	2	anaemia	1238
region	2	moderate malnutrition	143
region	2	neonatal septicaemia	864
region	2	pneumonia	3658
region	4	diarrhoea	1276
region	4	burn	126
region	4	kwashiokor	72
region	4	low birth weight	43
region	4	malaria	10533
region	4	anaemia	3520
region	4	moderate malnutrition	62
region	4	neonatal septicaemia	15
region	4	pneumonia	1785
region	5	diarrhoea	949
region	5	burn	154
region	5	kwashiokor	203
region	5	low birth weight	463
region	5	malaria	2492
region	5	anaemia	337
region	5	moderate malnutrition	75
region	5	neonatal septicaemia	211
region	5	pneumonia	2249
region	6	diarrhoea	4534
region	6	burn	171
region	6	kwashiokor	202
region	6	low birth weight	325
region	6	malaria	31668
region	6	anaemia	5865
region	6	moderate malnutrition	410
region	6	neonatal septicaemia	255
region	6	pneumonia	8724
region	9	diarrhoea	2
region	9	burn	0
region	9	kwashiokor	0
region	9	low birth weight	3
region	9	malaria	6
region	9	anaemia	3
region	9	moderate malnutrition	0
region	9	neonatal septicaemia	2
region	9	pneumonia	6
region	10	diarrhoea	538
region	10	burn	46
region	10	kwashiokor	44
region	10	low birth weight	7
region	10	malaria	2561
region	10	anaemia	1015
region	10	moderate malnutrition	25
region	10	neonatal septicaemia	3
region	10	pneumonia	587
region	11	diarrhoea	2016
region	11	burn	139
region	11	kwashiokor	72
region	11	low birth weight	436
region	11	malaria	12335
region	11	anaemia	3211
region	11	moderate malnutrition	57
region	11	neonatal septicaemia	534
region	11	pneumonia	3160
region	14	diarrhoea	2583
region	14	burn	528
region	14	kwashiokor	543
region	14	low birth weight	37
region	14	malaria	2539
region	14	anaemia	1416
region	14	moderate malnutrition	1018
region	14	neonatal septicaemia	512
region	14	pneumonia	7863
region	15	diarrhoea	882
region	15	burn	58
region	15	kwashiokor	19
region	15	low birth weight	285
region	15	malaria	7713
region	15	anaemia	1408
region	15	moderate malnutrition	26
region	15	neonatal septicaemia	447
region	15	pneumonia	1452
region	16	diarrhoea	1906
region	16	burn	176
region	16	kwashiokor	143
region	16	low birth weight	74
region	16	malaria	3422
region	16	anaemia	416
region	16	moderate malnutrition	132
region	16	neonatal septicaemia	196
region	16	pneumonia	6594
region	17	diarrhoea	2525
region	17	burn	230
region	17	kwashiokor	120
region	17	low birth weight	160
region	17	malaria	19667
region	17	anaemia	6295
region	17	moderate malnutrition	175
region	17	neonatal septicaemia	102
region	17	pneumonia	3727
region	18	diarrhoea	3493
region	18	burn	369
region	18	kwashiokor	90
region	18	low birth weight	687
region	18	malaria	7067
region	18	anaemia	909
region	18	moderate malnutrition	161
region	18	neonatal septicaemia	403
region	18	pneumonia	8296
region	19	diarrhoea	2120
region	19	burn	349
region	19	kwashiokor	86
region	19	low birth weight	551
region	19	malaria	18784
region	19	anaemia	3190
region	19	moderate malnutrition	228
region	19	neonatal septicaemia	1013
region	19	pneumonia	5425
region	20	diarrhoea	728
region	20	burn	142
region	20	kwashiokor	18
region	20	low birth weight	251
region	20	malaria	10743
region	20	anaemia	1370
region	20	moderate malnutrition	33
region	20	neonatal septicaemia	354
region	20	pneumonia	1866
region	21	diarrhoea	2916
region	21	burn	326
region	21	kwashiokor	173
region	21	low birth weight	463
region	21	malaria	20998
region	21	anaemia	4395
region	21	moderate malnutrition	67
region	21	neonatal septicaemia	277
region	21	pneumonia	4719
region	22	diarrhoea	1437
region	22	burn	226
region	22	kwashiokor	56
region	22	low birth weight	75
region	22	malaria	2230
region	22	anaemia	307
region	22	moderate malnutrition	88
region	22	neonatal septicaemia	44
region	22	pneumonia	3520
region	23	diarrhoea	607
region	23	burn	202
region	23	kwashiokor	12
region	23	low birth weight	431
region	23	malaria	7660
region	23	anaemia	2053
region	23	moderate malnutrition	527
region	23	neonatal septicaemia	715
region	23	pneumonia	2085
region	24	diarrhoea	1302
region	24	burn	126
region	24	kwashiokor	48
region	24	low birth weight	46
region	24	malaria	4597
region	24	anaemia	1028
region	24	moderate malnutrition	58
region	24	neonatal septicaemia	9
region	24	pneumonia	973
region	25	diarrhoea	2386
region	25	burn	188
region	25	kwashiokor	44
region	25	low birth weight	538
region	25	malaria	20396
region	25	anaemia	2454
region	25	moderate malnutrition	95
region	25	neonatal septicaemia	156
region	25	pneumonia	4572
region	26	diarrhoea	1761
region	26	burn	130
region	26	kwashiokor	41
region	26	low birth weight	140
region	26	malaria	11955
region	26	anaemia	4793
region	26	moderate malnutrition	70
region	26	neonatal septicaemia	142
region	26	pneumonia	1745
region	27	diarrhoea	1279
region	27	burn	108
region	27	kwashiokor	127
region	27	low birth weight	46
region	27	malaria	6625
region	27	anaemia	2766
region	27	moderate malnutrition	87
region	27	neonatal septicaemia	29
region	27	pneumonia	1301
region	29	diarrhoea	2234
region	29	burn	178
region	29	kwashiokor	97
region	29	low birth weight	151
region	29	malaria	5547
region	29	anaemia	1444
region	29	moderate malnutrition	113
region	29	neonatal septicaemia	141
region	29	pneumonia	2944
region	28	diarrhoea	3262
region	28	burn	206
region	28	kwashiokor	56
region	28	low birth weight	93
region	28	malaria	16336
region	28	anaemia	3017
region	28	moderate malnutrition	153
region	28	neonatal septicaemia	235
region	28	pneumonia	3187
region	7	diarrhoea	2252
region	7	burn	464
region	7	kwashiokor	121
region	7	low birth weight	560
region	7	malaria	11689
region	7	anaemia	2385
region	7	moderate malnutrition	170
region	7	neonatal septicaemia	796
region	7	pneumonia	7463
region	8	diarrhoea	\N
region	8	burn	\N
region	8	kwashiokor	\N
region	8	low birth weight	\N
region	8	malaria	\N
region	8	anaemia	\N
region	8	moderate malnutrition	\N
region	8	neonatal septicaemia	\N
region	8	pneumonia	\N
region	12	diarrhoea	\N
region	12	burn	\N
region	12	kwashiokor	\N
region	12	low birth weight	\N
region	12	malaria	\N
region	12	anaemia	\N
region	12	moderate malnutrition	\N
region	12	neonatal septicaemia	\N
region	12	pneumonia	\N
region	13	diarrhoea	\N
region	13	burn	\N
region	13	kwashiokor	\N
region	13	low birth weight	\N
region	13	malaria	\N
region	13	anaemia	\N
region	13	moderate malnutrition	\N
region	13	neonatal septicaemia	\N
region	13	pneumonia	\N
region	30	diarrhoea	\N
region	30	burn	\N
region	30	kwashiokor	\N
region	30	low birth weight	\N
region	30	malaria	\N
region	30	anaemia	\N
region	30	moderate malnutrition	\N
region	30	neonatal septicaemia	\N
region	30	pneumonia	\N
country	TZ	diarrhoea	48593
country	TZ	burn	5813
country	TZ	kwashiokor	2601
country	TZ	low birth weight	8677
country	TZ	malaria	248593
country	TZ	anaemia	57110
country	TZ	moderate malnutrition	4441
country	TZ	neonatal septicaemia	11626
country	TZ	pneumonia	99936
\.
--
-- Name: inpatientdiagnosisunderfive_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY inpatientdiagnosisunderfive
    ADD CONSTRAINT inpatientdiagnosisunderfive_pkey PRIMARY KEY (geo_level, geo_code, "inpatient diagnosis under five");


--
-- PostgreSQL database dump complete
--

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

ALTER TABLE IF EXISTS ONLY public.inpatientdiagnosisoverfive DROP CONSTRAINT IF EXISTS inpatientdiagnosisoverfive_pkey;
DROP TABLE IF EXISTS public.inpatientdiagnosisoverfive;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: inpatientdiagnosisoverfive; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE inpatientdiagnosisoverfive (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "inpatient diagnosis over five" character varying(128) NOT NULL,
    total float NULL
);


--
-- Data for Name: inpatientdiagnosisoverfive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY inpatientdiagnosisoverfive (geo_level, geo_code, "inpatient diagnosis over five", total) FROM stdin;
region	1	diarrhoea	1250
region	1	cardiac failure	912
region	1	diabete mellitus	1330
region	1	fracture	2343
region	1	hypertension	1621
region	1	malaria	2377
region	1	anaemia	1451
region	1	pneumonia	3881
region	1	road accident injury	1252
region	1	STI	102
region	1	HIV	1977
region	1	TB	1016
region	1	Typhoid	1094
region	1	UTI	1148
region	3	diarrhoea	2567
region	3	cardiac failure	913
region	3	diabete mellitus	4906
region	3	fracture	1019
region	3	hypertension	6187
region	3	malaria	12152
region	3	anaemia	3083
region	3	pneumonia	2114
region	3	road accident injury	668
region	3	STI	321
region	3	HIV	2658
region	3	TB	1074
region	3	Typhoid	993
region	3	UTI	1827
region	2	diarrhoea	1375
region	2	cardiac failure	411
region	2	diabete mellitus	360
region	2	fracture	2232
region	2	hypertension	1009
region	2	malaria	8228
region	2	anaemia	2260
region	2	pneumonia	1903
region	2	road accident injury	2312
region	2	STI	133
region	2	HIV	936
region	2	TB	475
region	2	Typhoid	921
region	2	UTI	933
region	4	diarrhoea	1012
region	4	cardiac failure	97
region	4	diabete mellitus	186
region	4	fracture	245
region	4	hypertension	286
region	4	malaria	7709
region	4	anaemia	1445
region	4	pneumonia	759
region	4	road accident injury	1068
region	4	STI	102
region	4	HIV	574
region	4	TB	264
region	4	Typhoid	378
region	4	UTI	924
region	5	diarrhoea	2134
region	5	cardiac failure	434
region	5	diabete mellitus	668
region	5	fracture	1111
region	5	hypertension	1078
region	5	malaria	12017
region	5	anaemia	2227
region	5	pneumonia	2390
region	5	road accident injury	2107
region	5	STI	315
region	5	HIV	1314
region	5	TB	678
region	5	Typhoid	725
region	5	UTI	1723
region	6	diarrhoea	2835
region	6	cardiac failure	491
region	6	diabete mellitus	1462
region	6	fracture	936
region	6	hypertension	2550
region	6	malaria	26243
region	6	anaemia	3004
region	6	pneumonia	4388
region	6	road accident injury	1503
region	6	STI	561
region	6	HIV	1018
region	6	TB	744
region	6	Typhoid	1108
region	6	UTI	6680
region	9	diarrhoea	568
region	9	cardiac failure	70
region	9	diabete mellitus	44
region	9	fracture	191
region	9	hypertension	139
region	9	malaria	2898
region	9	anaemia	661
region	9	pneumonia	387
region	9	road accident injury	368
region	9	STI	17
region	9	HIV	199
region	9	TB	46
region	9	Typhoid	137
region	9	UTI	293
region	10	diarrhoea	1105
region	10	cardiac failure	381
region	10	diabete mellitus	547
region	10	fracture	692
region	10	hypertension	834
region	10	malaria	13149
region	10	anaemia	2658
region	10	pneumonia	1276
region	10	road accident injury	724
region	10	STI	121
region	10	HIV	361
region	10	TB	224
region	10	Typhoid	265
region	10	UTI	2157
region	11	diarrhoea	2401
region	11	cardiac failure	1427
region	11	diabete mellitus	2198
region	11	fracture	2087
region	11	hypertension	3309
region	11	malaria	4359
region	11	anaemia	1902
region	11	pneumonia	5584
region	11	road accident injury	1136
region	11	STI	835
region	11	HIV	1548
region	11	TB	746
region	11	Typhoid	89
region	11	UTI	2580
region	14	diarrhoea	1392
region	14	cardiac failure	374
region	14	diabete mellitus	157
region	14	fracture	692
region	14	hypertension	777
region	14	malaria	11218
region	14	anaemia	1716
region	14	pneumonia	1016
region	14	road accident injury	401
region	14	STI	46
region	14	HIV	444
region	14	TB	204
region	14	Typhoid	203
region	14	UTI	551
region	15	diarrhoea	1362
region	15	cardiac failure	395
region	15	diabete mellitus	515
region	15	fracture	593
region	15	hypertension	425
region	15	malaria	6081
region	15	anaemia	882
region	15	pneumonia	3752
region	15	road accident injury	994
region	15	STI	253
region	15	HIV	502
region	15	TB	665
region	15	Typhoid	1032
region	15	UTI	662
region	16	diarrhoea	1644
region	16	cardiac failure	182
region	16	diabete mellitus	261
region	16	fracture	307
region	16	hypertension	549
region	16	malaria	19100
region	16	anaemia	3218
region	16	pneumonia	1847
region	16	road accident injury	1199
region	16	STI	231
region	16	HIV	1006
region	16	TB	492
region	16	Typhoid	1408
region	16	UTI	3375
region	17	diarrhoea	3902
region	17	cardiac failure	942
region	17	diabete mellitus	840
region	17	fracture	1570
region	17	hypertension	1983
region	17	malaria	14837
region	17	anaemia	2237
region	17	pneumonia	4922
region	17	road accident injury	2443
region	17	STI	212
region	17	HIV	2363
region	17	TB	982
region	17	Typhoid	2677
region	17	UTI	2373
region	18	diarrhoea	1847
region	18	cardiac failure	408
region	18	diabete mellitus	447
region	18	fracture	916
region	18	hypertension	1452
region	18	malaria	25892
region	18	anaemia	2698
region	18	pneumonia	3109
region	18	road accident injury	1036
region	18	STI	216
region	18	HIV	796
region	18	TB	305
region	18	Typhoid	1294
region	18	UTI	3282
region	19	diarrhoea	1286
region	19	cardiac failure	487
region	19	diabete mellitus	241
region	19	fracture	776
region	19	hypertension	1311
region	19	malaria	14537
region	19	anaemia	1483
region	19	pneumonia	1013
region	19	road accident injury	630
region	19	STI	110
region	19	HIV	621
region	19	TB	271
region	19	Typhoid	176
region	19	UTI	689
region	20	diarrhoea	2228
region	20	cardiac failure	401
region	20	diabete mellitus	613
region	20	fracture	460
region	20	hypertension	1225
region	20	malaria	19847
region	20	anaemia	3201
region	20	pneumonia	2316
region	20	road accident injury	843
region	20	STI	311
region	20	HIV	1545
region	20	TB	854
region	20	Typhoid	1380
region	20	UTI	3589
region	21	diarrhoea	2347
region	21	cardiac failure	365
region	21	diabete mellitus	216
region	21	fracture	1016
region	21	hypertension	887
region	21	malaria	4071
region	21	anaemia	902
region	21	pneumonia	2827
region	21	road accident injury	800
region	21	STI	118
region	21	HIV	962
region	21	TB	436
region	21	Typhoid	1596
region	21	UTI	866
region	22	diarrhoea	787
region	22	cardiac failure	307
region	22	diabete mellitus	340
region	22	fracture	1168
region	22	hypertension	1279
region	22	malaria	9633
region	22	anaemia	2000
region	22	pneumonia	1475
region	22	road accident injury	1452
region	22	STI	70
region	22	HIV	827
region	22	TB	351
region	22	Typhoid	78
region	22	UTI	1100
region	23	diarrhoea	759
region	23	cardiac failure	173
region	23	diabete mellitus	162
region	23	fracture	528
region	23	hypertension	332
region	23	malaria	5727
region	23	anaemia	778
region	23	pneumonia	516
region	23	road accident injury	501
region	23	STI	205
region	23	HIV	486
region	23	TB	214
region	23	Typhoid	372
region	23	UTI	358
region	24	diarrhoea	1796
region	24	cardiac failure	580
region	24	diabete mellitus	411
region	24	fracture	1499
region	24	hypertension	1278
region	24	malaria	24372
region	24	anaemia	1908
region	24	pneumonia	2945
region	24	road accident injury	1403
region	24	STI	389
region	24	HIV	865
region	24	TB	479
region	24	Typhoid	509
region	24	UTI	750
region	25	diarrhoea	1081
region	25	cardiac failure	383
region	25	diabete mellitus	279
region	25	fracture	749
region	25	hypertension	615
region	25	malaria	11638
region	25	anaemia	3245
region	25	pneumonia	1111
region	25	road accident injury	941
region	25	STI	224
region	25	HIV	962
region	25	TB	478
region	25	Typhoid	324
region	25	UTI	1723
region	26	diarrhoea	856
region	26	cardiac failure	127
region	26	diabete mellitus	95
region	26	fracture	135
region	26	hypertension	171
region	26	malaria	5885
region	26	anaemia	2458
region	26	pneumonia	514
region	26	road accident injury	232
region	26	STI	182
region	26	HIV	294
region	26	TB	298
region	26	Typhoid	94
region	26	UTI	713
region	27	diarrhoea	1638
region	27	cardiac failure	552
region	27	diabete mellitus	329
region	27	fracture	1334
region	27	hypertension	591
region	27	malaria	7737
region	27	anaemia	1785
region	27	pneumonia	1952
region	27	road accident injury	1111
region	27	STI	263
region	27	HIV	939
region	27	TB	731
region	27	Typhoid	1637
region	27	UTI	1081
region	29	diarrhoea	1604
region	29	cardiac failure	390
region	29	diabete mellitus	417
region	29	fracture	579
region	29	hypertension	698
region	29	malaria	14510
region	29	anaemia	1924
region	29	pneumonia	1302
region	29	road accident injury	867
region	29	STI	122
region	29	HIV	837
region	29	TB	337
region	29	Typhoid	179
region	29	UTI	1123
region	28	diarrhoea	1980
region	28	cardiac failure	671
region	28	diabete mellitus	1148
region	28	fracture	1676
region	28	hypertension	2246
region	28	malaria	18202
region	28	anaemia	3383
region	28	pneumonia	5042
region	28	road accident injury	1505
region	28	STI	269
region	28	HIV	1452
region	28	TB	934
region	28	Typhoid	896
region	28	UTI	2353
region	7	diarrhoea	\N
region	7	cardiac failure	\N
region	7	diabete mellitus	\N
region	7	fracture	\N
region	7	hypertension	\N
region	7	malaria	\N
region	7	anaemia	\N
region	7	pneumonia	\N
region	7	road accident injury	\N
region	7	STI	\N
region	7	HIV	\N
region	7	TB	\N
region	7	Typhoid	\N
region	7	UTI	\N
region	8	diarrhoea	\N
region	8	cardiac failure	\N
region	8	diabete mellitus	\N
region	8	fracture	\N
region	8	hypertension	\N
region	8	malaria	\N
region	8	anaemia	\N
region	8	pneumonia	\N
region	8	road accident injury	\N
region	8	STI	\N
region	8	HIV	\N
region	8	TB	\N
region	8	Typhoid	\N
region	8	UTI	\N
region	12	diarrhoea	\N
region	12	cardiac failure	\N
region	12	diabete mellitus	\N
region	12	fracture	\N
region	12	hypertension	\N
region	12	malaria	\N
region	12	anaemia	\N
region	12	pneumonia	\N
region	12	road accident injury	\N
region	12	STI	\N
region	12	HIV	\N
region	12	TB	\N
region	12	Typhoid	\N
region	12	UTI	\N
region	13	diarrhoea	\N
region	13	cardiac failure	\N
region	13	diabete mellitus	\N
region	13	fracture	\N
region	13	hypertension	\N
region	13	malaria	\N
region	13	anaemia	\N
region	13	pneumonia	\N
region	13	road accident injury	\N
region	13	STI	\N
region	13	HIV	\N
region	13	TB	\N
region	13	Typhoid	\N
region	13	UTI	\N
region	30	diarrhoea	\N
region	30	cardiac failure	\N
region	30	diabete mellitus	\N
region	30	fracture	\N
region	30	hypertension	\N
region	30	malaria	\N
region	30	anaemia	\N
region	30	pneumonia	\N
region	30	road accident injury	\N
region	30	STI	\N
region	30	HIV	\N
region	30	TB	\N
region	30	Typhoid	\N
region	30	UTI	\N
country	TZ	diarrhoea	41756
country	TZ	cardiac failure	11873
country	TZ	diabete mellitus	18172
country	TZ	fracture	24854
country	TZ	hypertension	32832
country	TZ	malaria	302419
country	TZ	anaemia	52509
country	TZ	pneumonia	58341
country	TZ	road accident injury	27496
country	TZ	STI	5728
country	TZ	HIV	25486
country	TZ	TB	13298
country	TZ	Typhoid	19565
country	TZ	UTI	42853
\.
--
-- Name: inpatientdiagnosisoverfive_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY inpatientdiagnosisoverfive
    ADD CONSTRAINT inpatientdiagnosisoverfive_pkey PRIMARY KEY (geo_level, geo_code, "inpatient diagnosis over five");


--
-- PostgreSQL database dump complete
--


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

ALTER TABLE IF EXISTS ONLY public.healthcenters DROP CONSTRAINT IF EXISTS healthcenters_pkey;
DROP TABLE IF EXISTS public.healthcenters;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: healthcenters; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE healthcenters (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "health centers" character varying(128) NOT NULL,
    total float NULL
);


--
-- Data for Name: healthcenters; Type: TABLE DATA; Schema: public; Owner: -
--

COPY healthcenters (geo_level, geo_code, "health centers", total) FROM stdin;
district	1	clinic	0
district	1	dispensary	31
district	1	health centers	4
district	1	hospital	1
district	2	clinic	0
district	2	dispensary	56
district	2	health centers	5
district	2	hospital	1
district	3	clinic	0
district	3	dispensary	49
district	3	health centers	4
district	3	hospital	1
district	4	clinic	0
district	4	dispensary	61
district	4	health centers	4
district	4	hospital	1
district	5	clinic	4
district	5	dispensary	56
district	5	health centers	10
district	5	hospital	3
district	6	clinic	0
district	6	dispensary	34
district	6	health centers	6
district	6	hospital	0
district	7	clinic	0
district	7	dispensary	34
district	7	health centers	4
district	7	hospital	0
district	8	clinic	0
district	8	dispensary	33
district	8	health centers	2
district	8	hospital	1
district	9	clinic	0
district	9	dispensary	49
district	9	health centers	8
district	9	hospital	2
district	10	clinic	0
district	10	dispensary	62
district	10	health centers	17
district	10	hospital	6
district	11	clinic	0
district	11	dispensary	39
district	11	health centers	10
district	11	hospital	1
district	12	clinic	0
district	12	dispensary	24
district	12	health centers	4
district	12	hospital	2
district	13	clinic	0
district	13	dispensary	43
district	13	health centers	5
district	13	hospital	3
district	14	clinic	0
district	14	dispensary	20
district	14	health centers	2
district	14	hospital	1
district	15	clinic	0
district	15	dispensary	37
district	15	health centers	4
district	15	hospital	2
district	16	clinic	0
district	16	dispensary	49
district	16	health centers	7
district	16	hospital	1
district	17	clinic	0
district	17	dispensary	62
district	17	health centers	9
district	17	hospital	3
district	18	clinic	0
district	18	dispensary	68
district	18	health centers	8
district	18	hospital	4
district	19	clinic	0
district	19	dispensary	51
district	19	health centers	6
district	19	hospital	2
district	20	clinic	4
district	20	dispensary	39
district	20	health centers	8
district	20	hospital	5
district	21	clinic	0
district	21	dispensary	13
district	21	health centers	5
district	21	hospital	1
district	22	clinic	0
district	22	dispensary	37
district	22	health centers	5
district	22	hospital	1
district	23	clinic	0
district	23	dispensary	46
district	23	health centers	4
district	23	hospital	3
district	24	clinic	0
district	24	dispensary	41
district	24	health centers	5
district	24	hospital	1
district	25	clinic	1
district	25	dispensary	36
district	25	health centers	11
district	25	hospital	1
district	26	clinic	0
district	26	dispensary	20
district	26	health centers	1
district	26	hospital	1
district	27	clinic	0
district	27	dispensary	34
district	27	health centers	2
district	27	hospital	1
district	28	clinic	0
district	28	dispensary	34
district	28	health centers	3
district	28	hospital	1
district	29	clinic	0
district	29	dispensary	26
district	29	health centers	3
district	29	hospital	0
district	30	clinic	2
district	30	dispensary	14
district	30	health centers	2
district	30	hospital	0
district	31	clinic	0
district	31	dispensary	4
district	31	health centers	1
district	31	hospital	1
district	32	clinic	0
district	32	dispensary	49
district	32	health centers	7
district	32	hospital	3
district	33	clinic	0
district	33	dispensary	64
district	33	health centers	7
district	33	hospital	0
district	34	clinic	1
district	34	dispensary	47
district	34	health centers	6
district	34	hospital	1
district	35	clinic	0
district	35	dispensary	33
district	35	health centers	3
district	35	hospital	2
district	36	clinic	2
district	36	dispensary	43
district	36	health centers	13
district	36	hospital	3
district	37	clinic	0
district	37	dispensary	45
district	37	health centers	7
district	37	hospital	3
district	38	clinic	0
district	38	dispensary	16
district	38	health centers	1
district	38	hospital	0
district	39	clinic	2
district	39	dispensary	64
district	39	health centers	5
district	39	hospital	1
district	40	clinic	0
district	40	dispensary	23
district	40	health centers	1
district	40	hospital	0
district	41	clinic	2
district	41	dispensary	27
district	41	health centers	3
district	41	hospital	0
district	42	clinic	1
district	42	dispensary	31
district	42	health centers	5
district	42	hospital	1
district	43	clinic	0
district	43	dispensary	62
district	43	health centers	5
district	43	hospital	2
district	44	clinic	0
district	44	dispensary	18
district	44	health centers	0
district	44	hospital	1
district	45	clinic	1
district	45	dispensary	23
district	45	health centers	5
district	45	hospital	1
district	46	clinic	50
district	46	dispensary	173
district	46	health centers	17
district	46	hospital	22
district	47	clinic	36
district	47	dispensary	132
district	47	health centers	0
district	47	hospital	12
district	48	clinic	6
district	48	dispensary	112
district	48	health centers	13
district	48	hospital	5
district	49	clinic	0
district	49	dispensary	48
district	49	health centers	4
district	49	hospital	2
district	50	clinic	0
district	50	dispensary	41
district	50	health centers	6
district	50	hospital	1
district	51	clinic	0
district	51	dispensary	32
district	51	health centers	2
district	51	hospital	3
district	52	clinic	0
district	52	dispensary	31
district	52	health centers	1
district	52	hospital	1
district	53	clinic	0
district	53	dispensary	28
district	53	health centers	3
district	53	hospital	1
district	54	clinic	0
district	54	dispensary	16
district	54	health centers	1
district	54	hospital	1
district	55	clinic	0
district	55	dispensary	51
district	55	health centers	4
district	55	hospital	0
district	56	clinic	0
district	56	dispensary	32
district	56	health centers	4
district	56	hospital	2
district	57	clinic	0
district	57	dispensary	38
district	57	health centers	2
district	57	hospital	1
district	58	clinic	0
district	58	dispensary	31
district	58	health centers	3
district	58	hospital	1
district	59	clinic	0
district	59	dispensary	15
district	59	health centers	3
district	59	hospital	1
district	60	clinic	0
district	60	dispensary	16
district	60	health centers	3
district	60	hospital	0
district	61	clinic	0
district	61	dispensary	10
district	61	health centers	1
district	61	hospital	1
district	62	clinic	0
district	62	dispensary	48
district	62	health centers	5
district	62	hospital	3
district	63	clinic	0
district	63	dispensary	41
district	63	health centers	2
district	63	hospital	1
district	64	clinic	1
district	64	dispensary	59
district	64	health centers	7
district	64	hospital	3
district	65	clinic	1
district	65	dispensary	24
district	65	health centers	4
district	65	hospital	1
district	66	clinic	0
district	66	dispensary	38
district	66	health centers	6
district	66	hospital	0
district	67	clinic	0
district	67	dispensary	25
district	67	health centers	3
district	67	hospital	2
district	68	clinic	0
district	68	dispensary	64
district	68	health centers	10
district	68	hospital	1
district	69	clinic	2
district	69	dispensary	52
district	69	health centers	6
district	69	hospital	1
district	70	clinic	1
district	70	dispensary	27
district	70	health centers	4
district	70	hospital	3
district	71	clinic	0
district	71	dispensary	53
district	71	health centers	2
district	71	hospital	1
district	72	clinic	0
district	72	dispensary	11
district	72	health centers	2
district	72	hospital	1
district	73	clinic	0
district	73	dispensary	37
district	73	health centers	2
district	73	hospital	2
district	74	clinic	0
district	74	dispensary	65
district	74	health centers	3
district	74	hospital	2
district	75	clinic	5
district	75	dispensary	41
district	75	health centers	1
district	75	hospital	2
district	76	clinic	1
district	76	dispensary	39
district	76	health centers	4
district	76	hospital	2
district	77	clinic	0
district	77	dispensary	27
district	77	health centers	1
district	77	hospital	2
district	78	clinic	0
district	78	dispensary	64
district	78	health centers	6
district	78	hospital	2
district	79	clinic	0
district	79	dispensary	39
district	79	health centers	5
district	79	hospital	2
district	80	clinic	14
district	80	dispensary	30
district	80	health centers	5
district	80	hospital	5
district	81	clinic	0
district	81	dispensary	32
district	81	health centers	6
district	81	hospital	0
district	82	clinic	0
district	82	dispensary	3
district	82	health centers	1
district	82	hospital	0
district	83	clinic	0
district	83	dispensary	37
district	83	health centers	3
district	83	hospital	1
district	84	clinic	0
district	84	dispensary	27
district	84	health centers	3
district	84	hospital	1
district	85	clinic	2
district	85	dispensary	46
district	85	health centers	3
district	85	hospital	3
district	86	clinic	0
district	86	dispensary	15
district	86	health centers	2
district	86	hospital	1
district	87	clinic	0
district	87	dispensary	31
district	87	health centers	3
district	87	hospital	2
district	88	clinic	0
district	88	dispensary	25
district	88	health centers	4
district	88	hospital	1
district	89	clinic	0
district	89	dispensary	50
district	89	health centers	6
district	89	hospital	2
district	90	clinic	0
district	90	dispensary	46
district	90	health centers	5
district	90	hospital	2
district	91	clinic	0
district	91	dispensary	44
district	91	health centers	1
district	91	hospital	0
district	92	clinic	0
district	92	dispensary	20
district	92	health centers	1
district	92	hospital	1
district	93	clinic	0
district	93	dispensary	29
district	93	health centers	3
district	93	hospital	1
district	94	clinic	1
district	94	dispensary	35
district	94	health centers	1
district	94	hospital	2
district	95	clinic	0
district	95	dispensary	34
district	95	health centers	2
district	95	hospital	0
district	96	clinic	0
district	96	dispensary	52
district	96	health centers	4
district	96	hospital	0
district	97	clinic	0
district	97	dispensary	55
district	97	health centers	7
district	97	hospital	0
district	98	clinic	0
district	98	dispensary	41
district	98	health centers	7
district	98	hospital	1
district	99	clinic	2
district	99	dispensary	31
district	99	health centers	3
district	99	hospital	2
district	100	clinic	0
district	100	dispensary	40
district	100	health centers	2
district	100	hospital	1
district	101	clinic	0
district	101	dispensary	31
district	101	health centers	7
district	101	hospital	0
district	102	clinic	0
district	102	dispensary	34
district	102	health centers	4
district	102	hospital	0
district	103	clinic	0
district	103	dispensary	14
district	103	health centers	3
district	103	hospital	2
district	104	clinic	0
district	104	dispensary	36
district	104	health centers	3
district	104	hospital	0
district	105	clinic	0
district	105	dispensary	27
district	105	health centers	4
district	105	hospital	1
district	106	clinic	0
district	106	dispensary	24
district	106	health centers	3
district	106	hospital	0
district	107	clinic	0
district	107	dispensary	18
district	107	health centers	1
district	107	hospital	2
district	108	clinic	0
district	108	dispensary	23
district	108	health centers	1
district	108	hospital	2
district	109	clinic	0
district	109	dispensary	52
district	109	health centers	4
district	109	hospital	1
district	110	clinic	0
district	110	dispensary	36
district	110	health centers	3
district	110	hospital	0
district	111	clinic	0
district	111	dispensary	19
district	111	health centers	3
district	111	hospital	0
district	112	clinic	2
district	112	dispensary	27
district	112	health centers	3
district	112	hospital	2
district	113	clinic	0
district	113	dispensary	35
district	113	health centers	3
district	113	hospital	2
district	114	clinic	0
district	114	dispensary	34
district	114	health centers	6
district	114	hospital	1
district	115	clinic	0
district	115	dispensary	36
district	115	health centers	5
district	115	hospital	3
district	116	clinic	1
district	116	dispensary	23
district	116	health centers	4
district	116	hospital	1
district	117	clinic	0
district	117	dispensary	48
district	117	health centers	5
district	117	hospital	3
district	118	clinic	3
district	118	dispensary	14
district	118	health centers	4
district	118	hospital	1
district	119	clinic	0
district	119	dispensary	33
district	119	health centers	1
district	119	hospital	2
district	120	clinic	0
district	120	dispensary	26
district	120	health centers	3
district	120	hospital	1
district	121	clinic	0
district	121	dispensary	33
district	121	health centers	3
district	121	hospital	1
district	122	clinic	0
district	122	dispensary	41
district	122	health centers	3
district	122	hospital	1
district	123	clinic	8
district	123	dispensary	41
district	123	health centers	13
district	123	hospital	8
district	124	clinic	2
district	124	dispensary	46
district	124	health centers	5
district	124	hospital	2
district	125	clinic	1
district	125	dispensary	61
district	125	health centers	9
district	125	hospital	1
district	126	clinic	2
district	126	dispensary	29
district	126	health centers	8
district	126	hospital	1
district	127	clinic	0
district	127	dispensary	37
district	127	health centers	4
district	127	hospital	2
district	128	clinic	3
district	128	dispensary	27
district	128	health centers	9
district	128	hospital	1
district	129	clinic	0
district	129	dispensary	44
district	129	health centers	6
district	129	hospital	1
district	130	clinic	0
district	130	dispensary	26
district	130	health centers	1
district	130	hospital	0
district	131	clinic	2
district	131	dispensary	37
district	131	health centers	7
district	131	hospital	3
district	132	clinic	0
district	132	dispensary	32
district	132	health centers	7
district	132	hospital	3
district	133	clinic	0
district	133	dispensary	35
district	133	health centers	1
district	133	hospital	1
district	134	clinic	0
district	134	dispensary	34
district	134	health centers	8
district	134	hospital	3
district	135	clinic	1
district	135	dispensary	20
district	135	health centers	4
district	135	hospital	1
district	136	clinic	0
district	136	dispensary	36
district	136	health centers	3
district	136	hospital	2
district	137	clinic	0
district	137	dispensary	32
district	137	health centers	4
district	137	hospital	1
district	138	clinic	0
district	138	dispensary	26
district	138	health centers	2
district	138	hospital	1
district	139	clinic	1
district	139	dispensary	8
district	139	health centers	1
district	139	hospital	2
district	140	clinic	0
district	140	dispensary	47
district	140	health centers	6
district	140	hospital	2
district	141	clinic	0
district	141	dispensary	40
district	141	health centers	3
district	141	hospital	1
district	142	clinic	0
district	142	dispensary	35
district	142	health centers	5
district	142	hospital	4
district	143	clinic	0
district	143	dispensary	22
district	143	health centers	1
district	143	hospital	0
district	144	clinic	0
district	144	dispensary	51
district	144	health centers	6
district	144	hospital	3
district	145	clinic	0
district	145	dispensary	10
district	145	health centers	0
district	145	hospital	2
district	146	clinic	0
district	146	dispensary	8
district	146	health centers	3
district	146	hospital	0
district	147	clinic	0
district	147	dispensary	19
district	147	health centers	3
district	147	hospital	1
district	148	clinic	0
district	148	dispensary	18
district	148	health centers	3
district	148	hospital	0
district	149	clinic	3
district	149	dispensary	42
district	149	health centers	4
district	149	hospital	1
district	150	clinic	0
district	150	dispensary	27
district	150	health centers	3
district	150	hospital	0
district	151	clinic	0
district	151	dispensary	49
district	151	health centers	2
district	151	hospital	2
district	152	clinic	0
district	152	dispensary	41
district	152	health centers	3
district	152	hospital	1
district	153	clinic	0
district	153	dispensary	23
district	153	health centers	2
district	153	hospital	1
district	154	clinic	0
district	154	dispensary	49
district	154	health centers	9
district	154	hospital	1
district	155	clinic	0
district	155	dispensary	14
district	155	health centers	2
district	155	hospital	0
district	156	clinic	0
district	156	dispensary	16
district	156	health centers	2
district	156	hospital	0
district	157	clinic	0
district	157	dispensary	12
district	157	health centers	2
district	157	hospital	1
district	158	clinic	0
district	158	dispensary	30
district	158	health centers	4
district	158	hospital	1
district	159	clinic	\N
district	159	dispensary	\N
district	159	health centers	\N
district	159	hospital	\N
district	160	clinic	\N
district	160	dispensary	\N
district	160	health centers	\N
district	160	hospital	\N
district	161	clinic	\N
district	161	dispensary	\N
district	161	health centers	\N
district	161	hospital	\N
district	162	clinic	\N
district	162	dispensary	\N
district	162	health centers	\N
district	162	hospital	\N
district	163	clinic	\N
district	163	dispensary	\N
district	163	health centers	\N
district	163	hospital	\N
district	164	clinic	\N
district	164	dispensary	\N
district	164	health centers	\N
district	164	hospital	\N
district	165	clinic	\N
district	165	dispensary	\N
district	165	health centers	\N
district	165	hospital	\N
district	166	clinic	\N
district	166	dispensary	\N
district	166	health centers	\N
district	166	hospital	\N
district	167	clinic	\N
district	167	dispensary	\N
district	167	health centers	\N
district	167	hospital	\N
district	168	clinic	\N
district	168	dispensary	\N
district	168	health centers	\N
district	168	hospital	\N
district	169	clinic	5
district	169	dispensary	18
district	169	health centers	5
district	169	hospital	1
region	1	clinic	0
region	1	dispensary	270
region	1	health centers	48
region	1	hospital	16
region	3	clinic	92
region	3	dispensary	417
region	3	health centers	51
region	3	hospital	39
region	2	clinic	4
region	2	dispensary	321
region	2	health centers	37
region	2	hospital	7
region	4	clinic	0
region	4	dispensary	121
region	4	health centers	19
region	4	hospital	3
region	5	clinic	3
region	5	dispensary	207
region	5	health centers	24
region	5	hospital	7
region	6	clinic	4
region	6	dispensary	249
region	6	health centers	31
region	6	hospital	14
region	9	clinic	0
region	9	dispensary	63
region	9	health centers	13
region	9	hospital	1
region	10	clinic	0
region	10	dispensary	228
region	10	health centers	27
region	10	hospital	6
region	11	clinic	4
region	11	dispensary	319
region	11	health centers	47
region	11	hospital	18
region	14	clinic	0
region	14	dispensary	196
region	14	health centers	17
region	14	hospital	9
region	15	clinic	2
region	15	dispensary	156
region	15	health centers	22
region	15	hospital	10
region	16	clinic	10
region	16	dispensary	219
region	16	health centers	36
region	16	hospital	10
region	17	clinic	20
region	17	dispensary	396
region	17	health centers	35
region	17	hospital	20
region	18	clinic	3
region	18	dispensary	298
region	18	health centers	44
region	18	hospital	12
region	19	clinic	0
region	19	dispensary	193
region	19	health centers	20
region	19	hospital	6
region	20	clinic	13
region	20	dispensary	288
region	20	health centers	45
region	20	hospital	16
region	21	clinic	0
region	21	dispensary	205
region	21	health centers	21
region	21	hospital	12
region	22	clinic	6
region	22	dispensary	250
region	22	health centers	24
region	22	hospital	6
region	23	clinic	2
region	23	dispensary	179
region	23	health centers	21
region	23	hospital	3
region	24	clinic	2
region	24	dispensary	236
region	24	health centers	27
region	24	hospital	10
region	25	clinic	2
region	25	dispensary	175
region	25	health centers	17
region	25	hospital	5
region	26	clinic	3
region	26	dispensary	182
region	26	health centers	14
region	26	hospital	5
region	27	clinic	2
region	27	dispensary	181
region	27	health centers	18
region	27	hospital	9
region	29	clinic	1
region	29	dispensary	258
region	29	health centers	19
region	29	hospital	8
region	28	clinic	3
region	28	dispensary	308
region	28	health centers	40
region	28	hospital	11
region	7	clinic	\N
region	7	dispensary	\N
region	7	health centers	\N
region	7	hospital	\N
region	8	clinic	\N
region	8	dispensary	\N
region	8	health centers	\N
region	8	hospital	\N
region	12	clinic	\N
region	12	dispensary	\N
region	12	health centers	\N
region	12	hospital	\N
region	13	clinic	\N
region	13	dispensary	\N
region	13	health centers	\N
region	13	hospital	\N
region	30	clinic	\N
region	30	dispensary	\N
region	30	health centers	\N
region	30	hospital	\N
country	TZ	clinic	176
country	TZ	dispensary	5915
country	TZ	health centers	717
country	TZ	hospital	263
\.
--
-- Name: healthcenters_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY healthcenters
    ADD CONSTRAINT healthcenters_pkey PRIMARY KEY (geo_level, geo_code, "health centers");


--
-- PostgreSQL database dump complete
--


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

ALTER TABLE IF EXISTS ONLY public.healthcenterownership DROP CONSTRAINT IF EXISTS healthcenterownership_pkey;
DROP TABLE IF EXISTS public.healthcenterownership;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: healthcenterownershipownership; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE healthcenterownership (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "health center ownership" character varying(128) NOT NULL,
    total float NULL
);


--
-- Data for Name: healthcenterownership; Type: TABLE DATA; Schema: public; Owner: -
--

COPY healthcenterownership (geo_level, geo_code, "health center ownership", total) FROM stdin;
region	1	faith based org	62
region	1	parastatal	4
region	1	private	84
region	1	public	184
region	3	faith based org	78
region	3	parastatal	14
region	3	private	357
region	3	public	150
region	2	faith based org	38
region	2	parastatal	4
region	2	private	18
region	2	public	308
region	4	faith based org	13
region	4	parastatal	1
region	4	private	23
region	4	public	106
region	5	faith based org	45
region	5	parastatal	1
region	5	private	20
region	5	public	174
region	6	faith based org	37
region	6	parastatal	2
region	6	private	23
region	6	public	236
region	9	faith based org	9
region	9	parastatal	0
region	9	private	6
region	9	public	62
region	10	faith based org	25
region	10	parastatal	1
region	10	private	14
region	10	public	221
region	11	faith based org	90
region	11	parastatal	2
region	11	private	62
region	11	public	234
region	14	faith based org	6
region	14	parastatal	0
region	14	private	2
region	14	public	214
region	15	faith based org	29
region	15	parastatal	1
region	15	private	17
region	15	public	143
region	16	faith based org	39
region	16	parastatal	2
region	16	private	35
region	16	public	199
region	17	faith based org	50
region	17	parastatal	5
region	17	private	61
region	17	public	354
region	18	faith based org	67
region	18	parastatal	12
region	18	private	33
region	18	public	244
region	19	faith based org	19
region	19	parastatal	0
region	19	private	12
region	19	public	188
region	20	faith based org	27
region	20	parastatal	6
region	20	private	67
region	20	public	262
region	21	faith based org	43
region	21	parastatal	4
region	21	private	4
region	21	public	187
region	22	faith based org	26
region	22	parastatal	5
region	22	private	23
region	22	public	232
region	23	faith based org	21
region	23	parastatal	0
region	23	private	8
region	23	public	176
region	24	faith based org	49
region	24	parastatal	0
region	24	private	11
region	24	public	215
region	25	faith based org	20
region	25	parastatal	1
region	25	private	26
region	25	public	152
region	26	faith based org	19
region	26	parastatal	0
region	26	private	12
region	26	public	171
region	27	faith based org	30
region	27	parastatal	0
region	27	private	5
region	27	public	175
region	29	faith based org	25
region	29	parastatal	1
region	29	private	13
region	29	public	247
region	28	faith based org	33
region	28	parastatal	5
region	28	private	32
region	28	public	292
region	7	faith based org	\N
region	7	parastatal	\N
region	7	private	\N
region	7	public	\N
region	8	faith based org	\N
region	8	parastatal	\N
region	8	private	\N
region	8	public	\N
region	12	faith based org	\N
region	12	parastatal	\N
region	12	private	\N
region	12	public	\N
region	13	faith based org	\N
region	13	parastatal	\N
region	13	private	\N
region	13	public	\N
region	30	faith based org	\N
region	30	parastatal	\N
region	30	private	\N
region	30	public	\N
country	TZ	faith based org	900
country	TZ	parastatal	71
country	TZ	private	968
country	TZ	public	5126
district	1	faith based org	7
district	1	parastatal	0
district	1	private	1
district	1	public	28
district	2	faith based org	5
district	2	parastatal	2
district	2	private	1
district	2	public	53
district	3	faith based org	5
district	3	parastatal	0
district	3	private	3
district	3	public	46
district	4	faith based org	2
district	4	parastatal	0
district	4	private	0
district	4	public	64
district	5	faith based org	13
district	5	parastatal	2
district	5	private	13
district	5	public	45
district	6	faith based org	2
district	6	parastatal	0
district	6	private	0
district	6	public	38
district	7	faith based org	4
district	7	parastatal	0
district	7	private	0
district	7	public	34
district	8	faith based org	2
district	8	parastatal	0
district	8	private	4
district	8	public	30
district	9	faith based org	13
district	9	parastatal	2
district	9	private	12
district	9	public	32
district	10	faith based org	17
district	10	parastatal	0
district	10	private	51
district	10	public	17
district	11	faith based org	14
district	11	parastatal	0
district	11	private	8
district	11	public	28
district	12	faith based org	5
district	12	parastatal	1
district	12	private	1
district	12	public	23
district	13	faith based org	8
district	13	parastatal	1
district	13	private	8
district	13	public	34
district	14	faith based org	3
district	14	parastatal	0
district	14	private	0
district	14	public	20
district	15	faith based org	9
district	15	parastatal	0
district	15	private	6
district	15	public	28
district	16	faith based org	5
district	16	parastatal	1
district	16	private	1
district	16	public	50
district	17	faith based org	15
district	17	parastatal	0
district	17	private	13
district	17	public	46
district	18	faith based org	23
district	18	parastatal	1
district	18	private	9
district	18	public	47
district	19	faith based org	16
district	19	parastatal	0
district	19	private	11
district	19	public	32
district	20	faith based org	13
district	20	parastatal	0
district	20	private	20
district	20	public	23
district	21	faith based org	9
district	21	parastatal	0
district	21	private	2
district	21	public	8
district	22	faith based org	9
district	22	parastatal	0
district	22	private	1
district	22	public	33
district	23	faith based org	3
district	23	parastatal	1
district	23	private	2
district	23	public	47
district	24	faith based org	3
district	24	parastatal	3
district	24	private	8
district	24	public	33
district	25	faith based org	4
district	25	parastatal	1
district	25	private	13
district	25	public	31
district	26	faith based org	1
district	26	parastatal	0
district	26	private	2
district	26	public	19
district	27	faith based org	2
district	27	parastatal	0
district	27	private	0
district	27	public	35
district	28	faith based org	3
district	28	parastatal	0
district	28	private	0
district	28	public	35
district	29	faith based org	1
district	29	parastatal	0
district	29	private	1
district	29	public	27
district	30	faith based org	4
district	30	parastatal	0
district	30	private	3
district	30	public	11
district	31	faith based org	0
district	31	parastatal	0
district	31	private	2
district	31	public	4
district	32	faith based org	11
district	32	parastatal	2
district	32	private	2
district	32	public	43
district	33	faith based org	10
district	33	parastatal	1
district	33	private	3
district	33	public	57
district	34	faith based org	15
district	34	parastatal	3
district	34	private	9
district	34	public	28
district	35	faith based org	10
district	35	parastatal	0
district	35	private	1
district	35	public	27
district	36	faith based org	12
district	36	parastatal	5
district	36	private	16
district	36	public	28
district	37	faith based org	7
district	37	parastatal	1
district	37	private	2
district	37	public	45
district	38	faith based org	2
district	38	parastatal	0
district	38	private	0
district	38	public	15
district	39	faith based org	5
district	39	parastatal	4
district	39	private	6
district	39	public	57
district	40	faith based org	3
district	40	parastatal	0
district	40	private	0
district	40	public	21
district	41	faith based org	2
district	41	parastatal	0
district	41	private	1
district	41	public	29
district	42	faith based org	7
district	42	parastatal	0
district	42	private	2
district	42	public	29
district	43	faith based org	6
district	43	parastatal	0
district	43	private	1
district	43	public	62
district	44	faith based org	0
district	44	parastatal	0
district	44	private	2
district	44	public	17
district	45	faith based org	3
district	45	parastatal	1
district	45	private	10
district	45	public	16
district	46	faith based org	32
district	46	parastatal	5
district	46	private	166
district	46	public	59
district	47	faith based org	18
district	47	parastatal	6
district	47	private	135
district	47	public	42
district	48	faith based org	28
district	48	parastatal	3
district	48	private	56
district	48	public	49
district	49	faith based org	2
district	49	parastatal	0
district	49	private	0
district	49	public	52
district	50	faith based org	3
district	50	parastatal	0
district	50	private	0
district	50	public	45
district	51	faith based org	1
district	51	parastatal	0
district	51	private	0
district	51	public	36
district	52	faith based org	0
district	52	parastatal	0
district	52	private	0
district	52	public	33
district	53	faith based org	0
district	53	parastatal	0
district	53	private	0
district	53	public	32
district	54	faith based org	0
district	54	parastatal	0
district	54	private	2
district	54	public	16
district	55	faith based org	2
district	55	parastatal	0
district	55	private	0
district	55	public	53
district	56	faith based org	0
district	56	parastatal	0
district	56	private	1
district	56	public	37
district	57	faith based org	11
district	57	parastatal	0
district	57	private	0
district	57	public	30
district	58	faith based org	1
district	58	parastatal	0
district	58	private	2
district	58	public	32
district	59	faith based org	4
district	59	parastatal	0
district	59	private	6
district	59	public	9
district	60	faith based org	0
district	60	parastatal	0
district	60	private	0
district	60	public	19
district	61	faith based org	1
district	61	parastatal	0
district	61	private	3
district	61	public	8
district	62	faith based org	4
district	62	parastatal	0
district	62	private	0
district	62	public	52
district	63	faith based org	16
district	63	parastatal	0
district	63	private	0
district	63	public	28
district	64	faith based org	11
district	64	parastatal	0
district	64	private	3
district	64	public	56
district	65	faith based org	3
district	65	parastatal	0
district	65	private	6
district	65	public	21
district	66	faith based org	6
district	66	parastatal	0
district	66	private	0
district	66	public	38
district	67	faith based org	9
district	67	parastatal	0
district	67	private	2
district	67	public	19
district	68	faith based org	15
district	68	parastatal	1
district	68	private	0
district	68	public	59
district	69	faith based org	7
district	69	parastatal	0
district	69	private	4
district	69	public	50
district	70	faith based org	7
district	70	parastatal	0
district	70	private	11
district	70	public	17
district	71	faith based org	16
district	71	parastatal	0
district	71	private	2
district	71	public	37
district	72	faith based org	0
district	72	parastatal	0
district	72	private	3
district	72	public	11
district	73	faith based org	2
district	73	parastatal	0
district	73	private	1
district	73	public	38
district	74	faith based org	6
district	74	parastatal	0
district	74	private	6
district	74	public	57
district	75	faith based org	5
district	75	parastatal	1
district	75	private	12
district	75	public	31
district	76	faith based org	5
district	76	parastatal	1
district	76	private	3
district	76	public	37
district	77	faith based org	5
district	77	parastatal	0
district	77	private	0
district	77	public	25
district	78	faith based org	5
district	78	parastatal	0
district	78	private	8
district	78	public	59
district	79	faith based org	5
district	79	parastatal	1
district	79	private	2
district	79	public	38
district	80	faith based org	6
district	80	parastatal	2
district	80	private	25
district	80	public	21
district	81	faith based org	5
district	81	parastatal	0
district	81	private	1
district	81	public	32
district	82	faith based org	0
district	82	parastatal	0
district	82	private	2
district	82	public	2
district	83	faith based org	6
district	83	parastatal	0
district	83	private	0
district	83	public	35
district	84	faith based org	3
district	84	parastatal	0
district	84	private	0
district	84	public	28
district	85	faith based org	8
district	85	parastatal	0
district	85	private	1
district	85	public	45
district	86	faith based org	2
district	86	parastatal	0
district	86	private	3
district	86	public	13
district	87	faith based org	5
district	87	parastatal	0
district	87	private	0
district	87	public	31
district	88	faith based org	6
district	88	parastatal	0
district	88	private	1
district	88	public	23
district	89	faith based org	4
district	89	parastatal	0
district	89	private	2
district	89	public	52
district	90	faith based org	5
district	90	parastatal	0
district	90	private	1
district	90	public	47
district	91	faith based org	4
district	91	parastatal	0
district	91	private	0
district	91	public	41
district	92	faith based org	2
district	92	parastatal	0
district	92	private	0
district	92	public	20
district	93	faith based org	4
district	93	parastatal	0
district	93	private	2
district	93	public	27
district	94	faith based org	4
district	94	parastatal	1
district	94	private	7
district	94	public	27
district	95	faith based org	2
district	95	parastatal	0
district	95	private	1
district	95	public	33
district	96	faith based org	5
district	96	parastatal	0
district	96	private	0
district	96	public	51
district	97	faith based org	3
district	97	parastatal	0
district	97	private	1
district	97	public	58
district	98	faith based org	8
district	98	parastatal	0
district	98	private	0
district	98	public	41
district	99	faith based org	5
district	99	parastatal	0
district	99	private	7
district	99	public	26
district	100	faith based org	1
district	100	parastatal	0
district	100	private	0
district	100	public	42
district	101	faith based org	1
district	101	parastatal	0
district	101	private	2
district	101	public	35
district	102	faith based org	4
district	102	parastatal	1
district	102	private	2
district	102	public	31
district	103	faith based org	3
district	103	parastatal	0
district	103	private	5
district	103	public	11
district	104	faith based org	0
district	104	parastatal	0
district	104	private	2
district	104	public	37
district	105	faith based org	8
district	105	parastatal	0
district	105	private	0
district	105	public	24
district	106	faith based org	2
district	106	parastatal	0
district	106	private	2
district	106	public	23
district	107	faith based org	6
district	107	parastatal	0
district	107	private	1
district	107	public	14
district	108	faith based org	9
district	108	parastatal	1
district	108	private	2
district	108	public	14
district	109	faith based org	4
district	109	parastatal	0
district	109	private	4
district	109	public	49
district	110	faith based org	1
district	110	parastatal	0
district	110	private	0
district	110	public	38
district	111	faith based org	1
district	111	parastatal	0
district	111	private	1
district	111	public	20
district	112	faith based org	4
district	112	parastatal	0
district	112	private	17
district	112	public	13
district	113	faith based org	5
district	113	parastatal	0
district	113	private	4
district	113	public	31
district	114	faith based org	5
district	114	parastatal	0
district	114	private	2
district	114	public	34
district	115	faith based org	9
district	115	parastatal	0
district	115	private	1
district	115	public	34
district	116	faith based org	3
district	116	parastatal	0
district	116	private	3
district	116	public	23
district	117	faith based org	3
district	117	parastatal	0
district	117	private	4
district	117	public	49
district	118	faith based org	2
district	118	parastatal	1
district	118	private	4
district	118	public	15
district	119	faith based org	6
district	119	parastatal	1
district	119	private	4
district	119	public	25
district	120	faith based org	4
district	120	parastatal	0
district	120	private	1
district	120	public	25
district	121	faith based org	3
district	121	parastatal	0
district	121	private	2
district	121	public	32
district	122	faith based org	2
district	122	parastatal	0
district	122	private	6
district	122	public	37
district	123	faith based org	10
district	123	parastatal	4
district	123	private	34
district	123	public	22
district	124	faith based org	1
district	124	parastatal	0
district	124	private	4
district	124	public	50
district	125	faith based org	5
district	125	parastatal	0
district	125	private	4
district	125	public	63
district	126	faith based org	3
district	126	parastatal	2
district	126	private	17
district	126	public	18
district	127	faith based org	3
district	127	parastatal	0
district	127	private	0
district	127	public	40
district	128	faith based org	7
district	128	parastatal	0
district	128	private	9
district	128	public	24
district	129	faith based org	2
district	129	parastatal	2
district	129	private	4
district	129	public	43
district	130	faith based org	5
district	130	parastatal	0
district	130	private	0
district	130	public	22
district	131	faith based org	4
district	131	parastatal	0
district	131	private	5
district	131	public	40
district	132	faith based org	10
district	132	parastatal	0
district	132	private	5
district	132	public	27
district	133	faith based org	6
district	133	parastatal	0
district	133	private	0
district	133	public	31
district	134	faith based org	5
district	134	parastatal	1
district	134	private	4
district	134	public	35
district	135	faith based org	6
district	135	parastatal	0
district	135	private	1
district	135	public	19
district	136	faith based org	8
district	136	parastatal	0
district	136	private	4
district	136	public	29
district	137	faith based org	7
district	137	parastatal	0
district	137	private	2
district	137	public	28
district	138	faith based org	2
district	138	parastatal	0
district	138	private	2
district	138	public	25
district	139	faith based org	1
district	139	parastatal	0
district	139	private	4
district	139	public	7
district	140	faith based org	8
district	140	parastatal	2
district	140	private	1
district	140	public	44
district	141	faith based org	4
district	141	parastatal	0
district	141	private	0
district	141	public	40
district	142	faith based org	13
district	142	parastatal	1
district	142	private	0
district	142	public	30
district	143	faith based org	5
district	143	parastatal	1
district	143	private	0
district	143	public	17
district	144	faith based org	9
district	144	parastatal	0
district	144	private	0
district	144	public	51
district	145	faith based org	4
district	145	parastatal	0
district	145	private	3
district	145	public	5
district	146	faith based org	4
district	146	parastatal	0
district	146	private	2
district	146	public	5
district	147	faith based org	2
district	147	parastatal	0
district	147	private	0
district	147	public	21
district	148	faith based org	1
district	148	parastatal	0
district	148	private	4
district	148	public	16
district	149	faith based org	7
district	149	parastatal	0
district	149	private	5
district	149	public	37
district	150	faith based org	1
district	150	parastatal	0
district	150	private	2
district	150	public	27
district	151	faith based org	7
district	151	parastatal	0
district	151	private	0
district	151	public	46
district	152	faith based org	3
district	152	parastatal	0
district	152	private	2
district	152	public	40
district	153	faith based org	1
district	153	parastatal	0
district	153	private	3
district	153	public	21
district	154	faith based org	6
district	154	parastatal	1
district	154	private	9
district	154	public	43
district	155	faith based org	1
district	155	parastatal	0
district	155	private	1
district	155	public	14
district	156	faith based org	1
district	156	parastatal	0
district	156	private	2
district	156	public	15
district	157	faith based org	2
district	157	parastatal	0
district	157	private	5
district	157	public	8
district	158	faith based org	3
district	158	parastatal	0
district	158	private	6
district	158	public	26
district	159	faith based org	\N
district	159	parastatal	\N
district	159	private	\N
district	159	public	\N
district	160	faith based org	\N
district	160	parastatal	\N
district	160	private	\N
district	160	public	\N
district	161	faith based org	\N
district	161	parastatal	\N
district	161	private	\N
district	161	public	\N
district	162	faith based org	\N
district	162	parastatal	\N
district	162	private	\N
district	162	public	\N
district	163	faith based org	\N
district	163	parastatal	\N
district	163	private	\N
district	163	public	\N
district	164	faith based org	\N
district	164	parastatal	\N
district	164	private	\N
district	164	public	\N
district	165	faith based org	\N
district	165	parastatal	\N
district	165	private	\N
district	165	public	\N
district	166	faith based org	\N
district	166	parastatal	\N
district	166	private	\N
district	166	public	\N
district	167	faith based org	\N
district	167	parastatal	\N
district	167	private	\N
district	167	public	\N
district	168	faith based org	\N
district	168	parastatal	\N
district	168	private	\N
district	168	public	\N
district	169	faith based org	5
district	169	parastatal	0
district	169	private	12
district	169	public	12
\.
--
-- Name: healthcenterownership_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY healthcenterownership
    ADD CONSTRAINT healthcenterownership_pkey PRIMARY KEY (geo_level, geo_code, "health center ownership");


--
-- PostgreSQL database dump complete
--

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

ALTER TABLE IF EXISTS ONLY public.hivcenters DROP CONSTRAINT IF EXISTS hivcenters_pkey;
DROP TABLE IF EXISTS public.hivcenters;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: hivcenters; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE hivcenters (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "hiv centers" character varying(128) NOT NULL,
    total float NULL
);


--
-- Data for Name: hivcenters; Type: TABLE DATA; Schema: public; Owner: -
--
COPY hivcenters (geo_level, geo_code, "hiv centers", total) FROM stdin;
district	13	hiv centers	2
district	1	hiv centers	9
district	2	hiv centers	8
district	3	hiv centers	5
district	4	hiv centers	6
district	5	hiv centers	23
district	6	hiv centers	4
district	7	hiv centers	0
district	8	hiv centers	11
district	9	hiv centers	0
district	10	hiv centers	16
district	11	hiv centers	8
district	12	hiv centers	11
district	14	hiv centers	7
district	15	hiv centers	6
district	16	hiv centers	7
district	17	hiv centers	7
district	18	hiv centers	8
district	19	hiv centers	7
district	20	hiv centers	11
district	21	hiv centers	6
district	22	hiv centers	17
district	23	hiv centers	15
district	24	hiv centers	8
district	25	hiv centers	11
district	26	hiv centers	9
district	27	hiv centers	9
district	28	hiv centers	10
district	29	hiv centers	5
district	30	hiv centers	0
district	31	hiv centers	0
district	32	hiv centers	15
district	33	hiv centers	14
district	34	hiv centers	9
district	35	hiv centers	7
district	36	hiv centers	14
district	37	hiv centers	11
district	38	hiv centers	0
district	39	hiv centers	44
district	40	hiv centers	17
district	41	hiv centers	21
district	42	hiv centers	35
district	43	hiv centers	56
district	44	hiv centers	14
district	45	hiv centers	17
district	46	hiv centers	49
district	47	hiv centers	46
district	48	hiv centers	43
district	49	hiv centers	21
district	50	hiv centers	24
district	51	hiv centers	16
district	52	hiv centers	13
district	53	hiv centers	13
district	54	hiv centers	15
district	55	hiv centers	18
district	56	hiv centers	16
district	57	hiv centers	18
district	58	hiv centers	13
district	59	hiv centers	14
district	60	hiv centers	17
district	61	hiv centers	1
district	62	hiv centers	15
district	63	hiv centers	23
district	64	hiv centers	21
district	65	hiv centers	12
district	66	hiv centers	10
district	67	hiv centers	7
district	68	hiv centers	22
district	69	hiv centers	18
district	70	hiv centers	13
district	71	hiv centers	7
district	72	hiv centers	0
district	73	hiv centers	33
district	74	hiv centers	51
district	75	hiv centers	31
district	76	hiv centers	48
district	77	hiv centers	26
district	78	hiv centers	42
district	79	hiv centers	38
district	80	hiv centers	27
district	81	hiv centers	17
district	82	hiv centers	0
district	83	hiv centers	6
district	84	hiv centers	8
district	85	hiv centers	13
district	86	hiv centers	7
district	87	hiv centers	0
district	88	hiv centers	0
district	89	hiv centers	21
district	90	hiv centers	26
district	91	hiv centers	19
district	92	hiv centers	15
district	93	hiv centers	14
district	94	hiv centers	18
district	95	hiv centers	0
district	96	hiv centers	21
district	97	hiv centers	32
district	98	hiv centers	18
district	99	hiv centers	23
district	100	hiv centers	5
district	101	hiv centers	26
district	102	hiv centers	17
district	103	hiv centers	13
district	104	hiv centers	9
district	105	hiv centers	7
district	106	hiv centers	7
district	107	hiv centers	0
district	108	hiv centers	12
district	109	hiv centers	15
district	110	hiv centers	10
district	111	hiv centers	12
district	112	hiv centers	0
district	113	hiv centers	46
district	114	hiv centers	36
district	115	hiv centers	42
district	116	hiv centers	22
district	117	hiv centers	50
district	118	hiv centers	13
district	119	hiv centers	33
district	120	hiv centers	0
district	121	hiv centers	31
district	122	hiv centers	56
district	123	hiv centers	30
district	124	hiv centers	37
district	125	hiv centers	53
district	126	hiv centers	24
district	127	hiv centers	45
district	128	hiv centers	19
district	129	hiv centers	16
district	130	hiv centers	17
district	131	hiv centers	11
district	132	hiv centers	7
district	133	hiv centers	3
district	134	hiv centers	28
district	135	hiv centers	21
district	136	hiv centers	10
district	137	hiv centers	9
district	138	hiv centers	12
district	139	hiv centers	7
district	140	hiv centers	13
district	141	hiv centers	8
district	142	hiv centers	16
district	143	hiv centers	2
district	144	hiv centers	18
district	145	hiv centers	1
district	146	hiv centers	21
district	147	hiv centers	17
district	148	hiv centers	10
district	149	hiv centers	11
district	150	hiv centers	0
district	151	hiv centers	10
district	152	hiv centers	11
district	153	hiv centers	0
district	154	hiv centers	32
district	155	hiv centers	4
district	156	hiv centers	1
district	157	hiv centers	10
district	158	hiv centers	29
district	159	hiv centers	0
district	160	hiv centers	0
district	161	hiv centers	0
district	162	hiv centers	0
district	163	hiv centers	0
district	164	hiv centers	0
district	165	hiv centers	0
district	166	hiv centers	0
district	167	hiv centers	0
district	168	hiv centers	0
district	169	hiv centers	14
region	1	hiv centers	68
region	3	hiv centers	138
region	2	hiv centers	55
region	4	hiv centers	53
region	5	hiv centers	125
region	6	hiv centers	269
region	9	hiv centers	46
region	10	hiv centers	84
region	11	hiv centers	52
region	14	hiv centers	102
region	15	hiv centers	87
region	16	hiv centers	87
region	17	hiv centers	317
region	18	hiv centers	70
region	19	hiv centers	97
region	20	hiv centers	276
region	21	hiv centers	27
region	22	hiv centers	204
region	23	hiv centers	112
region	24	hiv centers	81
region	25	hiv centers	91
region	26	hiv centers	34
region	27	hiv centers	113
region	29	hiv centers	84
region	28	hiv centers	0
region	7	hiv centers	0
region	8	hiv centers	0
region	12	hiv centers	0
region	13	hiv centers	0
region	30	hiv centers	0
country	TZ	hiv centers	2672
\.
--
-- Name: hivcenters_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY hivcenters ADD CONSTRAINT hivcenters_pkey PRIMARY KEY (geo_level, geo_code, "hiv centers", total);


--
-- PostgreSQL database dump complete
--

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

ALTER TABLE IF EXISTS ONLY public.outpatientdiagnosisoverfive DROP CONSTRAINT IF EXISTS outpatientdiagnosisoverfive_pkey;
DROP TABLE IF EXISTS public.outpatientdiagnosisoverfive;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: outpatientdiagnosisoverfive; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE outpatientdiagnosisoverfive (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "outpatient diagnosis over five" character varying(128) NOT NULL,
    total float NULL
);


--
-- Data for Name: outpatientdiagnosisoverfive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY outpatientdiagnosisoverfive (geo_level, geo_code, "outpatient diagnosis over five", total) FROM stdin;
region	1	diarrhoea	28274
region	1	hypertension	31121
region	1	intestinal worms	23005
region	1	malaria	33833
region	1	surgical conditions	44772
region	1	pneumonia	59702
region	1	upper respiratory disorders	82980
region	1	skin infections	43659
region	1	UTI	65644
region	3	diarrhoea	87029
region	3	hypertension	82124
region	3	intestinal worms	78960
region	3	malaria	461786
region	3	surgical conditions	49047
region	3	pneumonia	63317
region	3	upper respiratory disorders	157448
region	3	skin infections	156592
region	3	UTI	237459
region	2	diarrhoea	39895
region	2	hypertension	6549
region	2	intestinal worms	22504
region	2	malaria	126094
region	2	surgical conditions	17481
region	2	pneumonia	26152
region	2	upper respiratory disorders	40710
region	2	skin infections	29347
region	2	UTI	41872
region	4	diarrhoea	12682
region	4	hypertension	3139
region	4	intestinal worms	23311
region	4	malaria	126160
region	4	surgical conditions	5622
region	4	pneumonia	9938
region	4	upper respiratory disorders	15276
region	4	skin infections	11985
region	4	UTI	31396
region	5	diarrhoea	22334
region	5	hypertension	6459
region	5	intestinal worms	15452
region	5	malaria	60186
region	5	surgical conditions	15703
region	5	pneumonia	16745
region	5	upper respiratory disorders	26056
region	5	skin infections	23054
region	5	UTI	24436
region	6	diarrhoea	25226
region	6	hypertension	13224
region	6	intestinal worms	38606
region	6	malaria	259856
region	6	surgical conditions	15369
region	6	pneumonia	20098
region	6	upper respiratory disorders	41090
region	6	skin infections	18662
region	6	UTI	78677
region	9	diarrhoea	7208
region	9	hypertension	1730
region	9	intestinal worms	8258
region	9	malaria	41782
region	9	surgical conditions	1682
region	9	pneumonia	3560
region	9	upper respiratory disorders	7776
region	9	skin infections	5802
region	9	UTI	10882
region	10	diarrhoea	22293
region	10	hypertension	5438
region	10	intestinal worms	46894
region	10	malaria	199323
region	10	surgical conditions	8448
region	10	pneumonia	13976
region	10	upper respiratory disorders	39690
region	10	skin infections	16465
region	10	UTI	50819
region	11	diarrhoea	20140
region	11	hypertension	41422
region	11	intestinal worms	38035
region	11	malaria	63798
region	11	surgical conditions	36984
region	11	pneumonia	50911
region	11	upper respiratory disorders	90294
region	11	skin infections	43510
region	11	UTI	59498
region	14	diarrhoea	15204
region	14	hypertension	9942
region	14	intestinal worms	10487
region	14	malaria	147525
region	14	surgical conditions	11007
region	14	pneumonia	12420
region	14	upper respiratory disorders	19613
region	14	skin infections	13174
region	14	UTI	18998
region	15	diarrhoea	21107
region	15	hypertension	3106
region	15	intestinal worms	14265
region	15	malaria	75027
region	15	surgical conditions	16759
region	15	pneumonia	31601
region	15	upper respiratory disorders	33651
region	15	skin infections	127577
region	15	UTI	26656
region	16	diarrhoea	24014
region	16	hypertension	4950
region	16	intestinal worms	40183
region	16	malaria	199835
region	16	surgical conditions	15469
region	16	pneumonia	16754
region	16	upper respiratory disorders	31429
region	16	skin infections	21752
region	16	UTI	57655
region	17	diarrhoea	45613
region	17	hypertension	14672
region	17	intestinal worms	25842
region	17	malaria	104218
region	17	surgical conditions	24136
region	17	pneumonia	31531
region	17	upper respiratory disorders	49634
region	17	skin infections	36567
region	17	UTI	39453
region	18	diarrhoea	37771
region	18	hypertension	18899
region	18	intestinal worms	42646
region	18	malaria	319602
region	18	surgical conditions	24837
region	18	pneumonia	31834
region	18	upper respiratory disorders	52380
region	18	skin infections	45028
region	18	UTI	78748
region	19	diarrhoea	16992
region	19	hypertension	10680
region	19	intestinal worms	12045
region	19	malaria	192333
region	19	surgical conditions	11923
region	19	pneumonia	18654
region	19	upper respiratory disorders	23771
region	19	skin infections	15211
region	19	UTI	25551
region	20	diarrhoea	27941
region	20	hypertension	9394
region	20	intestinal worms	48618
region	20	malaria	229520
region	20	surgical conditions	14735
region	20	pneumonia	20243
region	20	upper respiratory disorders	39290
region	20	skin infections	33815
region	20	UTI	92271
region	21	diarrhoea	13885
region	21	hypertension	4208
region	21	intestinal worms	6844
region	21	malaria	27670
region	21	surgical conditions	7296
region	21	pneumonia	10561
region	21	upper respiratory disorders	13198
region	21	skin infections	13931
region	21	UTI	11265
region	22	diarrhoea	21128
region	22	hypertension	15754
region	22	intestinal worms	17434
region	22	malaria	244679
region	22	surgical conditions	16616
region	22	pneumonia	17414
region	22	upper respiratory disorders	45542
region	22	skin infections	24472
region	22	UTI	54574
region	23	diarrhoea	17062
region	23	hypertension	2559
region	23	intestinal worms	11529
region	23	malaria	69919
region	23	surgical conditions	6476
region	23	pneumonia	11275
region	23	upper respiratory disorders	11379
region	23	skin infections	13718
region	23	UTI	16449
region	24	diarrhoea	18192
region	24	hypertension	11484
region	24	intestinal worms	15023
region	24	malaria	183819
region	24	surgical conditions	16330
region	24	pneumonia	20209
region	24	upper respiratory disorders	27345
region	24	skin infections	19308
region	24	UTI	18919
region	25	diarrhoea	24111
region	25	hypertension	5590
region	25	intestinal worms	21553
region	25	malaria	157642
region	25	surgical conditions	6871
region	25	pneumonia	12182
region	25	upper respiratory disorders	36171
region	25	skin infections	19037
region	25	UTI	43194
region	26	diarrhoea	18586
region	26	hypertension	1631
region	26	intestinal worms	16511
region	26	malaria	90687
region	26	surgical conditions	3002
region	26	pneumonia	10156
region	26	upper respiratory disorders	20370
region	26	skin infections	10868
region	26	UTI	30865
region	27	diarrhoea	33771
region	27	hypertension	4043
region	27	intestinal worms	16369
region	27	malaria	95183
region	27	surgical conditions	16802
region	27	pneumonia	18858
region	27	upper respiratory disorders	53355
region	27	skin infections	22149
region	27	UTI	31143
region	29	diarrhoea	28323
region	29	hypertension	4479
region	29	intestinal worms	20844
region	29	malaria	211160
region	29	surgical conditions	7566
region	29	pneumonia	12666
region	29	upper respiratory disorders	32161
region	29	skin infections	13597
region	29	UTI	32539
region	28	diarrhoea	36855
region	28	hypertension	23839
region	28	intestinal worms	34304
region	28	malaria	300736
region	28	surgical conditions	36421
region	28	pneumonia	42122
region	28	upper respiratory disorders	78197
region	28	skin infections	60071
region	28	UTI	76590
region	7	diarrhoea	0
region	7	hypertension	0
region	7	intestinal worms	0
region	7	malaria	0
region	7	surgical conditions	0
region	7	pneumonia	0
region	7	upper respiratory disorders	0
region	7	skin infections	0
region	7	UTI	0
region	8	diarrhoea	0
region	8	hypertension	0
region	8	intestinal worms	0
region	8	malaria	0
region	8	surgical conditions	0
region	8	pneumonia	0
region	8	upper respiratory disorders	0
region	8	skin infections	0
region	8	UTI	0
region	12	diarrhoea	0
region	12	hypertension	0
region	12	intestinal worms	0
region	12	malaria	0
region	12	surgical conditions	0
region	12	pneumonia	0
region	12	upper respiratory disorders	0
region	12	skin infections	0
region	12	UTI	0
region	13	diarrhoea	0
region	13	hypertension	0
region	13	intestinal worms	0
region	13	malaria	0
region	13	surgical conditions	0
region	13	pneumonia	0
region	13	upper respiratory disorders	0
region	13	skin infections	0
region	13	UTI	0
region	30	diarrhoea	0
region	30	hypertension	0
region	30	intestinal worms	0
region	30	malaria	0
region	30	surgical conditions	0
region	30	pneumonia	0
region	30	upper respiratory disorders	0
region	30	skin infections	0
region	30	UTI	0
country	TZ	diarrhoea	665636
country	TZ	hypertension	336436
country	TZ	intestinal worms	649522
country	TZ	malaria	4022373
country	TZ	surgical conditions	431354
country	TZ	pneumonia	582879
country	TZ	upper respiratory disorders	1068806
country	TZ	skin infections	839351
country	TZ	UTI	1255553
\.
--
-- Name: outpatientdiagnosisoverfive_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY outpatientdiagnosisoverfive
    ADD CONSTRAINT outpatientdiagnosisoverfive_pkey PRIMARY KEY (geo_level, geo_code, "outpatient diagnosis over five", total);


--
-- PostgreSQL database dump complete
--

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

ALTER TABLE IF EXISTS ONLY public.outpatientdiagnosisunderfive DROP CONSTRAINT IF EXISTS outpatientdiagnosisunderfive_pkey;
DROP TABLE IF EXISTS public.outpatientdiagnosisunderfive;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: outpatientdiagnosisunderfive; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE outpatientdiagnosisunderfive (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(255) NOT NULL,
    "outpatient diagnosis under five" character varying(128) NOT NULL,
    total float NULL
);


--
-- Data for Name: outpatientdiagnosisunderfive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY outpatientdiagnosisunderfive (geo_level, geo_code, "outpatient diagnosis under five", total) FROM stdin;
region	1	diarrhoea	44781
region	1	intestinal worms	14821
region	1	malaria	18895
region	1	pneumonia	80685
region	1	skin infections	31260
region	1	upper respiratory disorders	66511
region	1	UTI	25098
region	3	diarrhoea	108411
region	3	intestinal worms	64692
region	3	malaria	276762
region	3	pneumonia	106899
region	3	skin infections	145834
region	3	upper respiratory disorders	137757
region	3	UTI	161374
region	2	diarrhoea	73926
region	2	intestinal worms	17201
region	2	malaria	111535
region	2	pneumonia	47207
region	2	skin infections	34253
region	2	upper respiratory disorders	43846
region	2	UTI	29084
region	4	diarrhoea	31065
region	4	intestinal worms	17547
region	4	malaria	150911
region	4	pneumonia	21016
region	4	skin infections	16325
region	4	upper respiratory disorders	17554
region	4	UTI	25509
region	5	diarrhoea	20846
region	5	intestinal worms	7622
region	5	malaria	29543
region	5	pneumonia	19898
region	5	skin infections	19403
region	5	upper respiratory disorders	14569
region	5	UTI	7798
region	6	diarrhoea	44398
region	6	intestinal worms	28579
region	6	malaria	279216
region	6	pneumonia	44583
region	6	skin infections	16727
region	6	upper respiratory disorders	38173
region	6	UTI	30569
region	9	diarrhoea	11429
region	9	intestinal worms	6545
region	9	malaria	36880
region	9	pneumonia	5838
region	9	skin infections	6016
region	9	upper respiratory disorders	7147
region	9	UTI	8715
region	10	diarrhoea	38352
region	10	intestinal worms	30229
region	10	malaria	173188
region	10	pneumonia	25366
region	10	skin infections	18680
region	10	upper respiratory disorders	42823
region	10	UTI	37636
region	11	diarrhoea	23657
region	11	intestinal worms	18805
region	11	malaria	21621
region	11	pneumonia	55554
region	11	skin infections	29244
region	11	upper respiratory disorders	48257
region	11	UTI	23345
region	14	diarrhoea	22154
region	14	intestinal worms	10562
region	14	malaria	174654
region	14	pneumonia	19883
region	14	skin infections	14794
region	14	upper respiratory disorders	20293
region	14	UTI	10726
region	15	diarrhoea	38082
region	15	intestinal worms	10264
region	15	malaria	59058
region	15	pneumonia	53305
region	15	skin infections	19588
region	15	upper respiratory disorders	25994
region	15	UTI	9868
region	16	diarrhoea	37024
region	16	intestinal worms	26219
region	16	malaria	200050
region	16	pneumonia	29973
region	16	skin infections	20224
region	16	upper respiratory disorders	26840
region	16	UTI	38204
region	17	diarrhoea	71511
region	17	intestinal worms	17411
region	17	malaria	84351
region	17	pneumonia	55842
region	17	skin infections	41943
region	17	upper respiratory disorders	51389
region	17	UTI	22341
region	18	diarrhoea	43066
region	18	intestinal worms	26349
region	18	malaria	225126
region	18	pneumonia	56095
region	18	skin infections	43685
region	18	upper respiratory disorders	41436
region	18	UTI	52816
region	19	diarrhoea	31262
region	19	intestinal worms	12475
region	19	malaria	216063
region	19	pneumonia	32473
region	19	skin infections	22166
region	19	upper respiratory disorders	25355
region	19	UTI	15339
region	20	diarrhoea	65145
region	20	intestinal worms	30837
region	20	malaria	249147
region	20	pneumonia	55269
region	20	skin infections	48071
region	20	upper respiratory disorders	46425
region	20	UTI	52759
region	21	diarrhoea	11691
region	21	intestinal worms	3528
region	21	malaria	15258
region	21	pneumonia	13925
region	21	skin infections	10372
region	21	upper respiratory disorders	8933
region	21	UTI	3249
region	22	diarrhoea	29904
region	22	intestinal worms	13668
region	22	malaria	190204
region	22	pneumonia	32296
region	22	skin infections	24623
region	22	upper respiratory disorders	41581
region	22	UTI	26335
region	23	diarrhoea	40704
region	23	intestinal worms	9145
region	23	malaria	73850
region	23	pneumonia	17101
region	23	skin infections	17718
region	23	upper respiratory disorders	13483
region	23	UTI	11591
region	24	diarrhoea	26614
region	24	intestinal worms	11711
region	24	malaria	178686
region	24	pneumonia	27612
region	24	skin infections	20459
region	24	upper respiratory disorders	27223
region	24	UTI	9794
region	25	diarrhoea	44455
region	25	intestinal worms	14325
region	25	malaria	159449.1
region	25	pneumonia	28085
region	25	skin infections	18625
region	25	upper respiratory disorders	31540
region	25	UTI	25035
region	26	diarrhoea	39057
region	26	intestinal worms	10624
region	26	malaria	85640
region	26	pneumonia	23571
region	26	skin infections	13972
region	26	upper respiratory disorders	17893
region	26	UTI	22321
region	27	diarrhoea	53021
region	27	intestinal worms	9437
region	27	malaria	64226
region	27	pneumonia	25170
region	27	skin infections	25894
region	27	upper respiratory disorders	40604
region	27	UTI	16011
region	29	diarrhoea	53520
region	29	intestinal worms	14003
region	29	malaria	207585
region	29	pneumonia	25191
region	29	skin infections	15112
region	29	upper respiratory disorders	29867
region	29	UTI	18488
region	28	diarrhoea	51523
region	28	intestinal worms	24896
region	28	malaria	194761
region	28	pneumonia	84269
region	28	skin infections	50188
region	28	upper respiratory disorders	55611
region	28	UTI	37431
region	7	diarrhoea	0
region	7	intestinal worms	0
region	7	malaria	0
region	7	pneumonia	0
region	7	skin infections	0
region	7	upper respiratory disorders	0
region	7	UTI	0
region	8	diarrhoea	0
region	8	intestinal worms	0
region	8	malaria	0
region	8	pneumonia	0
region	8	skin infections	0
region	8	upper respiratory disorders	0
region	8	UTI	0
region	12	diarrhoea	0
region	12	intestinal worms	0
region	12	malaria	0
region	12	pneumonia	0
region	12	skin infections	0
region	12	upper respiratory disorders	0
region	12	UTI	0
region	13	diarrhoea	0
region	13	intestinal worms	0
region	13	malaria	0
region	13	pneumonia	0
region	13	skin infections	0
region	13	upper respiratory disorders	0
region	13	UTI	0
region	30	diarrhoea	0
region	30	intestinal worms	0
region	30	malaria	0
region	30	pneumonia	0
region	30	skin infections	0
region	30	upper respiratory disorders	0
region	30	UTI	0
country	TZ	diarrhoea	1055598
country	TZ	intestinal worms	451495
country	TZ	malaria	3476659.1
country	TZ	pneumonia	987106
country	TZ	skin infections	725176
country	TZ	upper respiratory disorders	921104
country	TZ	UTI	721436
\.
--
-- Name: outpatientdiagnosisunderfive_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY outpatientdiagnosisunderfive
    ADD CONSTRAINT outpatientdiagnosisunderfive_pkey PRIMARY KEY (geo_level, geo_code, "outpatient diagnosis under five", total);


--
-- PostgreSQL database dump complete
--

