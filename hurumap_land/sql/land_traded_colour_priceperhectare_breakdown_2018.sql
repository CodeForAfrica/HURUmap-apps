--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP TABLE IF EXISTS public.land_traded_colour_priceperhectare_breakdown_2018;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: land_traded_colour_priceperhectare_breakdown_2018; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.land_traded_colour_priceperhectare_breakdown_2018 (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) DEFAULT ''::character varying NOT NULL,
    breakdown_cc character varying(128) NOT NULL,
    month_cc character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: land_traded_colour_priceperhectare_breakdown_2018; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.land_traded_colour_priceperhectare_breakdown_2018 (geo_level, geo_code, geo_version, breakdown_cc, month_cc, total) FROM stdin;
country	ZA	2016	Government Agriculture	Dec2017	41083
country	ZA	2016	Government Urban	Dec2017	882000
country	ZA	2016	Private	Dec2017	21572
country	ZA	2016	Other	Dec2017	3043
country	ZA	2016	Government Agriculture	Jan2018	6630
country	ZA	2016	Government Urban	Jan2018	42591
country	ZA	2016	Private	Jan2018	22375
country	ZA	2016	Other	Jan2018	65141
country	ZA	2016	Government Agriculture	Feb2018	9421
country	ZA	2016	Government Urban	Feb2018	292891
country	ZA	2016	Private	Feb2018	7661
country	ZA	2016	Other	Feb2018	30505
country	ZA	2016	Government Agriculture	Mar2018	8716
country	ZA	2016	Government Urban	Mar2018	843939
country	ZA	2016	Private	Mar2018	14469
country	ZA	2016	Other	Mar2018	14745
country	ZA	2016	Government Agriculture	Apr2018	124238
country	ZA	2016	Government Urban	Apr2018	\N
country	ZA	2016	Private	Apr2018	15489
country	ZA	2016	Other	Apr2018	7154
country	ZA	2016	Government Agriculture	May2018	4793
country	ZA	2016	Government Urban	May2018	120000
country	ZA	2016	Private	May2018	16144
country	ZA	2016	Other	May2018	10431
country	ZA	2016	Government Agriculture	Jun2018	26668
country	ZA	2016	Government Urban	Jun2018	\N
country	ZA	2016	Private	Jun2018	10296
country	ZA	2016	Other	Jun2018	133178
country	ZA	2016	Government Agriculture	Jul2018	8370
country	ZA	2016	Government Urban	Jul2018	49656
country	ZA	2016	Private	Jul2018	13168
country	ZA	2016	Other	Jul2018	16901
country	ZA	2016	Government Agriculture	Aug2018	5147
country	ZA	2016	Government Urban	Aug2018	192727
country	ZA	2016	Private	Aug2018	13683
country	ZA	2016	Other	Aug2018	21837
country	ZA	2016	Government Agriculture	Sep2018	18391
country	ZA	2016	Government Urban	Sep2018	\N
country	ZA	2016	Private	Sep2018	22339
country	ZA	2016	Other	Sep2018	5172
country	ZA	2016	Government Agriculture	Oct2018	4836
country	ZA	2016	Government Urban	Oct2018	302828
country	ZA	2016	Private	Oct2018	12381
country	ZA	2016	Other	Oct2018	15206
country	ZA	2016	Government Agriculture	Nov2018	1427
country	ZA	2016	Government Urban	Nov2018	\N
country	ZA	2016	Private	Nov2018	15333
country	ZA	2016	Other	Nov2018	71340
province	EC	2016	Government Agriculture	Dec2017	9417
province	EC	2016	Government Urban	Dec2017	\N
province	EC	2016	Private	Dec2017	7198
province	EC	2016	Other	Dec2017	\N
province	EC	2016	Government Agriculture	Jan2018	\N
province	EC	2016	Government Urban	Jan2018	\N
province	EC	2016	Private	Jan2018	26923
province	EC	2016	Other	Jan2018	\N
province	EC	2016	Government Agriculture	Feb2018	\N
province	EC	2016	Government Urban	Feb2018	382514
province	EC	2016	Private	Feb2018	53659
province	EC	2016	Other	Feb2018	342777
province	EC	2016	Government Agriculture	Mar2018	\N
province	EC	2016	Government Urban	Mar2018	\N
province	EC	2016	Private	Mar2018	3587
province	EC	2016	Other	Mar2018	19970
province	EC	2016	Government Agriculture	Apr2018	\N
province	EC	2016	Government Urban	Apr2018	\N
province	EC	2016	Private	Apr2018	4564
province	EC	2016	Other	Apr2018	\N
province	EC	2016	Government Agriculture	May2018	\N
province	EC	2016	Government Urban	May2018	\N
province	EC	2016	Private	May2018	9092
province	EC	2016	Other	May2018	\N
province	EC	2016	Government Agriculture	Jun2018	\N
province	EC	2016	Government Urban	Jun2018	\N
province	EC	2016	Private	Jun2018	39552
province	EC	2016	Other	Jun2018	\N
province	EC	2016	Government Agriculture	Jul2018	\N
province	EC	2016	Government Urban	Jul2018	\N
province	EC	2016	Private	Jul2018	4224
province	EC	2016	Other	Jul2018	\N
province	EC	2016	Government Agriculture	Aug2018	\N
province	EC	2016	Government Urban	Aug2018	\N
province	EC	2016	Private	Aug2018	14237
province	EC	2016	Other	Aug2018	7464
province	EC	2016	Government Agriculture	Sep2018	\N
province	EC	2016	Government Urban	Sep2018	\N
province	EC	2016	Private	Sep2018	6725
province	EC	2016	Other	Sep2018	\N
province	EC	2016	Government Agriculture	Oct2018	7636
province	EC	2016	Government Urban	Oct2018	\N
province	EC	2016	Private	Oct2018	5975
province	EC	2016	Other	Oct2018	\N
province	EC	2016	Government Agriculture	Nov2018	\N
province	EC	2016	Government Urban	Nov2018	\N
province	EC	2016	Private	Nov2018	7183
province	EC	2016	Other	Nov2018	10252
province	FS	2016	Government Agriculture	Dec2017	\N
province	FS	2016	Government Urban	Dec2017	\N
province	FS	2016	Private	Dec2017	14368
province	FS	2016	Other	Dec2017	7405
province	FS	2016	Government Agriculture	Jan2018	6630
province	FS	2016	Government Urban	Jan2018	\N
province	FS	2016	Private	Jan2018	375000
province	FS	2016	Other	Jan2018	\N
province	FS	2016	Government Agriculture	Feb2018	\N
province	FS	2016	Government Urban	Feb2018	\N
province	FS	2016	Private	Feb2018	9686
province	FS	2016	Other	Feb2018	\N
province	FS	2016	Government Agriculture	Mar2018	5756
province	FS	2016	Government Urban	Mar2018	\N
province	FS	2016	Private	Mar2018	9298
province	FS	2016	Other	Mar2018	7236
province	FS	2016	Government Agriculture	Apr2018	\N
province	FS	2016	Government Urban	Apr2018	\N
province	FS	2016	Private	Apr2018	8425
province	FS	2016	Other	Apr2018	31903
province	FS	2016	Government Agriculture	May2018	\N
province	FS	2016	Government Urban	May2018	\N
province	FS	2016	Private	May2018	13157
province	FS	2016	Other	May2018	3987
province	FS	2016	Government Agriculture	Jun2018	\N
province	FS	2016	Government Urban	Jun2018	\N
province	FS	2016	Private	Jun2018	10681
province	FS	2016	Other	Jun2018	159744
province	FS	2016	Government Agriculture	Jul2018	2843
province	FS	2016	Government Urban	Jul2018	\N
province	FS	2016	Private	Jul2018	23257
province	FS	2016	Other	Jul2018	\N
province	FS	2016	Government Agriculture	Aug2018	\N
province	FS	2016	Government Urban	Aug2018	\N
province	FS	2016	Private	Aug2018	8178
province	FS	2016	Other	Aug2018	17227
province	FS	2016	Government Agriculture	Sep2018	\N
province	FS	2016	Government Urban	Sep2018	\N
province	FS	2016	Private	Sep2018	7997
province	FS	2016	Other	Sep2018	3786
province	FS	2016	Government Agriculture	Oct2018	10359
province	FS	2016	Government Urban	Oct2018	\N
province	FS	2016	Private	Oct2018	8058
province	FS	2016	Other	Oct2018	3216
province	FS	2016	Government Agriculture	Nov2018	\N
province	FS	2016	Government Urban	Nov2018	\N
province	FS	2016	Private	Nov2018	2446
province	FS	2016	Other	Nov2018	20136
province	GT	2016	Government Agriculture	Dec2017	68910
province	GT	2016	Government Urban	Dec2017	\N
province	GT	2016	Private	Dec2017	47957
province	GT	2016	Other	Dec2017	\N
province	GT	2016	Government Agriculture	Jan2018	\N
province	GT	2016	Government Urban	Jan2018	42591
province	GT	2016	Private	Jan2018	56923
province	GT	2016	Other	Jan2018	54839
province	GT	2016	Government Agriculture	Feb2018	15132
province	GT	2016	Government Urban	Feb2018	\N
province	GT	2016	Private	Feb2018	20980
province	GT	2016	Other	Feb2018	\N
province	GT	2016	Government Agriculture	Mar2018	\N
province	GT	2016	Government Urban	Mar2018	\N
province	GT	2016	Private	Mar2018	58884
province	GT	2016	Other	Mar2018	2933824
province	GT	2016	Government Agriculture	Apr2018	\N
province	GT	2016	Government Urban	Apr2018	\N
province	GT	2016	Private	Apr2018	37223
province	GT	2016	Other	Apr2018	\N
province	GT	2016	Government Agriculture	May2018	\N
province	GT	2016	Government Urban	May2018	\N
province	GT	2016	Private	May2018	25517
province	GT	2016	Other	May2018	10007
province	GT	2016	Government Agriculture	Jun2018	\N
province	GT	2016	Government Urban	Jun2018	\N
province	GT	2016	Private	Jun2018	58134
province	GT	2016	Other	Jun2018	84969
province	GT	2016	Government Agriculture	Jul2018	\N
province	GT	2016	Government Urban	Jul2018	113095
province	GT	2016	Private	Jul2018	100763
province	GT	2016	Other	Jul2018	\N
province	GT	2016	Government Agriculture	Aug2018	65000
province	GT	2016	Government Urban	Aug2018	\N
province	GT	2016	Private	Aug2018	17066
province	GT	2016	Other	Aug2018	2174
province	GT	2016	Government Agriculture	Sep2018	\N
province	GT	2016	Government Urban	Sep2018	\N
province	GT	2016	Private	Sep2018	323788
province	GT	2016	Other	Sep2018	27364
province	GT	2016	Government Agriculture	Oct2018	16351
province	GT	2016	Government Urban	Oct2018	569767
province	GT	2016	Private	Oct2018	42764
province	GT	2016	Other	Oct2018	395432
province	GT	2016	Government Agriculture	Nov2018	\N
province	GT	2016	Government Urban	Nov2018	\N
province	GT	2016	Private	Nov2018	19658
province	GT	2016	Other	Nov2018	34030
province	KZN	2016	Government Agriculture	Dec2017	15779
province	KZN	2016	Government Urban	Dec2017	882000
province	KZN	2016	Private	Dec2017	106011
province	KZN	2016	Other	Dec2017	\N
province	KZN	2016	Government Agriculture	Jan2018	\N
province	KZN	2016	Government Urban	Jan2018	\N
province	KZN	2016	Private	Jan2018	38535
province	KZN	2016	Other	Jan2018	\N
province	KZN	2016	Government Agriculture	Feb2018	10157
province	KZN	2016	Government Urban	Feb2018	\N
province	KZN	2016	Private	Feb2018	39550
province	KZN	2016	Other	Feb2018	49032
province	KZN	2016	Government Agriculture	Mar2018	15064
province	KZN	2016	Government Urban	Mar2018	\N
province	KZN	2016	Private	Mar2018	9543
province	KZN	2016	Other	Mar2018	65712
province	KZN	2016	Government Agriculture	Apr2018	\N
province	KZN	2016	Government Urban	Apr2018	\N
province	KZN	2016	Private	Apr2018	28975
province	KZN	2016	Other	Apr2018	120000
province	KZN	2016	Government Agriculture	May2018	\N
province	KZN	2016	Government Urban	May2018	\N
province	KZN	2016	Private	May2018	28440
province	KZN	2016	Other	May2018	145000
province	KZN	2016	Government Agriculture	Jun2018	\N
province	KZN	2016	Government Urban	Jun2018	\N
province	KZN	2016	Private	Jun2018	41677
province	KZN	2016	Other	Jun2018	\N
province	KZN	2016	Government Agriculture	Jul2018	\N
province	KZN	2016	Government Urban	Jul2018	\N
province	KZN	2016	Private	Jul2018	64056
province	KZN	2016	Other	Jul2018	\N
province	KZN	2016	Government Agriculture	Aug2018	\N
province	KZN	2016	Government Urban	Aug2018	\N
province	KZN	2016	Private	Aug2018	43197
province	KZN	2016	Other	Aug2018	237656
province	KZN	2016	Government Agriculture	Sep2018	\N
province	KZN	2016	Government Urban	Sep2018	\N
province	KZN	2016	Private	Sep2018	25550
province	KZN	2016	Other	Sep2018	89549
province	KZN	2016	Government Agriculture	Oct2018	\N
province	KZN	2016	Government Urban	Oct2018	34783
province	KZN	2016	Private	Oct2018	17597
province	KZN	2016	Other	Oct2018	58882
province	KZN	2016	Government Agriculture	Nov2018	\N
province	KZN	2016	Government Urban	Nov2018	\N
province	KZN	2016	Private	Nov2018	22192
province	KZN	2016	Other	Nov2018	112500
province	LIM	2016	Government Agriculture	Dec2017	\N
province	LIM	2016	Government Urban	Dec2017	\N
province	LIM	2016	Private	Dec2017	10723
province	LIM	2016	Other	Dec2017	34091
province	LIM	2016	Government Agriculture	Jan2018	\N
province	LIM	2016	Government Urban	Jan2018	\N
province	LIM	2016	Private	Jan2018	16652
province	LIM	2016	Other	Jan2018	61111
province	LIM	2016	Government Agriculture	Feb2018	\N
province	LIM	2016	Government Urban	Feb2018	18
province	LIM	2016	Private	Feb2018	8790
province	LIM	2016	Other	Feb2018	10436
province	LIM	2016	Government Agriculture	Mar2018	\N
province	LIM	2016	Government Urban	Mar2018	285000
province	LIM	2016	Private	Mar2018	19334
province	LIM	2016	Other	Mar2018	10078
province	LIM	2016	Government Agriculture	Apr2018	\N
province	LIM	2016	Government Urban	Apr2018	\N
province	LIM	2016	Private	Apr2018	51809
province	LIM	2016	Other	Apr2018	346154
province	LIM	2016	Government Agriculture	May2018	\N
province	LIM	2016	Government Urban	May2018	\N
province	LIM	2016	Private	May2018	9135
province	LIM	2016	Other	May2018	\N
province	LIM	2016	Government Agriculture	Jun2018	\N
province	LIM	2016	Government Urban	Jun2018	\N
province	LIM	2016	Private	Jun2018	21752
province	LIM	2016	Other	Jun2018	151456
province	LIM	2016	Government Agriculture	Jul2018	\N
province	LIM	2016	Government Urban	Jul2018	7018
province	LIM	2016	Private	Jul2018	10002
province	LIM	2016	Other	Jul2018	\N
province	LIM	2016	Government Agriculture	Aug2018	\N
province	LIM	2016	Government Urban	Aug2018	\N
province	LIM	2016	Private	Aug2018	10349
province	LIM	2016	Other	Aug2018	\N
province	LIM	2016	Government Agriculture	Sep2018	\N
province	LIM	2016	Government Urban	Sep2018	\N
province	LIM	2016	Private	Sep2018	5211
province	LIM	2016	Other	Sep2018	\N
province	LIM	2016	Government Agriculture	Oct2018	\N
province	LIM	2016	Government Urban	Oct2018	\N
province	LIM	2016	Private	Oct2018	5745
province	LIM	2016	Other	Oct2018	10958
province	LIM	2016	Government Agriculture	Nov2018	\N
province	LIM	2016	Government Urban	Nov2018	\N
province	LIM	2016	Private	Nov2018	14031
province	LIM	2016	Other	Nov2018	250294
province	MP	2016	Government Agriculture	Dec2017	8821
province	MP	2016	Government Urban	Dec2017	\N
province	MP	2016	Private	Dec2017	52191
province	MP	2016	Other	Dec2017	245000
province	MP	2016	Government Agriculture	Jan2018	\N
province	MP	2016	Government Urban	Jan2018	\N
province	MP	2016	Private	Jan2018	16135
province	MP	2016	Other	Jan2018	67207
province	MP	2016	Government Agriculture	Feb2018	7431
province	MP	2016	Government Urban	Feb2018	\N
province	MP	2016	Private	Feb2018	11756
province	MP	2016	Other	Feb2018	30725
province	MP	2016	Government Agriculture	Mar2018	\N
province	MP	2016	Government Urban	Mar2018	\N
province	MP	2016	Private	Mar2018	79885
province	MP	2016	Other	Mar2018	38785
province	MP	2016	Government Agriculture	Apr2018	\N
province	MP	2016	Government Urban	Apr2018	\N
province	MP	2016	Private	Apr2018	15235
province	MP	2016	Other	Apr2018	46371
province	MP	2016	Government Agriculture	May2018	\N
province	MP	2016	Government Urban	May2018	\N
province	MP	2016	Private	May2018	30040
province	MP	2016	Other	May2018	149194
province	MP	2016	Government Agriculture	Jun2018	\N
province	MP	2016	Government Urban	Jun2018	\N
province	MP	2016	Private	Jun2018	15472
province	MP	2016	Other	Jun2018	\N
province	MP	2016	Government Agriculture	Jul2018	10577
province	MP	2016	Government Urban	Jul2018	121951
province	MP	2016	Private	Jul2018	33342
province	MP	2016	Other	Jul2018	16438
province	MP	2016	Government Agriculture	Aug2018	\N
province	MP	2016	Government Urban	Aug2018	\N
province	MP	2016	Private	Aug2018	21349
province	MP	2016	Other	Aug2018	57407
province	MP	2016	Government Agriculture	Sep2018	14928
province	MP	2016	Government Urban	Sep2018	\N
province	MP	2016	Private	Sep2018	33655
province	MP	2016	Other	Sep2018	46280
province	MP	2016	Government Agriculture	Oct2018	4877
province	MP	2016	Government Urban	Oct2018	\N
province	MP	2016	Private	Oct2018	32449
province	MP	2016	Other	Oct2018	62796
province	MP	2016	Government Agriculture	Nov2018	\N
province	MP	2016	Government Urban	Nov2018	\N
province	MP	2016	Private	Nov2018	30258
province	MP	2016	Other	Nov2018	48357
province	NC	2016	Government Agriculture	Dec2017	\N
province	NC	2016	Government Urban	Dec2017	\N
province	NC	2016	Private	Dec2017	18421
province	NC	2016	Other	Dec2017	2402
province	NC	2016	Government Agriculture	Jan2018	\N
province	NC	2016	Government Urban	Jan2018	\N
province	NC	2016	Private	Jan2018	3991
province	NC	2016	Other	Jan2018	\N
province	NC	2016	Government Agriculture	Feb2018	\N
province	NC	2016	Government Urban	Feb2018	\N
province	NC	2016	Private	Feb2018	1337
province	NC	2016	Other	Feb2018	7373
province	NC	2016	Government Agriculture	Mar2018	\N
province	NC	2016	Government Urban	Mar2018	1086957
province	NC	2016	Private	Mar2018	7998
province	NC	2016	Other	Mar2018	2291
province	NC	2016	Government Agriculture	Apr2018	\N
province	NC	2016	Government Urban	Apr2018	\N
province	NC	2016	Private	Apr2018	1206
province	NC	2016	Other	Apr2018	2466
province	NC	2016	Government Agriculture	May2018	\N
province	NC	2016	Government Urban	May2018	\N
province	NC	2016	Private	May2018	\N
province	NC	2016	Other	May2018	\N
province	NC	2016	Government Agriculture	Jun2018	\N
province	NC	2016	Government Urban	Jun2018	\N
province	NC	2016	Private	Jun2018	2039
province	NC	2016	Other	Jun2018	\N
province	NC	2016	Government Agriculture	Jul2018	\N
province	NC	2016	Government Urban	Jul2018	\N
province	NC	2016	Private	Jul2018	\N
province	NC	2016	Other	Jul2018	\N
province	NC	2016	Government Agriculture	Aug2018	\N
province	NC	2016	Government Urban	Aug2018	\N
province	NC	2016	Private	Aug2018	3401
province	NC	2016	Other	Aug2018	7470
province	NC	2016	Government Agriculture	Sep2018	\N
province	NC	2016	Government Urban	Sep2018	\N
province	NC	2016	Private	Sep2018	276471
province	NC	2016	Other	Sep2018	\N
province	NC	2016	Government Agriculture	Oct2018	2675
province	NC	2016	Government Urban	Oct2018	\N
province	NC	2016	Private	Oct2018	\N
province	NC	2016	Other	Oct2018	\N
province	NC	2016	Government Agriculture	Nov2018	\N
province	NC	2016	Government Urban	Nov2018	\N
province	NC	2016	Private	Nov2018	300000
province	NC	2016	Other	Nov2018	\N
province	NW	2016	Government Agriculture	Dec2017	435185
province	NW	2016	Government Urban	Dec2017	\N
province	NW	2016	Private	Dec2017	14656
province	NW	2016	Other	Dec2017	\N
province	NW	2016	Government Agriculture	Jan2018	\N
province	NW	2016	Government Urban	Jan2018	\N
province	NW	2016	Private	Jan2018	25318
province	NW	2016	Other	Jan2018	\N
province	NW	2016	Government Agriculture	Feb2018	\N
province	NW	2016	Government Urban	Feb2018	\N
province	NW	2016	Private	Feb2018	14648
province	NW	2016	Other	Feb2018	\N
province	NW	2016	Government Agriculture	Mar2018	6844
province	NW	2016	Government Urban	Mar2018	\N
province	NW	2016	Private	Mar2018	17382
province	NW	2016	Other	Mar2018	\N
province	NW	2016	Government Agriculture	Apr2018	\N
province	NW	2016	Government Urban	Apr2018	\N
province	NW	2016	Private	Apr2018	19894
province	NW	2016	Other	Apr2018	28885
province	NW	2016	Government Agriculture	May2018	4533
province	NW	2016	Government Urban	May2018	120000
province	NW	2016	Private	May2018	32490
province	NW	2016	Other	May2018	6309
province	NW	2016	Government Agriculture	Jun2018	26668
province	NW	2016	Government Urban	Jun2018	\N
province	NW	2016	Private	Jun2018	15883
province	NW	2016	Other	Jun2018	1730
province	NW	2016	Government Agriculture	Jul2018	23558
province	NW	2016	Government Urban	Jul2018	\N
province	NW	2016	Private	Jul2018	13077
province	NW	2016	Other	Jul2018	27625
province	NW	2016	Government Agriculture	Aug2018	4130
province	NW	2016	Government Urban	Aug2018	192727
province	NW	2016	Private	Aug2018	21187
province	NW	2016	Other	Aug2018	250062
province	NW	2016	Government Agriculture	Sep2018	19740
province	NW	2016	Government Urban	Sep2018	\N
province	NW	2016	Private	Sep2018	13530
province	NW	2016	Other	Sep2018	\N
province	NW	2016	Government Agriculture	Oct2018	7086
province	NW	2016	Government Urban	Oct2018	113064
province	NW	2016	Private	Oct2018	7291
province	NW	2016	Other	Oct2018	34242
province	NW	2016	Government Agriculture	Nov2018	\N
province	NW	2016	Government Urban	Nov2018	\N
province	NW	2016	Private	Nov2018	15721
province	NW	2016	Other	Nov2018	450450
province	WC	2016	Government Agriculture	Dec2017	\N
province	WC	2016	Government Urban	Dec2017	\N
province	WC	2016	Private	Dec2017	13316
province	WC	2016	Other	Dec2017	400
province	WC	2016	Government Agriculture	Jan2018	\N
province	WC	2016	Government Urban	Jan2018	\N
province	WC	2016	Private	Jan2018	45463
province	WC	2016	Other	Jan2018	\N
province	WC	2016	Government Agriculture	Feb2018	\N
province	WC	2016	Government Urban	Feb2018	\N
province	WC	2016	Private	Feb2018	21374
province	WC	2016	Other	Feb2018	60800
province	WC	2016	Government Agriculture	Mar2018	\N
province	WC	2016	Government Urban	Mar2018	\N
province	WC	2016	Private	Mar2018	64363
province	WC	2016	Other	Mar2018	5328
province	WC	2016	Government Agriculture	Apr2018	124238
province	WC	2016	Government Urban	Apr2018	\N
province	WC	2016	Private	Apr2018	4956
province	WC	2016	Other	Apr2018	\N
province	WC	2016	Government Agriculture	May2018	5734
province	WC	2016	Government Urban	May2018	\N
province	WC	2016	Private	May2018	38040
province	WC	2016	Other	May2018	\N
province	WC	2016	Government Agriculture	Jun2018	\N
province	WC	2016	Government Urban	Jun2018	\N
province	WC	2016	Private	Jun2018	40970
province	WC	2016	Other	Jun2018	\N
province	WC	2016	Government Agriculture	Jul2018	\N
province	WC	2016	Government Urban	Jul2018	\N
province	WC	2016	Private	Jul2018	\N
province	WC	2016	Other	Jul2018	\N
province	WC	2016	Government Agriculture	Aug2018	\N
province	WC	2016	Government Urban	Aug2018	\N
province	WC	2016	Private	Aug2018	9872
province	WC	2016	Other	Aug2018	75000
province	WC	2016	Government Agriculture	Sep2018	91667
province	WC	2016	Government Urban	Sep2018	\N
province	WC	2016	Private	Sep2018	30845
province	WC	2016	Other	Sep2018	46512
province	WC	2016	Government Agriculture	Oct2018	\N
province	WC	2016	Government Urban	Oct2018	\N
province	WC	2016	Private	Oct2018	7198
province	WC	2016	Other	Oct2018	55104
province	WC	2016	Government Agriculture	Nov2018	1427
province	WC	2016	Government Urban	Nov2018	\N
province	WC	2016	Private	Nov2018	\N
province	WC	2016	Other	Nov2018	200000
\.


--
-- PostgreSQL database dump complete
--

