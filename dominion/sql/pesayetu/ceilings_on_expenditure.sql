--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = pesayetu, public, pg_catalog;

ALTER TABLE IF EXISTS ONLY pesayetu.expenditure_year DROP CONSTRAINT IF EXISTS pk_expenditure_year;
DROP TABLE IF EXISTS pesayetu.expenditure_year;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: expenditure_year; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.expenditure_year (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    expenditure character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: expenditure_year; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.expenditure_year (geo_level, geo_code, geo_version, expenditure, year, total) FROM stdin;
county	30	2009	County Assembly	2016/2017	593775560
county	30	2009	County Assembly	2015/2016	532029481
county	30	2009	County Executive	2016/2017	445615976
county	30	2009	County Executive	2015/2016	440835009
county	36	2009	County Assembly	2016/2017	519252421
county	36	2009	County Assembly	2015/2016	489368979
county	36	2009	County Executive	2016/2017	425340578
county	36	2009	County Executive	2015/2016	431511892
county	39	2009	County Assembly	2016/2017	757493453
county	39	2009	County Assembly	2015/2016	677330464
county	39	2009	County Executive	2016/2017	506442170
county	39	2009	County Executive	2015/2016	468804360
county	40	2009	County Assembly	2016/2017	633726033
county	40	2009	County Assembly	2015/2016	572044404
county	40	2009	County Executive	2016/2017	465891374
county	40	2009	County Executive	2015/2016	450158126
county	28	2009	County Assembly	2016/2017	467089372
county	28	2009	County Assembly	2015/2016	425602732
county	28	2009	County Executive	2016/2017	405065180
county	28	2009	County Executive	2015/2016	422188775
county	14	2009	County Assembly	2016/2017	489549517
county	14	2009	County Assembly	2015/2016	451911453
county	14	2009	County Executive	2016/2017	405065180
county	14	2009	County Executive	2015/2016	422188775
county	7	2009	County Assembly	2016/2017	653969239
county	7	2009	County Assembly	2015/2016	683849161
county	7	2009	County Executive	2016/2017	445615976
county	7	2009	County Executive	2015/2016	440835009
county	43	2009	County Assembly	2016/2017	742060265
county	43	2009	County Assembly	2015/2016	722116969
county	43	2009	County Executive	2016/2017	486166772
county	43	2009	County Executive	2015/2016	459481243
county	11	2009	County Assembly	2016/2017	377924581
county	11	2009	County Assembly	2015/2016	323510490
county	11	2009	County Executive	2016/2017	317997003
county	11	2009	County Executive	2015/2016	375192683
county	34	2009	County Assembly	2016/2017	569310891
county	34	2009	County Assembly	2015/2016	529199342
county	34	2009	County Executive	2016/2017	394328991
county	34	2009	County Executive	2015/2016	412611986
county	37	2009	County Assembly	2016/2017	899913088
county	37	2009	County Assembly	2015/2016	786853365
county	37	2009	County Executive	2016/2017	567268364
county	37	2009	County Executive	2015/2016	496773710
county	35	2009	County Assembly	2016/2017	592298695
county	35	2009	County Assembly	2015/2016	518037314
county	35	2009	County Executive	2016/2017	445615976
county	35	2009	County Executive	2015/2016	440835009
county	22	2009	County Assembly	2016/2017	906245126
county	22	2009	County Assembly	2015/2016	889470749
county	22	2009	County Executive	2016/2017	567268364
county	22	2009	County Executive	2015/2016	496773710
county	3	2009	County Assembly	2016/2017	644923317
county	3	2009	County Assembly	2015/2016	630494611
county	3	2009	County Executive	2016/2017	465891374
county	3	2009	County Executive	2015/2016	450158126
county	20	2009	County Assembly	2016/2017	480465015
county	20	2009	County Assembly	2015/2016	506571368
county	20	2009	County Executive	2016/2017	389559386
county	20	2009	County Executive	2015/2016	412738822
county	45	2009	County Assembly	2016/2017	795788862
county	45	2009	County Assembly	2015/2016	725007565
county	45	2009	County Executive	2016/2017	506442170
county	45	2009	County Executive	2015/2016	468804360
county	42	2009	County Assembly	2016/2017	654621594
county	42	2009	County Assembly	2015/2016	533898787
county	42	2009	County Executive	2016/2017	465891374
county	42	2009	County Executive	2015/2016	450158126
county	15	2009	County Assembly	2016/2017	729738749
county	15	2009	County Assembly	2015/2016	668685315
county	15	2009	County Executive	2016/2017	486166772
county	15	2009	County Executive	2015/2016	459481243
county	2	2009	County Assembly	2016/2017	495317266
county	2	2009	County Assembly	2015/2016	470890661
county	2	2009	County Executive	2016/2017	405065180
county	2	2009	County Executive	2015/2016	422188775
county	31	2009	County Assembly	2016/2017	391467065
county	31	2009	County Assembly	2015/2016	380490113
county	31	2009	County Executive	2016/2017	353778195
county	31	2009	County Executive	2015/2016	393965753
county	5	2009	County Assembly	2016/2017	347758306
county	5	2009	County Assembly	2015/2016	304784663
county	5	2009	County Executive	2016/2017	317997003
county	5	2009	County Executive	2015/2016	375192683
county	16	2009	County Assembly	2016/2017	717783256
county	16	2009	County Assembly	2015/2016	630252131
county	16	2009	County Executive	2016/2017	486166772
county	16	2009	County Executive	2015/2016	459481243
county	17	2009	County Assembly	2016/2017	628398530
county	17	2009	County Assembly	2015/2016	594667329
county	17	2009	County Executive	2016/2017	445615976
county	17	2009	County Executive	2015/2016	440835009
county	9	2009	County Assembly	2016/2017	700168112
county	9	2009	County Assembly	2015/2016	637920243
county	9	2009	County Executive	2016/2017	456425252
county	9	2009	County Executive	2015/2016	445765957
county	10	2009	County Assembly	2016/2017	561636493
county	10	2009	County Assembly	2015/2016	533029240
county	10	2009	County Executive	2016/2017	405065180
county	10	2009	County Executive	2015/2016	422188775
county	12	2009	County Assembly	2016/2017	839515604
county	12	2009	County Assembly	2015/2016	839515604
county	12	2009	County Executive	2016/2017	506442170
county	12	2009	County Executive	2015/2016	468804360
county	44	2009	County Assembly	2016/2017	748308634
county	44	2009	County Assembly	2015/2016	727747850
county	44	2009	County Executive	2016/2017	486166772
county	44	2009	County Executive	2015/2016	459481243
county	1	2009	County Assembly	2016/2017	618543360
county	1	2009	County Assembly	2015/2016	506633450
county	1	2009	County Executive	2016/2017	445615976
county	1	2009	County Executive	2015/2016	440835009
county	21	2009	County Assembly	2016/2017	620552243
county	21	2009	County Assembly	2015/2016	588927919
county	21	2009	County Executive	2016/2017	465891374
county	21	2009	County Executive	2015/2016	450158126
county	47	2009	County Assembly	2016/2017	1320604504
county	47	2009	County Assembly	2015/2016	1224237793
county	47	2009	County Executive	2016/2017	668645354
county	47	2009	County Executive	2015/2016	543389295
county	32	2009	County Assembly	2016/2017	822183269
county	32	2009	County Assembly	2015/2016	792704559
county	32	2009	County Executive	2016/2017	546992966
county	32	2009	County Executive	2015/2016	487450593
county	29	2009	County Assembly	2016/2017	600288748
county	29	2009	County Assembly	2015/2016	524198214
county	29	2009	County Executive	2016/2017	445615976
county	29	2009	County Executive	2015/2016	440835009
county	33	2009	County Assembly	2016/2017	608647196
county	33	2009	County Assembly	2015/2016	611327422
county	33	2009	County Executive	2016/2017	445615976
county	33	2009	County Executive	2015/2016	440835009
county	46	2009	County Assembly	2016/2017	488710625
county	46	2009	County Assembly	2015/2016	428737274
county	46	2009	County Executive	2016/2017	405065180
county	46	2009	County Executive	2015/2016	422188775
county	18	2009	County Assembly	2016/2017	562892769
county	18	2009	County Assembly	2015/2016	580568213
county	18	2009	County Executive	2016/2017	425340578
county	18	2009	County Executive	2015/2016	431511892
county	19	2009	County Assembly	2016/2017	593206457
county	19	2009	County Assembly	2015/2016	547539390
county	19	2009	County Executive	2016/2017	445615976
county	19	2009	County Executive	2015/2016	440835009
county	25	2009	County Assembly	2016/2017	407808782
county	25	2009	County Assembly	2015/2016	380602009
county	25	2009	County Executive	2016/2017	338272401
county	25	2009	County Executive	2015/2016	384515800
county	41	2009	County Assembly	2016/2017	599914472
county	41	2009	County Assembly	2015/2016	594029051
county	41	2009	County Executive	2016/2017	445615976
county	41	2009	County Executive	2015/2016	440835009
county	6	2009	County Assembly	2016/2017	524763967
county	6	2009	County Assembly	2015/2016	507604218
county	6	2009	County Executive	2016/2017	405065180
county	6	2009	County Executive	2015/2016	422188775
county	4	2009	County Assembly	2016/2017	442442874
county	4	2009	County Assembly	2015/2016	423394183
county	4	2009	County Executive	2016/2017	369283988
county	4	2009	County Executive	2015/2016	403415705
county	13	2009	County Assembly	2016/2017	373749361
county	13	2009	County Assembly	2015/2016	359409914
county	13	2009	County Executive	2016/2017	353778195
county	13	2009	County Executive	2015/2016	393965753
county	26	2009	County Assembly	2016/2017	534271010
county	26	2009	County Assembly	2015/2016	498398759
county	26	2009	County Executive	2016/2017	425340578
county	26	2009	County Executive	2015/2016	431511892
county	23	2009	County Assembly	2016/2017	764331379
county	23	2009	County Assembly	2015/2016	977900599
county	23	2009	County Executive	2016/2017	445615976
county	23	2009	County Executive	2015/2016	440835009
county	27	2009	County Assembly	2016/2017	571448098
county	27	2009	County Assembly	2015/2016	502451352
county	27	2009	County Executive	2016/2017	445615976
county	27	2009	County Executive	2015/2016	440835009
county	38	2009	County Assembly	2016/2017	533773279
county	38	2009	County Assembly	2015/2016	669131656
county	38	2009	County Executive	2016/2017	425340578
county	38	2009	County Executive	2015/2016	431511892
county	8	2009	County Assembly	2016/2017	645131099
county	8	2009	County Assembly	2015/2016	560327132
county	8	2009	County Executive	2016/2017	434806700
county	8	2009	County Executive	2015/2016	435904061
county	24	2009	County Assembly	2016/2017	488707104
county	24	2009	County Assembly	2015/2016	429992439
county	24	2009	County Executive	2016/2017	405065180
county	24	2009	County Executive	2015/2016	422188775
county	30	2009	County Assembly	2017/18	597216746
county	30	2009	County Assembly	2018/19	745949448
county	30	2009	County Assembly	2019/20	687926864
county	30	2009	County Executive	2017/18	552102186
county	30	2009	County Executive	2018/19	571077976
county	30	2009	County Executive	2019/20	569787017
county	36	2009	County Assembly	2017/18	509765837
county	36	2009	County Assembly	2018/19	593549397
county	36	2009	County Assembly	2019/20	606321526
county	36	2009	County Executive	2017/18	535190257
county	36	2009	County Executive	2018/19	553757614
county	36	2009	County Executive	2019/20	552531315
county	39	2009	County Assembly	2017/18	755249331
county	39	2009	County Assembly	2018/19	830129329
county	39	2009	County Assembly	2019/20	852697315
county	39	2009	County Executive	2017/18	602837969
county	39	2009	County Executive	2018/19	623039058
county	39	2009	County Executive	2019/20	621554119
county	40	2009	County Assembly	2017/18	626631094
county	40	2009	County Assembly	2018/19	728502747
county	40	2009	County Assembly	2019/20	738972659
county	40	2009	County Executive	2017/18	569014114
county	40	2009	County Executive	2018/19	588398337
county	40	2009	County Executive	2019/20	587042718
county	28	2009	County Assembly	2017/18	472435996
county	28	2009	County Assembly	2018/19	566844007
county	28	2009	County Assembly	2019/20	572974781
county	28	2009	County Executive	2017/18	518278330
county	28	2009	County Executive	2018/19	536437254
county	28	2009	County Executive	2019/20	535275615
county	14	2009	County Assembly	2017/18	485937461
county	14	2009	County Assembly	2018/19	568744226
county	14	2009	County Assembly	2019/20	580057624
county	14	2009	County Executive	2017/18	518278330
county	14	2009	County Executive	2018/19	536437254
county	14	2009	County Executive	2019/20	535275615
county	7	2009	County Assembly	2017/18	648074550
county	7	2009	County Assembly	2018/19	747191067
county	7	2009	County Assembly	2019/20	758771695
county	7	2009	County Executive	2017/18	552102186
county	7	2009	County Executive	2018/19	571077976
county	7	2009	County Executive	2019/20	569787017
county	43	2009	County Assembly	2017/18	730589778
county	43	2009	County Assembly	2018/19	837888910
county	43	2009	County Assembly	2019/20	852232576
county	43	2009	County Executive	2017/18	585926041
county	43	2009	County Executive	2018/19	605718697
county	43	2009	County Executive	2019/20	604298418
county	11	2009	County Assembly	2017/18	388553640
county	11	2009	County Assembly	2018/19	415766822
county	11	2009	County Assembly	2019/20	421383160
county	11	2009	County Executive	2017/18	449417832
county	11	2009	County Executive	2018/19	466512829
county	11	2009	County Executive	2019/20	463713275
county	34	2009	County Assembly	2017/18	561789458
county	34	2009	County Assembly	2018/19	656834585
county	34	2009	County Assembly	2019/20	666147523
county	34	2009	County Executive	2017/18	511832496
county	34	2009	County Executive	2018/19	530235145
county	34	2009	County Executive	2019/20	527830690
county	37	2009	County Assembly	2017/18	883457978
county	37	2009	County Assembly	2018/19	1061364590
county	37	2009	County Assembly	2019/20	1066936774
county	37	2009	County Executive	2017/18	653573752
county	37	2009	County Executive	2018/19	675000140
county	37	2009	County Executive	2019/20	673321221
county	35	2009	County Assembly	2017/18	585082155
county	35	2009	County Assembly	2018/19	680496881
county	35	2009	County Assembly	2019/20	692058978
county	35	2009	County Executive	2017/18	552102186
county	35	2009	County Executive	2018/19	571077976
county	35	2009	County Executive	2019/20	569787017
county	22	2009	County Assembly	2017/18	889745034
county	22	2009	County Assembly	2018/19	1072824374
county	22	2009	County Assembly	2019/20	1085527936
county	22	2009	County Executive	2017/18	653573752
county	22	2009	County Executive	2018/19	675000140
county	22	2009	County Executive	2019/20	673321221
county	3	2009	County Assembly	2017/18	638942332
county	3	2009	County Assembly	2018/19	753514171
county	3	2009	County Assembly	2019/20	756635440
county	3	2009	County Executive	2017/18	569014114
county	3	2009	County Executive	2018/19	588398337
county	3	2009	County Executive	2019/20	587042718
county	20	2009	County Assembly	2017/18	490547175
county	20	2009	County Assembly	2018/19	556734809
county	20	2009	County Assembly	2019/20	569393333
county	20	2009	County Executive	2017/18	506599449
county	20	2009	County Executive	2018/19	524676019
county	20	2009	County Executive	2019/20	522925302
county	45	2009	County Assembly	2017/18	779851723
county	45	2009	County Assembly	2018/19	907969871
county	45	2009	County Assembly	2019/20	919508597
county	45	2009	County Executive	2017/18	602837969
county	45	2009	County Executive	2018/19	623039058
county	45	2009	County Executive	2019/20	621554119
county	42	2009	County Assembly	2017/18	656616804
county	42	2009	County Assembly	2018/19	684802036
county	42	2009	County Assembly	2019/20	701921494
county	42	2009	County Executive	2017/18	569014114
county	42	2009	County Executive	2018/19	588398337
county	42	2009	County Executive	2019/20	587042718
county	15	2009	County Assembly	2017/18	727297161
county	15	2009	County Assembly	2018/19	811797246
county	15	2009	County Assembly	2019/20	836025472
county	15	2009	County Executive	2017/18	585926041
county	15	2009	County Executive	2018/19	605718697
county	15	2009	County Executive	2019/20	604298418
county	2	2009	County Assembly	2017/18	491804086
county	2	2009	County Assembly	2018/19	584760053
county	2	2009	County Assembly	2019/20	591895413
county	2	2009	County Executive	2017/18	518278330
county	2	2009	County Executive	2018/19	536437254
county	2	2009	County Executive	2019/20	535275615
county	31	2009	County Assembly	2017/18	403586936
county	31	2009	County Assembly	2018/19	441560603
county	31	2009	County Assembly	2019/20	452388054
county	31	2009	County Executive	2017/18	478008640
county	31	2009	County Executive	2018/19	495594424
county	31	2009	County Executive	2019/20	493319288
county	5	2009	County Assembly	2017/18	357441657
county	5	2009	County Assembly	2018/19	404937595
county	5	2009	County Assembly	2019/20	405697936
county	5	2009	County Executive	2017/18	449417832
county	5	2009	County Executive	2018/19	466512829
county	5	2009	County Executive	2019/20	463713275
county	16	2009	County Assembly	2017/18	710670184
county	16	2009	County Assembly	2018/19	831776339
county	16	2009	County Assembly	2019/20	841145156
county	16	2009	County Executive	2017/18	585926041
county	16	2009	County Executive	2018/19	605718697
county	16	2009	County Executive	2019/20	604298418
county	17	2009	County Assembly	2017/18	623097274
county	17	2009	County Assembly	2018/19	746360207
county	17	2009	County Assembly	2019/20	703984829
county	17	2009	County Executive	2017/18	552102186
county	17	2009	County Executive	2018/19	571077976
county	17	2009	County Executive	2019/20	569787017
county	9	2009	County Assembly	2017/18	708469750
county	9	2009	County Assembly	2018/19	728474208
county	9	2009	County Assembly	2019/20	726834897
county	9	2009	County Executive	2017/18	561097207
county	9	2009	County Executive	2018/19	580289418
county	9	2009	County Executive	2019/20	578963987
county	10	2009	County Assembly	2017/18	559260215
county	10	2009	County Assembly	2018/19	597578513
county	10	2009	County Assembly	2019/20	640182991
county	10	2009	County Executive	2017/18	518278330
county	10	2009	County Executive	2018/19	536437254
county	10	2009	County Executive	2019/20	535275615
county	12	2009	County Assembly	2017/18	831034732
county	12	2009	County Assembly	2018/19	925216546
county	12	2009	County Assembly	2019/20	914997229
county	12	2009	County Executive	2017/18	602837969
county	12	2009	County Executive	2018/19	623039058
county	12	2009	County Executive	2019/20	621554119
county	44	2009	County Assembly	2017/18	736791733
county	44	2009	County Assembly	2018/19	828127065
county	44	2009	County Assembly	2019/20	836834225
county	44	2009	County Executive	2017/18	585926041
county	44	2009	County Executive	2018/19	605718697
county	44	2009	County Executive	2019/20	604298418
county	1	2009	County Assembly	2017/18	611938336
county	1	2009	County Assembly	2018/19	646914950
county	1	2009	County Assembly	2019/20	658609194
county	1	2009	County Executive	2017/18	552102186
county	1	2009	County Executive	2018/19	571077976
county	1	2009	County Executive	2019/20	569787017
county	21	2009	County Assembly	2017/18	613746528
county	21	2009	County Assembly	2018/19	724534618
county	21	2009	County Assembly	2019/20	735143240
county	21	2009	County Executive	2017/18	569014114
county	21	2009	County Executive	2018/19	588398337
county	21	2009	County Executive	2019/20	587042718
county	47	2009	County Assembly	2017/18	1293426918
county	47	2009	County Assembly	2018/19	1386671700
county	47	2009	County Assembly	2019/20	1409977879
county	47	2009	County Executive	2017/18	738133392
county	47	2009	County Executive	2018/19	761601944
county	47	2009	County Executive	2019/20	759599725
county	32	2009	County Assembly	2017/18	813963353
county	32	2009	County Assembly	2018/19	969538825
county	32	2009	County Assembly	2019/20	983219236
county	32	2009	County Executive	2017/18	636661824
county	32	2009	County Executive	2018/19	657679779
county	32	2009	County Executive	2019/20	656065520
county	29	2009	County Assembly	2017/18	593045251
county	29	2009	County Assembly	2018/19	631178919
county	29	2009	County Assembly	2019/20	649760252
county	29	2009	County Executive	2017/18	552102186
county	29	2009	County Executive	2018/19	571077976
county	29	2009	County Executive	2019/20	569787017
county	33	2009	County Assembly	2017/18	601710917
county	33	2009	County Assembly	2018/19	708556511
county	33	2009	County Assembly	2019/20	709598198
county	33	2009	County Executive	2017/18	552102186
county	33	2009	County Executive	2018/19	571077976
county	33	2009	County Executive	2019/20	569787017
county	46	2009	County Assembly	2017/18	485084189
county	46	2009	County Assembly	2018/19	587432863
county	46	2009	County Assembly	2019/20	596107510
county	46	2009	County Executive	2017/18	518278330
county	46	2009	County Executive	2018/19	536437254
county	46	2009	County Executive	2019/20	535275615
county	18	2009	County Assembly	2017/18	555137541
county	18	2009	County Assembly	2018/19	623474296
county	18	2009	County Assembly	2019/20	633970935
county	18	2009	County Executive	2017/18	535190257
county	18	2009	County Executive	2018/19	553757614
county	18	2009	County Executive	2019/20	552531315
county	19	2009	County Assembly	2017/18	586007599
county	19	2009	County Assembly	2018/19	659447249
county	19	2009	County Assembly	2019/20	676085232
county	19	2009	County Executive	2017/18	552102186
county	19	2009	County Executive	2018/19	571077976
county	19	2009	County Executive	2019/20	569787017
county	25	2009	County Assembly	2017/18	419035586
county	25	2009	County Assembly	2018/19	474065548
county	25	2009	County Assembly	2019/20	490297034
county	25	2009	County Executive	2017/18	466329759
county	25	2009	County Executive	2018/19	483833189
county	25	2009	County Executive	2019/20	480968975
county	41	2009	County Assembly	2017/18	592664559
county	41	2009	County Assembly	2018/19	648656207
county	41	2009	County Assembly	2019/20	666308584
county	41	2009	County Executive	2017/18	552102186
county	41	2009	County Executive	2018/19	571077976
county	41	2009	County Executive	2019/20	569787017
county	6	2009	County Assembly	2017/18	521642011
county	6	2009	County Assembly	2018/19	585350779
county	6	2009	County Assembly	2019/20	601130595
county	6	2009	County Executive	2017/18	518278330
county	6	2009	County Executive	2018/19	536437254
county	6	2009	County Executive	2019/20	535275615
county	4	2009	County Assembly	2017/18	454495177
county	4	2009	County Assembly	2018/19	472819158
county	4	2009	County Assembly	2019/20	486497243
county	4	2009	County Executive	2017/18	489687521
county	4	2009	County Executive	2018/19	507355659
county	4	2009	County Executive	2019/20	505669601
county	13	2009	County Assembly	2017/18	384283351
county	13	2009	County Assembly	2018/19	424689934
county	13	2009	County Assembly	2019/20	423104928
county	13	2009	County Executive	2017/18	478008640
county	13	2009	County Executive	2018/19	495594424
county	13	2009	County Executive	2019/20	493319288
county	26	2009	County Assembly	2017/18	530452425
county	26	2009	County Assembly	2018/19	614078431
county	26	2009	County Assembly	2019/20	628139110
county	26	2009	County Executive	2017/18	535190257
county	26	2009	County Executive	2018/19	553757614
county	26	2009	County Executive	2019/20	552531315
county	23	2009	County Assembly	2017/18	764435401
county	23	2009	County Assembly	2018/19	743352347
county	23	2009	County Assembly	2019/20	767192392
county	23	2009	County Executive	2017/18	552102186
county	23	2009	County Executive	2018/19	571077976
county	23	2009	County Executive	2019/20	569787017
county	27	2009	County Assembly	2017/18	568747182
county	27	2009	County Assembly	2018/19	671972798
county	27	2009	County Assembly	2019/20	686014946
county	27	2009	County Executive	2017/18	552102186
county	27	2009	County Executive	2018/19	571077976
county	27	2009	County Executive	2019/20	569787017
county	38	2009	County Assembly	2017/18	530154162
county	38	2009	County Assembly	2018/19	607253791
county	38	2009	County Assembly	2019/20	621955167
county	38	2009	County Executive	2017/18	535190257
county	38	2009	County Executive	2018/19	553757614
county	38	2009	County Executive	2019/20	552531315
county	8	2009	County Assembly	2017/18	643968360
county	8	2009	County Assembly	2018/19	719759837
county	8	2009	County Assembly	2019/20	760194403
county	8	2009	County Executive	2017/18	543107164
county	8	2009	County Executive	2018/19	561866534
county	8	2009	County Executive	2019/20	560610046
county	24	2009	County Assembly	2017/18	483519537
county	24	2009	County Assembly	2018/19	573674197
county	24	2009	County Assembly	2019/20	584824909
county	24	2009	County Executive	2017/18	518278330
county	24	2009	County Executive	2018/19	536437254
county	24	2009	County Executive	2019/20	535275615
\.


--
-- Name: expenditure_year pk_expenditure_year; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.expenditure_year
    ADD CONSTRAINT pk_expenditure_year PRIMARY KEY (geo_level, geo_code, geo_version, expenditure, year);


--
-- PostgreSQL database dump complete
--

