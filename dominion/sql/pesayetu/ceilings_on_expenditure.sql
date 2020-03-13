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
level1	KE_1_030	2009	County Assembly	2016/2017	593775560
level1	KE_1_030	2009	County Assembly	2015/2016	532029481
level1	KE_1_030	2009	County Executive	2016/2017	445615976
level1	KE_1_030	2009	County Executive	2015/2016	440835009
level1	KE_1_036	2009	County Assembly	2016/2017	519252421
level1	KE_1_036	2009	County Assembly	2015/2016	489368979
level1	KE_1_036	2009	County Executive	2016/2017	425340578
level1	KE_1_036	2009	County Executive	2015/2016	431511892
level1	KE_1_039	2009	County Assembly	2016/2017	757493453
level1	KE_1_039	2009	County Assembly	2015/2016	677330464
level1	KE_1_039	2009	County Executive	2016/2017	506442170
level1	KE_1_039	2009	County Executive	2015/2016	468804360
level1	KE_1_040	2009	County Assembly	2016/2017	633726033
level1	KE_1_040	2009	County Assembly	2015/2016	572044404
level1	KE_1_040	2009	County Executive	2016/2017	465891374
level1	KE_1_040	2009	County Executive	2015/2016	450158126
level1	KE_1_028	2009	County Assembly	2016/2017	467089372
level1	KE_1_028	2009	County Assembly	2015/2016	425602732
level1	KE_1_028	2009	County Executive	2016/2017	405065180
level1	KE_1_028	2009	County Executive	2015/2016	422188775
level1	KE_1_014	2009	County Assembly	2016/2017	489549517
level1	KE_1_014	2009	County Assembly	2015/2016	451911453
level1	KE_1_014	2009	County Executive	2016/2017	405065180
level1	KE_1_014	2009	County Executive	2015/2016	422188775
level1	KE_1_007	2009	County Assembly	2016/2017	653969239
level1	KE_1_007	2009	County Assembly	2015/2016	683849161
level1	KE_1_007	2009	County Executive	2016/2017	445615976
level1	KE_1_007	2009	County Executive	2015/2016	440835009
level1	KE_1_043	2009	County Assembly	2016/2017	742060265
level1	KE_1_043	2009	County Assembly	2015/2016	722116969
level1	KE_1_043	2009	County Executive	2016/2017	486166772
level1	KE_1_043	2009	County Executive	2015/2016	459481243
level1	KE_1_011	2009	County Assembly	2016/2017	377924581
level1	KE_1_011	2009	County Assembly	2015/2016	323510490
level1	KE_1_011	2009	County Executive	2016/2017	317997003
level1	KE_1_011	2009	County Executive	2015/2016	375192683
level1	KE_1_034	2009	County Assembly	2016/2017	569310891
level1	KE_1_034	2009	County Assembly	2015/2016	529199342
level1	KE_1_034	2009	County Executive	2016/2017	394328991
level1	KE_1_034	2009	County Executive	2015/2016	412611986
level1	KE_1_037	2009	County Assembly	2016/2017	899913088
level1	KE_1_037	2009	County Assembly	2015/2016	786853365
level1	KE_1_037	2009	County Executive	2016/2017	567268364
level1	KE_1_037	2009	County Executive	2015/2016	496773710
level1	KE_1_035	2009	County Assembly	2016/2017	592298695
level1	KE_1_035	2009	County Assembly	2015/2016	518037314
level1	KE_1_035	2009	County Executive	2016/2017	445615976
level1	KE_1_035	2009	County Executive	2015/2016	440835009
level1	KE_1_022	2009	County Assembly	2016/2017	906245126
level1	KE_1_022	2009	County Assembly	2015/2016	889470749
level1	KE_1_022	2009	County Executive	2016/2017	567268364
level1	KE_1_022	2009	County Executive	2015/2016	496773710
level1	KE_1_003	2009	County Assembly	2016/2017	644923317
level1	KE_1_003	2009	County Assembly	2015/2016	630494611
level1	KE_1_003	2009	County Executive	2016/2017	465891374
level1	KE_1_003	2009	County Executive	2015/2016	450158126
level1	KE_1_020	2009	County Assembly	2016/2017	480465015
level1	KE_1_020	2009	County Assembly	2015/2016	506571368
level1	KE_1_020	2009	County Executive	2016/2017	389559386
level1	KE_1_020	2009	County Executive	2015/2016	412738822
level1	KE_1_045	2009	County Assembly	2016/2017	795788862
level1	KE_1_045	2009	County Assembly	2015/2016	725007565
level1	KE_1_045	2009	County Executive	2016/2017	506442170
level1	KE_1_045	2009	County Executive	2015/2016	468804360
level1	KE_1_042	2009	County Assembly	2016/2017	654621594
level1	KE_1_042	2009	County Assembly	2015/2016	533898787
level1	KE_1_042	2009	County Executive	2016/2017	465891374
level1	KE_1_042	2009	County Executive	2015/2016	450158126
level1	KE_1_015	2009	County Assembly	2016/2017	729738749
level1	KE_1_015	2009	County Assembly	2015/2016	668685315
level1	KE_1_015	2009	County Executive	2016/2017	486166772
level1	KE_1_015	2009	County Executive	2015/2016	459481243
level1	KE_1_002	2009	County Assembly	2016/2017	495317266
level1	KE_1_002	2009	County Assembly	2015/2016	470890661
level1	KE_1_002	2009	County Executive	2016/2017	405065180
level1	KE_1_002	2009	County Executive	2015/2016	422188775
level1	KE_1_031	2009	County Assembly	2016/2017	391467065
level1	KE_1_031	2009	County Assembly	2015/2016	380490113
level1	KE_1_031	2009	County Executive	2016/2017	353778195
level1	KE_1_031	2009	County Executive	2015/2016	393965753
level1	KE_1_005	2009	County Assembly	2016/2017	347758306
level1	KE_1_005	2009	County Assembly	2015/2016	304784663
level1	KE_1_005	2009	County Executive	2016/2017	317997003
level1	KE_1_005	2009	County Executive	2015/2016	375192683
level1	KE_1_016	2009	County Assembly	2016/2017	717783256
level1	KE_1_016	2009	County Assembly	2015/2016	630252131
level1	KE_1_016	2009	County Executive	2016/2017	486166772
level1	KE_1_016	2009	County Executive	2015/2016	459481243
level1	KE_1_017	2009	County Assembly	2016/2017	628398530
level1	KE_1_017	2009	County Assembly	2015/2016	594667329
level1	KE_1_017	2009	County Executive	2016/2017	445615976
level1	KE_1_017	2009	County Executive	2015/2016	440835009
level1	KE_1_009	2009	County Assembly	2016/2017	700168112
level1	KE_1_009	2009	County Assembly	2015/2016	637920243
level1	KE_1_009	2009	County Executive	2016/2017	456425252
level1	KE_1_009	2009	County Executive	2015/2016	445765957
level1	KE_1_010	2009	County Assembly	2016/2017	561636493
level1	KE_1_010	2009	County Assembly	2015/2016	533029240
level1	KE_1_010	2009	County Executive	2016/2017	405065180
level1	KE_1_010	2009	County Executive	2015/2016	422188775
level1	KE_1_012	2009	County Assembly	2016/2017	839515604
level1	KE_1_012	2009	County Assembly	2015/2016	839515604
level1	KE_1_012	2009	County Executive	2016/2017	506442170
level1	KE_1_012	2009	County Executive	2015/2016	468804360
level1	KE_1_044	2009	County Assembly	2016/2017	748308634
level1	KE_1_044	2009	County Assembly	2015/2016	727747850
level1	KE_1_044	2009	County Executive	2016/2017	486166772
level1	KE_1_044	2009	County Executive	2015/2016	459481243
level1	KE_1_001	2009	County Assembly	2016/2017	618543360
level1	KE_1_001	2009	County Assembly	2015/2016	506633450
level1	KE_1_001	2009	County Executive	2016/2017	445615976
level1	KE_1_001	2009	County Executive	2015/2016	440835009
level1	KE_1_021	2009	County Assembly	2016/2017	620552243
level1	KE_1_021	2009	County Assembly	2015/2016	588927919
level1	KE_1_021	2009	County Executive	2016/2017	465891374
level1	KE_1_021	2009	County Executive	2015/2016	450158126
level1	KE_1_047	2009	County Assembly	2016/2017	1320604504
level1	KE_1_047	2009	County Assembly	2015/2016	1224237793
level1	KE_1_047	2009	County Executive	2016/2017	668645354
level1	KE_1_047	2009	County Executive	2015/2016	543389295
level1	KE_1_032	2009	County Assembly	2016/2017	822183269
level1	KE_1_032	2009	County Assembly	2015/2016	792704559
level1	KE_1_032	2009	County Executive	2016/2017	546992966
level1	KE_1_032	2009	County Executive	2015/2016	487450593
level1	KE_1_029	2009	County Assembly	2016/2017	600288748
level1	KE_1_029	2009	County Assembly	2015/2016	524198214
level1	KE_1_029	2009	County Executive	2016/2017	445615976
level1	KE_1_029	2009	County Executive	2015/2016	440835009
level1	KE_1_033	2009	County Assembly	2016/2017	608647196
level1	KE_1_033	2009	County Assembly	2015/2016	611327422
level1	KE_1_033	2009	County Executive	2016/2017	445615976
level1	KE_1_033	2009	County Executive	2015/2016	440835009
level1	KE_1_046	2009	County Assembly	2016/2017	488710625
level1	KE_1_046	2009	County Assembly	2015/2016	428737274
level1	KE_1_046	2009	County Executive	2016/2017	405065180
level1	KE_1_046	2009	County Executive	2015/2016	422188775
level1	KE_1_018	2009	County Assembly	2016/2017	562892769
level1	KE_1_018	2009	County Assembly	2015/2016	580568213
level1	KE_1_018	2009	County Executive	2016/2017	425340578
level1	KE_1_018	2009	County Executive	2015/2016	431511892
level1	KE_1_019	2009	County Assembly	2016/2017	593206457
level1	KE_1_019	2009	County Assembly	2015/2016	547539390
level1	KE_1_019	2009	County Executive	2016/2017	445615976
level1	KE_1_019	2009	County Executive	2015/2016	440835009
level1	KE_1_025	2009	County Assembly	2016/2017	407808782
level1	KE_1_025	2009	County Assembly	2015/2016	380602009
level1	KE_1_025	2009	County Executive	2016/2017	338272401
level1	KE_1_025	2009	County Executive	2015/2016	384515800
level1	KE_1_041	2009	County Assembly	2016/2017	599914472
level1	KE_1_041	2009	County Assembly	2015/2016	594029051
level1	KE_1_041	2009	County Executive	2016/2017	445615976
level1	KE_1_041	2009	County Executive	2015/2016	440835009
level1	KE_1_006	2009	County Assembly	2016/2017	524763967
level1	KE_1_006	2009	County Assembly	2015/2016	507604218
level1	KE_1_006	2009	County Executive	2016/2017	405065180
level1	KE_1_006	2009	County Executive	2015/2016	422188775
level1	KE_1_004	2009	County Assembly	2016/2017	442442874
level1	KE_1_004	2009	County Assembly	2015/2016	423394183
level1	KE_1_004	2009	County Executive	2016/2017	369283988
level1	KE_1_004	2009	County Executive	2015/2016	403415705
level1	KE_1_013	2009	County Assembly	2016/2017	373749361
level1	KE_1_013	2009	County Assembly	2015/2016	359409914
level1	KE_1_013	2009	County Executive	2016/2017	353778195
level1	KE_1_013	2009	County Executive	2015/2016	393965753
level1	KE_1_026	2009	County Assembly	2016/2017	534271010
level1	KE_1_026	2009	County Assembly	2015/2016	498398759
level1	KE_1_026	2009	County Executive	2016/2017	425340578
level1	KE_1_026	2009	County Executive	2015/2016	431511892
level1	KE_1_023	2009	County Assembly	2016/2017	764331379
level1	KE_1_023	2009	County Assembly	2015/2016	977900599
level1	KE_1_023	2009	County Executive	2016/2017	445615976
level1	KE_1_023	2009	County Executive	2015/2016	440835009
level1	KE_1_027	2009	County Assembly	2016/2017	571448098
level1	KE_1_027	2009	County Assembly	2015/2016	502451352
level1	KE_1_027	2009	County Executive	2016/2017	445615976
level1	KE_1_027	2009	County Executive	2015/2016	440835009
level1	KE_1_038	2009	County Assembly	2016/2017	533773279
level1	KE_1_038	2009	County Assembly	2015/2016	669131656
level1	KE_1_038	2009	County Executive	2016/2017	425340578
level1	KE_1_038	2009	County Executive	2015/2016	431511892
level1	KE_1_008	2009	County Assembly	2016/2017	645131099
level1	KE_1_008	2009	County Assembly	2015/2016	560327132
level1	KE_1_008	2009	County Executive	2016/2017	434806700
level1	KE_1_008	2009	County Executive	2015/2016	435904061
level1	KE_1_024	2009	County Assembly	2016/2017	488707104
level1	KE_1_024	2009	County Assembly	2015/2016	429992439
level1	KE_1_024	2009	County Executive	2016/2017	405065180
level1	KE_1_024	2009	County Executive	2015/2016	422188775
level1	KE_1_030	2009	County Assembly	2017/18	597216746
level1	KE_1_030	2009	County Assembly	2018/19	745949448
level1	KE_1_030	2009	County Assembly	2019/20	687926864
level1	KE_1_030	2009	County Executive	2017/18	552102186
level1	KE_1_030	2009	County Executive	2018/19	571077976
level1	KE_1_030	2009	County Executive	2019/20	569787017
level1	KE_1_036	2009	County Assembly	2017/18	509765837
level1	KE_1_036	2009	County Assembly	2018/19	593549397
level1	KE_1_036	2009	County Assembly	2019/20	606321526
level1	KE_1_036	2009	County Executive	2017/18	535190257
level1	KE_1_036	2009	County Executive	2018/19	553757614
level1	KE_1_036	2009	County Executive	2019/20	552531315
level1	KE_1_039	2009	County Assembly	2017/18	755249331
level1	KE_1_039	2009	County Assembly	2018/19	830129329
level1	KE_1_039	2009	County Assembly	2019/20	852697315
level1	KE_1_039	2009	County Executive	2017/18	602837969
level1	KE_1_039	2009	County Executive	2018/19	623039058
level1	KE_1_039	2009	County Executive	2019/20	621554119
level1	KE_1_040	2009	County Assembly	2017/18	626631094
level1	KE_1_040	2009	County Assembly	2018/19	728502747
level1	KE_1_040	2009	County Assembly	2019/20	738972659
level1	KE_1_040	2009	County Executive	2017/18	569014114
level1	KE_1_040	2009	County Executive	2018/19	588398337
level1	KE_1_040	2009	County Executive	2019/20	587042718
level1	KE_1_028	2009	County Assembly	2017/18	472435996
level1	KE_1_028	2009	County Assembly	2018/19	566844007
level1	KE_1_028	2009	County Assembly	2019/20	572974781
level1	KE_1_028	2009	County Executive	2017/18	518278330
level1	KE_1_028	2009	County Executive	2018/19	536437254
level1	KE_1_028	2009	County Executive	2019/20	535275615
level1	KE_1_014	2009	County Assembly	2017/18	485937461
level1	KE_1_014	2009	County Assembly	2018/19	568744226
level1	KE_1_014	2009	County Assembly	2019/20	580057624
level1	KE_1_014	2009	County Executive	2017/18	518278330
level1	KE_1_014	2009	County Executive	2018/19	536437254
level1	KE_1_014	2009	County Executive	2019/20	535275615
level1	KE_1_007	2009	County Assembly	2017/18	648074550
level1	KE_1_007	2009	County Assembly	2018/19	747191067
level1	KE_1_007	2009	County Assembly	2019/20	758771695
level1	KE_1_007	2009	County Executive	2017/18	552102186
level1	KE_1_007	2009	County Executive	2018/19	571077976
level1	KE_1_007	2009	County Executive	2019/20	569787017
level1	KE_1_043	2009	County Assembly	2017/18	730589778
level1	KE_1_043	2009	County Assembly	2018/19	837888910
level1	KE_1_043	2009	County Assembly	2019/20	852232576
level1	KE_1_043	2009	County Executive	2017/18	585926041
level1	KE_1_043	2009	County Executive	2018/19	605718697
level1	KE_1_043	2009	County Executive	2019/20	604298418
level1	KE_1_011	2009	County Assembly	2017/18	388553640
level1	KE_1_011	2009	County Assembly	2018/19	415766822
level1	KE_1_011	2009	County Assembly	2019/20	421383160
level1	KE_1_011	2009	County Executive	2017/18	449417832
level1	KE_1_011	2009	County Executive	2018/19	466512829
level1	KE_1_011	2009	County Executive	2019/20	463713275
level1	KE_1_034	2009	County Assembly	2017/18	561789458
level1	KE_1_034	2009	County Assembly	2018/19	656834585
level1	KE_1_034	2009	County Assembly	2019/20	666147523
level1	KE_1_034	2009	County Executive	2017/18	511832496
level1	KE_1_034	2009	County Executive	2018/19	530235145
level1	KE_1_034	2009	County Executive	2019/20	527830690
level1	KE_1_037	2009	County Assembly	2017/18	883457978
level1	KE_1_037	2009	County Assembly	2018/19	1061364590
level1	KE_1_037	2009	County Assembly	2019/20	1066936774
level1	KE_1_037	2009	County Executive	2017/18	653573752
level1	KE_1_037	2009	County Executive	2018/19	675000140
level1	KE_1_037	2009	County Executive	2019/20	673321221
level1	KE_1_035	2009	County Assembly	2017/18	585082155
level1	KE_1_035	2009	County Assembly	2018/19	680496881
level1	KE_1_035	2009	County Assembly	2019/20	692058978
level1	KE_1_035	2009	County Executive	2017/18	552102186
level1	KE_1_035	2009	County Executive	2018/19	571077976
level1	KE_1_035	2009	County Executive	2019/20	569787017
level1	KE_1_022	2009	County Assembly	2017/18	889745034
level1	KE_1_022	2009	County Assembly	2018/19	1072824374
level1	KE_1_022	2009	County Assembly	2019/20	1085527936
level1	KE_1_022	2009	County Executive	2017/18	653573752
level1	KE_1_022	2009	County Executive	2018/19	675000140
level1	KE_1_022	2009	County Executive	2019/20	673321221
level1	KE_1_003	2009	County Assembly	2017/18	638942332
level1	KE_1_003	2009	County Assembly	2018/19	753514171
level1	KE_1_003	2009	County Assembly	2019/20	756635440
level1	KE_1_003	2009	County Executive	2017/18	569014114
level1	KE_1_003	2009	County Executive	2018/19	588398337
level1	KE_1_003	2009	County Executive	2019/20	587042718
level1	KE_1_020	2009	County Assembly	2017/18	490547175
level1	KE_1_020	2009	County Assembly	2018/19	556734809
level1	KE_1_020	2009	County Assembly	2019/20	569393333
level1	KE_1_020	2009	County Executive	2017/18	506599449
level1	KE_1_020	2009	County Executive	2018/19	524676019
level1	KE_1_020	2009	County Executive	2019/20	522925302
level1	KE_1_045	2009	County Assembly	2017/18	779851723
level1	KE_1_045	2009	County Assembly	2018/19	907969871
level1	KE_1_045	2009	County Assembly	2019/20	919508597
level1	KE_1_045	2009	County Executive	2017/18	602837969
level1	KE_1_045	2009	County Executive	2018/19	623039058
level1	KE_1_045	2009	County Executive	2019/20	621554119
level1	KE_1_042	2009	County Assembly	2017/18	656616804
level1	KE_1_042	2009	County Assembly	2018/19	684802036
level1	KE_1_042	2009	County Assembly	2019/20	701921494
level1	KE_1_042	2009	County Executive	2017/18	569014114
level1	KE_1_042	2009	County Executive	2018/19	588398337
level1	KE_1_042	2009	County Executive	2019/20	587042718
level1	KE_1_015	2009	County Assembly	2017/18	727297161
level1	KE_1_015	2009	County Assembly	2018/19	811797246
level1	KE_1_015	2009	County Assembly	2019/20	836025472
level1	KE_1_015	2009	County Executive	2017/18	585926041
level1	KE_1_015	2009	County Executive	2018/19	605718697
level1	KE_1_015	2009	County Executive	2019/20	604298418
level1	KE_1_002	2009	County Assembly	2017/18	491804086
level1	KE_1_002	2009	County Assembly	2018/19	584760053
level1	KE_1_002	2009	County Assembly	2019/20	591895413
level1	KE_1_002	2009	County Executive	2017/18	518278330
level1	KE_1_002	2009	County Executive	2018/19	536437254
level1	KE_1_002	2009	County Executive	2019/20	535275615
level1	KE_1_031	2009	County Assembly	2017/18	403586936
level1	KE_1_031	2009	County Assembly	2018/19	441560603
level1	KE_1_031	2009	County Assembly	2019/20	452388054
level1	KE_1_031	2009	County Executive	2017/18	478008640
level1	KE_1_031	2009	County Executive	2018/19	495594424
level1	KE_1_031	2009	County Executive	2019/20	493319288
level1	KE_1_005	2009	County Assembly	2017/18	357441657
level1	KE_1_005	2009	County Assembly	2018/19	404937595
level1	KE_1_005	2009	County Assembly	2019/20	405697936
level1	KE_1_005	2009	County Executive	2017/18	449417832
level1	KE_1_005	2009	County Executive	2018/19	466512829
level1	KE_1_005	2009	County Executive	2019/20	463713275
level1	KE_1_016	2009	County Assembly	2017/18	710670184
level1	KE_1_016	2009	County Assembly	2018/19	831776339
level1	KE_1_016	2009	County Assembly	2019/20	841145156
level1	KE_1_016	2009	County Executive	2017/18	585926041
level1	KE_1_016	2009	County Executive	2018/19	605718697
level1	KE_1_016	2009	County Executive	2019/20	604298418
level1	KE_1_017	2009	County Assembly	2017/18	623097274
level1	KE_1_017	2009	County Assembly	2018/19	746360207
level1	KE_1_017	2009	County Assembly	2019/20	703984829
level1	KE_1_017	2009	County Executive	2017/18	552102186
level1	KE_1_017	2009	County Executive	2018/19	571077976
level1	KE_1_017	2009	County Executive	2019/20	569787017
level1	KE_1_009	2009	County Assembly	2017/18	708469750
level1	KE_1_009	2009	County Assembly	2018/19	728474208
level1	KE_1_009	2009	County Assembly	2019/20	726834897
level1	KE_1_009	2009	County Executive	2017/18	561097207
level1	KE_1_009	2009	County Executive	2018/19	580289418
level1	KE_1_009	2009	County Executive	2019/20	578963987
level1	KE_1_010	2009	County Assembly	2017/18	559260215
level1	KE_1_010	2009	County Assembly	2018/19	597578513
level1	KE_1_010	2009	County Assembly	2019/20	640182991
level1	KE_1_010	2009	County Executive	2017/18	518278330
level1	KE_1_010	2009	County Executive	2018/19	536437254
level1	KE_1_010	2009	County Executive	2019/20	535275615
level1	KE_1_012	2009	County Assembly	2017/18	831034732
level1	KE_1_012	2009	County Assembly	2018/19	925216546
level1	KE_1_012	2009	County Assembly	2019/20	914997229
level1	KE_1_012	2009	County Executive	2017/18	602837969
level1	KE_1_012	2009	County Executive	2018/19	623039058
level1	KE_1_012	2009	County Executive	2019/20	621554119
level1	KE_1_044	2009	County Assembly	2017/18	736791733
level1	KE_1_044	2009	County Assembly	2018/19	828127065
level1	KE_1_044	2009	County Assembly	2019/20	836834225
level1	KE_1_044	2009	County Executive	2017/18	585926041
level1	KE_1_044	2009	County Executive	2018/19	605718697
level1	KE_1_044	2009	County Executive	2019/20	604298418
level1	KE_1_001	2009	County Assembly	2017/18	611938336
level1	KE_1_001	2009	County Assembly	2018/19	646914950
level1	KE_1_001	2009	County Assembly	2019/20	658609194
level1	KE_1_001	2009	County Executive	2017/18	552102186
level1	KE_1_001	2009	County Executive	2018/19	571077976
level1	KE_1_001	2009	County Executive	2019/20	569787017
level1	KE_1_021	2009	County Assembly	2017/18	613746528
level1	KE_1_021	2009	County Assembly	2018/19	724534618
level1	KE_1_021	2009	County Assembly	2019/20	735143240
level1	KE_1_021	2009	County Executive	2017/18	569014114
level1	KE_1_021	2009	County Executive	2018/19	588398337
level1	KE_1_021	2009	County Executive	2019/20	587042718
level1	KE_1_047	2009	County Assembly	2017/18	1293426918
level1	KE_1_047	2009	County Assembly	2018/19	1386671700
level1	KE_1_047	2009	County Assembly	2019/20	1409977879
level1	KE_1_047	2009	County Executive	2017/18	738133392
level1	KE_1_047	2009	County Executive	2018/19	761601944
level1	KE_1_047	2009	County Executive	2019/20	759599725
level1	KE_1_032	2009	County Assembly	2017/18	813963353
level1	KE_1_032	2009	County Assembly	2018/19	969538825
level1	KE_1_032	2009	County Assembly	2019/20	983219236
level1	KE_1_032	2009	County Executive	2017/18	636661824
level1	KE_1_032	2009	County Executive	2018/19	657679779
level1	KE_1_032	2009	County Executive	2019/20	656065520
level1	KE_1_029	2009	County Assembly	2017/18	593045251
level1	KE_1_029	2009	County Assembly	2018/19	631178919
level1	KE_1_029	2009	County Assembly	2019/20	649760252
level1	KE_1_029	2009	County Executive	2017/18	552102186
level1	KE_1_029	2009	County Executive	2018/19	571077976
level1	KE_1_029	2009	County Executive	2019/20	569787017
level1	KE_1_033	2009	County Assembly	2017/18	601710917
level1	KE_1_033	2009	County Assembly	2018/19	708556511
level1	KE_1_033	2009	County Assembly	2019/20	709598198
level1	KE_1_033	2009	County Executive	2017/18	552102186
level1	KE_1_033	2009	County Executive	2018/19	571077976
level1	KE_1_033	2009	County Executive	2019/20	569787017
level1	KE_1_046	2009	County Assembly	2017/18	485084189
level1	KE_1_046	2009	County Assembly	2018/19	587432863
level1	KE_1_046	2009	County Assembly	2019/20	596107510
level1	KE_1_046	2009	County Executive	2017/18	518278330
level1	KE_1_046	2009	County Executive	2018/19	536437254
level1	KE_1_046	2009	County Executive	2019/20	535275615
level1	KE_1_018	2009	County Assembly	2017/18	555137541
level1	KE_1_018	2009	County Assembly	2018/19	623474296
level1	KE_1_018	2009	County Assembly	2019/20	633970935
level1	KE_1_018	2009	County Executive	2017/18	535190257
level1	KE_1_018	2009	County Executive	2018/19	553757614
level1	KE_1_018	2009	County Executive	2019/20	552531315
level1	KE_1_019	2009	County Assembly	2017/18	586007599
level1	KE_1_019	2009	County Assembly	2018/19	659447249
level1	KE_1_019	2009	County Assembly	2019/20	676085232
level1	KE_1_019	2009	County Executive	2017/18	552102186
level1	KE_1_019	2009	County Executive	2018/19	571077976
level1	KE_1_019	2009	County Executive	2019/20	569787017
level1	KE_1_025	2009	County Assembly	2017/18	419035586
level1	KE_1_025	2009	County Assembly	2018/19	474065548
level1	KE_1_025	2009	County Assembly	2019/20	490297034
level1	KE_1_025	2009	County Executive	2017/18	466329759
level1	KE_1_025	2009	County Executive	2018/19	483833189
level1	KE_1_025	2009	County Executive	2019/20	480968975
level1	KE_1_041	2009	County Assembly	2017/18	592664559
level1	KE_1_041	2009	County Assembly	2018/19	648656207
level1	KE_1_041	2009	County Assembly	2019/20	666308584
level1	KE_1_041	2009	County Executive	2017/18	552102186
level1	KE_1_041	2009	County Executive	2018/19	571077976
level1	KE_1_041	2009	County Executive	2019/20	569787017
level1	KE_1_006	2009	County Assembly	2017/18	521642011
level1	KE_1_006	2009	County Assembly	2018/19	585350779
level1	KE_1_006	2009	County Assembly	2019/20	601130595
level1	KE_1_006	2009	County Executive	2017/18	518278330
level1	KE_1_006	2009	County Executive	2018/19	536437254
level1	KE_1_006	2009	County Executive	2019/20	535275615
level1	KE_1_004	2009	County Assembly	2017/18	454495177
level1	KE_1_004	2009	County Assembly	2018/19	472819158
level1	KE_1_004	2009	County Assembly	2019/20	486497243
level1	KE_1_004	2009	County Executive	2017/18	489687521
level1	KE_1_004	2009	County Executive	2018/19	507355659
level1	KE_1_004	2009	County Executive	2019/20	505669601
level1	KE_1_013	2009	County Assembly	2017/18	384283351
level1	KE_1_013	2009	County Assembly	2018/19	424689934
level1	KE_1_013	2009	County Assembly	2019/20	423104928
level1	KE_1_013	2009	County Executive	2017/18	478008640
level1	KE_1_013	2009	County Executive	2018/19	495594424
level1	KE_1_013	2009	County Executive	2019/20	493319288
level1	KE_1_026	2009	County Assembly	2017/18	530452425
level1	KE_1_026	2009	County Assembly	2018/19	614078431
level1	KE_1_026	2009	County Assembly	2019/20	628139110
level1	KE_1_026	2009	County Executive	2017/18	535190257
level1	KE_1_026	2009	County Executive	2018/19	553757614
level1	KE_1_026	2009	County Executive	2019/20	552531315
level1	KE_1_023	2009	County Assembly	2017/18	764435401
level1	KE_1_023	2009	County Assembly	2018/19	743352347
level1	KE_1_023	2009	County Assembly	2019/20	767192392
level1	KE_1_023	2009	County Executive	2017/18	552102186
level1	KE_1_023	2009	County Executive	2018/19	571077976
level1	KE_1_023	2009	County Executive	2019/20	569787017
level1	KE_1_027	2009	County Assembly	2017/18	568747182
level1	KE_1_027	2009	County Assembly	2018/19	671972798
level1	KE_1_027	2009	County Assembly	2019/20	686014946
level1	KE_1_027	2009	County Executive	2017/18	552102186
level1	KE_1_027	2009	County Executive	2018/19	571077976
level1	KE_1_027	2009	County Executive	2019/20	569787017
level1	KE_1_038	2009	County Assembly	2017/18	530154162
level1	KE_1_038	2009	County Assembly	2018/19	607253791
level1	KE_1_038	2009	County Assembly	2019/20	621955167
level1	KE_1_038	2009	County Executive	2017/18	535190257
level1	KE_1_038	2009	County Executive	2018/19	553757614
level1	KE_1_038	2009	County Executive	2019/20	552531315
level1	KE_1_008	2009	County Assembly	2017/18	643968360
level1	KE_1_008	2009	County Assembly	2018/19	719759837
level1	KE_1_008	2009	County Assembly	2019/20	760194403
level1	KE_1_008	2009	County Executive	2017/18	543107164
level1	KE_1_008	2009	County Executive	2018/19	561866534
level1	KE_1_008	2009	County Executive	2019/20	560610046
level1	KE_1_024	2009	County Assembly	2017/18	483519537
level1	KE_1_024	2009	County Assembly	2018/19	573674197
level1	KE_1_024	2009	County Assembly	2019/20	584824909
level1	KE_1_024	2009	County Executive	2017/18	518278330
level1	KE_1_024	2009	County Executive	2018/19	536437254
level1	KE_1_024	2009	County Executive	2019/20	535275615
\.


--
-- Name: expenditure_year pk_expenditure_year; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.expenditure_year
    ADD CONSTRAINT pk_expenditure_year PRIMARY KEY (geo_level, geo_code, geo_version, expenditure, year);


--
-- PostgreSQL database dump complete
--

