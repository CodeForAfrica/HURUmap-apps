--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

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
-- Name: expenditure_year; Type: TABLE; Schema: public; Owner: pesayetu
--

CREATE TABLE expenditure_year (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    expenditure character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);


ALTER TABLE expenditure_year OWNER TO pesayetu;

--
-- Data for Name: expenditure_year; Type: TABLE DATA; Schema: public; Owner: pesayetu
--

COPY expenditure_year (geo_level, geo_code, geo_version, expenditure, year, total) FROM stdin;
county	30	2009	County Assembly	FY 2016/2017	593775560
county	30	2009	County Assembly	FY 2015/2016	532029481
county	30	2009	County Executive	FY 2016/2017	445615976
county	30	2009	County Executive	FY 2015/2016	440835009
county	36	2009	County Assembly	FY 2016/2017	519252421
county	36	2009	County Assembly	FY 2015/2016	489368979
county	36	2009	County Executive	FY 2016/2017	425340578
county	36	2009	County Executive	FY 2015/2016	431511892
county	39	2009	County Assembly	FY 2016/2017	757493453
county	39	2009	County Assembly	FY 2015/2016	677330464
county	39	2009	County Executive	FY 2016/2017	506442170
county	39	2009	County Executive	FY 2015/2016	468804360
county	40	2009	County Assembly	FY 2016/2017	633726033
county	40	2009	County Assembly	FY 2015/2016	572044404
county	40	2009	County Executive	FY 2016/2017	465891374
county	40	2009	County Executive	FY 2015/2016	450158126
county	28	2009	County Assembly	FY 2016/2017	467089372
county	28	2009	County Assembly	FY 2015/2016	425602732
county	28	2009	County Executive	FY 2016/2017	405065180
county	28	2009	County Executive	FY 2015/2016	422188775
county	14	2009	County Assembly	FY 2016/2017	489549517
county	14	2009	County Assembly	FY 2015/2016	451911453
county	14	2009	County Executive	FY 2016/2017	405065180
county	14	2009	County Executive	FY 2015/2016	422188775
county	7	2009	County Assembly	FY 2016/2017	653969239
county	7	2009	County Assembly	FY 2015/2016	683849161
county	7	2009	County Executive	FY 2016/2017	445615976
county	7	2009	County Executive	FY 2015/2016	440835009
county	43	2009	County Assembly	FY 2016/2017	742060265
county	43	2009	County Assembly	FY 2015/2016	722116969
county	43	2009	County Executive	FY 2016/2017	486166772
county	43	2009	County Executive	FY 2015/2016	459481243
county	11	2009	County Assembly	FY 2016/2017	377924581
county	11	2009	County Assembly	FY 2015/2016	323510490
county	11	2009	County Executive	FY 2016/2017	317997003
county	11	2009	County Executive	FY 2015/2016	375192683
county	34	2009	County Assembly	FY 2016/2017	569310891
county	34	2009	County Assembly	FY 2015/2016	529199342
county	34	2009	County Executive	FY 2016/2017	394328991
county	34	2009	County Executive	FY 2015/2016	412611986
county	37	2009	County Assembly	FY 2016/2017	899913088
county	37	2009	County Assembly	FY 2015/2016	786853365
county	37	2009	County Executive	FY 2016/2017	567268364
county	37	2009	County Executive	FY 2015/2016	496773710
county	35	2009	County Assembly	FY 2016/2017	592298695
county	35	2009	County Assembly	FY 2015/2016	518037314
county	35	2009	County Executive	FY 2016/2017	445615976
county	35	2009	County Executive	FY 2015/2016	440835009
county	22	2009	County Assembly	FY 2016/2017	906245126
county	22	2009	County Assembly	FY 2015/2016	889470749
county	22	2009	County Executive	FY 2016/2017	567268364
county	22	2009	County Executive	FY 2015/2016	496773710
county	3	2009	County Assembly	FY 2016/2017	644923317
county	3	2009	County Assembly	FY 2015/2016	630494611
county	3	2009	County Executive	FY 2016/2017	465891374
county	3	2009	County Executive	FY 2015/2016	450158126
county	20	2009	County Assembly	FY 2016/2017	480465015
county	20	2009	County Assembly	FY 2015/2016	506571368
county	20	2009	County Executive	FY 2016/2017	389559386
county	20	2009	County Executive	FY 2015/2016	412738822
county	45	2009	County Assembly	FY 2016/2017	795788862
county	45	2009	County Assembly	FY 2015/2016	725007565
county	45	2009	County Executive	FY 2016/2017	506442170
county	45	2009	County Executive	FY 2015/2016	468804360
county	42	2009	County Assembly	FY 2016/2017	654621594
county	42	2009	County Assembly	FY 2015/2016	533898787
county	42	2009	County Executive	FY 2016/2017	465891374
county	42	2009	County Executive	FY 2015/2016	450158126
county	15	2009	County Assembly	FY 2016/2017	729738749
county	15	2009	County Assembly	FY 2015/2016	668685315
county	15	2009	County Executive	FY 2016/2017	486166772
county	15	2009	County Executive	FY 2015/2016	459481243
county	2	2009	County Assembly	FY 2016/2017	495317266
county	2	2009	County Assembly	FY 2015/2016	470890661
county	2	2009	County Executive	FY 2016/2017	405065180
county	2	2009	County Executive	FY 2015/2016	422188775
county	31	2009	County Assembly	FY 2016/2017	391467065
county	31	2009	County Assembly	FY 2015/2016	380490113
county	31	2009	County Executive	FY 2016/2017	353778195
county	31	2009	County Executive	FY 2015/2016	393965753
county	5	2009	County Assembly	FY 2016/2017	347758306
county	5	2009	County Assembly	FY 2015/2016	304784663
county	5	2009	County Executive	FY 2016/2017	317997003
county	5	2009	County Executive	FY 2015/2016	375192683
county	16	2009	County Assembly	FY 2016/2017	717783256
county	16	2009	County Assembly	FY 2015/2016	630252131
county	16	2009	County Executive	FY 2016/2017	486166772
county	16	2009	County Executive	FY 2015/2016	459481243
county	17	2009	County Assembly	FY 2016/2017	628398530
county	17	2009	County Assembly	FY 2015/2016	594667329
county	17	2009	County Executive	FY 2016/2017	445615976
county	17	2009	County Executive	FY 2015/2016	440835009
county	9	2009	County Assembly	FY 2016/2017	700168112
county	9	2009	County Assembly	FY 2015/2016	637920243
county	9	2009	County Executive	FY 2016/2017	456425252
county	9	2009	County Executive	FY 2015/2016	445765957
county	10	2009	County Assembly	FY 2016/2017	561636493
county	10	2009	County Assembly	FY 2015/2016	533029240
county	10	2009	County Executive	FY 2016/2017	405065180
county	10	2009	County Executive	FY 2015/2016	422188775
county	12	2009	County Assembly	FY 2016/2017	839515604
county	12	2009	County Assembly	FY 2015/2016	839515604
county	12	2009	County Executive	FY 2016/2017	506442170
county	12	2009	County Executive	FY 2015/2016	468804360
county	44	2009	County Assembly	FY 2016/2017	748308634
county	44	2009	County Assembly	FY 2015/2016	727747850
county	44	2009	County Executive	FY 2016/2017	486166772
county	44	2009	County Executive	FY 2015/2016	459481243
county	1	2009	County Assembly	FY 2016/2017	618543360
county	1	2009	County Assembly	FY 2015/2016	506633450
county	1	2009	County Executive	FY 2016/2017	445615976
county	1	2009	County Executive	FY 2015/2016	440835009
county	21	2009	County Assembly	FY 2016/2017	620552243
county	21	2009	County Assembly	FY 2015/2016	588927919
county	21	2009	County Executive	FY 2016/2017	465891374
county	21	2009	County Executive	FY 2015/2016	450158126
county	47	2009	County Assembly	FY 2016/2017	1320604504
county	47	2009	County Assembly	FY 2015/2016	1224237793
county	47	2009	County Executive	FY 2016/2017	668645354
county	47	2009	County Executive	FY 2015/2016	543389295
county	32	2009	County Assembly	FY 2016/2017	822183269
county	32	2009	County Assembly	FY 2015/2016	792704559
county	32	2009	County Executive	FY 2016/2017	546992966
county	32	2009	County Executive	FY 2015/2016	487450593
county	29	2009	County Assembly	FY 2016/2017	600288748
county	29	2009	County Assembly	FY 2015/2016	524198214
county	29	2009	County Executive	FY 2016/2017	445615976
county	29	2009	County Executive	FY 2015/2016	440835009
county	33	2009	County Assembly	FY 2016/2017	608647196
county	33	2009	County Assembly	FY 2015/2016	611327422
county	33	2009	County Executive	FY 2016/2017	445615976
county	33	2009	County Executive	FY 2015/2016	440835009
county	46	2009	County Assembly	FY 2016/2017	488710625
county	46	2009	County Assembly	FY 2015/2016	428737274
county	46	2009	County Executive	FY 2016/2017	405065180
county	46	2009	County Executive	FY 2015/2016	422188775
county	18	2009	County Assembly	FY 2016/2017	562892769
county	18	2009	County Assembly	FY 2015/2016	580568213
county	18	2009	County Executive	FY 2016/2017	425340578
county	18	2009	County Executive	FY 2015/2016	431511892
county	19	2009	County Assembly	FY 2016/2017	593206457
county	19	2009	County Assembly	FY 2015/2016	547539390
county	19	2009	County Executive	FY 2016/2017	445615976
county	19	2009	County Executive	FY 2015/2016	440835009
county	25	2009	County Assembly	FY 2016/2017	407808782
county	25	2009	County Assembly	FY 2015/2016	380602009
county	25	2009	County Executive	FY 2016/2017	338272401
county	25	2009	County Executive	FY 2015/2016	384515800
county	41	2009	County Assembly	FY 2016/2017	599914472
county	41	2009	County Assembly	FY 2015/2016	594029051
county	41	2009	County Executive	FY 2016/2017	445615976
county	41	2009	County Executive	FY 2015/2016	440835009
county	6	2009	County Assembly	FY 2016/2017	524763967
county	6	2009	County Assembly	FY 2015/2016	507604218
county	6	2009	County Executive	FY 2016/2017	405065180
county	6	2009	County Executive	FY 2015/2016	422188775
county	4	2009	County Assembly	FY 2016/2017	442442874
county	4	2009	County Assembly	FY 2015/2016	423394183
county	4	2009	County Executive	FY 2016/2017	369283988
county	4	2009	County Executive	FY 2015/2016	403415705
county	13	2009	County Assembly	FY 2016/2017	373749361
county	13	2009	County Assembly	FY 2015/2016	359409914
county	13	2009	County Executive	FY 2016/2017	353778195
county	13	2009	County Executive	FY 2015/2016	393965753
county	26	2009	County Assembly	FY 2016/2017	534271010
county	26	2009	County Assembly	FY 2015/2016	498398759
county	26	2009	County Executive	FY 2016/2017	425340578
county	26	2009	County Executive	FY 2015/2016	431511892
county	23	2009	County Assembly	FY 2016/2017	764331379
county	23	2009	County Assembly	FY 2015/2016	977900599
county	23	2009	County Executive	FY 2016/2017	445615976
county	23	2009	County Executive	FY 2015/2016	440835009
county	27	2009	County Assembly	FY 2016/2017	571448098
county	27	2009	County Assembly	FY 2015/2016	502451352
county	27	2009	County Executive	FY 2016/2017	445615976
county	27	2009	County Executive	FY 2015/2016	440835009
county	38	2009	County Assembly	FY 2016/2017	533773279
county	38	2009	County Assembly	FY 2015/2016	669131656
county	38	2009	County Executive	FY 2016/2017	425340578
county	38	2009	County Executive	FY 2015/2016	431511892
county	8	2009	County Assembly	FY 2016/2017	645131099
county	8	2009	County Assembly	FY 2015/2016	560327132
county	8	2009	County Executive	FY 2016/2017	434806700
county	8	2009	County Executive	FY 2015/2016	435904061
county	24	2009	County Assembly	FY 2016/2017	488707104
county	24	2009	County Assembly	FY 2015/2016	429992439
county	24	2009	County Executive	FY 2016/2017	405065180
county	24	2009	County Executive	FY 2015/2016	422188775
\.


--
-- Name: expenditure_year pk_expenditure_year; Type: CONSTRAINT; Schema: public; Owner: pesayetu
--

ALTER TABLE ONLY expenditure_year
    ADD CONSTRAINT pk_expenditure_year PRIMARY KEY (geo_level, geo_code, geo_version, expenditure, year);


--
-- PostgreSQL database dump complete
--

