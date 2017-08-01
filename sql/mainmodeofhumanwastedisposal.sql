--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 11:00:00 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 221 (class 1259 OID 17866)
-- Name: mainmodeofhumanwastedisposal; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE mainmodeofhumanwastedisposal (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main mode of human waste disposal" character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE mainmodeofhumanwastedisposal OWNER TO hurumap_ke;

--
-- TOC entry 3177 (class 0 OID 17866)
-- Dependencies: 221
-- Data for Name: mainmodeofhumanwastedisposal; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY mainmodeofhumanwastedisposal (geo_level, geo_code, "main mode of human waste disposal", total) FROM stdin;
country	KE	bucket	22828
country	KE	bush	1196509
country	KE	cess pool	29881
country	KE	main sewer	674541
country	KE	other	14104
country	KE	septic tank	299030
county	2	bucket	196
county	2	bush	62342
county	2	cess pool	574
county	2	main sewer	614
county	2	other	166
county	2	septic tank	2723
county	3	bucket	1152
county	3	bush	67545
county	3	cess pool	930
county	3	main sewer	3234
county	3	other	273
county	5	bucket	92
county	5	bush	4822
county	5	cess pool	97
county	5	main sewer	75
county	5	other	78
county	5	septic tank	759
county	7	bucket	308
county	7	bush	46934
county	7	cess pool	150
county	7	main sewer	1121
county	7	other	557
county	7	septic tank	851
county	9	bucket	168
county	9	bush	82437
county	9	cess pool	226
county	9	main sewer	122
county	9	other	404
county	10	bucket	24
county	10	bush	36636
county	10	cess pool	23
county	10	main sewer	22
county	10	other	131
county	10	septic tank	118
county	11	bucket	36
county	11	bush	13739
county	11	cess pool	17
county	11	main sewer	1557
county	11	other	107
county	12	bucket	277
county	12	bush	8257
county	12	cess pool	874
county	12	main sewer	2306
county	12	other	540
county	12	septic tank	6029
county	14	bucket	78
county	14	bush	2188
county	14	cess pool	469
county	14	main sewer	3264
county	14	other	83
county	15	bucket	86
county	15	bush	63204
county	15	cess pool	217
county	15	main sewer	433
county	15	other	216
county	15	septic tank	1269
county	16	bucket	307
county	16	bush	6989
county	16	cess pool	1175
county	16	main sewer	11666
county	16	other	524
county	16	septic tank	8944
county	17	bucket	78
county	17	bush	3811
county	17	cess pool	249
county	17	main sewer	1032
county	17	other	74
county	20	bucket	245
county	20	bush	807
county	20	cess pool	252
county	20	main sewer	1222
county	20	other	147
county	20	septic tank	4985
county	40	bucket	135
county	40	bush	12033
county	40	cess pool	178
county	40	main sewer	545
county	40	other	223
county	21	bucket	116
county	21	bush	415
county	22	bucket	491
county	22	bush	1118
county	22	cess pool	1862
county	22	main sewer	31288
county	22	other	264
county	22	septic tank	44518
county	28	bucket	51
county	28	bush	14465
county	28	cess pool	33
county	28	main sewer	295
county	28	other	34
county	30	bucket	40
county	30	bush	47510
county	30	cess pool	80
county	30	main sewer	296
county	30	other	59
county	30	septic tank	1111
county	31	bucket	84
county	31	bush	11626
county	31	cess pool	194
county	31	main sewer	10324
county	31	other	70
county	34	bucket	232
county	34	bush	44197
county	34	cess pool	478
county	34	main sewer	2407
county	34	other	316
county	34	septic tank	17157
county	35	bucket	129
county	35	bush	10080
county	35	cess pool	107
county	35	main sewer	2695
county	35	other	78
county	36	bucket	96
county	36	bush	8639
county	36	cess pool	144
county	36	main sewer	565
county	36	other	113
county	36	septic tank	546
county	37	bucket	336
county	37	bush	4941
county	1	bucket	3040
county	1	bush	5723
county	1	cess pool	3698
county	1	main sewer	37225
county	1	other	494
county	1	septic tank	35307
county	3	septic tank	14764
county	4	bucket	104
county	4	bush	33291
county	4	cess pool	30
county	4	main sewer	132
county	4	other	103
county	4	septic tank	261
county	6	bucket	31
county	6	bush	3948
county	6	cess pool	185
county	6	main sewer	953
county	6	other	86
county	6	septic tank	3223
county	8	bucket	6660
county	8	bush	67723
county	8	cess pool	59
county	8	main sewer	151
county	8	other	239
county	8	septic tank	329
county	9	septic tank	87
county	11	septic tank	622
county	13	bucket	8
county	13	bush	2541
county	13	cess pool	9
county	13	main sewer	19
county	13	other	26
county	13	septic tank	81
county	14	septic tank	4076
county	17	septic tank	632
county	18	bucket	116
county	18	bush	223
county	18	cess pool	110
county	18	main sewer	346
county	18	other	39
county	18	septic tank	1022
county	19	bucket	196
county	19	bush	486
county	19	cess pool	584
county	19	main sewer	9633
county	19	other	34
county	19	septic tank	7083
county	25	bucket	19
county	25	bush	34746
county	25	cess pool	30
county	25	main sewer	94
county	25	other	33
county	25	septic tank	295
county	40	septic tank	808
county	21	cess pool	419
county	21	main sewer	3967
county	21	other	101
county	21	septic tank	3578
county	23	bucket	67
county	23	bush	100997
county	23	cess pool	133
county	23	main sewer	192
county	23	other	230
county	23	septic tank	252
county	24	bucket	41
county	24	bush	62901
county	24	cess pool	56
county	24	main sewer	132
county	24	other	42
county	24	septic tank	156
county	26	bucket	173
county	26	bush	4346
county	26	cess pool	200
county	26	main sewer	2802
county	26	other	261
county	26	septic tank	1377
county	27	bucket	293
county	27	bush	3374
county	27	cess pool	315
county	27	main sewer	16411
county	27	other	330
county	27	septic tank	6845
county	28	septic tank	333
county	29	bucket	58
county	29	bush	7173
county	29	cess pool	146
county	29	main sewer	599
county	29	other	295
county	29	septic tank	663
county	31	septic tank	1886
county	32	bucket	554
county	32	bush	11262
county	32	cess pool	3148
county	32	main sewer	32864
county	32	other	339
county	32	septic tank	14507
county	33	bucket	122
county	33	bush	81700
county	33	cess pool	122
county	33	main sewer	755
county	33	other	209
county	33	septic tank	1429
county	35	septic tank	1316
county	37	cess pool	466
county	37	main sewer	5272
county	37	other	570
county	37	septic tank	2879
county	38	bucket	55
county	38	bush	908
county	38	cess pool	78
county	38	main sewer	374
county	38	other	98
county	38	septic tank	275
county	39	bucket	303
county	39	bush	8060
county	39	cess pool	282
county	39	main sewer	1936
county	39	other	743
county	39	septic tank	2086
county	41	bucket	154
county	41	bush	39793
county	41	cess pool	199
county	41	main sewer	396
county	41	other	385
county	41	septic tank	512
county	42	bucket	275
county	42	bush	27440
county	42	cess pool	294
county	42	main sewer	10933
county	42	other	758
county	42	septic tank	5513
county	43	bucket	171
county	43	bush	79509
county	43	cess pool	111
county	43	main sewer	1869
county	43	other	481
county	43	septic tank	354
county	44	bucket	215
county	44	bush	59404
county	44	cess pool	125
county	44	main sewer	861
county	44	other	245
county	44	septic tank	595
county	45	bucket	128
county	45	bush	1726
county	45	cess pool	214
county	45	main sewer	1640
county	45	other	304
county	45	septic tank	1191
county	47	bucket	5205
county	47	bush	3962
county	47	cess pool	10489
county	47	main sewer	469830
county	47	other	3180
county	46	bucket	83
county	46	bush	538
county	46	cess pool	50
county	46	main sewer	72
county	46	other	22
county	46	septic tank	273
county	47	septic tank	95410
\.


--
-- TOC entry 3062 (class 2606 OID 18011)
-- Name: mainmodeofhumanwastedisposal mainmodeofhumanwastedisposal_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY mainmodeofhumanwastedisposal
    ADD CONSTRAINT mainmodeofhumanwastedisposal_pkey PRIMARY KEY (geo_level, geo_code, "main mode of human waste disposal");


-- Completed on 2017-07-31 11:00:16 EAT

--
-- PostgreSQL database dump complete
--

