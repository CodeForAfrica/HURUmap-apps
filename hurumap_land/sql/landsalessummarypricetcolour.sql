--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

DROP TABLE IF EXISTS public.landsalessummarypricetcolour;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalessummarypricetcolour; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.landsalessummarypricetcolour (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    land_breakdown_pc character varying(128) NOT NULL,
    month_pc character varying(100) NOT NULL,
    total integer
);


--
-- Data for Name: landsalessummarypricetcolour; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.landsalessummarypricetcolour (geo_level, geo_code, geo_version, land_breakdown_pc, month_pc, total) FROM stdin;
country	ZA	2016	Government Agriculture	Aug	3924
country	ZA	2016	Government Agriculture	Sep	8840
country	ZA	2016	Government Agriculture	Oct	7687
country	ZA	2016	Government Agriculture	Nov	8300
country	ZA	2016	Government Agriculture	Dec	41083
country	ZA	2016	Government Agriculture	Jan	6630
country	ZA	2016	Government Agriculture	Feb	9421
country	ZA	2016	Government Agriculture	Mar	8716
country	ZA	2016	Government Agriculture	Apr	124238
country	ZA	2016	Government Agriculture	May	4793
country	ZA	2016	Government Agriculture	Jun	26668
country	ZA	2016	Government Agriculture	Jul	8370
province	EC	2016	Government Agriculture	Aug	\N
province	EC	2016	Government Agriculture	Sep	11463
province	EC	2016	Government Agriculture	Oct	\N
province	EC	2016	Government Agriculture	Nov	\N
province	EC	2016	Government Agriculture	Dec	9417
province	EC	2016	Government Agriculture	Jan	\N
province	EC	2016	Government Agriculture	Feb	\N
province	EC	2016	Government Agriculture	Mar	\N
province	EC	2016	Government Agriculture	Apr	\N
province	EC	2016	Government Agriculture	May	\N
province	EC	2016	Government Agriculture	Jun	\N
province	EC	2016	Government Agriculture	Jul	\N
province	FS	2016	Government Agriculture	Aug	7585
province	FS	2016	Government Agriculture	Sep	\N
province	FS	2016	Government Agriculture	Oct	\N
province	FS	2016	Government Agriculture	Nov	\N
province	FS	2016	Government Agriculture	Dec	\N
province	FS	2016	Government Agriculture	Jan	6630
province	FS	2016	Government Agriculture	Feb	\N
province	FS	2016	Government Agriculture	Mar	5756
province	FS	2016	Government Agriculture	Apr	\N
province	FS	2016	Government Agriculture	May	\N
province	FS	2016	Government Agriculture	Jun	\N
province	FS	2016	Government Agriculture	Jul	2843
province	GT	2016	Government Agriculture	Aug	20559
province	GT	2016	Government Agriculture	Sep	\N
province	GT	2016	Government Agriculture	Oct	\N
province	GT	2016	Government Agriculture	Nov	\N
province	GT	2016	Government Agriculture	Dec	68910
province	GT	2016	Government Agriculture	Jan	\N
province	GT	2016	Government Agriculture	Feb	15132
province	GT	2016	Government Agriculture	Mar	\N
province	GT	2016	Government Agriculture	Apr	\N
province	GT	2016	Government Agriculture	May	\N
province	GT	2016	Government Agriculture	Jun	\N
province	GT	2016	Government Agriculture	Jul	\N
province	KZN	2016	Government Agriculture	Aug	\N
province	KZN	2016	Government Agriculture	Sep	\N
province	KZN	2016	Government Agriculture	Oct	6772
province	KZN	2016	Government Agriculture	Nov	\N
province	KZN	2016	Government Agriculture	Dec	15779
province	KZN	2016	Government Agriculture	Jan	\N
province	KZN	2016	Government Agriculture	Feb	10157
province	KZN	2016	Government Agriculture	Mar	15064
province	KZN	2016	Government Agriculture	Apr	\N
province	KZN	2016	Government Agriculture	May	\N
province	KZN	2016	Government Agriculture	Jun	\N
province	KZN	2016	Government Agriculture	Jul	\N
province	LIM	2016	Government Agriculture	Aug	\N
province	LIM	2016	Government Agriculture	Sep	10502
province	LIM	2016	Government Agriculture	Oct	\N
province	LIM	2016	Government Agriculture	Nov	8307
province	LIM	2016	Government Agriculture	Dec	\N
province	LIM	2016	Government Agriculture	Jan	\N
province	LIM	2016	Government Agriculture	Feb	\N
province	LIM	2016	Government Agriculture	Mar	\N
province	LIM	2016	Government Agriculture	Apr	\N
province	LIM	2016	Government Agriculture	May	\N
province	LIM	2016	Government Agriculture	Jun	\N
province	LIM	2016	Government Agriculture	Jul	\N
province	MP	2016	Government Agriculture	Aug	14618
province	MP	2016	Government Agriculture	Sep	7996
province	MP	2016	Government Agriculture	Oct	8984
province	MP	2016	Government Agriculture	Nov	7089
province	MP	2016	Government Agriculture	Dec	8821
province	MP	2016	Government Agriculture	Jan	\N
province	MP	2016	Government Agriculture	Feb	7431
province	MP	2016	Government Agriculture	Mar	\N
province	MP	2016	Government Agriculture	Apr	\N
province	MP	2016	Government Agriculture	May	\N
province	MP	2016	Government Agriculture	Jun	\N
province	MP	2016	Government Agriculture	Jul	10577
province	NC	2016	Government Agriculture	Aug	2033
province	NC	2016	Government Agriculture	Sep	5142
province	NC	2016	Government Agriculture	Oct	\N
province	NC	2016	Government Agriculture	Nov	\N
province	NC	2016	Government Agriculture	Dec	\N
province	NC	2016	Government Agriculture	Jan	\N
province	NC	2016	Government Agriculture	Feb	\N
province	NC	2016	Government Agriculture	Mar	\N
province	NC	2016	Government Agriculture	Apr	\N
province	NC	2016	Government Agriculture	May	\N
province	NC	2016	Government Agriculture	Jun	\N
province	NC	2016	Government Agriculture	Jul	\N
province	NW	2016	Government Agriculture	Aug	10723
province	NW	2016	Government Agriculture	Sep	8266
province	NW	2016	Government Agriculture	Oct	\N
province	NW	2016	Government Agriculture	Nov	10692
province	NW	2016	Government Agriculture	Dec	435185
province	NW	2016	Government Agriculture	Jan	\N
province	NW	2016	Government Agriculture	Feb	\N
province	NW	2016	Government Agriculture	Mar	6844
province	NW	2016	Government Agriculture	Apr	\N
province	NW	2016	Government Agriculture	May	4533
province	NW	2016	Government Agriculture	Jun	26668
province	NW	2016	Government Agriculture	Jul	23558
province	WC	2016	Government Agriculture	Aug	\N
province	WC	2016	Government Agriculture	Sep	17209
province	WC	2016	Government Agriculture	Oct	\N
province	WC	2016	Government Agriculture	Nov	\N
province	WC	2016	Government Agriculture	Dec	\N
province	WC	2016	Government Agriculture	Jan	\N
province	WC	2016	Government Agriculture	Feb	\N
province	WC	2016	Government Agriculture	Mar	\N
province	WC	2016	Government Agriculture	Apr	124238
province	WC	2016	Government Agriculture	May	5734
province	WC	2016	Government Agriculture	Jun	\N
province	WC	2016	Government Agriculture	Jul	\N
country	ZA	2016	Government Urban	Aug	354706
country	ZA	2016	Government Urban	Sep	\N
country	ZA	2016	Government Urban	Oct	138018
country	ZA	2016	Government Urban	Nov	50213
country	ZA	2016	Government Urban	Dec	882000
country	ZA	2016	Government Urban	Jan	42591
country	ZA	2016	Government Urban	Feb	292891
country	ZA	2016	Government Urban	Mar	843939
country	ZA	2016	Government Urban	Apr	\N
country	ZA	2016	Government Urban	May	120000
country	ZA	2016	Government Urban	Jun	\N
country	ZA	2016	Government Urban	Jul	49656
province	EC	2016	Government Urban	Aug	\N
province	EC	2016	Government Urban	Sep	\N
province	EC	2016	Government Urban	Oct	\N
province	EC	2016	Government Urban	Nov	\N
province	EC	2016	Government Urban	Dec	\N
province	EC	2016	Government Urban	Jan	\N
province	EC	2016	Government Urban	Feb	382514
province	EC	2016	Government Urban	Mar	\N
province	EC	2016	Government Urban	Apr	\N
province	EC	2016	Government Urban	May	\N
province	EC	2016	Government Urban	Jun	\N
province	EC	2016	Government Urban	Jul	\N
province	FS	2016	Government Urban	Aug	\N
province	FS	2016	Government Urban	Sep	\N
province	FS	2016	Government Urban	Oct	\N
province	FS	2016	Government Urban	Nov	\N
province	FS	2016	Government Urban	Dec	\N
province	FS	2016	Government Urban	Jan	\N
province	FS	2016	Government Urban	Feb	\N
province	FS	2016	Government Urban	Mar	\N
province	FS	2016	Government Urban	Apr	\N
province	FS	2016	Government Urban	May	\N
province	FS	2016	Government Urban	Jun	\N
province	FS	2016	Government Urban	Jul	\N
province	GT	2016	Government Urban	Aug	\N
province	GT	2016	Government Urban	Sep	\N
province	GT	2016	Government Urban	Oct	\N
province	GT	2016	Government Urban	Nov	\N
province	GT	2016	Government Urban	Dec	\N
province	GT	2016	Government Urban	Jan	42591
province	GT	2016	Government Urban	Feb	\N
province	GT	2016	Government Urban	Mar	\N
province	GT	2016	Government Urban	Apr	\N
province	GT	2016	Government Urban	May	\N
province	GT	2016	Government Urban	Jun	\N
province	GT	2016	Government Urban	Jul	113095
province	KZN	2016	Government Urban	Aug	\N
province	KZN	2016	Government Urban	Sep	\N
province	KZN	2016	Government Urban	Oct	\N
province	KZN	2016	Government Urban	Nov	\N
province	KZN	2016	Government Urban	Dec	882000
province	KZN	2016	Government Urban	Jan	\N
province	KZN	2016	Government Urban	Feb	\N
province	KZN	2016	Government Urban	Mar	\N
province	KZN	2016	Government Urban	Apr	\N
province	KZN	2016	Government Urban	May	\N
province	KZN	2016	Government Urban	Jun	\N
province	KZN	2016	Government Urban	Jul	\N
province	LIM	2016	Government Urban	Aug	\N
province	LIM	2016	Government Urban	Sep	\N
province	LIM	2016	Government Urban	Oct	\N
province	LIM	2016	Government Urban	Nov	50213
province	LIM	2016	Government Urban	Dec	\N
province	LIM	2016	Government Urban	Jan	\N
province	LIM	2016	Government Urban	Feb	18
province	LIM	2016	Government Urban	Mar	285000
province	LIM	2016	Government Urban	Apr	\N
province	LIM	2016	Government Urban	May	\N
province	LIM	2016	Government Urban	Jun	\N
province	LIM	2016	Government Urban	Jul	7018
province	MP	2016	Government Urban	Aug	\N
province	MP	2016	Government Urban	Sep	\N
province	MP	2016	Government Urban	Oct	\N
province	MP	2016	Government Urban	Nov	\N
province	MP	2016	Government Urban	Dec	\N
province	MP	2016	Government Urban	Jan	\N
province	MP	2016	Government Urban	Feb	\N
province	MP	2016	Government Urban	Mar	\N
province	MP	2016	Government Urban	Apr	\N
province	MP	2016	Government Urban	May	\N
province	MP	2016	Government Urban	Jun	\N
province	MP	2016	Government Urban	Jul	121951
province	NC	2016	Government Urban	Aug	\N
province	NC	2016	Government Urban	Sep	\N
province	NC	2016	Government Urban	Oct	266667
province	NC	2016	Government Urban	Nov	\N
province	NC	2016	Government Urban	Dec	\N
province	NC	2016	Government Urban	Jan	\N
province	NC	2016	Government Urban	Feb	\N
province	NC	2016	Government Urban	Mar	1086957
province	NC	2016	Government Urban	Apr	\N
province	NC	2016	Government Urban	May	\N
province	NC	2016	Government Urban	Jun	\N
province	NC	2016	Government Urban	Jul	\N
province	NW	2016	Government Urban	Aug	\N
province	NW	2016	Government Urban	Sep	\N
province	NW	2016	Government Urban	Oct	21770
province	NW	2016	Government Urban	Nov	\N
province	NW	2016	Government Urban	Dec	\N
province	NW	2016	Government Urban	Jan	\N
province	NW	2016	Government Urban	Feb	\N
province	NW	2016	Government Urban	Mar	\N
province	NW	2016	Government Urban	Apr	\N
province	NW	2016	Government Urban	May	120000
province	NW	2016	Government Urban	Jun	\N
province	NW	2016	Government Urban	Jul	\N
province	WC	2016	Government Urban	Aug	354706
province	WC	2016	Government Urban	Sep	\N
province	WC	2016	Government Urban	Oct	\N
province	WC	2016	Government Urban	Nov	\N
province	WC	2016	Government Urban	Dec	\N
province	WC	2016	Government Urban	Jan	\N
province	WC	2016	Government Urban	Feb	\N
province	WC	2016	Government Urban	Mar	\N
province	WC	2016	Government Urban	Apr	\N
province	WC	2016	Government Urban	May	\N
province	WC	2016	Government Urban	Jun	\N
province	WC	2016	Government Urban	Jul	\N
country	ZA	2016	Other	Aug	3257
country	ZA	2016	Other	Sep	86179
country	ZA	2016	Other	Oct	5482
country	ZA	2016	Other	Nov	9572
country	ZA	2016	Other	Dec	3043
country	ZA	2016	Other	Jan	65141
country	ZA	2016	Other	Feb	30505
country	ZA	2016	Other	Mar	14745
country	ZA	2016	Other	Apr	7154
country	ZA	2016	Other	May	10431
country	ZA	2016	Other	Jun	133178
country	ZA	2016	Other	Jul	16901
province	EC	2016	Other	Aug	6394
province	EC	2016	Other	Sep	\N
province	EC	2016	Other	Oct	7908
province	EC	2016	Other	Nov	1083333
province	EC	2016	Other	Dec	\N
province	EC	2016	Other	Jan	\N
province	EC	2016	Other	Feb	342777
province	EC	2016	Other	Mar	19970
province	EC	2016	Other	Apr	\N
province	EC	2016	Other	May	\N
province	EC	2016	Other	Jun	\N
province	EC	2016	Other	Jul	\N
province	FS	2016	Other	Aug	14747
province	FS	2016	Other	Sep	\N
province	FS	2016	Other	Oct	291407
province	FS	2016	Other	Nov	3207
province	FS	2016	Other	Dec	7405
province	FS	2016	Other	Jan	\N
province	FS	2016	Other	Feb	\N
province	FS	2016	Other	Mar	7236
province	FS	2016	Other	Apr	31903
province	FS	2016	Other	May	3987
province	FS	2016	Other	Jun	159744
province	FS	2016	Other	Jul	\N
province	GT	2016	Other	Aug	\N
province	GT	2016	Other	Sep	27098
province	GT	2016	Other	Oct	\N
province	GT	2016	Other	Nov	45479
province	GT	2016	Other	Dec	\N
province	GT	2016	Other	Jan	54839
province	GT	2016	Other	Feb	\N
province	GT	2016	Other	Mar	2933824
province	GT	2016	Other	Apr	\N
province	GT	2016	Other	May	10007
province	GT	2016	Other	Jun	84969
province	GT	2016	Other	Jul	\N
province	KZN	2016	Other	Aug	\N
province	KZN	2016	Other	Sep	160752
province	KZN	2016	Other	Oct	\N
province	KZN	2016	Other	Nov	\N
province	KZN	2016	Other	Dec	\N
province	KZN	2016	Other	Jan	\N
province	KZN	2016	Other	Feb	49032
province	KZN	2016	Other	Mar	65712
province	KZN	2016	Other	Apr	120000
province	KZN	2016	Other	May	145000
province	KZN	2016	Other	Jun	\N
province	KZN	2016	Other	Jul	\N
province	LIM	2016	Other	Aug	\N
province	LIM	2016	Other	Sep	\N
province	LIM	2016	Other	Oct	65000
province	LIM	2016	Other	Nov	18344
province	LIM	2016	Other	Dec	34091
province	LIM	2016	Other	Jan	61111
province	LIM	2016	Other	Feb	10436
province	LIM	2016	Other	Mar	10078
province	LIM	2016	Other	Apr	346154
province	LIM	2016	Other	May	\N
province	LIM	2016	Other	Jun	151456
province	LIM	2016	Other	Jul	\N
province	MP	2016	Other	Aug	2868
province	MP	2016	Other	Sep	87601
province	MP	2016	Other	Oct	\N
province	MP	2016	Other	Nov	20053
province	MP	2016	Other	Dec	245000
province	MP	2016	Other	Jan	67207
province	MP	2016	Other	Feb	30725
province	MP	2016	Other	Mar	38785
province	MP	2016	Other	Apr	46371
province	MP	2016	Other	May	149194
province	MP	2016	Other	Jun	\N
province	MP	2016	Other	Jul	16438
province	NC	2016	Other	Aug	2160
province	NC	2016	Other	Sep	\N
province	NC	2016	Other	Oct	1959
province	NC	2016	Other	Nov	2318
province	NC	2016	Other	Dec	2402
province	NC	2016	Other	Jan	\N
province	NC	2016	Other	Feb	7373
province	NC	2016	Other	Mar	2291
province	NC	2016	Other	Apr	2466
province	NC	2016	Other	May	\N
province	NC	2016	Other	Jun	\N
province	NC	2016	Other	Jul	\N
province	NW	2016	Other	Aug	\N
province	NW	2016	Other	Sep	6061
province	NW	2016	Other	Oct	170455
province	NW	2016	Other	Nov	25000
province	NW	2016	Other	Dec	\N
province	NW	2016	Other	Jan	\N
province	NW	2016	Other	Feb	\N
province	NW	2016	Other	Mar	\N
province	NW	2016	Other	Apr	28885
province	NW	2016	Other	May	6309
province	NW	2016	Other	Jun	1730
province	NW	2016	Other	Jul	27625
province	WC	2016	Other	Aug	204386
province	WC	2016	Other	Sep	\N
province	WC	2016	Other	Oct	\N
province	WC	2016	Other	Nov	\N
province	WC	2016	Other	Dec	400
province	WC	2016	Other	Jan	\N
province	WC	2016	Other	Feb	60800
province	WC	2016	Other	Mar	5328
province	WC	2016	Other	Apr	\N
province	WC	2016	Other	May	\N
province	WC	2016	Other	Jun	\N
province	WC	2016	Other	Jul	\N
country	ZA	2016	Private	Aug	14735
country	ZA	2016	Private	Sep	14354
country	ZA	2016	Private	Oct	24127
country	ZA	2016	Private	Nov	14209
country	ZA	2016	Private	Dec	21572
country	ZA	2016	Private	Jan	22375
country	ZA	2016	Private	Feb	7661
country	ZA	2016	Private	Mar	14469
country	ZA	2016	Private	Apr	15489
country	ZA	2016	Private	May	16144
country	ZA	2016	Private	Jun	10296
country	ZA	2016	Private	Jul	13168
province	EC	2016	Private	Aug	10622
province	EC	2016	Private	Sep	3436
province	EC	2016	Private	Oct	2800
province	EC	2016	Private	Nov	6207
province	EC	2016	Private	Dec	7198
province	EC	2016	Private	Jan	26923
province	EC	2016	Private	Feb	53659
province	EC	2016	Private	Mar	3587
province	EC	2016	Private	Apr	4564
province	EC	2016	Private	May	9092
province	EC	2016	Private	Jun	39552
province	EC	2016	Private	Jul	4224
province	FS	2016	Private	Aug	8461
province	FS	2016	Private	Sep	6923
province	FS	2016	Private	Oct	10641
province	FS	2016	Private	Nov	14349
province	FS	2016	Private	Dec	14368
province	FS	2016	Private	Jan	375000
province	FS	2016	Private	Feb	9686
province	FS	2016	Private	Mar	9298
province	FS	2016	Private	Apr	8425
province	FS	2016	Private	May	13157
province	FS	2016	Private	Jun	10681
province	FS	2016	Private	Jul	23257
province	GT	2016	Private	Aug	41435
province	GT	2016	Private	Sep	50208
province	GT	2016	Private	Oct	30686
province	GT	2016	Private	Nov	31453
province	GT	2016	Private	Dec	47957
province	GT	2016	Private	Jan	56923
province	GT	2016	Private	Feb	20980
province	GT	2016	Private	Mar	58884
province	GT	2016	Private	Apr	37223
province	GT	2016	Private	May	25517
province	GT	2016	Private	Jun	58134
province	GT	2016	Private	Jul	100763
province	KZN	2016	Private	Aug	15310
province	KZN	2016	Private	Sep	18072
province	KZN	2016	Private	Oct	21553
province	KZN	2016	Private	Nov	15392
province	KZN	2016	Private	Dec	106011
province	KZN	2016	Private	Jan	38535
province	KZN	2016	Private	Feb	39550
province	KZN	2016	Private	Mar	9543
province	KZN	2016	Private	Apr	28975
province	KZN	2016	Private	May	28440
province	KZN	2016	Private	Jun	41677
province	KZN	2016	Private	Jul	64056
province	LIM	2016	Private	Aug	24624
province	LIM	2016	Private	Sep	59167
province	LIM	2016	Private	Oct	44892
province	LIM	2016	Private	Nov	24112
province	LIM	2016	Private	Dec	10723
province	LIM	2016	Private	Jan	16652
province	LIM	2016	Private	Feb	8790
province	LIM	2016	Private	Mar	19334
province	LIM	2016	Private	Apr	51809
province	LIM	2016	Private	May	9135
province	LIM	2016	Private	Jun	21752
province	LIM	2016	Private	Jul	10002
province	MP	2016	Private	Aug	34538
province	MP	2016	Private	Sep	16878
province	MP	2016	Private	Oct	40140
province	MP	2016	Private	Nov	14103
province	MP	2016	Private	Dec	52191
province	MP	2016	Private	Jan	16135
province	MP	2016	Private	Feb	11756
province	MP	2016	Private	Mar	79885
province	MP	2016	Private	Apr	15235
province	MP	2016	Private	May	30040
province	MP	2016	Private	Jun	15472
province	MP	2016	Private	Jul	33342
province	NC	2016	Private	Aug	12276
province	NC	2016	Private	Sep	1332
province	NC	2016	Private	Oct	\N
province	NC	2016	Private	Nov	\N
province	NC	2016	Private	Dec	18421
province	NC	2016	Private	Jan	3991
province	NC	2016	Private	Feb	1337
province	NC	2016	Private	Mar	7998
province	NC	2016	Private	Apr	1206
province	NC	2016	Private	May	\N
province	NC	2016	Private	Jun	2039
province	NC	2016	Private	Jul	\N
province	NW	2016	Private	Aug	12439
province	NW	2016	Private	Sep	18039
province	NW	2016	Private	Oct	17311
province	NW	2016	Private	Nov	18015
province	NW	2016	Private	Dec	14656
province	NW	2016	Private	Jan	25318
province	NW	2016	Private	Feb	14648
province	NW	2016	Private	Mar	17382
province	NW	2016	Private	Apr	19894
province	NW	2016	Private	May	32490
province	NW	2016	Private	Jun	15883
province	NW	2016	Private	Jul	13077
province	WC	2016	Private	Aug	28967
province	WC	2016	Private	Sep	11292
province	WC	2016	Private	Oct	5134
province	WC	2016	Private	Nov	7539
province	WC	2016	Private	Dec	13316
province	WC	2016	Private	Jan	45463
province	WC	2016	Private	Feb	21374
province	WC	2016	Private	Mar	64363
province	WC	2016	Private	Apr	4956
province	WC	2016	Private	May	38040
province	WC	2016	Private	Jun	40970
province	WC	2016	Private	Jul	\N
\.


--
-- PostgreSQL database dump complete
--

