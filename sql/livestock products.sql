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

ALTER TABLE IF EXISTS ONLY public.products DROP CONSTRAINT IF EXISTS products_pkey;
DROP TABLE IF EXISTS public.products;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: products; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE products (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "products" character varying(128) NOT NULL,
    total float NOT NULL
);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: -
--

COPY products (geo_level, geo_code, "products", total) FROM stdin;
county	26	milk	106000000
county	26	beef	1780000
county	26	wool	0
county	26	chevon	100000
county	26	mutton	400000
county	26	pork	3500
county	26	rabbit meat	1900
county	26	poultry meat	98000
county	26	camel meat	0
county	26	honey	90000
county	26	wax	0
county	26	eggs	16686227
county	26	hides	0
county	26	skin	0
county	24	milk	8596800
county	24	beef	5475000
county	24	wool	88200
county	24	chevon	243000
county	24	mutton	207900
county	24	pork	576
county	24	rabbit meat	912
county	24	poultry meat	128232
county	24	camel meat	7728
county	24	honey	162750
county	24	wax	16275
county	24	eggs	2878000
county	24	hides	66658
county	24	skin	17160
county	31	milk	40920000
county	31	beef	3115333
county	31	wool	7000
county	31	chevon	666000
county	31	mutton	702000
county	31	pork	76740
county	31	rabbit meat	9158
county	31	poultry meat	299124
county	31	camel meat	162000
county	31	honey	261298
county	31	wax	87099
county	31	eggs	448686
county	31	hides	0
county	31	skin	0
county	34	milk	16166696
county	34	beef	2450673
county	34	wool	0
county	34	chevon	439730
county	34	mutton	327877
county	34	pork	34548
county	34	rabbit meat	9300
county	34	poultry meat	1003583
county	34	camel meat	2363
county	34	honey	31543
county	34	wax	702
county	34	eggs	65656
county	34	hides	0
county	34	skin	0
county	15	milk	17804699
county	15	beef	5804401
county	15	wool	0
county	15	chevon	2448869
county	15	mutton	132356
county	15	pork	21269
county	15	rabbit meat	768
county	15	poultry meat	4450742
county	15	camel meat	0
county	15	honey	867714
county	15	wax	114845
county	15	eggs	513432
county	15	hides	6870
county	15	skin	239661
county	16	milk	50208830
county	16	beef	8122677
county	16	wool	0
county	16	chevon	1078240
county	16	mutton	268700
county	16	pork	379000
county	16	rabbit meat	28200
county	16	poultry meat	1774690
county	16	camel meat	0
county	16	honey	170500
county	16	wax	303990
county	16	eggs	8210300
county	16	hides	99050
county	16	skin	10540
county	17	milk	32735410
county	17	beef	2395712
county	17	wool	0
county	17	chevon	316304
county	17	mutton	28512
county	17	pork	3480
county	17	rabbit meat	3430
county	17	poultry meat	315548
county	17	camel meat	1250
county	17	honey	167056
county	17	wax	16700
county	17	eggs	424288
county	17	hides	14432
county	17	skin	44184
county	7	milk	13755755
county	7	beef	2565244
county	7	wool	0
county	7	chevon	1083880
county	7	mutton	141232
county	7	pork	0
county	7	rabbit meat	0
county	7	poultry meat	127830
county	7	camel meat	4903300
county	7	honey	9130
county	7	wax	10
county	7	eggs	565145
county	7	hides	0
county	7	skin	0
county	5	milk	1850000
county	5	beef	31000
county	5	wool	0
county	5	chevon	83500
county	5	mutton	122100
county	5	pork	0
county	5	rabbit meat	210
county	5	poultry meat	7700
county	5	camel meat	0
county	5	honey	26500
county	5	wax	2000
county	5	eggs	21790
county	5	hides	0
county	5	skin	0
county	4	milk	57973122
county	4	beef	569750
county	4	wool	0
county	4	chevon	382749
county	4	mutton	150788
county	4	pork	0
county	4	rabbit meat	748
county	4	poultry meat	35560
county	4	camel meat	159800
county	4	honey	25188
county	4	wax	2625
county	4	eggs	418664
county	4	hides	0
county	4	skin	0
county	8	milk	83330262
county	8	beef	487382
county	8	wool	0
county	8	chevon	1537620
county	8	mutton	1317942
county	8	pork	0
county	8	rabbit meat	0
county	8	poultry meat	38449
county	8	camel meat	1988798
county	8	honey	3437
county	8	wax	96
county	8	eggs	2947076
county	8	hides	0
county	8	skin	0
county	1	milk	1195059
county	1	beef	229400
county	1	wool	0
county	1	chevon	2200
county	1	mutton	2000
county	1	pork	3400
county	1	rabbit meat	360
county	1	poultry meat	545255
county	1	camel meat	0
county	1	honey	470
county	1	wax	15
county	1	eggs	2612245
county	1	hides	2294
county	1	skin	3800
county	6	milk	17230432
county	6	beef	1075000
county	6	wool	0
county	6	chevon	159000
county	6	mutton	31100
county	6	pork	6790
county	6	rabbit meat	714
county	6	poultry meat	251906
county	6	camel meat	4305
county	6	honey	21209
county	6	wax	1935
county	6	eggs	261167
county	6	hides	0
county	6	skin	0
county	2	milk	3142700
county	2	beef	2009100
county	2	wool	0
county	2	chevon	230628
county	2	mutton	60868
county	2	pork	2000
county	2	rabbit meat	310
county	2	poultry meat	207471
county	2	camel meat	1500
county	2	honey	996
county	2	wax	304
county	2	eggs	70204
county	2	hides	96138
county	2	skin	71246
county	3	milk	44969242
county	3	beef	2196830
county	3	wool	0
county	3	chevon	731020
county	3	mutton	82136
county	3	pork	280
county	3	rabbit meat	120
county	3	poultry meat	228036
county	3	camel meat	200
county	3	honey	36816
county	3	wax	717
county	3	eggs	1174909
county	3	hides	0
county	3	skin	0
county	21	milk	167609665
county	21	beef	2692260
county	21	wool	0
county	21	chevon	168420
county	21	mutton	33804
county	21	pork	34020
county	21	rabbit meat	0
county	21	poultry meat	1617622
county	21	camel meat	0
county	21	honey	93709
county	21	wax	9323
county	21	eggs	1952706
county	21	hides	0
county	21	skin	0
county	14	milk	34859039
county	14	beef	979500
county	14	wool	0
county	14	chevon	263404
county	14	mutton	76176
county	14	pork	146223
county	14	rabbit meat	2200
county	14	poultry meat	209707
county	14	camel meat	0
county	14	honey	458342
county	14	wax	17773
county	14	eggs	17685840
county	14	hides	0
county	14	skin	0
county	20	milk	77122270
county	20	beef	1070100
county	20	wool	0
county	20	chevon	65210
county	20	mutton	9540
county	20	pork	24820
county	20	rabbit meat	13020
county	20	poultry meat	2684000
county	20	camel meat	0
county	20	honey	29100
county	20	wax	0
county	20	eggs	676084
county	20	hides	0
county	20	skin	0
county	19	milk	175747872
county	19	beef	2599010
county	19	wool	0
county	19	chevon	395410
county	19	mutton	714607
county	19	pork	265575
county	19	rabbit meat	0
county	19	poultry meat	250471
county	19	camel meat	0
county	19	honey	17220
county	19	wax	0
county	19	eggs	9345349
county	19	hides	41889
county	19	skin	14409
county	27	milk	196083090
county	27	beef	486975
county	27	wool	0
county	27	chevon	17096
county	27	mutton	49849
county	27	pork	53506
county	27	rabbit meat	3238
county	27	poultry meat	14071
county	27	camel meat	0
county	27	honey	187757
county	27	wax	15864
county	27	eggs	5390201
county	27	hides	89280
county	27	skin	38810
county	13	milk	34246625
county	13	beef	819005
county	13	wool	0
county	13	chevon	113755
county	13	mutton	93117
county	13	pork	16510
county	13	rabbit meat	25790
county	13	poultry meat	268994
county	13	camel meat	0
county	13	honey	1382029
county	13	wax	0
county	13	eggs	589525
county	13	hides	29494
county	13	skin	14709
county	12	milk	120200000
county	12	beef	4000000
county	12	wool	19800
county	12	chevon	1425000
county	12	mutton	681000
county	12	pork	83500
county	12	rabbit meat	6200
county	12	poultry meat	103700
county	12	camel meat	0
county	12	honey	191600
county	12	wax	0
county	12	eggs	985000
county	12	hides	0
county	12	skin	0
county	11	milk	3811400
county	11	beef	540000
county	11	wool	0
county	11	chevon	214000
county	11	mutton	233000
county	11	pork	0
county	11	rabbit meat	0
county	11	poultry meat	20000
county	11	camel meat	0
county	11	honey	32000
county	11	wax	0
county	11	eggs	900000
county	11	hides	2220
county	11	skin	36
county	10	milk	4131020
county	10	beef	7036506
county	10	wool	0
county	10	chevon	5752693
county	10	mutton	4395645
county	10	pork	0
county	10	rabbit meat	0
county	10	poultry meat	26497
county	10	camel meat	3415267
county	10	honey	34700
county	10	wax	60
county	10	eggs	773886
county	10	hides	61216
county	10	skin	9247
county	33	milk	16854300
county	33	beef	2401990
county	33	wool	649020
county	33	chevon	835785
county	33	mutton	2289848
county	33	pork	40
county	33	rabbit meat	1635
county	33	poultry meat	1395900
county	33	camel meat	0
county	33	honey	231651
county	33	wax	9100
county	33	eggs	1074626
county	33	hides	58010
county	33	skin	5628
county	36	milk	72488907
county	36	beef	1292940
county	36	wool	0
county	36	chevon	32275
county	36	mutton	30646
county	36	pork	0
county	36	rabbit meat	2238
county	36	poultry meat	375755
county	36	camel meat	0
county	36	honey	95447
county	36	wax	14230
county	36	eggs	2049084
county	36	hides	0
county	36	skin	0
county	46	milk	9810088
county	46	beef	447000
county	46	wool	0
county	46	chevon	267820
county	46	mutton	36850
county	46	pork	152120
county	46	rabbit meat	41604
county	46	poultry meat	518940
county	46	camel meat	0
county	46	honey	289555
county	46	wax	20100
county	46	eggs	8609652
county	46	hides	19972
county	46	skin	10511
county	45	milk	182819846
county	45	beef	1674016
county	45	wool	0
county	45	chevon	426434
county	45	mutton	64636
county	45	pork	5191
county	45	rabbit meat	0
county	45	poultry meat	1648569
county	45	camel meat	0
county	45	honey	66084
county	45	wax	21790
county	45	eggs	1682380
county	45	hides	45972
county	45	skin	18114
county	42	milk	24730000
county	42	beef	2768100
county	42	wool	0
county	42	chevon	12603000
county	42	mutton	13241000
county	42	pork	19579000
county	42	rabbit meat	189
county	42	poultry meat	33354000
county	42	camel meat	0
county	42	honey	34673
county	42	wax	2809
county	42	eggs	723932
county	42	hides	0
county	42	skin	0
county	44	milk	43574569
county	44	beef	6536100
county	44	wool	0
county	44	chevon	815900
county	44	mutton	1331500
county	44	pork	96300
county	44	rabbit meat	0
county	44	poultry meat	1728080
county	44	camel meat	0
county	44	honey	67174
county	44	wax	11493
county	44	eggs	2548005
county	44	hides	76716
county	44	skin	74720
county	43	milk	38051807
county	43	beef	4655420
county	43	wool	0
county	43	chevon	893580
county	43	mutton	2455510
county	43	pork	37114
county	43	rabbit meat	10440
county	43	poultry meat	924146
county	43	camel meat	0
county	43	honey	133168
county	43	wax	128
county	43	eggs	573387
county	43	hides	0
county	43	skin	0
county	25	milk	7124000
county	25	beef	270337
county	25	wool	0
county	25	chevon	141300
county	25	mutton	75990
county	25	pork	0
county	25	rabbit meat	0
county	25	poultry meat	6330
county	25	camel meat	306800
county	25	honey	159875
county	25	wax	11600
county	25	eggs	19090
county	25	hides	161600
county	25	skin	12790
county	18	milk	225827586
county	18	beef	1797750
county	18	wool	164377
county	18	chevon	13102000
county	18	mutton	37930300
county	18	pork	16303000
county	18	rabbit meat	10000
county	18	poultry meat	18740900
county	18	camel meat	0
county	18	honey	11449500
county	18	wax	0
county	18	eggs	31829900
county	18	hides	32299
county	18	skin	55480
county	22	milk	334000288
county	22	beef	2206854
county	22	wool	24820
county	22	chevon	15828700
county	22	mutton	19798400
county	22	pork	2340084
county	22	rabbit meat	107770
county	22	poultry meat	2731238
county	22	camel meat	0
county	22	honey	76653
county	22	wax	3409
county	22	eggs	10056507
county	22	hides	35084
county	22	skin	35966
county	41	milk	24308478
county	41	beef	2688107
county	41	wool	0
county	41	chevon	639733
county	41	mutton	312527
county	41	pork	132532
county	41	rabbit meat	60469
county	41	poultry meat	1609446
county	41	camel meat	0
county	41	honey	436550
county	41	wax	8108
county	41	eggs	630495
county	41	hides	0
county	41	skin	0
county	39	milk	225855832
county	39	beef	3903144
county	39	wool	0
county	39	chevon	32943
county	39	mutton	59569
county	39	pork	31210
county	39	rabbit meat	0
county	39	poultry meat	725696
county	39	camel meat	0
county	39	honey	184385
county	39	wax	7510
county	39	eggs	4398544
county	39	hides	24357
county	39	skin	134163
county	37	milk	101984643
county	37	beef	5892220
county	37	wool	0
county	37	chevon	115059
county	37	mutton	259528
county	37	pork	494885
county	37	rabbit meat	0
county	37	poultry meat	362565
county	37	camel meat	0
county	37	honey	112800
county	37	wax	3230
county	37	eggs	1399270
county	37	hides	0
county	37	skin	63731
county	38	milk	27060808
county	38	beef	35400
county	38	wool	0
county	38	chevon	34178
county	38	mutton	6840
county	38	pork	32220
county	38	rabbit meat	4220
county	38	poultry meat	14873
county	38	camel meat	0
county	38	honey	66029
county	38	wax	1645
county	38	eggs	620774
county	38	hides	5608
county	38	skin	30784
county	29	milk	142375874
county	29	beef	839250
county	29	wool	0
county	29	chevon	25176
county	29	mutton	117470
county	29	pork	0
county	29	rabbit meat	0
county	29	poultry meat	0
county	29	camel meat	0
county	29	honey	189142
county	29	wax	1902
county	29	eggs	6962414
county	29	hides	14894
county	29	skin	6145
county	30	milk	24454886
county	30	beef	1823701
county	30	wool	480
county	30	chevon	1073087
county	30	mutton	250628
county	30	pork	4700
county	30	rabbit meat	0
county	30	poultry meat	452613
county	30	camel meat	27300
county	30	honey	567529
county	30	wax	820
county	30	eggs	997670
county	30	hides	0
county	30	skin	0
county	32	milk	296398663
county	32	beef	3355168
county	32	wool	82822
county	32	chevon	116422
county	32	mutton	249212
county	32	pork	21170
county	32	rabbit meat	0
county	32	poultry meat	0
county	32	camel meat	0
county	32	honey	313158
county	32	wax	18330
county	32	eggs	5144499
county	32	hides	0
county	32	skin	0
county	35	milk	155000000
county	35	beef	1711784
county	35	wool	0
county	35	chevon	128885
county	35	mutton	120995
county	35	pork	5015
county	35	rabbit meat	0
county	35	poultry meat	0
county	35	camel meat	0
county	35	honey	61057
county	35	wax	730
county	35	eggs	1253256
county	35	hides	0
county	35	skin	0
county	28	milk	46512470
county	28	beef	532850
county	28	wool	224715
county	28	chevon	201457
county	28	mutton	214952
county	28	pork	100
county	28	rabbit meat	0
county	28	poultry meat	26919
county	28	camel meat	0
county	28	honey	186775
county	28	wax	3100
county	28	eggs	8600000
county	28	hides	0
county	28	skin	0
county	47	milk	38762174
county	47	beef	2421500
county	47	wool	0
county	47	chevon	382060
county	47	mutton	1286500
county	47	pork	1423900
county	47	rabbit meat	0
county	47	poultry meat	909960
county	47	camel meat	0
county	47	honey	53921
county	47	wax	5842
county	47	eggs	1626006
county	47	hides	139888
county	47	skin	7698
county	23	milk	52601269
county	23	beef	313200
county	23	wool	0
county	23	chevon	1073262
county	23	mutton	456800
county	23	pork	3000
county	23	rabbit meat	0
county	23	poultry meat	912
county	23	camel meat	240000
county	23	honey	103134
county	23	wax	0
county	23	eggs	244080
county	23	hides	264208
county	23	skin	4004
county	9	milk	15769200
county	9	beef	717600
county	9	wool	0
county	9	chevon	1251770
county	9	mutton	517645
county	9	pork	0
county	9	rabbit meat	0
county	9	poultry meat	17440
county	9	camel meat	1076840
county	9	honey	5517
county	9	wax	81
county	9	eggs	155000
county	9	hides	0
county	9	skin	0
county	40	milk	13813000
county	40	beef	6635000
county	40	wool	0
county	40	chevon	252000
county	40	mutton	220000
county	40	pork	987000
county	40	rabbit meat	3300
county	40	poultry meat	791184
county	40	camel meat	0
county	40	honey	350000
county	40	wax	0
county	40	eggs	4388990
county	40	hides	0
county	40	skin	0
country	KE	milk	3429868676
country	KE	beef	113450289
country	KE	wool	1261234
country	KE	chevon	68190554
country	KE	mutton	91589595
country	KE	pork	42804318
country	KE	rabbit meat	348443
country	KE	poultry meat	81042653
country	KE	camel meat	12297451
country	KE	honey	19534840
country	KE	wax	736291
country	KE	eggs	171183941
country	KE	hides	1388149
country	KE	skin	923536
\.
--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace:
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (geo_level, geo_code, "products");


--
-- PostgreSQL database dump complete
--


