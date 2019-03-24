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
country	ZA	2009	Government Agriculture	Dec	41083
country	ZA	2009	Government Urban	Dec	882000
country	ZA	2009	Private	Dec	21572
country	ZA	2009	Other	Dec	3043
country	ZA	2009	Government Agriculture	Jan	6630
country	ZA	2009	Government Urban	Jan	42591
country	ZA	2009	Private	Jan	22375
country	ZA	2009	Other	Jan	65141
country	ZA	2009	Government Agriculture	Feb	9421
country	ZA	2009	Government Urban	Feb	292891
country	ZA	2009	Private	Feb	7661
country	ZA	2009	Other	Feb	30505
country	ZA	2009	Government Agriculture	Mar	8716
country	ZA	2009	Government Urban	Mar	843939
country	ZA	2009	Private	Mar	14469
country	ZA	2009	Other	Mar	14745
country	ZA	2009	Government Agriculture	Apr	124238
country	ZA	2009	Government Urban	Apr	\N
country	ZA	2009	Private	Apr	15489
country	ZA	2009	Other	Apr	7154
country	ZA	2009	Government Agriculture	May	4793
country	ZA	2009	Government Urban	May	120000
country	ZA	2009	Private	May	16144
country	ZA	2009	Other	May	10431
country	ZA	2009	Government Agriculture	Jun	26668
country	ZA	2009	Government Urban	Jun	\N
country	ZA	2009	Private	Jun	10296
country	ZA	2009	Other	Jun	133178
country	ZA	2009	Government Agriculture	Jul	8370
country	ZA	2009	Government Urban	Jul	49656
country	ZA	2009	Private	Jul	13168
country	ZA	2009	Other	Jul	16901
country	ZA	2009	Government Agriculture	Aug	5147
country	ZA	2009	Government Urban	Aug	192727
country	ZA	2009	Private	Aug	13683
country	ZA	2009	Other	Aug	21837
country	ZA	2009	Government Agriculture	Sep	18391
country	ZA	2009	Government Urban	Sep	\N
country	ZA	2009	Private	Sep	22339
country	ZA	2009	Other	Sep	5172
country	ZA	2009	Government Agriculture	Oct	4836
country	ZA	2009	Government Urban	Oct	302828
country	ZA	2009	Private	Oct	12381
country	ZA	2009	Other	Oct	15206
country	ZA	2009	Government Agriculture	Nov	1427
country	ZA	2009	Government Urban	Nov	\N
country	ZA	2009	Private	Nov	15333
country	ZA	2009	Other	Nov	71340
level1	ZA_1_003	2009	Government Agriculture	Dec	9417
level1	ZA_1_003	2009	Government Urban	Dec	\N
level1	ZA_1_003	2009	Private	Dec	7198
level1	ZA_1_003	2009	Other	Dec	\N
level1	ZA_1_003	2009	Government Agriculture	Jan	\N
level1	ZA_1_003	2009	Government Urban	Jan	\N
level1	ZA_1_003	2009	Private	Jan	26923
level1	ZA_1_003	2009	Other	Jan	\N
level1	ZA_1_003	2009	Government Agriculture	Feb	\N
level1	ZA_1_003	2009	Government Urban	Feb	382514
level1	ZA_1_003	2009	Private	Feb	53659
level1	ZA_1_003	2009	Other	Feb	342777
level1	ZA_1_003	2009	Government Agriculture	Mar	\N
level1	ZA_1_003	2009	Government Urban	Mar	\N
level1	ZA_1_003	2009	Private	Mar	3587
level1	ZA_1_003	2009	Other	Mar	19970
level1	ZA_1_003	2009	Government Agriculture	Apr	\N
level1	ZA_1_003	2009	Government Urban	Apr	\N
level1	ZA_1_003	2009	Private	Apr	4564
level1	ZA_1_003	2009	Other	Apr	\N
level1	ZA_1_003	2009	Government Agriculture	May	\N
level1	ZA_1_003	2009	Government Urban	May	\N
level1	ZA_1_003	2009	Private	May	9092
level1	ZA_1_003	2009	Other	May	\N
level1	ZA_1_003	2009	Government Agriculture	Jun	\N
level1	ZA_1_003	2009	Government Urban	Jun	\N
level1	ZA_1_003	2009	Private	Jun	39552
level1	ZA_1_003	2009	Other	Jun	\N
level1	ZA_1_003	2009	Government Agriculture	Jul	\N
level1	ZA_1_003	2009	Government Urban	Jul	\N
level1	ZA_1_003	2009	Private	Jul	4224
level1	ZA_1_003	2009	Other	Jul	\N
level1	ZA_1_003	2009	Government Agriculture	Aug	\N
level1	ZA_1_003	2009	Government Urban	Aug	\N
level1	ZA_1_003	2009	Private	Aug	14237
level1	ZA_1_003	2009	Other	Aug	7464
level1	ZA_1_003	2009	Government Agriculture	Sep	\N
level1	ZA_1_003	2009	Government Urban	Sep	\N
level1	ZA_1_003	2009	Private	Sep	6725
level1	ZA_1_003	2009	Other	Sep	\N
level1	ZA_1_003	2009	Government Agriculture	Oct	7636
level1	ZA_1_003	2009	Government Urban	Oct	\N
level1	ZA_1_003	2009	Private	Oct	5975
level1	ZA_1_003	2009	Other	Oct	\N
level1	ZA_1_003	2009	Government Agriculture	Nov	\N
level1	ZA_1_003	2009	Government Urban	Nov	\N
level1	ZA_1_003	2009	Private	Nov	7183
level1	ZA_1_003	2009	Other	Nov	10252
level1	ZA_1_002	2009	Government Agriculture	Dec	\N
level1	ZA_1_002	2009	Government Urban	Dec	\N
level1	ZA_1_002	2009	Private	Dec	14368
level1	ZA_1_002	2009	Other	Dec	7405
level1	ZA_1_002	2009	Government Agriculture	Jan	6630
level1	ZA_1_002	2009	Government Urban	Jan	\N
level1	ZA_1_002	2009	Private	Jan	375000
level1	ZA_1_002	2009	Other	Jan	\N
level1	ZA_1_002	2009	Government Agriculture	Feb	\N
level1	ZA_1_002	2009	Government Urban	Feb	\N
level1	ZA_1_002	2009	Private	Feb	9686
level1	ZA_1_002	2009	Other	Feb	\N
level1	ZA_1_002	2009	Government Agriculture	Mar	5756
level1	ZA_1_002	2009	Government Urban	Mar	\N
level1	ZA_1_002	2009	Private	Mar	9298
level1	ZA_1_002	2009	Other	Mar	7236
level1	ZA_1_002	2009	Government Agriculture	Apr	\N
level1	ZA_1_002	2009	Government Urban	Apr	\N
level1	ZA_1_002	2009	Private	Apr	8425
level1	ZA_1_002	2009	Other	Apr	31903
level1	ZA_1_002	2009	Government Agriculture	May	\N
level1	ZA_1_002	2009	Government Urban	May	\N
level1	ZA_1_002	2009	Private	May	13157
level1	ZA_1_002	2009	Other	May	3987
level1	ZA_1_002	2009	Government Agriculture	Jun	\N
level1	ZA_1_002	2009	Government Urban	Jun	\N
level1	ZA_1_002	2009	Private	Jun	10681
level1	ZA_1_002	2009	Other	Jun	159744
level1	ZA_1_002	2009	Government Agriculture	Jul	2843
level1	ZA_1_002	2009	Government Urban	Jul	\N
level1	ZA_1_002	2009	Private	Jul	23257
level1	ZA_1_002	2009	Other	Jul	\N
level1	ZA_1_002	2009	Government Agriculture	Aug	\N
level1	ZA_1_002	2009	Government Urban	Aug	\N
level1	ZA_1_002	2009	Private	Aug	8178
level1	ZA_1_002	2009	Other	Aug	17227
level1	ZA_1_002	2009	Government Agriculture	Sep	\N
level1	ZA_1_002	2009	Government Urban	Sep	\N
level1	ZA_1_002	2009	Private	Sep	7997
level1	ZA_1_002	2009	Other	Sep	3786
level1	ZA_1_002	2009	Government Agriculture	Oct	10359
level1	ZA_1_002	2009	Government Urban	Oct	\N
level1	ZA_1_002	2009	Private	Oct	8058
level1	ZA_1_002	2009	Other	Oct	3216
level1	ZA_1_002	2009	Government Agriculture	Nov	\N
level1	ZA_1_002	2009	Government Urban	Nov	\N
level1	ZA_1_002	2009	Private	Nov	2446
level1	ZA_1_002	2009	Other	Nov	20136
level1	ZA_1_009	2009	Government Agriculture	Dec	68910
level1	ZA_1_009	2009	Government Urban	Dec	\N
level1	ZA_1_009	2009	Private	Dec	47957
level1	ZA_1_009	2009	Other	Dec	\N
level1	ZA_1_009	2009	Government Agriculture	Jan	\N
level1	ZA_1_009	2009	Government Urban	Jan	42591
level1	ZA_1_009	2009	Private	Jan	56923
level1	ZA_1_009	2009	Other	Jan	54839
level1	ZA_1_009	2009	Government Agriculture	Feb	15132
level1	ZA_1_009	2009	Government Urban	Feb	\N
level1	ZA_1_009	2009	Private	Feb	20980
level1	ZA_1_009	2009	Other	Feb	\N
level1	ZA_1_009	2009	Government Agriculture	Mar	\N
level1	ZA_1_009	2009	Government Urban	Mar	\N
level1	ZA_1_009	2009	Private	Mar	58884
level1	ZA_1_009	2009	Other	Mar	2933824
level1	ZA_1_009	2009	Government Agriculture	Apr	\N
level1	ZA_1_009	2009	Government Urban	Apr	\N
level1	ZA_1_009	2009	Private	Apr	37223
level1	ZA_1_009	2009	Other	Apr	\N
level1	ZA_1_009	2009	Government Agriculture	May	\N
level1	ZA_1_009	2009	Government Urban	May	\N
level1	ZA_1_009	2009	Private	May	25517
level1	ZA_1_009	2009	Other	May	10007
level1	ZA_1_009	2009	Government Agriculture	Jun	\N
level1	ZA_1_009	2009	Government Urban	Jun	\N
level1	ZA_1_009	2009	Private	Jun	58134
level1	ZA_1_009	2009	Other	Jun	84969
level1	ZA_1_009	2009	Government Agriculture	Jul	\N
level1	ZA_1_009	2009	Government Urban	Jul	113095
level1	ZA_1_009	2009	Private	Jul	100763
level1	ZA_1_009	2009	Other	Jul	\N
level1	ZA_1_009	2009	Government Agriculture	Aug	65000
level1	ZA_1_009	2009	Government Urban	Aug	\N
level1	ZA_1_009	2009	Private	Aug	17066
level1	ZA_1_009	2009	Other	Aug	2174
level1	ZA_1_009	2009	Government Agriculture	Sep	\N
level1	ZA_1_009	2009	Government Urban	Sep	\N
level1	ZA_1_009	2009	Private	Sep	323788
level1	ZA_1_009	2009	Other	Sep	27364
level1	ZA_1_009	2009	Government Agriculture	Oct	16351
level1	ZA_1_009	2009	Government Urban	Oct	569767
level1	ZA_1_009	2009	Private	Oct	42764
level1	ZA_1_009	2009	Other	Oct	395432
level1	ZA_1_009	2009	Government Agriculture	Nov	\N
level1	ZA_1_009	2009	Government Urban	Nov	\N
level1	ZA_1_009	2009	Private	Nov	19658
level1	ZA_1_009	2009	Other	Nov	34030
level1	ZA_1_001	2009	Government Agriculture	Dec	15779
level1	ZA_1_001	2009	Government Urban	Dec	882000
level1	ZA_1_001	2009	Private	Dec	106011
level1	ZA_1_001	2009	Other	Dec	\N
level1	ZA_1_001	2009	Government Agriculture	Jan	\N
level1	ZA_1_001	2009	Government Urban	Jan	\N
level1	ZA_1_001	2009	Private	Jan	38535
level1	ZA_1_001	2009	Other	Jan	\N
level1	ZA_1_001	2009	Government Agriculture	Feb	10157
level1	ZA_1_001	2009	Government Urban	Feb	\N
level1	ZA_1_001	2009	Private	Feb	39550
level1	ZA_1_001	2009	Other	Feb	49032
level1	ZA_1_001	2009	Government Agriculture	Mar	15064
level1	ZA_1_001	2009	Government Urban	Mar	\N
level1	ZA_1_001	2009	Private	Mar	9543
level1	ZA_1_001	2009	Other	Mar	65712
level1	ZA_1_001	2009	Government Agriculture	Apr	\N
level1	ZA_1_001	2009	Government Urban	Apr	\N
level1	ZA_1_001	2009	Private	Apr	28975
level1	ZA_1_001	2009	Other	Apr	120000
level1	ZA_1_001	2009	Government Agriculture	May	\N
level1	ZA_1_001	2009	Government Urban	May	\N
level1	ZA_1_001	2009	Private	May	28440
level1	ZA_1_001	2009	Other	May	145000
level1	ZA_1_001	2009	Government Agriculture	Jun	\N
level1	ZA_1_001	2009	Government Urban	Jun	\N
level1	ZA_1_001	2009	Private	Jun	41677
level1	ZA_1_001	2009	Other	Jun	\N
level1	ZA_1_001	2009	Government Agriculture	Jul	\N
level1	ZA_1_001	2009	Government Urban	Jul	\N
level1	ZA_1_001	2009	Private	Jul	64056
level1	ZA_1_001	2009	Other	Jul	\N
level1	ZA_1_001	2009	Government Agriculture	Aug	\N
level1	ZA_1_001	2009	Government Urban	Aug	\N
level1	ZA_1_001	2009	Private	Aug	43197
level1	ZA_1_001	2009	Other	Aug	237656
level1	ZA_1_001	2009	Government Agriculture	Sep	\N
level1	ZA_1_001	2009	Government Urban	Sep	\N
level1	ZA_1_001	2009	Private	Sep	25550
level1	ZA_1_001	2009	Other	Sep	89549
level1	ZA_1_001	2009	Government Agriculture	Oct	\N
level1	ZA_1_001	2009	Government Urban	Oct	34783
level1	ZA_1_001	2009	Private	Oct	17597
level1	ZA_1_001	2009	Other	Oct	58882
level1	ZA_1_001	2009	Government Agriculture	Nov	\N
level1	ZA_1_001	2009	Government Urban	Nov	\N
level1	ZA_1_001	2009	Private	Nov	22192
level1	ZA_1_001	2009	Other	Nov	112500
level1	ZA_1_005	2009	Government Agriculture	Dec	\N
level1	ZA_1_005	2009	Government Urban	Dec	\N
level1	ZA_1_005	2009	Private	Dec	10723
level1	ZA_1_005	2009	Other	Dec	34091
level1	ZA_1_005	2009	Government Agriculture	Jan	\N
level1	ZA_1_005	2009	Government Urban	Jan	\N
level1	ZA_1_005	2009	Private	Jan	16652
level1	ZA_1_005	2009	Other	Jan	61111
level1	ZA_1_005	2009	Government Agriculture	Feb	\N
level1	ZA_1_005	2009	Government Urban	Feb	18
level1	ZA_1_005	2009	Private	Feb	8790
level1	ZA_1_005	2009	Other	Feb	10436
level1	ZA_1_005	2009	Government Agriculture	Mar	\N
level1	ZA_1_005	2009	Government Urban	Mar	285000
level1	ZA_1_005	2009	Private	Mar	19334
level1	ZA_1_005	2009	Other	Mar	10078
level1	ZA_1_005	2009	Government Agriculture	Apr	\N
level1	ZA_1_005	2009	Government Urban	Apr	\N
level1	ZA_1_005	2009	Private	Apr	51809
level1	ZA_1_005	2009	Other	Apr	346154
level1	ZA_1_005	2009	Government Agriculture	May	\N
level1	ZA_1_005	2009	Government Urban	May	\N
level1	ZA_1_005	2009	Private	May	9135
level1	ZA_1_005	2009	Other	May	\N
level1	ZA_1_005	2009	Government Agriculture	Jun	\N
level1	ZA_1_005	2009	Government Urban	Jun	\N
level1	ZA_1_005	2009	Private	Jun	21752
level1	ZA_1_005	2009	Other	Jun	151456
level1	ZA_1_005	2009	Government Agriculture	Jul	\N
level1	ZA_1_005	2009	Government Urban	Jul	7018
level1	ZA_1_005	2009	Private	Jul	10002
level1	ZA_1_005	2009	Other	Jul	\N
level1	ZA_1_005	2009	Government Agriculture	Aug	\N
level1	ZA_1_005	2009	Government Urban	Aug	\N
level1	ZA_1_005	2009	Private	Aug	10349
level1	ZA_1_005	2009	Other	Aug	\N
level1	ZA_1_005	2009	Government Agriculture	Sep	\N
level1	ZA_1_005	2009	Government Urban	Sep	\N
level1	ZA_1_005	2009	Private	Sep	5211
level1	ZA_1_005	2009	Other	Sep	\N
level1	ZA_1_005	2009	Government Agriculture	Oct	\N
level1	ZA_1_005	2009	Government Urban	Oct	\N
level1	ZA_1_005	2009	Private	Oct	5745
level1	ZA_1_005	2009	Other	Oct	10958
level1	ZA_1_005	2009	Government Agriculture	Nov	\N
level1	ZA_1_005	2009	Government Urban	Nov	\N
level1	ZA_1_005	2009	Private	Nov	14031
level1	ZA_1_005	2009	Other	Nov	250294
level1	ZA_1_004	2009	Government Agriculture	Dec	8821
level1	ZA_1_004	2009	Government Urban	Dec	\N
level1	ZA_1_004	2009	Private	Dec	52191
level1	ZA_1_004	2009	Other	Dec	245000
level1	ZA_1_004	2009	Government Agriculture	Jan	\N
level1	ZA_1_004	2009	Government Urban	Jan	\N
level1	ZA_1_004	2009	Private	Jan	16135
level1	ZA_1_004	2009	Other	Jan	67207
level1	ZA_1_004	2009	Government Agriculture	Feb	7431
level1	ZA_1_004	2009	Government Urban	Feb	\N
level1	ZA_1_004	2009	Private	Feb	11756
level1	ZA_1_004	2009	Other	Feb	30725
level1	ZA_1_004	2009	Government Agriculture	Mar	\N
level1	ZA_1_004	2009	Government Urban	Mar	\N
level1	ZA_1_004	2009	Private	Mar	79885
level1	ZA_1_004	2009	Other	Mar	38785
level1	ZA_1_004	2009	Government Agriculture	Apr	\N
level1	ZA_1_004	2009	Government Urban	Apr	\N
level1	ZA_1_004	2009	Private	Apr	15235
level1	ZA_1_004	2009	Other	Apr	46371
level1	ZA_1_004	2009	Government Agriculture	May	\N
level1	ZA_1_004	2009	Government Urban	May	\N
level1	ZA_1_004	2009	Private	May	30040
level1	ZA_1_004	2009	Other	May	149194
level1	ZA_1_004	2009	Government Agriculture	Jun	\N
level1	ZA_1_004	2009	Government Urban	Jun	\N
level1	ZA_1_004	2009	Private	Jun	15472
level1	ZA_1_004	2009	Other	Jun	\N
level1	ZA_1_004	2009	Government Agriculture	Jul	10577
level1	ZA_1_004	2009	Government Urban	Jul	121951
level1	ZA_1_004	2009	Private	Jul	33342
level1	ZA_1_004	2009	Other	Jul	16438
level1	ZA_1_004	2009	Government Agriculture	Aug	\N
level1	ZA_1_004	2009	Government Urban	Aug	\N
level1	ZA_1_004	2009	Private	Aug	21349
level1	ZA_1_004	2009	Other	Aug	57407
level1	ZA_1_004	2009	Government Agriculture	Sep	14928
level1	ZA_1_004	2009	Government Urban	Sep	\N
level1	ZA_1_004	2009	Private	Sep	33655
level1	ZA_1_004	2009	Other	Sep	46280
level1	ZA_1_004	2009	Government Agriculture	Oct	4877
level1	ZA_1_004	2009	Government Urban	Oct	\N
level1	ZA_1_004	2009	Private	Oct	32449
level1	ZA_1_004	2009	Other	Oct	62796
level1	ZA_1_004	2009	Government Agriculture	Nov	\N
level1	ZA_1_004	2009	Government Urban	Nov	\N
level1	ZA_1_004	2009	Private	Nov	30258
level1	ZA_1_004	2009	Other	Nov	48357
level1	ZA_1_006	2009	Government Agriculture	Dec	\N
level1	ZA_1_006	2009	Government Urban	Dec	\N
level1	ZA_1_006	2009	Private	Dec	18421
level1	ZA_1_006	2009	Other	Dec	2402
level1	ZA_1_006	2009	Government Agriculture	Jan	\N
level1	ZA_1_006	2009	Government Urban	Jan	\N
level1	ZA_1_006	2009	Private	Jan	3991
level1	ZA_1_006	2009	Other	Jan	\N
level1	ZA_1_006	2009	Government Agriculture	Feb	\N
level1	ZA_1_006	2009	Government Urban	Feb	\N
level1	ZA_1_006	2009	Private	Feb	1337
level1	ZA_1_006	2009	Other	Feb	7373
level1	ZA_1_006	2009	Government Agriculture	Mar	\N
level1	ZA_1_006	2009	Government Urban	Mar	1086957
level1	ZA_1_006	2009	Private	Mar	7998
level1	ZA_1_006	2009	Other	Mar	2291
level1	ZA_1_006	2009	Government Agriculture	Apr	\N
level1	ZA_1_006	2009	Government Urban	Apr	\N
level1	ZA_1_006	2009	Private	Apr	1206
level1	ZA_1_006	2009	Other	Apr	2466
level1	ZA_1_006	2009	Government Agriculture	May	\N
level1	ZA_1_006	2009	Government Urban	May	\N
level1	ZA_1_006	2009	Private	May	\N
level1	ZA_1_006	2009	Other	May	\N
level1	ZA_1_006	2009	Government Agriculture	Jun	\N
level1	ZA_1_006	2009	Government Urban	Jun	\N
level1	ZA_1_006	2009	Private	Jun	2039
level1	ZA_1_006	2009	Other	Jun	\N
level1	ZA_1_006	2009	Government Agriculture	Jul	\N
level1	ZA_1_006	2009	Government Urban	Jul	\N
level1	ZA_1_006	2009	Private	Jul	\N
level1	ZA_1_006	2009	Other	Jul	\N
level1	ZA_1_006	2009	Government Agriculture	Aug	\N
level1	ZA_1_006	2009	Government Urban	Aug	\N
level1	ZA_1_006	2009	Private	Aug	3401
level1	ZA_1_006	2009	Other	Aug	7470
level1	ZA_1_006	2009	Government Agriculture	Sep	\N
level1	ZA_1_006	2009	Government Urban	Sep	\N
level1	ZA_1_006	2009	Private	Sep	276471
level1	ZA_1_006	2009	Other	Sep	\N
level1	ZA_1_006	2009	Government Agriculture	Oct	2675
level1	ZA_1_006	2009	Government Urban	Oct	\N
level1	ZA_1_006	2009	Private	Oct	\N
level1	ZA_1_006	2009	Other	Oct	\N
level1	ZA_1_006	2009	Government Agriculture	Nov	\N
level1	ZA_1_006	2009	Government Urban	Nov	\N
level1	ZA_1_006	2009	Private	Nov	300000
level1	ZA_1_006	2009	Other	Nov	\N
level1	ZA_1_007	2009	Government Agriculture	Dec	435185
level1	ZA_1_007	2009	Government Urban	Dec	\N
level1	ZA_1_007	2009	Private	Dec	14656
level1	ZA_1_007	2009	Other	Dec	\N
level1	ZA_1_007	2009	Government Agriculture	Jan	\N
level1	ZA_1_007	2009	Government Urban	Jan	\N
level1	ZA_1_007	2009	Private	Jan	25318
level1	ZA_1_007	2009	Other	Jan	\N
level1	ZA_1_007	2009	Government Agriculture	Feb	\N
level1	ZA_1_007	2009	Government Urban	Feb	\N
level1	ZA_1_007	2009	Private	Feb	14648
level1	ZA_1_007	2009	Other	Feb	\N
level1	ZA_1_007	2009	Government Agriculture	Mar	6844
level1	ZA_1_007	2009	Government Urban	Mar	\N
level1	ZA_1_007	2009	Private	Mar	17382
level1	ZA_1_007	2009	Other	Mar	\N
level1	ZA_1_007	2009	Government Agriculture	Apr	\N
level1	ZA_1_007	2009	Government Urban	Apr	\N
level1	ZA_1_007	2009	Private	Apr	19894
level1	ZA_1_007	2009	Other	Apr	28885
level1	ZA_1_007	2009	Government Agriculture	May	4533
level1	ZA_1_007	2009	Government Urban	May	120000
level1	ZA_1_007	2009	Private	May	32490
level1	ZA_1_007	2009	Other	May	6309
level1	ZA_1_007	2009	Government Agriculture	Jun	26668
level1	ZA_1_007	2009	Government Urban	Jun	\N
level1	ZA_1_007	2009	Private	Jun	15883
level1	ZA_1_007	2009	Other	Jun	1730
level1	ZA_1_007	2009	Government Agriculture	Jul	23558
level1	ZA_1_007	2009	Government Urban	Jul	\N
level1	ZA_1_007	2009	Private	Jul	13077
level1	ZA_1_007	2009	Other	Jul	27625
level1	ZA_1_007	2009	Government Agriculture	Aug	4130
level1	ZA_1_007	2009	Government Urban	Aug	192727
level1	ZA_1_007	2009	Private	Aug	21187
level1	ZA_1_007	2009	Other	Aug	250062
level1	ZA_1_007	2009	Government Agriculture	Sep	19740
level1	ZA_1_007	2009	Government Urban	Sep	\N
level1	ZA_1_007	2009	Private	Sep	13530
level1	ZA_1_007	2009	Other	Sep	\N
level1	ZA_1_007	2009	Government Agriculture	Oct	7086
level1	ZA_1_007	2009	Government Urban	Oct	113064
level1	ZA_1_007	2009	Private	Oct	7291
level1	ZA_1_007	2009	Other	Oct	34242
level1	ZA_1_007	2009	Government Agriculture	Nov	\N
level1	ZA_1_007	2009	Government Urban	Nov	\N
level1	ZA_1_007	2009	Private	Nov	15721
level1	ZA_1_007	2009	Other	Nov	450450
level1	ZA_1_008	2009	Government Agriculture	Dec	\N
level1	ZA_1_008	2009	Government Urban	Dec	\N
level1	ZA_1_008	2009	Private	Dec	13316
level1	ZA_1_008	2009	Other	Dec	400
level1	ZA_1_008	2009	Government Agriculture	Jan	\N
level1	ZA_1_008	2009	Government Urban	Jan	\N
level1	ZA_1_008	2009	Private	Jan	45463
level1	ZA_1_008	2009	Other	Jan	\N
level1	ZA_1_008	2009	Government Agriculture	Feb	\N
level1	ZA_1_008	2009	Government Urban	Feb	\N
level1	ZA_1_008	2009	Private	Feb	21374
level1	ZA_1_008	2009	Other	Feb	60800
level1	ZA_1_008	2009	Government Agriculture	Mar	\N
level1	ZA_1_008	2009	Government Urban	Mar	\N
level1	ZA_1_008	2009	Private	Mar	64363
level1	ZA_1_008	2009	Other	Mar	5328
level1	ZA_1_008	2009	Government Agriculture	Apr	124238
level1	ZA_1_008	2009	Government Urban	Apr	\N
level1	ZA_1_008	2009	Private	Apr	4956
level1	ZA_1_008	2009	Other	Apr	\N
level1	ZA_1_008	2009	Government Agriculture	May	5734
level1	ZA_1_008	2009	Government Urban	May	\N
level1	ZA_1_008	2009	Private	May	38040
level1	ZA_1_008	2009	Other	May	\N
level1	ZA_1_008	2009	Government Agriculture	Jun	\N
level1	ZA_1_008	2009	Government Urban	Jun	\N
level1	ZA_1_008	2009	Private	Jun	40970
level1	ZA_1_008	2009	Other	Jun	\N
level1	ZA_1_008	2009	Government Agriculture	Jul	\N
level1	ZA_1_008	2009	Government Urban	Jul	\N
level1	ZA_1_008	2009	Private	Jul	\N
level1	ZA_1_008	2009	Other	Jul	\N
level1	ZA_1_008	2009	Government Agriculture	Aug	\N
level1	ZA_1_008	2009	Government Urban	Aug	\N
level1	ZA_1_008	2009	Private	Aug	9872
level1	ZA_1_008	2009	Other	Aug	75000
level1	ZA_1_008	2009	Government Agriculture	Sep	91667
level1	ZA_1_008	2009	Government Urban	Sep	\N
level1	ZA_1_008	2009	Private	Sep	30845
level1	ZA_1_008	2009	Other	Sep	46512
level1	ZA_1_008	2009	Government Agriculture	Oct	\N
level1	ZA_1_008	2009	Government Urban	Oct	\N
level1	ZA_1_008	2009	Private	Oct	7198
level1	ZA_1_008	2009	Other	Oct	55104
level1	ZA_1_008	2009	Government Agriculture	Nov	1427
level1	ZA_1_008	2009	Government Urban	Nov	\N
level1	ZA_1_008	2009	Private	Nov	\N
level1	ZA_1_008	2009	Other	Nov	200000
\.


--
-- PostgreSQL database dump complete
--
