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

ALTER TABLE IF EXISTS ONLY public.crop_production DROP CONSTRAINT IF EXISTS crop_production_pkey;
DROP TABLE IF EXISTS public.crop_production;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: crop_production; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE crop_production (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "crop_production" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: crop_production; Type: TABLE DATA; Schema: public; Owner: -
--

COPY crop_production (geo_level, geo_code, "crop_production", total) FROM stdin;
county	47	maize	913
county	47	maize (90kg bags)	8220
county	47	maize yield	15
county	22	maize	24450
county	22	maize (90kg bags)	82044
county	22	maize yield	6.8
county	20	maize	32992
county	20	maize (90kg bags)	413143
county	20	maize yield	14.7
county	21	maize	61543
county	21	maize (90kg bags)	580734
county	21	maize yield	13.1
county	18	maize	10366
county	18	maize (90kg bags)	145591
county	18	maize yield	21.6
county	19	maize	61543
county	19	maize (90kg bags)	492011
county	19	maize yield	13.1
county	3	maize	653
county	3	maize (90kg bags)	3334
county	3	maize yield	6.4
county	2	maize	34644
county	2	maize (90kg bags)	349695
county	2	maize yield	13.5
county	5	maize	35261
county	5	maize (90kg bags)	395000
county	5	maize yield	12.4
county	1	maize	653
county	1	maize (90kg bags)	3751
county	1	maize yield	5.7
county	6	maize	653
county	6	maize (90kg bags)	9142
county	6	maize yield	13
county	4	maize	9582
county	4	maize (90kg bags)	126561
county	4	maize yield	14.7
county	14	maize	26720
county	14	maize (90kg bags)	295677
county	14	maize yield	11.3
county	11	maize	1385
county	11	maize (90kg bags)	7298
county	11	maize yield	5.4
county	15	maize	84763
county	15	maize (90kg bags)	339832
county	15	maize yield	4.1
county	16	maize	139090
county	16	maize (90kg bags)	694189
county	16	maize yield	5.4
county	17	maize	181089
county	17	maize (90kg bags)	860442
county	17	maize yield	4.9
county	10	maize	1571
county	10	maize (90kg bags)	17575
county	10	maize yield	11.4
county	12	maize	110489
county	12	maize (90kg bags)	1243949
county	12	maize yield	11.5
county	13	maize	29916
county	13	maize (90kg bags)	283014
county	13	maize yield	9.6
county	7	maize	245
county	7	maize (90kg bags)	2208
county	7	maize yield	9.1
county	9	maize	2682
county	9	maize (90kg bags)	17874
county	9	maize yield	6.7
county	8	maize	660
county	8	maize (90kg bags)	1241
county	8	maize yield	2
county	43	maize	79667
county	43	maize (90kg bags)	1382943
county	43	maize yield	18.7
county	45	maize	62210
county	45	maize (90kg bags)	1330034
county	45	maize yield	23
county	42	maize	27150
county	42	maize (90kg bags)	607234
county	42	maize yield	24
county	44	maize	67485
county	44	maize (90kg bags)	930028
county	44	maize yield	14.8
county	46	maize	35549
county	46	maize (90kg bags)	456836
county	46	maize yield	13.8
county	41	maize	78132
county	41	maize (90kg bags)	1372914
county	41	maize yield	18.9
county	30	maize	34960
county	30	maize (90kg bags)	388444
county	30	maize yield	11.1
county	36	maize	30940
county	36	maize (90kg bags)	590692
county	36	maize yield	19.1
county	28	maize	27620
county	28	maize (90kg bags)	1149427
county	28	maize yield	43
county	34	maize	31020
county	34	maize (90kg bags)	815506
county	34	maize yield	26.7
county	35	maize	41041
county	35	maize (90kg bags)	765697
county	35	maize yield	24.2
county	31	maize	6175
county	31	maize (90kg bags)	71902
county	31	maize yield	11.8
county	32	maize	86504
county	32	maize (90kg bags)	1765714
county	32	maize yield	20.6
county	29	maize	74045
county	29	maize (90kg bags)	1857991
county	29	maize yield	27.4
county	33	maize	112079
county	33	maize (90kg bags)	2975208
county	33	maize yield	26.9
county	25	maize	1973
county	25	maize (90kg bags)	22931
county	25	maize yield	11.6
county	26	maize	106778
county	26	maize (90kg bags)	5014980
county	26	maize yield	47.9
county	23	maize	1310
county	23	maize (90kg bags)	23928
county	23	maize yield	18.6
county	27	maize	96654
county	27	maize (90kg bags)	4224741
county	27	maize yield	43.7
county	24	maize	19748
county	24	maize (90kg bags)	514903
county	24	maize yield	26.6
county	39	maize	98074
county	39	maize (90kg bags)	2970027
county	39	maize yield	32.6
county	40	maize	50400
county	40	maize (90kg bags)	807352
county	40	maize yield	17.6
county	37	maize	70993
county	37	maize (90kg bags)	2026635
county	37	maize yield	30
county	38	maize	23772
county	38	maize (90kg bags)	406723
county	38	maize yield	18.2
country	KE	maize	2116141
country	KE	maize (90kg bags)	39035228
country	KE	maize yield	19.7
county	18	wheat	1455
county	18	wheat (90kg bags)	32300
county	18	wheat yield	22.2
county	19	wheat	4280
county	19	wheat (90kg bags)	77600
county	19	wheat yield	18.1
county	12	wheat	11600.0
county	12	wheat (90kg bags)	326875.0
county	12	wheat yield	28.2
county	10	wheat	37
county	10	wheat (90kg bags)	1030
county	10	wheat yield	27.8
county	28	wheat	105
county	28	wheat (90kg bags)	3150
county	28	wheat yield	30.0
county	35	wheat	0
county	35	wheat (90kg bags)	0
county	35	wheat yield	0.0
county	31	wheat	5145
county	31	wheat (90kg bags)	185600
county	31	wheat yield	36.1
county	32	wheat	32057
county	32	wheat (90kg bags)	961083
county	32	wheat yield	30.0
county	29	wheat	43
county	29	wheat (90kg bags)	1030
county	29	wheat yield	24.0
county	33	wheat	70884
county	33	wheat (90kg bags)	1508620
county	33	wheat yield	21.3
county	25	wheat	600
county	25	wheat (90kg bags)	12000
county	25	wheat yield	20.0
county	26	wheat	1870
county	26	wheat (90kg bags)	46078
county	26	wheat yield	24.6
county	27	wheat	18829
county	27	wheat (90kg bags)	488395
county	27	wheat yield	25.9
county	39	wheat	305
county	39	wheat (90kg bags)	7767
county	39	wheat yield	25.5
county	37	wheat	0
county	37	wheat (90kg bags)	0
county	37	wheat yield	0.0
country	KE	wheat	147210
country	KE	wheat (90kg bags)	3651528
country	KE	wheat yield	24.8
county	1	wheat	0
county	1	wheat (90kg bags)	0
county	1	wheat yield	0.0
county	2	wheat	0
county	2	wheat (90kg bags)	0
county	2	wheat yield	0.0
county	3	wheat	0
county	3	wheat (90kg bags)	0
county	3	wheat yield	0.0
county	4	wheat	0
county	4	wheat (90kg bags)	0
county	4	wheat yield	0.0
county	5	wheat	0
county	5	wheat (90kg bags)	0
county	5	wheat yield	0.0
county	6	wheat	0
county	6	wheat (90kg bags)	0
county	6	wheat yield	0.0
county	7	wheat	0
county	7	wheat (90kg bags)	0
county	7	wheat yield	0.0
county	8	wheat	0
county	8	wheat (90kg bags)	0
county	8	wheat yield	0.0
county	9	wheat	0
county	9	wheat (90kg bags)	0
county	9	wheat yield	0.0
county	11	wheat	0
county	11	wheat (90kg bags)	0
county	11	wheat yield	0.0
county	13	wheat	0
county	13	wheat (90kg bags)	0
county	13	wheat yield	0.0
county	14	wheat	0
county	14	wheat (90kg bags)	0
county	14	wheat yield	0.0
county	15	wheat	0
county	15	wheat (90kg bags)	0
county	15	wheat yield	0.0
county	16	wheat	0
county	16	wheat (90kg bags)	0
county	16	wheat yield	0.0
county	17	wheat	0
county	17	wheat (90kg bags)	0
county	17	wheat yield	0.0
county	20	wheat	0
county	20	wheat (90kg bags)	0
county	20	wheat yield	0.0
county	21	wheat	0
county	21	wheat (90kg bags)	0
county	21	wheat yield	0.0
county	22	wheat	0
county	22	wheat (90kg bags)	0
county	22	wheat yield	0.0
county	23	wheat	0
county	23	wheat (90kg bags)	0
county	23	wheat yield	0.0
county	24	wheat	0
county	24	wheat (90kg bags)	0
county	24	wheat yield	0.0
county	30	wheat	0
county	30	wheat (90kg bags)	0
county	30	wheat yield	0.0
county	34	wheat	0
county	34	wheat (90kg bags)	0
county	34	wheat yield	0.0
county	36	wheat	0
county	36	wheat (90kg bags)	0
county	36	wheat yield	0.0
county	47	wheat	0
county	47	wheat (90kg bags)	0
county	47	wheat yield	0.0
county	38	wheat	0
county	38	wheat (90kg bags)	0
county	38	wheat yield	0.0
county	40	wheat	0
county	40	wheat (90kg bags)	0
county	40	wheat yield	0.0
county	41	wheat	0
county	41	wheat (90kg bags)	0
county	41	wheat yield	0.0
county	42	wheat	0
county	42	wheat (90kg bags)	0
county	42	wheat yield	0.0
county	43	wheat	0
county	43	wheat (90kg bags)	0
county	43	wheat yield	0.0
county	44	wheat	0
county	44	wheat (90kg bags)	0
county	44	wheat yield	0.0
county	45	wheat	0
county	45	wheat (90kg bags)	0
county	45	wheat yield	0.0
county	46	wheat	0
county	46	wheat (90kg bags)	0
county	46	wheat yield	0.0
county	18	barley	25
county	18	barley (Ton)	45
county	18	barley yield	1.8
county	32	barley	30456
county	32	barley (Ton)	110974
county	32	barley yield	3.5
county	33	barley	140126
county	33	barley (Ton)	130871
county	33	barley yield	1.0
county	25	barley	450
county	25	barley (Ton)	792
county	25	barley yield	1.8
county	27	barley	875
county	27	barley (Ton)	320375
county	27	barley yield	37.0
county	12	barley	20600
county	12	barley (Ton)	60345
county	12	barley yield	2.4
country	KE	barley	210532
country	KE	barley (Ton)	650402
country	KE	barley yield	3.0
county	1	barley	0
county	1	barley (Ton)	0
county	1	barley yield	0
county	2	barley	0
county	2	barley (Ton)	0
county	2	barley yield	0
county	3	barley	0
county	3	barley (Ton)	0
county	3	barley yield	0
county	4	barley	0
county	4	barley (Ton)	0
county	4	barley yield	0
county	5	barley	0
county	5	barley (Ton)	0
county	5	barley yield	0
county	6	barley	0
county	6	barley (Ton)	0
county	6	barley yield	0
county	7	barley	0
county	7	barley (Ton)	0
county	7	barley yield	0
county	8	barley	0
county	8	barley (Ton)	0
county	8	barley yield	0
county	9	barley	0
county	9	barley (Ton)	0
county	9	barley yield	0
county	10	barley	0
county	10	barley (Ton)	0
county	10	barley yield	0
county	11	barley	0
county	11	barley (Ton)	0
county	11	barley yield	0
county	41	barley	0
county	41	barley (Ton)	0
county	41	barley yield	0
county	13	barley	0
county	13	barley (Ton)	0
county	13	barley yield	0
county	14	barley	0
county	14	barley (Ton)	0
county	14	barley yield	0
county	15	barley	0
county	15	barley (Ton)	0
county	15	barley yield	0
county	16	barley	0
county	16	barley (Ton)	0
county	16	barley yield	0
county	17	barley	0
county	17	barley (Ton)	0
county	17	barley yield	0
county	47	barley	0
county	47	barley (Ton)	0
county	47	barley yield	0
county	19	barley	0
county	19	barley (Ton)	0
county	19	barley yield	0
county	20	barley	0
county	20	barley (Ton)	0
county	20	barley yield	0
county	21	barley	0
county	21	barley (Ton)	0
county	21	barley yield	0
county	22	barley	0
county	22	barley (Ton)	0
county	22	barley yield	0
county	23	barley	0
county	23	barley (Ton)	0
county	23	barley yield	0
county	24	barley	0
county	24	barley (Ton)	0
county	24	barley yield	0
county	43	barley	0
county	43	barley (Ton)	0
county	43	barley yield	0
county	26	barley	0
county	26	barley (Ton)	0
county	26	barley yield	0
county	42	barley	0
county	42	barley (Ton)	0
county	42	barley yield	0
county	28	barley	0
county	28	barley (Ton)	0
county	28	barley yield	0
county	29	barley	0
county	29	barley (Ton)	0
county	29	barley yield	0
county	30	barley	0
county	30	barley (Ton)	0
county	30	barley yield	0
county	31	barley	0
county	31	barley (Ton)	0
county	31	barley yield	0
county	45	barley	0
county	45	barley (Ton)	0
county	45	barley yield	0
county	44	barley	0
county	44	barley (Ton)	0
county	44	barley yield	0
county	34	barley	0
county	34	barley (Ton)	0
county	34	barley yield	0
county	35	barley	0
county	35	barley (Ton)	0
county	35	barley yield	0
county	36	barley	0
county	36	barley (Ton)	0
county	36	barley yield	0
county	37	barley	0
county	37	barley (Ton)	0
county	37	barley yield	0
county	38	barley	0
county	38	barley (Ton)	0
county	38	barley yield	0
county	39	barley	0
county	39	barley (Ton)	0
county	39	barley yield	0
county	40	barley	0
county	40	barley (Ton)	0
county	40	barley yield	0
county	21	rice	102.6
county	21	rice (Ton)	261.4
county	21	rice yield	2.5
county	20	rice	10465.0
county	20	rice (Ton)	68988.2
county	20	rice yield	6.6
county	19	rice	102.6
county	19	rice (Ton)	261.4
county	19	rice yield	2.5
county	3	rice	179
county	3	rice (Ton)	95.12
county	3	rice yield	0.5
county	2	rice	1273
county	2	rice (Ton)	1355.67
county	2	rice yield	1.1
county	5	rice	91
county	5	rice (Ton)	170.6
county	5	rice yield	1.9
county	1	rice	0
county	1	rice (Ton)	0
county	1	rice yield	0
county	6	rice	265
county	6	rice (Ton)	1396
county	6	rice yield	5.3
county	4	rice	1355
county	4	rice (Ton)	2244.15
county	4	rice yield	1.7
county	14	rice	5
county	14	rice (Ton)	5
county	14	rice yield	1.0
county	12	rice	111
county	12	rice (Ton)	144.5
county	12	rice yield	1.3
county	13	rice	27.7
county	13	rice (Ton)	24.4
county	13	rice yield	0.9
county	7	rice	30
county	7	rice (Ton)	34
county	7	rice yield	1.1
county	9	rice	0.1
county	9	rice (Ton)	0
county	9	rice yield	0
county	43	rice	5223
county	43	rice (Ton)	7713.33
county	43	rice yield	1.5
county	42	rice	4540
county	42	rice (Ton)	18390
county	42	rice yield	4.1
county	44	rice	680.9
county	44	rice (Ton)	421.06
county	44	rice yield	0.6
county	41	rice	2648
county	41	rice (Ton)	8137.76
county	41	rice yield	3.1
county	28	rice	14.3
county	28	rice (Ton)	20.34
county	28	rice yield	1.4
county	30	rice	40
county	30	rice (Ton)	89.9
county	30	rice yield	2.2
county	39	rice	115
county	39	rice (Ton)	92.5
county	39	rice yield	0.8
county	40	rice	964
county	40	rice (Ton)	1947
county	40	rice yield	2.0
county	37	rice	103.5
county	37	rice (Ton)	395.5
county	37	rice yield	3.8
county	38	rice	54
county	38	rice (Ton)	75.5
county	38	rice yield	1.4
country	KE	rice	28390
country	KE	rice (Ton)	112263
country	KE	rice yield	4.0
county	8	rice	0
county	8	rice (Ton)	0
county	8	rice yield	0
county	10	rice	0
county	10	rice (Ton)	0
county	10	rice yield	0
county	11	rice	0
county	11	rice (Ton)	0
county	11	rice yield	0
county	15	rice	0
county	15	rice (Ton)	0
county	15	rice yield	0
county	16	rice	0
county	16	rice (Ton)	0
county	16	rice yield	0
county	17	rice	0
county	17	rice (Ton)	0
county	17	rice yield	0
county	18	rice	0
county	18	rice (Ton)	0
county	18	rice yield	0
county	22	rice	0
county	22	rice (Ton)	0
county	22	rice yield	0
county	23	rice	0
county	23	rice (Ton)	0
county	23	rice yield	0
county	24	rice	0
county	24	rice (Ton)	0
county	24	rice yield	0
county	25	rice	0
county	25	rice (Ton)	0
county	25	rice yield	0
county	26	rice	0
county	26	rice (Ton)	0
county	26	rice yield	0
county	27	rice	0
county	27	rice (Ton)	0
county	27	rice yield	0
county	29	rice	0
county	29	rice (Ton)	0
county	29	rice yield	0
county	31	rice	0
county	31	rice (Ton)	0
county	31	rice yield	0
county	32	rice	0
county	32	rice (Ton)	0
county	32	rice yield	0
county	33	rice	0
county	33	rice (Ton)	0
county	33	rice yield	0
county	34	rice	0
county	34	rice (Ton)	0
county	34	rice yield	0
county	35	rice	0
county	35	rice (Ton)	0
county	35	rice yield	0
county	36	rice	0
county	36	rice (Ton)	0
county	36	rice yield	0
county	45	rice	0
county	45	rice (Ton)	0
county	45	rice yield	0
county	46	rice	0
county	46	rice (Ton)	0
county	46	rice yield	0
county	47	rice	0
county	47	rice (Ton)	0
county	47	rice yield	0
county	47	sorghum	913
county	47	sorghum (90kg bags)	1233
county	47	sorghum yield	1.4
county	20	sorghum	276
county	20	sorghum (90kg bags)	1544
county	20	sorghum yield	5.6
county	21	sorghum	204
county	21	sorghum (90kg bags)	1720
county	21	sorghum yield	8.4
county	18	sorghum	35
county	18	sorghum (90kg bags)	280
county	18	sorghum yield	8.0
county	19	sorghum	204
county	19	sorghum (90kg bags)	1720
county	19	sorghum yield	8.4
county	3	sorghum	363
county	3	sorghum (90kg bags)	1089
county	3	sorghum yield	3.0
county	2	sorghum	153
county	2	sorghum (90kg bags)	663
county	2	sorghum yield	4.3
county	5	sorghum	273
county	5	sorghum (90kg bags)	3067
county	5	sorghum yield	11.3
county	1	sorghum	0
county	1	sorghum (90kg bags)	0
county	1	sorghum yield	0.0
county	6	sorghum	474
county	6	sorghum (90kg bags)	833
county	6	sorghum yield	1.8
county	4	sorghum	131
county	4	sorghum (90kg bags)	862
county	4	sorghum yield	6.6
county	14	sorghum	5386
county	14	sorghum (90kg bags)	58303
county	14	sorghum yield	10.8
county	11	sorghum	45
county	11	sorghum (90kg bags)	270
county	11	sorghum yield	6.0
county	15	sorghum	59530
county	15	sorghum (90kg bags)	429623
county	15	sorghum yield	7.2
county	16	sorghum	9693
county	16	sorghum (90kg bags)	81726
county	16	sorghum yield	8.4
county	17	sorghum	16306
county	17	sorghum (90kg bags)	53416
county	17	sorghum yield	3.3
county	10	sorghum	13
county	10	sorghum (90kg bags)	41
county	10	sorghum yield	3.0
county	12	sorghum	12451
county	12	sorghum (90kg bags)	95439
county	12	sorghum yield	7.7
county	13	sorghum	21227
county	13	sorghum (90kg bags)	116964
county	13	sorghum yield	5.5
county	7	sorghum	35
county	7	sorghum (90kg bags)	378
county	7	sorghum yield	10.8
county	9	sorghum	961
county	9	sorghum (90kg bags)	1393
county	9	sorghum yield	1.4
county	8	sorghum	440
county	8	sorghum (90kg bags)	889
county	8	sorghum yield	2.0
county	43	sorghum	20401
county	43	sorghum (90kg bags)	358380
county	43	sorghum yield	17.6
county	45	sorghum	113
county	45	sorghum (90kg bags)	5724
county	45	sorghum yield	50.7
county	42	sorghum	11160
county	42	sorghum (90kg bags)	210654
county	42	sorghum yield	18.9
county	44	sorghum	5373
county	44	sorghum (90kg bags)	58613
county	44	sorghum yield	10.9
county	46	sorghum	93
county	46	sorghum (90kg bags)	973
county	46	sorghum yield	10.5
county	41	sorghum	15986
county	41	sorghum (90kg bags)	128726
county	41	sorghum yield	8.1
county	30	sorghum	849
county	30	sorghum (90kg bags)	8483
county	30	sorghum yield	10.0
county	36	sorghum	442
county	36	sorghum (90kg bags)	5432
county	36	sorghum yield	12.3
county	28	sorghum	769
county	28	sorghum (90kg bags)	9206
county	28	sorghum yield	12.0
county	34	sorghum	55
county	34	sorghum (90kg bags)	346
county	34	sorghum yield	6.3
county	35	sorghum	957
county	35	sorghum (90kg bags)	19100
county	35	sorghum yield	20.0
county	31	sorghum	57
county	31	sorghum (90kg bags)	285
county	31	sorghum yield	5.0
county	32	sorghum	1330
county	32	sorghum (90kg bags)	18038
county	32	sorghum yield	13.6
county	29	sorghum	181
county	29	sorghum (90kg bags)	3408
county	29	sorghum yield	18.8
county	33	sorghum	1437
county	33	sorghum (90kg bags)	12068
county	33	sorghum yield	8.4
county	25	sorghum	10
county	25	sorghum (90kg bags)	133
county	25	sorghum yield	13.3
county	26	sorghum	189
county	26	sorghum (90kg bags)	2397
county	26	sorghum yield	12.7
county	23	sorghum	1438
county	23	sorghum (90kg bags)	15486
county	23	sorghum yield	10.8
county	27	sorghum	1438
county	27	sorghum (90kg bags)	15486
county	27	sorghum yield	10.8
county	24	sorghum	560
county	24	sorghum (90kg bags)	5360
county	24	sorghum yield	9.6
county	39	sorghum	1565
county	39	sorghum (90kg bags)	17722
county	39	sorghum yield	11.3
county	40	sorghum	13109
county	40	sorghum (90kg bags)	193756
county	40	sorghum yield	14.8
county	37	sorghum	830
county	37	sorghum (90kg bags)	8602
county	37	sorghum yield	10.4
county	38	sorghum	358
county	38	sorghum (90kg bags)	4509
county	38	sorghum yield	12.6
country	KE	sorghum	213520
country	KE	sorghum (90kg bags)	1972810
country	KE	sorghum yield	9.2
county	22	sorghum	0
county	22	sorghum (90kg bags)	0
county	22	sorghum yield	0
county	22	millet	0
county	22	millet (90kg bags)	0
county	22	millet yield	0
county	20	millet	12
county	20	millet (90kg bags)	108
county	20	millet yield	9.0
county	21	millet	0
county	21	millet (90kg bags)	0
county	21	millet yield	0
county	18	millet	0
county	18	millet (90kg bags)	0
county	18	millet yield	0
county	19	millet	0
county	19	millet (90kg bags)	0
county	19	millet yield	0
county	3	millet	4
county	3	millet (90kg bags)	5
county	3	millet yield	1.4
county	2	millet	4
county	2	millet (90kg bags)	0
county	2	millet yield	0
county	5	millet	273
county	5	millet (90kg bags)	893
county	5	millet yield	3.3
county	6	millet	32
county	6	millet (90kg bags)	52
county	6	millet yield	1.6
county	4	millet	0
county	4	millet (90kg bags)	0
county	4	millet yield	0
county	14	millet	2799
county	14	millet (90kg bags)	26924
county	14	millet yield	9.6
county	15	millet	53735
county	15	millet (90kg bags)	582466
county	15	millet yield	10.8
county	16	millet	1853
county	16	millet (90kg bags)	35151
county	16	millet yield	19.0
county	17	millet	11322
county	17	millet (90kg bags)	35485
county	17	millet yield	3.1
county	12	millet	6853
county	12	millet (90kg bags)	40708
county	12	millet yield	5.9
county	13	millet	20778
county	13	millet (90kg bags)	139259
county	13	millet yield	6.7
county	7	millet	0
county	7	millet (90kg bags)	0
county	7	millet yield	0
county	8	millet	0
county	8	millet (90kg bags)	0
county	8	millet yield	0
county	43	millet	1785
county	43	millet (90kg bags)	33456
county	43	millet yield	18.7
county	45	millet	7357
county	45	millet (90kg bags)	215656
county	45	millet yield	29.3
county	42	millet	23
county	42	millet (90kg bags)	65
county	42	millet yield	2.8
county	44	millet	390
county	44	millet (90kg bags)	1269
county	44	millet yield	3.3
county	46	millet	8688
county	46	millet (90kg bags)	100844
county	46	millet yield	11.6
county	41	millet	179
county	41	millet (90kg bags)	896
county	41	millet yield	5.0
county	30	millet	2301
county	30	millet (90kg bags)	33727
county	30	millet yield	14.7
county	36	millet	992
county	36	millet (90kg bags)	13096
county	36	millet yield	13.2
county	28	millet	2407
county	28	millet (90kg bags)	20352
county	28	millet yield	8.5
county	34	millet	26
county	34	millet (90kg bags)	68
county	34	millet yield	2.6
county	35	millet	618
county	35	millet (90kg bags)	6871
county	35	millet yield	11.1
county	31	millet	0
county	31	millet (90kg bags)	0
county	31	millet yield	0
county	32	millet	3456
county	32	millet (90kg bags)	11974
county	32	millet yield	3.5
county	29	millet	172
county	29	millet (90kg bags)	1896
county	29	millet yield	11.1
county	33	millet	1443
county	33	millet (90kg bags)	14247
county	33	millet yield	9.9
county	25	millet	9
county	25	millet (90kg bags)	156
county	25	millet yield	17.3
county	26	millet	860
county	26	millet (90kg bags)	10011
county	26	millet yield	11.6
county	23	millet	0
county	23	millet (90kg bags)	0
county	23	millet yield	0
county	27	millet	284
county	27	millet (90kg bags)	2812
county	27	millet yield	9.9
county	24	millet	337
county	24	millet (90kg bags)	2685
county	24	millet yield	8.0
county	39	millet	4760
county	39	millet (90kg bags)	34933
county	39	millet yield	7.3
county	40	millet	4500
county	40	millet (90kg bags)	71444
county	40	millet yield	15.9
county	37	millet	534
county	37	millet (90kg bags)	4889
county	37	millet yield	9.2
county	38	millet	45
county	38	millet (90kg bags)	363
county	38	millet yield	8.1
country	KE	millet	138829
country	KE	millet (90kg bags)	1442761
country	KE	millet yield	10.4
county	1	millet	0
county	1	millet (90kg bags)	0
county	1	millet yield	0
county	9	millet	0
county	9	millet (90kg bags)	0
county	9	millet yield	0
county	10	millet	0
county	10	millet (90kg bags)	0
county	10	millet yield	0
county	11	millet	0
county	11	millet (90kg bags)	0
county	11	millet yield	0
county	47	millet	0
county	47	millet (90kg bags)	0
county	47	millet yield	0
county	47	beans	676
county	47	beans (90kg bags)	13700
county	47	beans yield	20.3
county	22	beans	13834
county	22	beans (90kg bags)	69696
county	22	beans yield	5.0
county	20	beans	24199
county	20	beans (90kg bags)	99032
county	20	beans yield	4.1
county	21	beans	43244
county	21	beans (90kg bags)	313894
county	21	beans yield	7.3
county	18	beans	4561
county	18	beans (90kg bags)	24544
county	18	beans yield	5.4
county	19	beans	43244
county	19	beans (90kg bags)	313894
county	19	beans yield	7.3
county	3	beans	34
county	3	beans (90kg bags)	54
county	3	beans yield	1.6
county	2	beans	284
county	2	beans (90kg bags)	3237
county	2	beans yield	11.4
county	5	beans	0
county	5	beans (90kg bags)	0
county	5	beans yield	0
county	1	beans	0
county	1	beans (90kg bags)	0
county	1	beans yield	0
county	6	beans	2361
county	6	beans (90kg bags)	6067
county	6	beans yield	2.6
county	4	beans	0
county	4	beans (90kg bags)	0
county	4	beans yield	0
county	14	beans	20330
county	14	beans (90kg bags)	181078
county	14	beans yield	8.9
county	11	beans	2267
county	11	beans (90kg bags)	433
county	11	beans yield	0.2
county	15	beans	32155
county	15	beans (90kg bags)	199389
county	15	beans yield	6.2
county	16	beans	64369
county	16	beans (90kg bags)	215300
county	16	beans yield	3.3
county	17	beans	37367
county	17	beans (90kg bags)	82095
county	17	beans yield	2.2
county	10	beans	627
county	10	beans (90kg bags)	9121
county	10	beans yield	14.5
county	12	beans	142009
county	12	beans (90kg bags)	467262
county	12	beans yield	3.3
county	13	beans	9436
county	13	beans (90kg bags)	93590
county	13	beans yield	9.9
county	43	beans	40583
county	43	beans (90kg bags)	327253
county	43	beans yield	8.1
county	45	beans	47842
county	45	beans (90kg bags)	421010
county	45	beans yield	8.8
county	42	beans	8095
county	42	beans (90kg bags)	73911
county	42	beans yield	9.1
county	44	beans	19698
county	44	beans (90kg bags)	104510
county	44	beans yield	5.3
county	46	beans	24615
county	46	beans (90kg bags)	202044
county	46	beans yield	8.2
county	41	beans	47915
county	41	beans (90kg bags)	348283
county	41	beans yield	7.3
county	30	beans	17788
county	30	beans (90kg bags)	168394
county	30	beans yield	9.5
county	36	beans	31857
county	36	beans (90kg bags)	238668
county	36	beans yield	7.5
county	28	beans	14894
county	28	beans (90kg bags)	155150
county	28	beans yield	10.4
county	34	beans	42550
county	34	beans (90kg bags)	210483
county	34	beans yield	4.9
county	35	beans	19804
county	35	beans (90kg bags)	169667
county	35	beans yield	8.6
county	31	beans	1659
county	31	beans (90kg bags)	16227
county	31	beans yield	9.8
county	32	beans	43946
county	32	beans (90kg bags)	232686
county	32	beans yield	5.3
county	29	beans	37964
county	29	beans (90kg bags)	343242
county	29	beans yield	9.0
county	33	beans	30346
county	33	beans (90kg bags)	48273
county	33	beans yield	1.6
county	25	beans	840
county	25	beans (90kg bags)	6270
county	25	beans yield	7.5
county	26	beans	13740
county	26	beans (90kg bags)	54867
county	26	beans yield	4.0
county	27	beans	15992
county	27	beans (90kg bags)	46023
county	27	beans yield	2.9
county	24	beans	7630
county	24	beans (90kg bags)	40307
county	24	beans yield	5.3
county	39	beans	57578
county	39	beans (90kg bags)	789089
county	39	beans yield	13.7
county	40	beans	19100
county	40	beans (90kg bags)	204644
county	40	beans yield	10.7
county	37	beans	48126
county	37	beans (90kg bags)	490039
county	37	beans yield	10.2
county	38	beans	18851
county	38	beans (90kg bags)	60933
county	38	beans yield	3.2
country	KE	beans	1052408
country	KE	beans (90kg bags)	6844357
country	KE	beans yield	6.5
county	7	beans	0
county	7	beans (90kg bags)	0
county	7	beans yield	0
county	8	beans	0
county	8	beans (90kg bags)	0
county	8	beans yield	0
county	9	beans	0
county	9	beans (90kg bags)	0
county	9	beans yield	0
county	23	beans	0
county	23	beans (90kg bags)	0
county	23	beans yield	0
county	47	cowpeas	33
county	47	cowpeas (90kg bags)	83
county	47	cowpeas yield	2.5
county	22	cowpeas	0
county	22	cowpeas (90kg bags)	0
county	22	cowpeas yield	0
county	20	cowpeas	361
county	20	cowpeas (90kg bags)	1486
county	20	cowpeas yield	4.1
county	21	cowpeas	819
county	21	cowpeas (90kg bags)	3716
county	21	cowpeas yield	4.5
county	18	cowpeas	0
county	18	cowpeas (90kg bags)	0
county	18	cowpeas yield	0
county	19	cowpeas	509
county	19	cowpeas (90kg bags)	3499
county	19	cowpeas yield	6.9
county	3	cowpeas	8929
county	3	cowpeas (90kg bags)	12780
county	3	cowpeas yield	1.4
county	2	cowpeas	4619
county	2	cowpeas (90kg bags)	18207
county	2	cowpeas yield	3.9
county	5	cowpeas	3620
county	5	cowpeas (90kg bags)	28608
county	5	cowpeas yield	7.9
county	1	cowpeas	297
county	1	cowpeas (90kg bags)	844
county	1	cowpeas yield	2.8
county	6	cowpeas	1351
county	6	cowpeas (90kg bags)	4882
county	6	cowpeas yield	3.6
county	4	cowpeas	1334
county	4	cowpeas (90kg bags)	11186
county	4	cowpeas yield	8.4
county	14	cowpeas	7231
county	14	cowpeas (90kg bags)	104490
county	14	cowpeas yield	14.5
county	11	cowpeas	70
county	11	cowpeas (90kg bags)	533
county	11	cowpeas yield	7.6
county	15	cowpeas	89161
county	15	cowpeas (90kg bags)	412540
county	15	cowpeas yield	4.6
county	16	cowpeas	35247
county	16	cowpeas (90kg bags)	160572
county	16	cowpeas yield	4.6
county	17	cowpeas	97103
county	17	cowpeas (90kg bags)	567704
county	17	cowpeas yield	5.8
county	10	cowpeas	8
county	10	cowpeas (90kg bags)	56
county	10	cowpeas yield	7.2
county	12	cowpeas	8990
county	12	cowpeas (90kg bags)	87617
county	12	cowpeas yield	9.7
county	13	cowpeas	16509
county	13	cowpeas (90kg bags)	81549
county	13	cowpeas yield	4.9
county	7	cowpeas	85
county	7	cowpeas (90kg bags)	589
county	7	cowpeas yield	6.9
county	9	cowpeas	1276
county	9	cowpeas (90kg bags)	627
county	9	cowpeas yield	0.5
county	8	cowpeas	219
county	8	cowpeas (90kg bags)	219
county	8	cowpeas yield	1.0
county	43	cowpeas	476
county	43	cowpeas (90kg bags)	2275
county	43	cowpeas yield	4.8
county	45	cowpeas	511
county	45	cowpeas (90kg bags)	10059
county	45	cowpeas yield	19.7
county	42	cowpeas	1462
county	42	cowpeas (90kg bags)	13184
county	42	cowpeas yield	9.0
county	44	cowpeas	334
county	44	cowpeas (90kg bags)	1633
county	44	cowpeas yield	4.9
county	46	cowpeas	0
county	46	cowpeas (90kg bags)	0
county	46	cowpeas yield	0
county	41	cowpeas	597
county	41	cowpeas (90kg bags)	4763
county	41	cowpeas yield	8.0
county	30	cowpeas	285
county	30	cowpeas (90kg bags)	2877
county	30	cowpeas yield	10.1
county	28	cowpeas	129
county	28	cowpeas (90kg bags)	1459
county	28	cowpeas yield	11.3
county	34	cowpeas	58
county	34	cowpeas (90kg bags)	1003
county	34	cowpeas yield	17.3
county	31	cowpeas	8
county	31	cowpeas (90kg bags)	72
county	31	cowpeas yield	9.0
county	32	cowpeas	59
county	32	cowpeas (90kg bags)	569
county	32	cowpeas yield	9.6
county	33	cowpeas	58
county	33	cowpeas (90kg bags)	571
county	33	cowpeas yield	9.8
county	25	cowpeas	11
county	25	cowpeas (90kg bags)	71
county	25	cowpeas yield	6.5
county	26	cowpeas	120
county	26	cowpeas (90kg bags)	491
county	26	cowpeas yield	4.1
country	KE	cowpeas	281877
country	KE	cowpeas (90kg bags)	1540813
country	KE	cowpeas yield	5.5
county	23	cowpeas	0
county	23	cowpeas (90kg bags)	0
county	23	cowpeas yield	0
county	24	cowpeas	0
county	24	cowpeas (90kg bags)	0
county	24	cowpeas yield	0
county	27	cowpeas	0
county	27	cowpeas (90kg bags)	0
county	27	cowpeas yield	0
county	29	cowpeas	0
county	29	cowpeas (90kg bags)	0
county	29	cowpeas yield	0
county	35	cowpeas	0
county	35	cowpeas (90kg bags)	0
county	35	cowpeas yield	0
county	36	cowpeas	0
county	36	cowpeas (90kg bags)	0
county	36	cowpeas yield	0
county	37	cowpeas	0
county	37	cowpeas (90kg bags)	0
county	37	cowpeas yield	0
county	38	cowpeas	0
county	38	cowpeas (90kg bags)	0
county	38	cowpeas yield	0
county	39	cowpeas	0
county	39	cowpeas (90kg bags)	0
county	39	cowpeas yield	0
county	40	cowpeas	0
county	40	cowpeas (90kg bags)	0
county	40	cowpeas yield	0
county	47	greengrams	3
county	47	greengrams (90kg bags)	14.4444
county	47	greengrams yield	4.81
county	22	greengrams	0
county	22	greengrams (90kg bags)	0
county	22	greengrams yield	0
county	20	greengrams	404.8
county	20	greengrams (90kg bags)	2094.56
county	20	greengrams yield	5.17
county	21	greengrams	313
county	21	greengrams (90kg bags)	1109.44
county	21	greengrams yield	3.54455
county	3	greengrams	3389
county	3	greengrams (90kg bags)	6714.15
county	3	greengrams yield	1.98116
county	2	greengrams	4080
county	2	greengrams (90kg bags)	36544.4
county	2	greengrams yield	8.95697
county	5	greengrams	3154
county	5	greengrams (90kg bags)	23751.1
county	5	greengrams yield	7.53047
county	1	greengrams	297
county	1	greengrams (90kg bags)	844
county	1	greengrams yield	2.84175
county	6	greengrams	2163.7
county	6	greengrams (90kg bags)	6753.25
county	6	greengrams yield	3.12116
county	4	greengrams	2175
county	4	greengrams (90kg bags)	11186
county	4	greengrams yield	5.14299
county	14	greengrams	7436
county	14	greengrams (90kg bags)	118161
county	14	greengrams yield	15.8904
county	11	greengrams	59.8
county	11	greengrams (90kg bags)	358.8
county	11	greengrams yield	6.0
county	15	greengrams	89487
county	15	greengrams (90kg bags)	387114
county	15	greengrams yield	4.32592
county	16	greengrams	12096.8
county	16	greengrams (90kg bags)	102156
county	16	greengrams yield	8.4449
county	17	greengrams	89444
county	17	greengrams (90kg bags)	400431
county	17	greengrams yield	4.47689
county	10	greengrams	7.2
county	10	greengrams (90kg bags)	52.2
county	10	greengrams yield	7.25
county	12	greengrams	7692
county	12	greengrams (90kg bags)	44634.3
county	12	greengrams yield	5.8027
county	13	greengrams	30584
county	13	greengrams (90kg bags)	151023
county	13	greengrams yield	4.93796
county	7	greengrams	105
county	7	greengrams (90kg bags)	588.889
county	7	greengrams yield	5.60847
county	9	greengrams	132
county	9	greengrams (90kg bags)	270.444
county	9	greengrams yield	2.04882
county	8	greengrams	120
county	8	greengrams (90kg bags)	120
county	8	greengrams yield	1.0
county	43	greengrams	762
county	43	greengrams (90kg bags)	14228.1
county	43	greengrams yield	18.672
county	45	greengrams	0
county	45	greengrams (90kg bags)	0
county	45	greengrams yield	0
county	42	greengrams	1423
county	42	greengrams (90kg bags)	13100
county	42	greengrams yield	9.2059
county	44	greengrams	131.85
county	44	greengrams (90kg bags)	1034.11
county	44	greengrams yield	7.84309
county	46	greengrams	0
county	46	greengrams (90kg bags)	0
county	46	greengrams yield	0
county	41	greengrams	833
county	41	greengrams (90kg bags)	4104.89
county	41	greengrams yield	4.92784
county	30	greengrams	551
county	30	greengrams (90kg bags)	5316.67
county	30	greengrams yield	9.64912
county	34	greengrams	35
county	34	greengrams (90kg bags)	177.778
county	34	greengrams yield	5.07937
county	28	greengrams	579
county	28	greengrams (90kg bags)	3540
county	28	greengrams yield	6.11399
county	31	greengrams	0
county	31	greengrams (90kg bags)	0
county	31	greengrams yield	0
county	33	greengrams	0
county	33	greengrams (90kg bags)	0
county	33	greengrams yield	0
county	25	greengrams	15
county	25	greengrams (90kg bags)	111.1
county	25	greengrams yield	7.4
county	23	greengrams	145
county	23	greengrams (90kg bags)	526
county	23	greengrams yield	3.6
county	24	greengrams	50
county	24	greengrams (90kg bags)	350
county	24	greengrams yield	7
county	39	greengrams	471
county	39	greengrams (90kg bags)	3706.67
county	39	greengrams yield	7.8
county	40	greengrams	1018
county	40	greengrams (90kg bags)	4988.89
county	40	greengrams yield	4.9
county	37	greengrams	8
county	37	greengrams (90kg bags)	166.667
county	37	greengrams yield	20.8
county	38	greengrams	2
county	38	greengrams (90kg bags)	22.2222
county	38	greengrams yield	11.1
country	KE	greengrams	259167
country	KE	greengrams (90kg bags)	1345294
country	KE	greengrams yield	5.19
county	18	greengrams	0
county	18	greengrams (90kg bags)	0
county	18	greengrams yield	0
county	19	greengrams	0
county	19	greengrams (90kg bags)	0
county	19	greengrams yield	0
county	26	greengrams	0
county	26	greengrams (90kg bags)	0
county	26	greengrams yield	0
county	27	greengrams	0
county	27	greengrams (90kg bags)	0
county	27	greengrams yield	0
county	29	greengrams	0
county	29	greengrams (90kg bags)	0
county	29	greengrams yield	0
county	32	greengrams	0
county	32	greengrams (90kg bags)	0
county	32	greengrams yield	0
county	35	greengrams	0
county	35	greengrams (90kg bags)	0
county	35	greengrams yield	0
county	36	greengrams	0
county	36	greengrams (90kg bags)	0
county	36	greengrams yield	0
county	47	sweetpotatoes	25
county	47	sweetpotatoes (Ton)	175
county	47	sweetpotatoes yield	7.0
county	22	sweetpotatoes	50
county	22	sweetpotatoes (Ton)	4619.2
county	22	sweetpotatoes yield	92.4
county	20	sweetpotatoes	833.5
county	20	sweetpotatoes (Ton)	9413
county	20	sweetpotatoes yield	11.3
county	21	sweetpotatoes	467
county	21	sweetpotatoes (Ton)	4035.85
county	21	sweetpotatoes yield	8.6
county	18	sweetpotatoes	21
county	18	sweetpotatoes (Ton)	245
county	18	sweetpotatoes yield	11.7
county	19	sweetpotatoes	467
county	19	sweetpotatoes (Ton)	4035.85
county	19	sweetpotatoes yield	8.6
county	3	sweetpotatoes	275
county	3	sweetpotatoes (Ton)	4125
county	3	sweetpotatoes yield	15.0
county	2	sweetpotatoes	802
county	2	sweetpotatoes (Ton)	650
county	2	sweetpotatoes yield	0.8
county	5	sweetpotatoes	25.2
county	5	sweetpotatoes (Ton)	481.6
county	5	sweetpotatoes yield	19.1
county	1	sweetpotatoes	7
county	1	sweetpotatoes (Ton)	21
county	1	sweetpotatoes yield	3.0
county	6	sweetpotatoes	77.1
county	6	sweetpotatoes (Ton)	802.9
county	6	sweetpotatoes yield	10.4
county	4	sweetpotatoes	87.5
county	4	sweetpotatoes (Ton)	1384.5
county	4	sweetpotatoes yield	15.8
county	14	sweetpotatoes	213
county	14	sweetpotatoes (Ton)	3138
county	14	sweetpotatoes yield	14.7
county	11	sweetpotatoes	42.3
county	11	sweetpotatoes (Ton)	99.875
county	11	sweetpotatoes yield	2.4
county	15	sweetpotatoes	484
county	15	sweetpotatoes (Ton)	2336
county	15	sweetpotatoes yield	4.8
county	16	sweetpotatoes	3562.24
county	16	sweetpotatoes (Ton)	42029.3
county	16	sweetpotatoes yield	11.8
county	17	sweetpotatoes	4802
county	17	sweetpotatoes (Ton)	38267.6
county	17	sweetpotatoes yield	8.0
county	10	sweetpotatoes	0
county	10	sweetpotatoes (Ton)	0
county	10	sweetpotatoes yield	0
county	12	sweetpotatoes	1230
county	12	sweetpotatoes (Ton)	8518
county	12	sweetpotatoes yield	6.9
county	13	sweetpotatoes	244
county	13	sweetpotatoes (Ton)	1769
county	13	sweetpotatoes yield	7.3
county	43	sweetpotatoes	7839
county	43	sweetpotatoes (Ton)	127725
county	43	sweetpotatoes yield	16.3
county	45	sweetpotatoes	1161
county	45	sweetpotatoes (Ton)	20317
county	45	sweetpotatoes yield	17.5
county	42	sweetpotatoes	1573
county	42	sweetpotatoes (Ton)	17390
county	42	sweetpotatoes yield	11.1
county	44	sweetpotatoes	10995
county	44	sweetpotatoes (Ton)	69641.5
county	44	sweetpotatoes yield	6.3
county	46	sweetpotatoes	440
county	46	sweetpotatoes (Ton)	4752
county	46	sweetpotatoes yield	10.8
county	41	sweetpotatoes	3476
county	41	sweetpotatoes (Ton)	46306
county	41	sweetpotatoes yield	13.3
county	30	sweetpotatoes	360.5
county	30	sweetpotatoes (Ton)	1146
county	30	sweetpotatoes yield	3.2
county	36	sweetpotatoes	2333
county	36	sweetpotatoes (Ton)	30971
county	36	sweetpotatoes yield	13.3
county	28	sweetpotatoes	58
county	28	sweetpotatoes (Ton)	652
county	28	sweetpotatoes yield	11.2
county	34	sweetpotatoes	3
county	34	sweetpotatoes (Ton)	42
county	34	sweetpotatoes yield	14.0
county	35	sweetpotatoes	735
county	35	sweetpotatoes (Ton)	1568
county	35	sweetpotatoes yield	2.1
county	31	sweetpotatoes	70
county	31	sweetpotatoes (Ton)	1052
county	31	sweetpotatoes yield	15.0
county	32	sweetpotatoes	217.4
county	32	sweetpotatoes (Ton)	1786.41
county	32	sweetpotatoes yield	8.2
county	29	sweetpotatoes	101.5
county	29	sweetpotatoes (Ton)	1678
county	29	sweetpotatoes yield	16.5
county	33	sweetpotatoes	2062.2
county	33	sweetpotatoes (Ton)	23214
county	33	sweetpotatoes yield	11.3
county	25	sweetpotatoes	0.5
county	25	sweetpotatoes (Ton)	2.5
county	25	sweetpotatoes yield	5.0
county	26	sweetpotatoes	225.5
county	26	sweetpotatoes (Ton)	3115
county	26	sweetpotatoes yield	13.8
county	27	sweetpotatoes	87.3
county	27	sweetpotatoes (Ton)	986
county	27	sweetpotatoes yield	11.3
county	24	sweetpotatoes	6
county	24	sweetpotatoes (Ton)	62
county	24	sweetpotatoes yield	10.3
county	23	sweetpotatoes	1.5
county	23	sweetpotatoes (Ton)	7.5
county	23	sweetpotatoes yield	5.0
county	39	sweetpotatoes	5499
county	39	sweetpotatoes (Ton)	133037
county	39	sweetpotatoes yield	24.2
county	40	sweetpotatoes	6395
county	40	sweetpotatoes (Ton)	119970
county	40	sweetpotatoes yield	18.8
county	37	sweetpotatoes	2998
county	37	sweetpotatoes (Ton)	24770
county	37	sweetpotatoes yield	8.3
county	38	sweetpotatoes	715
county	38	sweetpotatoes (Ton)	7305
county	38	sweetpotatoes yield	10.2
country	KE	sweetpotatoes	61067
country	KE	sweetpotatoes (Ton)	763643
country	KE	sweetpotatoes yield	12.5
county	7	sweetpotatoes	0
county	7	sweetpotatoes (Ton)	0
county	7	sweetpotatoes yield	0
county	8	sweetpotatoes	0
county	8	sweetpotatoes (Ton)	0
county	8	sweetpotatoes yield	0
county	9	sweetpotatoes	0
county	9	sweetpotatoes (Ton)	0
county	9	sweetpotatoes yield	0
county	47	cassava	18
county	47	cassava (Ton)	144
county	47	cassava yield	8.0
county	22	cassava	111
county	22	cassava (Ton)	1107
county	22	cassava yield	10.0
county	20	cassava	123
county	20	cassava (Ton)	2233
county	20	cassava yield	18.2
county	21	cassava	361
county	21	cassava (Ton)	4036
county	21	cassava yield	11.2
county	19	cassava	361
county	19	cassava (Ton)	4044
county	19	cassava yield	11.2
county	18	cassava	11
county	18	cassava (Ton)	110
county	18	cassava yield	10.0
county	3	cassava	5779
county	3	cassava (Ton)	207060
county	3	cassava yield	35.8
county	2	cassava	6475
county	2	cassava (Ton)	3300
county	2	cassava yield	0.5
county	5	cassava	1279
county	5	cassava (Ton)	31500
county	5	cassava yield	24.6
county	1	cassava	226
county	1	cassava (Ton)	1360
county	1	cassava yield	6.0
county	6	cassava	58
county	6	cassava (Ton)	795
county	6	cassava yield	13.6
county	4	cassava	189
county	4	cassava (Ton)	2694
county	4	cassava yield	14.3
county	14	cassava	210
county	14	cassava (Ton)	5245
county	14	cassava yield	25.0
county	11	cassava	0
county	11	cassava (Ton)	0
county	11	cassava yield	0
county	15	cassava	915
county	15	cassava (Ton)	11950
county	15	cassava yield	13.1
county	16	cassava	3216
county	16	cassava (Ton)	35313
county	16	cassava yield	11.0
county	17	cassava	4988
county	17	cassava (Ton)	40110
county	17	cassava yield	8.0
county	10	cassava	2
county	10	cassava (Ton)	5
county	10	cassava yield	2.5
county	12	cassava	731
county	12	cassava (Ton)	6358
county	12	cassava yield	8.7
county	13	cassava	462
county	13	cassava (Ton)	1951
county	13	cassava yield	4.2
county	43	cassava	4884
county	43	cassava (Ton)	76310
county	43	cassava yield	15.6
county	45	cassava	109
county	45	cassava (Ton)	1474
county	45	cassava yield	13.5
county	42	cassava	1106
county	42	cassava (Ton)	12205
county	42	cassava yield	11.0
county	44	cassava	6639
county	44	cassava (Ton)	10742
county	44	cassava yield	1.6
county	46	cassava	80
county	46	cassava (Ton)	2222
county	46	cassava yield	27.8
county	41	cassava	2987
county	41	cassava (Ton)	28700
county	41	cassava yield	9.6
county	30	cassava	118
county	30	cassava (Ton)	2297
county	30	cassava yield	19.4
county	36	cassava	23
county	36	cassava (Ton)	345
county	36	cassava yield	15.0
county	28	cassava	226
county	28	cassava (Ton)	5570
county	28	cassava yield	24.6
county	34	cassava	3
county	34	cassava (Ton)	26
county	34	cassava yield	8.7
county	35	cassava	0
county	35	cassava (Ton)	0
county	35	cassava yield	0
county	31	cassava	17
county	31	cassava (Ton)	102
county	31	cassava yield	6.0
county	32	cassava	111
county	32	cassava (Ton)	827
county	32	cassava yield	7.4
county	29	cassava	84
county	29	cassava (Ton)	2100
county	29	cassava yield	24.9
county	33	cassava	55
county	33	cassava (Ton)	279
county	33	cassava yield	5.0
county	25	cassava	3
county	25	cassava (Ton)	6
county	25	cassava yield	2.4
county	26	cassava	76
county	26	cassava (Ton)	1520
county	26	cassava yield	20.0
county	23	cassava	0
county	23	cassava (Ton)	0
county	23	cassava yield	0
county	27	cassava	11
county	27	cassava (Ton)	115
county	27	cassava yield	10.9
county	24	cassava	0
county	24	cassava (Ton)	0
county	24	cassava yield	0
county	39	cassava	1567
county	39	cassava (Ton)	28267
county	39	cassava yield	18.0
county	40	cassava	19580
county	40	cassava (Ton)	321835
county	40	cassava yield	16.4
county	37	cassava	341
county	37	cassava (Ton)	1938
county	37	cassava yield	5.7
county	38	cassava	191
county	38	cassava (Ton)	2267
county	38	cassava yield	11.9
country	KE	cassava	63725
country	KE	cassava (Ton)	858461
country	KE	cassava yield	13.5
county	7	cassava	0
county	7	cassava (Ton)	0
county	7	cassava yield	0
county	8	cassava	0
county	8	cassava (Ton)	0
county	8	cassava yield	0
county	9	cassava	0
county	9	cassava (Ton)	0
county	9	cassava yield	0
county	30	irishpotatoes	2013
county	30	irishpotatoes (Ton)	32933.8
county	30	irishpotatoes yield	16.4
county	36	irishpotatoes	0
county	36	irishpotatoes (Ton)	0
county	36	irishpotatoes yield	0.0
county	28	irishpotatoes	11637
county	28	irishpotatoes (Ton)	196305
county	28	irishpotatoes yield	16.9
county	34	irishpotatoes	1091
county	34	irishpotatoes (Ton)	16726.25
county	34	irishpotatoes yield	15.3
county	31	irishpotatoes	484
county	31	irishpotatoes (Ton)	5680
county	31	irishpotatoes yield	11.7
county	32	irishpotatoes	34744.3
county	32	irishpotatoes (Ton)	361027.4
county	32	irishpotatoes yield	10.4
county	29	irishpotatoes	384.3
county	29	irishpotatoes (Ton)	5820
county	29	irishpotatoes yield	15.1
county	33	irishpotatoes	10173
county	33	irishpotatoes (Ton)	82402.33
county	33	irishpotatoes yield	8.1
county	26	irishpotatoes	87
county	26	irishpotatoes (Ton)	1532.5
county	26	irishpotatoes yield	17.6
county	27	irishpotatoes	1132
county	27	irishpotatoes (Ton)	156230
county	27	irishpotatoes yield	138.0
county	45	irishpotatoes	160
county	45	irishpotatoes (Ton)	2675
county	45	irishpotatoes yield	16.7
county	43	irishpotatoes	2697
county	43	irishpotatoes (Ton)	32655
county	43	irishpotatoes yield	12.1
county	46	irishpotatoes	41
county	46	irishpotatoes (Ton)	245.5
county	46	irishpotatoes yield	6.0
county	47	irishpotatoes	94
county	47	irishpotatoes (Ton)	940
county	47	irishpotatoes yield	10.0
county	18	irishpotatoes	22270
county	18	irishpotatoes (Ton)	293410
county	18	irishpotatoes yield	13.2
county	20	irishpotatoes	839
county	20	irishpotatoes (Ton)	12442
county	20	irishpotatoes yield	14.8
county	22	irishpotatoes	15483.32
county	22	irishpotatoes (Ton)	99313.616
county	22	irishpotatoes yield	6.4
county	21	irishpotatoes	7294
county	21	irishpotatoes (Ton)	27765.3
county	21	irishpotatoes yield	3.8
county	19	irishpotatoes	7294
county	19	irishpotatoes (Ton)	27765.3
county	19	irishpotatoes yield	3.8
county	14	irishpotatoes	195
county	14	irishpotatoes (Ton)	4394
county	14	irishpotatoes yield	22.5
county	16	irishpotatoes	10
county	16	irishpotatoes (Ton)	6
county	16	irishpotatoes yield	0.6
county	17	irishpotatoes	137
county	17	irishpotatoes (Ton)	1035
county	17	irishpotatoes yield	7.6
county	12	irishpotatoes	14916
county	12	irishpotatoes (Ton)	157503.5
county	12	irishpotatoes yield	10.6
county	13	irishpotatoes	42
county	13	irishpotatoes (Ton)	365
county	13	irishpotatoes yield	8.7
county	39	irishpotatoes	1396
county	39	irishpotatoes (Ton)	56950
county	39	irishpotatoes yield	40.8
county	37	irishpotatoes	16
county	37	irishpotatoes (Ton)	105
county	37	irishpotatoes yield	6.6
country	KE	irishpotatoes	134630
country	KE	irishpotatoes (Ton)	1576227
country	KE	irishpotatoes yield	11.7
county	1	irishpotatoes	0
county	1	irishpotatoes (Ton)	0
county	1	irishpotatoes yield	0
county	2	irishpotatoes	0
county	2	irishpotatoes (Ton)	0
county	2	irishpotatoes yield	0
county	3	irishpotatoes	0
county	3	irishpotatoes (Ton)	0
county	3	irishpotatoes yield	0
county	4	irishpotatoes	0
county	4	irishpotatoes (Ton)	0
county	4	irishpotatoes yield	0
county	5	irishpotatoes	0
county	5	irishpotatoes (Ton)	0
county	5	irishpotatoes yield	0
county	6	irishpotatoes	0
county	6	irishpotatoes (Ton)	0
county	6	irishpotatoes yield	0
county	7	irishpotatoes	0
county	7	irishpotatoes (Ton)	0
county	7	irishpotatoes yield	0
county	8	irishpotatoes	0
county	8	irishpotatoes (Ton)	0
county	8	irishpotatoes yield	0
county	9	irishpotatoes	0
county	9	irishpotatoes (Ton)	0
county	9	irishpotatoes yield	0
county	10	irishpotatoes	0
county	10	irishpotatoes (Ton)	0
county	10	irishpotatoes yield	0
county	11	irishpotatoes	0
county	11	irishpotatoes (Ton)	0
county	11	irishpotatoes yield	0
county	15	irishpotatoes	0
county	15	irishpotatoes (Ton)	0
county	15	irishpotatoes yield	0
county	23	irishpotatoes	0
county	23	irishpotatoes (Ton)	0
county	23	irishpotatoes yield	0
county	24	irishpotatoes	0
county	24	irishpotatoes (Ton)	0
county	24	irishpotatoes yield	0
county	25	irishpotatoes	0
county	25	irishpotatoes (Ton)	0
county	25	irishpotatoes yield	0
county	35	irishpotatoes	0
county	35	irishpotatoes (Ton)	0
county	35	irishpotatoes yield	0
county	38	irishpotatoes	0
county	38	irishpotatoes (Ton)	0
county	38	irishpotatoes yield	0
county	40	irishpotatoes	0
county	40	irishpotatoes (Ton)	0
county	40	irishpotatoes yield	0
county	41	irishpotatoes	0
county	41	irishpotatoes (Ton)	0
county	41	irishpotatoes yield	0
county	42	irishpotatoes	0
county	42	irishpotatoes (Ton)	0
county	42	irishpotatoes yield	0
county	44	irishpotatoes	0
county	44	irishpotatoes (Ton)	0
county	44	irishpotatoes yield	0
county	20	cocoyam	7
county	20	cocoyam (Ton)	23
county	20	cocoyam yield	3.3
county	21	cocoyam	212.5
county	21	cocoyam (Ton)	879.2
county	21	cocoyam yield	4.1
county	19	cocoyam	212.5
county	19	cocoyam (Ton)	879.2
county	19	cocoyam yield	4.1
county	43	cocoyam	1531
county	43	cocoyam (Ton)	22550
county	43	cocoyam yield	14.7
county	13	cocoyam	92
county	13	cocoyam (Ton)	984
county	13	cocoyam yield	10.7
county	14	cocoyam	81
county	14	cocoyam (Ton)	1766
county	14	cocoyam yield	21.8
country	KE	cocoyam	2155
country	KE	cocoyam (Ton)	27619
country	KE	cocoyam yield	12.8
county	1	cocoyam	0
county	1	cocoyam (Ton)	0
county	1	cocoyam yield	0
county	2	cocoyam	0
county	2	cocoyam (Ton)	0
county	2	cocoyam yield	0
county	3	cocoyam	0
county	3	cocoyam (Ton)	0
county	3	cocoyam yield	0
county	4	cocoyam	0
county	4	cocoyam (Ton)	0
county	4	cocoyam yield	0
county	5	cocoyam	0
county	5	cocoyam (Ton)	0
county	5	cocoyam yield	0
county	6	cocoyam	0
county	6	cocoyam (Ton)	0
county	6	cocoyam yield	0
county	7	cocoyam	0
county	7	cocoyam (Ton)	0
county	7	cocoyam yield	0
county	8	cocoyam	0
county	8	cocoyam (Ton)	0
county	8	cocoyam yield	0
county	9	cocoyam	0
county	9	cocoyam (Ton)	0
county	9	cocoyam yield	0
county	10	cocoyam	0
county	10	cocoyam (Ton)	0
county	10	cocoyam yield	0
county	11	cocoyam	0
county	11	cocoyam (Ton)	0
county	11	cocoyam yield	0
county	12	cocoyam	0
county	12	cocoyam (Ton)	0
county	12	cocoyam yield	0
county	15	cocoyam	0
county	15	cocoyam (Ton)	0
county	15	cocoyam yield	0
county	16	cocoyam	0
county	16	cocoyam (Ton)	0
county	16	cocoyam yield	0
county	17	cocoyam	0
county	17	cocoyam (Ton)	0
county	17	cocoyam yield	0
county	18	cocoyam	0
county	18	cocoyam (Ton)	0
county	18	cocoyam yield	0
county	22	cocoyam	0
county	22	cocoyam (Ton)	0
county	22	cocoyam yield	0
county	23	cocoyam	0
county	23	cocoyam (Ton)	0
county	23	cocoyam yield	0
county	24	cocoyam	0
county	24	cocoyam (Ton)	0
county	24	cocoyam yield	0
county	25	cocoyam	0
county	25	cocoyam (Ton)	0
county	25	cocoyam yield	0
county	26	cocoyam	0
county	26	cocoyam (Ton)	0
county	26	cocoyam yield	0
county	27	cocoyam	0
county	27	cocoyam (Ton)	0
county	27	cocoyam yield	0
county	28	cocoyam	0
county	28	cocoyam (Ton)	0
county	28	cocoyam yield	0
county	29	cocoyam	0
county	29	cocoyam (Ton)	0
county	29	cocoyam yield	0
county	30	cocoyam	0
county	30	cocoyam (Ton)	0
county	30	cocoyam yield	0
county	31	cocoyam	0
county	31	cocoyam (Ton)	0
county	31	cocoyam yield	0
county	32	cocoyam	0
county	32	cocoyam (Ton)	0
county	32	cocoyam yield	0
county	33	cocoyam	0
county	33	cocoyam (Ton)	0
county	33	cocoyam yield	0
county	34	cocoyam	0
county	34	cocoyam (Ton)	0
county	34	cocoyam yield	0
county	35	cocoyam	0
county	35	cocoyam (Ton)	0
county	35	cocoyam yield	0
county	36	cocoyam	0
county	36	cocoyam (Ton)	0
county	36	cocoyam yield	0
county	37	cocoyam	0
county	37	cocoyam (Ton)	0
county	37	cocoyam yield	0
county	38	cocoyam	0
county	38	cocoyam (Ton)	0
county	38	cocoyam yield	0
county	39	cocoyam	0
county	39	cocoyam (Ton)	0
county	39	cocoyam yield	0
county	40	cocoyam	0
county	40	cocoyam (Ton)	0
county	40	cocoyam yield	0
county	41	cocoyam	0
county	41	cocoyam (Ton)	0
county	41	cocoyam yield	0
county	42	cocoyam	0
county	42	cocoyam (Ton)	0
county	42	cocoyam yield	0
county	44	cocoyam	0
county	44	cocoyam (Ton)	0
county	44	cocoyam yield	0
county	45	cocoyam	0
county	45	cocoyam (Ton)	0
county	45	cocoyam yield	0
county	46	cocoyam	0
county	46	cocoyam (Ton)	0
county	46	cocoyam yield	0
county	47	cocoyam	0
county	47	cocoyam (Ton)	0
county	47	cocoyam yield	0
\.
--
-- Name: crop_production_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY crop_production
    ADD CONSTRAINT crop_production_pkey PRIMARY KEY (geo_level, geo_code, "crop_production");


--
-- PostgreSQL database dump complete
--

