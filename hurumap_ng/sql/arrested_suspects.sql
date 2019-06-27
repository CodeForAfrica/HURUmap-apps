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

ALTER TABLE IF EXISTS ONLY public.arrested_suspects DROP CONSTRAINT IF EXISTS arrested_suspects_pkey;
DROP TABLE IF EXISTS public.arrested_suspects;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: arrested_suspects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.arrested_suspects (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: arrested_suspects; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.arrested_suspects (geo_level, geo_code, geo_version, year, total) FROM stdin;
state	1	2016	2012	230
state	1	2016	2013	182
state	1	2016	2014	224
state	1	2016	2015	219
state	1	2016	2016	199
state	2	2016	2012	168
state	2	2016	2013	186
state	2	2016	2014	130
state	2	2016	2015	199
state	2	2016	2016	215
state	3	2016	2012	257
state	3	2016	2013	339
state	3	2016	2014	401
state	3	2016	2015	283
state	3	2016	2016	243
state	4	2016	2012	228
state	4	2016	2013	420
state	4	2016	2014	395
state	4	2016	2015	331
state	4	2016	2016	272
state	5	2016	2012	213
state	5	2016	2013	221
state	5	2016	2014	471
state	5	2016	2015	382
state	5	2016	2016	321
state	6	2016	2012	219
state	6	2016	2013	249
state	6	2016	2014	177
state	6	2016	2015	141
state	6	2016	2016	215
state	7	2016	2012	205
state	7	2016	2013	116
state	7	2016	2014	126
state	7	2016	2015	200
state	7	2016	2016	135
state	8	2016	2012	35
state	8	2016	2013	108
state	8	2016	2014	75
state	8	2016	2015	59
state	8	2016	2016	58
state	9	2016	2012	186
state	9	2016	2013	99
state	9	2016	2014	32
state	9	2016	2015	183
state	9	2016	2016	88
state	10	2016	2012	292
state	10	2016	2013	202
state	10	2016	2014	233
state	10	2016	2015	122
state	10	2016	2016	193
state	11	2016	2012	167
state	11	2016	2013	237
state	11	2016	2014	164
state	11	2016	2015	176
state	11	2016	2016	112
state	12	2016	2012	231
state	12	2016	2013	261
state	12	2016	2014	220
state	12	2016	2015	303
state	12	2016	2016	269
state	13	2016	2012	383
state	13	2016	2013	310
state	13	2016	2014	190
state	13	2016	2015	205
state	13	2016	2016	92
state	14	2016	2012	151
state	14	2016	2013	173
state	14	2016	2014	171
state	14	2016	2015	163
state	14	2016	2016	112
state	15	2016	2012	254
state	15	2016	2013	285
state	15	2016	2014	425
state	15	2016	2015	478
state	15	2016	2016	268
state	16	2016	2012	111
state	16	2016	2013	115
state	16	2016	2014	167
state	16	2016	2015	86
state	16	2016	2016	90
state	17	2016	2012	184
state	17	2016	2013	138
state	17	2016	2014	176
state	17	2016	2015	131
state	17	2016	2016	97
state	18	2016	2012	155
state	18	2016	2013	168
state	18	2016	2014	196
state	18	2016	2015	116
state	18	2016	2016	279
state	19	2016	2012	172
state	19	2016	2013	384
state	19	2016	2014	346
state	19	2016	2015	245
state	19	2016	2016	319
state	20	2016	2012	705
state	20	2016	2013	567
state	20	2016	2014	503
state	20	2016	2015	669
state	20	2016	2016	744
state	21	2016	2012	411
state	21	2016	2013	614
state	21	2016	2014	609
state	21	2016	2015	539
state	21	2016	2016	562
state	22	2016	2012	252
state	22	2016	2013	198
state	22	2016	2014	209
state	22	2016	2015	161
state	22	2016	2016	83
state	23	2016	2012	112
state	23	2016	2013	225
state	23	2016	2014	172
state	23	2016	2015	138
state	23	2016	2016	229
state	24	2016	2012	85
state	24	2016	2013	164
state	24	2016	2014	91
state	24	2016	2015	161
state	24	2016	2016	163
state	25	2016	2012	321
state	25	2016	2013	490
state	25	2016	2014	434
state	25	2016	2015	251
state	25	2016	2016	222
state	26	2016	2012	59
state	26	2016	2013	50
state	26	2016	2014	215
state	26	2016	2015	77
state	26	2016	2016	47
state	27	2016	2012	114
state	27	2016	2013	143
state	27	2016	2014	68
state	27	2016	2015	264
state	27	2016	2016	230
state	28	2016	2012	140
state	28	2016	2013	237
state	28	2016	2014	217
state	28	2016	2015	242
state	28	2016	2016	260
state	29	2016	2012	119
state	29	2016	2013	92
state	29	2016	2014	58
state	29	2016	2015	151
state	29	2016	2016	151
state	30	2016	2012	218
state	30	2016	2013	252
state	30	2016	2014	191
state	30	2016	2015	194
state	30	2016	2016	88
state	31	2016	2012	161
state	31	2016	2013	401
state	31	2016	2014	350
state	31	2016	2015	237
state	31	2016	2016	299
state	32	2016	2012	384
state	32	2016	2013	318
state	32	2016	2014	297
state	32	2016	2015	343
state	32	2016	2016	404
state	33	2016	2012	281
state	33	2016	2013	213
state	33	2016	2014	232
state	33	2016	2015	261
state	33	2016	2016	291
state	34	2016	2012	264
state	34	2016	2013	185
state	34	2016	2014	165
state	34	2016	2015	222
state	34	2016	2016	217
state	35	2016	2012	43
state	35	2016	2013	78
state	35	2016	2014	77
state	35	2016	2015	260
state	35	2016	2016	245
state	36	2016	2012	36
state	36	2016	2013	57
state	36	2016	2014	97
state	36	2016	2015	41
state	36	2016	2016	88
state	37	2016	2012	221
state	37	2016	2013	171
state	37	2016	2014	232
state	37	2016	2015	210
state	37	2016	2016	147
country	NG	2016	2012	7203
country	NG	2016	2013	8648
country	NG	2016	2014	8536
country	NG	2016	2015	8443
country	NG	2016	2016	8611
\.


--
-- Name: arrested_suspects arrested_suspects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.arrested_suspects
    ADD CONSTRAINT arrested_suspects_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
