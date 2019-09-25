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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_ng DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_ng;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_ng;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_ng; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_ng (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_ng; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_ng (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
county	46	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	945233
county	41	2009	Supplement for construction of county headquarters	2019/2020	1152184
county	5	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	2366871
county	5	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	2451034
county	5	2009	Compensation for User Fee Foregone	2019/2020	2451034
county	5	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	2481810
county	11	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	3340178
county	11	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	3472461
county	11	2009	Compensation for User Fee Foregone	2019/2020	3472461
county	11	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	3514477
county	25	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	5220197
county	25	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	5235578
county	25	2009	Compensation for User Fee Foregone	2019/2020	5235578
county	6	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	5296305
county	4	2009	Compensation for User Fee Foregone	2019/2020	5296305
county	25	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	5321855
county	4	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	5596140
county	4	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	5682537
county	13	2009	Compensation for User Fee Foregone	2019/2020	5682537
county	4	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	5699850
county	6	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	6631099
county	6	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	6635345
county	10	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	6643714
county	10	2009	Compensation for User Fee Foregone	2019/2020	6643714
county	10	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	6787069
county	10	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	6872636
county	41	2009	Compensation for User Fee Foregone	2019/2020	8218119
county	13	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	8218119
county	13	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	8419197
county	13	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	8515829
county	28	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	8624640
county	28	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	8788919
county	28	2009	Compensation for User Fee Foregone	2019/2020	8788919
county	28	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	8956070
county	31	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	9305967
county	33	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	9834915
county	31	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	9872539
county	31	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	9968208
county	31	2009	Compensation for User Fee Foregone	2019/2020	9968208
county	14	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	10724225
county	14	2009	Compensation for User Fee Foregone	2019/2020	10724225
county	14	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	10776608
county	11	2009	Rehabilitation of Village Polytechnics	2019/2020	10833298
county	20	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	11282570
county	20	2009	Compensation for User Fee Foregone	2019/2020	11282570
county	40	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	11377011
county	46	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	11578458
county	20	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	11625078
county	24	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	11950786
county	14	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	12032884
county	24	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	12128484
county	24	2009	Compensation for User Fee Foregone	2019/2020	12128484
county	20	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	12308920
county	24	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	12316429
county	38	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	12657201
county	38	2009	Compensation for User Fee Foregone	2019/2020	12657201
county	18	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	12735922
county	18	2009	Compensation for User Fee Foregone	2019/2020	12735922
county	38	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	12928219
county	30	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	12950107
county	7	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	12964636
county	7	2009	Compensation for User Fee Foregone	2019/2020	12964636
county	38	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	13002761
county	18	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	13122239
county	7	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	13126919
county	46	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	13175221
county	46	2009	Compensation for User Fee Foregone	2019/2020	13175221
county	30	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	13191000
county	30	2009	Compensation for User Fee Foregone	2019/2020	13191000
county	30	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	13370516
county	19	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	13701379
county	19	2009	Compensation for User Fee Foregone	2019/2020	13701379
county	23	2009	Rehabilitation of Village Polytechnics	2019/2020	13893298
county	18	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	13898986
county	44	2009	Road Maintenance Fuel Levy	2015/2016	14147432
county	25	2009	Grant for Free Maternal Healthcare	2015/2016	14183400
county	36	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	14191766
county	19	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	14347664
county	7	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	14523507
county	2	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	15149869
county	2	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	15209593
county	2	2009	Compensation for User Fee Foregone	2019/2020	15209593
county	5	2009	Grant for Free Maternal Healthcare	2016/2017	15372820
county	2	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	15397611
county	8	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	15429821
county	25	2009	Rehabilitation of Village Polytechnics	2019/2020	15483298
county	9	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	15521730
county	10	2009	Rehabilitation of Village Polytechnics	2019/2020	15558298
county	8	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	15784997
county	8	2009	Compensation for User Fee Foregone	2019/2020	15784997
county	8	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	16011344
county	34	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	16021218
county	19	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	16166813
county	34	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	16311160
county	36	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	16713356
county	36	2009	Compensation for User Fee Foregone	2019/2020	16713356
county	5	2009	Grant for Free Maternal Healthcare	2015/2016	16762200
county	36	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	16880750
county	40	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	16934085
county	40	2009	Compensation for User Fee Foregone	2019/2020	16934085
county	25	2009	Grant for Free Maternal Healthcare	2016/2017	16946829
county	34	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	16955365
county	34	2009	Compensation for User Fee Foregone	2019/2020	16955365
county	40	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	17302828
county	24	2009	Rehabilitation of Village Polytechnics	2019/2020	17313298
county	29	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	17551588
county	35	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	17676855
county	35	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	18048789
county	35	2009	Compensation for User Fee Foregone	2019/2020	18048789
county	29	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	18055819
county	29	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	18086363
county	29	2009	Compensation for User Fee Foregone	2019/2020	18086363
county	41	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	18194808
county	6	2009	Compensation for User Fee Foregone	2019/2020	18194808
county	35	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	18313556
county	8	2009	Rehabilitation of Village Polytechnics	2019/2020	18903298
county	41	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	19057307
county	26	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	19085197
county	10	2009	Grant for Free Maternal Healthcare	2015/2016	19341000
county	4	2009	Grant for Free Maternal Healthcare	2015/2016	19341000
county	17	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	19435760
county	17	2009	Compensation for User Fee Foregone	2019/2020	19435760
county	17	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	19449802
county	33	2009	Rehabilitation of Village Polytechnics	2019/2020	19488298
county	41	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	19634071
county	13	2009	Road Maintenance Fuel Levy	2015/2016	19857530
county	23	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	19939321
county	46	2009	Grant for Free Maternal Healthcare	2015/2016	19942800
county	33	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	20106734
county	21	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	20138691
county	21	2009	Compensation for User Fee Foregone	2019/2020	20138691
county	26	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	20209153
county	33	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	20595297
county	33	2009	Compensation for User Fee Foregone	2019/2020	20595297
county	17	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	20618293
county	7	2009	Rehabilitation of Village Polytechnics	2019/2020	20628298
county	21	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	20749146
county	27	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	20813065
county	27	2009	Compensation for User Fee Foregone	2019/2020	20813065
county	27	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	20843281
county	25	2009	Rehabilitation of Village Polytechnics	2018/2019	20905000
county	13	2009	Rehabilitation of Village Polytechnics	2019/2020	21228298
county	11	2009	Rehabilitation of Village Polytechnics	2018/2019	21235000
county	8	2009	Rehabilitation of Village Polytechnics	2018/2019	21295000
county	42	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	21299489
county	42	2009	Compensation for User Fee Foregone	2019/2020	21299489
county	26	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	21304915
county	26	2009	Compensation for User Fee Foregone	2019/2020	21304915
county	44	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	21379200
county	44	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	21655884
county	44	2009	Compensation for User Fee Foregone	2019/2020	21655884
county	42	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	21854292
county	44	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	21882372
county	1	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	21896682
county	21	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	21971530
county	9	2009	Rehabilitation of Village Polytechnics	2019/2020	22113298
county	27	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	22181068
county	11	2009	Grant for Free Maternal Healthcare	2016/2017	22181866
county	43	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	22185346
county	43	2009	Compensation for User Fee Foregone	2019/2020	22185346
county	43	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	22466004
county	15	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	22499906
county	15	2009	Compensation for User Fee Foregone	2019/2020	22499906
county	42	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	22585235
county	43	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	22616803
county	47	2009	Rehabilitation of Village Polytechnics	2019/2020	22998298
county	15	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	23144997
county	11	2009	Grant for Free Maternal Healthcare	2015/2016	23209200
county	23	2009	Grant for Free Maternal Healthcare	2015/2016	23209200
county	1	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	23385934
county	1	2009	Compensation for User Fee Foregone	2019/2020	23385934
county	1	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	23514312
county	15	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	23606211
county	9	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	23910336
county	16	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	24129039
county	16	2009	Compensation for User Fee Foregone	2019/2020	24129039
county	4	2009	Rehabilitation of Village Polytechnics	2018/2019	24490000
county	16	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	24764877
county	30	2009	Rehabilitation of Village Polytechnics	2019/2020	24873298
county	10	2009	Grant for Free Maternal Healthcare	2016/2017	25096698
county	4	2009	Grant for Free Maternal Healthcare	2016/2017	25230780
county	23	2009	Rehabilitation of Village Polytechnics	2018/2019	25285000
county	1	2009	Rehabilitation of Village Polytechnics	2019/2020	25473298
county	9	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	25474920
county	9	2009	Compensation for User Fee Foregone	2019/2020	25474920
county	16	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	25601954
county	23	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	25634941
county	23	2009	Compensation for User Fee Foregone	2019/2020	25634941
county	3	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	25867884
county	3	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	25969864
county	3	2009	Compensation for User Fee Foregone	2019/2020	25969864
county	5	2009	Road Maintenance Fuel Levy	2015/2016	26065747
county	23	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	26122720
county	45	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	26138997
county	45	2009	Compensation for User Fee Foregone	2019/2020	26138997
county	10	2009	Rehabilitation of Village Polytechnics	2018/2019	26275000
county	3	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	26392597
county	45	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	26859653
county	45	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	26947170
county	31	2009	Rehabilitation of Village Polytechnics	2018/2019	28525000
county	19	2009	Rehabilitation of Village Polytechnics	2018/2019	28795000
county	24	2009	Rehabilitation of Village Polytechnics	2018/2019	28885000
county	35	2009	Rehabilitation of Village Polytechnics	2019/2020	29433298
county	13	2009	Grant for Free Maternal Healthcare	2016/2017	29853703
county	44	2009	Rehabilitation of Village Polytechnics	2019/2020	30033298
county	28	2009	Rehabilitation of Village Polytechnics	2019/2020	30228298
county	33	2009	Rehabilitation of Village Polytechnics	2018/2019	30820000
county	5	2009	Rehabilitation of Village Polytechnics	2018/2019	31210000
county	9	2009	Rehabilitation of Village Polytechnics	2018/2019	31240000
county	32	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	31373449
county	17	2009	Rehabilitation of Village Polytechnics	2018/2019	31570000
county	12	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	31615328
county	12	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	31648428
county	12	2009	Compensation for User Fee Foregone	2019/2020	31648428
county	44	2009	Rehabilitation of Village Polytechnics	2018/2019	31750000
county	31	2009	Rehabilitation of Village Polytechnics	2019/2020	31908298
county	23	2009	Grant for Free Maternal Healthcare	2016/2017	31964040
county	12	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	32096227
county	29	2009	Rehabilitation of Village Polytechnics	2019/2020	32793298
county	39	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	32837307
county	39	2009	Compensation for User Fee Foregone	2019/2020	32837307
county	27	2009	Rehabilitation of Village Polytechnics	2018/2019	33250000
county	39	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	33282912
county	14	2009	Rehabilitation of Village Polytechnics	2019/2020	33603298
county	5	2009	Road Maintenance Fuel Levy	2016/2017	34018227
county	20	2009	Rehabilitation of Village Polytechnics	2019/2020	34503298
county	47	2009	Rehabilitation of Village Polytechnics	2018/2019	34570000
county	22	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	34671542
county	22	2009	Compensation for User Fee Foregone	2019/2020	34671542
county	43	2009	Rehabilitation of Village Polytechnics	2019/2020	35163298
county	13	2009	Grant for Free Maternal Healthcare	2015/2016	35243600
county	7	2009	Rehabilitation of Village Polytechnics	2018/2019	35335000
county	34	2009	Rehabilitation of Village Polytechnics	2019/2020	35493298
county	30	2009	Rehabilitation of Village Polytechnics	2018/2019	35605000
county	22	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	35773082
county	29	2009	Rehabilitation of Village Polytechnics	2018/2019	37255000
county	6	2009	Grant for Free Maternal Healthcare	2016/2017	37659621
county	37	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	37789290
county	37	2009	Compensation for User Fee Foregone	2019/2020	37789290
county	22	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	37838646
county	14	2009	Rehabilitation of Village Polytechnics	2018/2019	37900000
county	18	2009	Rehabilitation of Village Polytechnics	2019/2020	37983298
county	39	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	38017014
county	41	2009	Rehabilitation of Village Polytechnics	2018/2019	38500000
county	37	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	38617147
county	37	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	38709716
county	32	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	38723265
county	32	2009	Compensation for User Fee Foregone	2019/2020	38723265
county	11	2009	Road Maintenance Fuel Levy	2015/2016	38828547
county	32	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	39216180
county	18	2009	Rehabilitation of Village Polytechnics	2018/2019	39700000
county	1	2009	Rehabilitation of Village Polytechnics	2018/2019	39895000
county	13	2009	Rehabilitation of Village Polytechnics	2018/2019	40090000
county	6	2009	Rehabilitation of Village Polytechnics	2019/2020	40278298
county	34	2009	Rehabilitation of Village Polytechnics	2018/2019	40345000
county	27	2009	Grant for Free Maternal Healthcare	2016/2017	40766831
county	35	2009	Rehabilitation of Village Polytechnics	2018/2019	41005000
county	24	2009	Grant for Free Maternal Healthcare	2015/2016	41260800
county	5	2009	Rehabilitation of Village Polytechnics	2019/2020	41298298
county	28	2009	Road Maintenance Fuel Levy	2015/2016	41545473
county	42	2009	Rehabilitation of Village Polytechnics	2018/2019	41650000
county	42	2009	Rehabilitation of Village Polytechnics	2019/2020	41673298
county	28	2009	Rehabilitation of Village Polytechnics	2018/2019	41800000
county	2	2009	Rehabilitation of Village Polytechnics	2018/2019	41860000
county	6	2009	Road Maintenance Fuel Levy	2015/2016	42042522
county	6	2009	Grant for Free Maternal Healthcare	2015/2016	42120400
county	28	2009	Grant for Free Maternal Healthcare	2015/2016	43409800
county	31	2009	Road Maintenance Fuel Levy	2015/2016	43820742
county	20	2009	Road Maintenance Fuel Levy	2015/2016	44947130
county	25	2009	Road Maintenance Fuel Levy	2015/2016	45125793
county	20	2009	Grant for Free Maternal Healthcare	2016/2017	45389754
county	9	2009	Grant for Free Maternal Healthcare	2015/2016	46418000
county	18	2009	Grant for Free Maternal Healthcare	2016/2017	46514879
county	43	2009	Rehabilitation of Village Polytechnics	2018/2019	46675000
county	36	2009	Rehabilitation of Village Polytechnics	2019/2020	47388298
county	32	2009	Rehabilitation of Village Polytechnics	2018/2019	47800000
county	36	2009	Rehabilitation of Village Polytechnics	2018/2019	47875000
county	14	2009	Road Maintenance Fuel Levy	2015/2016	48754599
county	38	2009	Road Maintenance Fuel Levy	2015/2016	49119806
county	6	2009	Rehabilitation of Village Polytechnics	2018/2019	49675000
county	34	2009	Grant for Free Maternal Healthcare	2015/2016	49856800
county	28	2009	Grant for Free Maternal Healthcare	2016/2017	50228374
county	7	2009	Grant for Free Maternal Healthcare	2015/2016	50286600
county	8	2009	Grant for Free Maternal Healthcare	2015/2016	50286600
county	4	2009	Road Maintenance Fuel Levy	2015/2016	50617289
county	11	2009	Road Maintenance Fuel Levy	2016/2017	50674874
county	20	2009	Grant for Free Maternal Healthcare	2015/2016	50716400
county	18	2009	Grant for Free Maternal Healthcare	2015/2016	50716400
county	24	2009	Grant for Free Maternal Healthcare	2016/2017	51050356
county	16	2009	Rehabilitation of Village Polytechnics	2019/2020	51093298
county	13	2009	Road Maintenance Fuel Levy	2016/2017	52017792
county	20	2009	Rehabilitation of Village Polytechnics	2018/2019	52210000
county	46	2009	Road Maintenance Fuel Levy	2015/2016	52776448
county	46	2009	Rehabilitation of Village Polytechnics	2018/2019	52915000
county	3	2009	Rehabilitation of Village Polytechnics	2018/2019	53035000
county	26	2009	Rehabilitation of Village Polytechnics	2018/2019	53710000
county	7	2009	Grant for Free Maternal Healthcare	2016/2017	53772809
county	39	2009	Rehabilitation of Village Polytechnics	2019/2020	53928298
county	28	2009	Road Maintenance Fuel Levy	2016/2017	54220715
county	16	2009	Rehabilitation of Village Polytechnics	2018/2019	54295000
county	15	2009	Grant for Free Maternal Healthcare	2016/2017	54367434
county	18	2009	Road Maintenance Fuel Levy	2015/2016	54714122
county	34	2009	Grant for Free Maternal Healthcare	2016/2017	54758022
county	24	2009	Road Maintenance Fuel Levy	2015/2016	54798238
county	6	2009	Road Maintenance Fuel Levy	2016/2017	54869411
county	14	2009	Grant for Free Maternal Healthcare	2016/2017	54985378
county	38	2009	Rehabilitation of Village Polytechnics	2018/2019	55000000
county	22	2009	Rehabilitation of Village Polytechnics	2019/2020	55113298
county	19	2009	Rehabilitation of Village Polytechnics	2019/2020	55143298
county	9	2009	Grant for Free Maternal Healthcare	2016/2017	55335158
county	8	2009	Grant for Free Maternal Healthcare	2016/2017	55574174
county	41	2009	Rehabilitation of Village Polytechnics	2019/2020	55638298
county	4	2009	Rehabilitation of Village Polytechnics	2019/2020	55638298
county	34	2009	Road Maintenance Fuel Levy	2015/2016	56055021
county	33	2009	Grant for Free Maternal Healthcare	2015/2016	56303800
county	30	2009	Road Maintenance Fuel Levy	2015/2016	56410082
county	19	2009	Road Maintenance Fuel Levy	2015/2016	56519885
county	12	2009	Rehabilitation of Village Polytechnics	2019/2020	56568298
county	31	2009	Road Maintenance Fuel Levy	2016/2017	57190153
county	35	2009	Road Maintenance Fuel Levy	2015/2016	57229294
county	27	2009	Rehabilitation of Village Polytechnics	2019/2020	57588298
county	14	2009	Grant for Free Maternal Healthcare	2015/2016	57593200
county	36	2009	Grant for Free Maternal Healthcare	2015/2016	58452800
county	15	2009	Rehabilitation of Village Polytechnics	2018/2019	58465000
county	20	2009	Road Maintenance Fuel Levy	2016/2017	58660195
county	3	2009	Rehabilitation of Village Polytechnics	2019/2020	58863298
county	25	2009	Road Maintenance Fuel Levy	2016/2017	58898587
county	36	2009	Road Maintenance Fuel Levy	2015/2016	59793197
county	2	2009	Rehabilitation of Village Polytechnics	2019/2020	59793298
county	17	2009	Rehabilitation of Village Polytechnics	2019/2020	60333298
county	29	2009	Road Maintenance Fuel Levy	2015/2016	60405657
county	33	2009	Road Maintenance Fuel Levy	2015/2016	61113929
county	26	2009	Rehabilitation of Village Polytechnics	2019/2020	61188298
county	36	2009	Grant for Free Maternal Healthcare	2016/2017	61258095
county	31	2009	Grant for Free Maternal Healthcare	2016/2017	61409667
county	40	2009	Rehabilitation of Village Polytechnics	2018/2019	61960000
county	32	2009	Rehabilitation of Village Polytechnics	2019/2020	63063298
county	40	2009	Rehabilitation of Village Polytechnics	2019/2020	63333298
county	41	2009	Road Maintenance Fuel Levy	2015/2016	63456905
county	31	2009	Grant for Free Maternal Healthcare	2015/2016	63610000
county	15	2009	Grant for Free Maternal Healthcare	2015/2016	63610400
county	14	2009	Road Maintenance Fuel Levy	2016/2017	63629297
county	38	2009	Road Maintenance Fuel Levy	2016/2017	64184231
county	30	2009	Grant for Free Maternal Healthcare	2016/2017	64662618
county	26	2009	Road Maintenance Fuel Levy	2015/2016	64782039
county	2	2009	Road Maintenance Fuel Levy	2015/2016	65113404
county	39	2009	Rehabilitation of Village Polytechnics	2018/2019	65500000
county	21	2009	Rehabilitation of Village Polytechnics	2018/2019	65710000
county	30	2009	Grant for Free Maternal Healthcare	2015/2016	65759400
county	27	2009	Road Maintenance Fuel Levy	2015/2016	65911431
county	10	2009	Road Maintenance Fuel Levy	2015/2016	65923423
county	12	2009	Rehabilitation of Village Polytechnics	2018/2019	66025000
county	1	2009	Road Maintenance Fuel Levy	2015/2016	66030539
county	4	2009	Road Maintenance Fuel Levy	2016/2017	66060281
county	38	2009	Grant for Free Maternal Healthcare	2016/2017	66469814
county	29	2009	Grant for Free Maternal Healthcare	2015/2016	67048800
county	46	2009	Rehabilitation of Village Polytechnics	2019/2020	67068298
county	38	2009	Rehabilitation of Village Polytechnics	2019/2020	67743298
county	26	2009	Grant for Free Maternal Healthcare	2015/2016	67908400
county	38	2009	Grant for Free Maternal Healthcare	2015/2016	67908400
county	21	2009	Road Maintenance Fuel Levy	2015/2016	68038977
county	22	2009	Rehabilitation of Village Polytechnics	2018/2019	68110000
county	29	2009	Grant for Free Maternal Healthcare	2016/2017	68195394
county	46	2009	Road Maintenance Fuel Levy	2016/2017	68878185
county	40	2009	Road Maintenance Fuel Levy	2015/2016	69109240
county	19	2009	Grant for Free Maternal Healthcare	2016/2017	69215585
county	37	2009	Rehabilitation of Village Polytechnics	2018/2019	69910000
county	45	2009	Rehabilitation of Village Polytechnics	2018/2019	70090000
county	33	2009	Grant for Free Maternal Healthcare	2016/2017	70154161
county	18	2009	Road Maintenance Fuel Levy	2016/2017	71407030
county	24	2009	Road Maintenance Fuel Levy	2016/2017	71516809
county	43	2009	Road Maintenance Fuel Levy	2015/2016	71582731
county	42	2009	Road Maintenance Fuel Levy	2015/2016	72170965
county	15	2009	Rehabilitation of Village Polytechnics	2019/2020	72588298
county	47	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	73155271
county	34	2009	Road Maintenance Fuel Levy	2016/2017	73157028
county	7	2009	Road Maintenance Fuel Levy	2015/2016	73319649
county	30	2009	Road Maintenance Fuel Levy	2016/2017	73620416
county	5	2009	Road Maintenance Fuel Levy	2019/2020	73669313
county	19	2009	Road Maintenance Fuel Levy	2016/2017	73763719
county	45	2009	Rehabilitation of Village Polytechnics	2019/2020	74553298
county	35	2009	Road Maintenance Fuel Levy	2016/2017	74689564
county	17	2009	Road Maintenance Fuel Levy	2015/2016	75834678
county	26	2009	Grant for Free Maternal Healthcare	2016/2017	76292795
county	37	2009	Rehabilitation of Village Polytechnics	2019/2020	76923298
county	36	2009	Road Maintenance Fuel Levy	2016/2017	78035696
county	21	2009	Grant for Free Maternal Healthcare	2016/2017	78828699
county	29	2009	Road Maintenance Fuel Levy	2016/2017	78835014
county	47	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	79423251
county	47	2009	Compensation for User Fee Foregone	2019/2020	79423251
county	47	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	79879082
county	17	2009	Grant for Free Maternal Healthcare	2015/2016	80802100
county	21	2009	Grant for Free Maternal Healthcare	2015/2016	80802400
county	19	2009	Grant for Free Maternal Healthcare	2015/2016	82091800
county	46	2009	Grant for Free Maternal Healthcare	2016/2017	82174925
county	12	2009	Road Maintenance Fuel Levy	2015/2016	82490349
county	41	2009	Road Maintenance Fuel Levy	2016/2017	82817177
county	21	2009	Rehabilitation of Village Polytechnics	2019/2020	83268298
county	17	2009	Grant for Free Maternal Healthcare	2016/2017	83696467
county	26	2009	Road Maintenance Fuel Levy	2016/2017	84546600
county	16	2009	Road Maintenance Fuel Levy	2015/2016	85984407
county	10	2009	Road Maintenance Fuel Levy	2016/2017	86036213
county	27	2009	Road Maintenance Fuel Levy	2016/2017	86059722
county	1	2009	Road Maintenance Fuel Levy	2016/2017	86176009
county	33	2009	Road Maintenance Fuel Levy	2016/2017	87668239
county	21	2009	Road Maintenance Fuel Levy	2016/2017	88797208
county	35	2009	Grant for Free Maternal Healthcare	2016/2017	89327921
county	45	2009	Road Maintenance Fuel Levy	2015/2016	90112658
county	40	2009	Road Maintenance Fuel Levy	2016/2017	90194001
county	8	2009	Road Maintenance Fuel Levy	2015/2016	91879854
county	40	2009	Grant for Free Maternal Healthcare	2016/2017	92079522
county	15	2009	Road Maintenance Fuel Levy	2015/2016	92318534
county	5	2009	Road Maintenance Fuel Levy	2018/2019	93421016
county	43	2009	Road Maintenance Fuel Levy	2016/2017	93422137
county	30	2009	County Emergency Fund	2015/2016	93617021
county	36	2009	County Emergency Fund	2015/2016	93617021
county	39	2009	County Emergency Fund	2015/2016	93617021
county	40	2009	County Emergency Fund	2015/2016	93617021
county	28	2009	County Emergency Fund	2015/2016	93617021
county	14	2009	County Emergency Fund	2015/2016	93617021
county	7	2009	County Emergency Fund	2015/2016	93617021
county	43	2009	County Emergency Fund	2015/2016	93617021
county	11	2009	County Emergency Fund	2015/2016	93617021
county	34	2009	County Emergency Fund	2015/2016	93617021
county	37	2009	County Emergency Fund	2015/2016	93617021
county	35	2009	County Emergency Fund	2015/2016	93617021
county	22	2009	County Emergency Fund	2015/2016	93617021
county	3	2009	County Emergency Fund	2015/2016	93617021
county	20	2009	County Emergency Fund	2015/2016	93617021
county	45	2009	County Emergency Fund	2015/2016	93617021
county	42	2009	County Emergency Fund	2015/2016	93617021
county	15	2009	County Emergency Fund	2015/2016	93617021
county	2	2009	County Emergency Fund	2015/2016	93617021
county	31	2009	County Emergency Fund	2015/2016	93617021
county	5	2009	County Emergency Fund	2015/2016	93617021
county	16	2009	County Emergency Fund	2015/2016	93617021
county	17	2009	County Emergency Fund	2015/2016	93617021
county	9	2009	County Emergency Fund	2015/2016	93617021
county	10	2009	County Emergency Fund	2015/2016	93617021
county	12	2009	County Emergency Fund	2015/2016	93617021
county	44	2009	County Emergency Fund	2015/2016	93617021
county	1	2009	County Emergency Fund	2015/2016	93617021
county	21	2009	County Emergency Fund	2015/2016	93617021
county	47	2009	County Emergency Fund	2015/2016	93617021
county	32	2009	County Emergency Fund	2015/2016	93617021
county	29	2009	County Emergency Fund	2015/2016	93617021
county	33	2009	County Emergency Fund	2015/2016	93617021
county	46	2009	County Emergency Fund	2015/2016	93617021
county	18	2009	County Emergency Fund	2015/2016	93617021
county	19	2009	County Emergency Fund	2015/2016	93617021
county	25	2009	County Emergency Fund	2015/2016	93617021
county	41	2009	County Emergency Fund	2015/2016	93617021
county	6	2009	County Emergency Fund	2015/2016	93617021
county	4	2009	County Emergency Fund	2015/2016	93617021
county	13	2009	County Emergency Fund	2015/2016	93617021
county	26	2009	County Emergency Fund	2015/2016	93617021
county	23	2009	County Emergency Fund	2015/2016	93617021
county	27	2009	County Emergency Fund	2015/2016	93617021
county	38	2009	County Emergency Fund	2015/2016	93617021
county	8	2009	County Emergency Fund	2015/2016	93617021
county	24	2009	County Emergency Fund	2015/2016	93617021
county	42	2009	Road Maintenance Fuel Levy	2016/2017	94189837
county	3	2009	Road Maintenance Fuel Levy	2015/2016	94528196
county	22	2009	Road Maintenance Fuel Levy	2015/2016	94811800
county	7	2009	Road Maintenance Fuel Levy	2016/2017	95688977
county	30	2009	Leasing of Medical Equipment	2015/2016	95744681
county	30	2009	Leasing of Medical Equipment	2016/2017	95744681
county	36	2009	Leasing of Medical Equipment	2015/2016	95744681
county	36	2009	Leasing of Medical Equipment	2016/2017	95744681
county	39	2009	Leasing of Medical Equipment	2015/2016	95744681
county	39	2009	Leasing of Medical Equipment	2016/2017	95744681
county	40	2009	Leasing of Medical Equipment	2015/2016	95744681
county	40	2009	Leasing of Medical Equipment	2016/2017	95744681
county	28	2009	Leasing of Medical Equipment	2015/2016	95744681
county	28	2009	Leasing of Medical Equipment	2016/2017	95744681
county	14	2009	Leasing of Medical Equipment	2015/2016	95744681
county	14	2009	Leasing of Medical Equipment	2016/2017	95744681
county	7	2009	Leasing of Medical Equipment	2015/2016	95744681
county	7	2009	Leasing of Medical Equipment	2016/2017	95744681
county	43	2009	Leasing of Medical Equipment	2015/2016	95744681
county	43	2009	Leasing of Medical Equipment	2016/2017	95744681
county	11	2009	Leasing of Medical Equipment	2015/2016	95744681
county	11	2009	Leasing of Medical Equipment	2016/2017	95744681
county	34	2009	Leasing of Medical Equipment	2015/2016	95744681
county	34	2009	Leasing of Medical Equipment	2016/2017	95744681
county	37	2009	Leasing of Medical Equipment	2015/2016	95744681
county	37	2009	Leasing of Medical Equipment	2016/2017	95744681
county	35	2009	Leasing of Medical Equipment	2015/2016	95744681
county	35	2009	Leasing of Medical Equipment	2016/2017	95744681
county	22	2009	Leasing of Medical Equipment	2015/2016	95744681
county	22	2009	Leasing of Medical Equipment	2016/2017	95744681
county	3	2009	Leasing of Medical Equipment	2015/2016	95744681
county	3	2009	Leasing of Medical Equipment	2016/2017	95744681
county	20	2009	Leasing of Medical Equipment	2015/2016	95744681
county	20	2009	Leasing of Medical Equipment	2016/2017	95744681
county	45	2009	Leasing of Medical Equipment	2015/2016	95744681
county	45	2009	Leasing of Medical Equipment	2016/2017	95744681
county	42	2009	Leasing of Medical Equipment	2015/2016	95744681
county	42	2009	Leasing of Medical Equipment	2016/2017	95744681
county	15	2009	Leasing of Medical Equipment	2015/2016	95744681
county	15	2009	Leasing of Medical Equipment	2016/2017	95744681
county	2	2009	Leasing of Medical Equipment	2015/2016	95744681
county	2	2009	Leasing of Medical Equipment	2016/2017	95744681
county	31	2009	Leasing of Medical Equipment	2015/2016	95744681
county	31	2009	Leasing of Medical Equipment	2016/2017	95744681
county	5	2009	Leasing of Medical Equipment	2015/2016	95744681
county	5	2009	Leasing of Medical Equipment	2016/2017	95744681
county	16	2009	Leasing of Medical Equipment	2015/2016	95744681
county	16	2009	Leasing of Medical Equipment	2016/2017	95744681
county	17	2009	Leasing of Medical Equipment	2015/2016	95744681
county	17	2009	Leasing of Medical Equipment	2016/2017	95744681
county	9	2009	Leasing of Medical Equipment	2015/2016	95744681
county	9	2009	Leasing of Medical Equipment	2016/2017	95744681
county	10	2009	Leasing of Medical Equipment	2015/2016	95744681
county	10	2009	Leasing of Medical Equipment	2016/2017	95744681
county	12	2009	Leasing of Medical Equipment	2015/2016	95744681
county	12	2009	Leasing of Medical Equipment	2016/2017	95744681
county	44	2009	Leasing of Medical Equipment	2015/2016	95744681
county	44	2009	Leasing of Medical Equipment	2016/2017	95744681
county	1	2009	Leasing of Medical Equipment	2015/2016	95744681
county	1	2009	Leasing of Medical Equipment	2016/2017	95744681
county	21	2009	Leasing of Medical Equipment	2015/2016	95744681
county	21	2009	Leasing of Medical Equipment	2016/2017	95744681
county	47	2009	Leasing of Medical Equipment	2015/2016	95744681
county	47	2009	Leasing of Medical Equipment	2016/2017	95744681
county	32	2009	Leasing of Medical Equipment	2015/2016	95744681
county	32	2009	Leasing of Medical Equipment	2016/2017	95744681
county	29	2009	Leasing of Medical Equipment	2015/2016	95744681
county	29	2009	Leasing of Medical Equipment	2016/2017	95744681
county	33	2009	Leasing of Medical Equipment	2015/2016	95744681
county	33	2009	Leasing of Medical Equipment	2016/2017	95744681
county	46	2009	Leasing of Medical Equipment	2015/2016	95744681
county	46	2009	Leasing of Medical Equipment	2016/2017	95744681
county	18	2009	Leasing of Medical Equipment	2015/2016	95744681
county	18	2009	Leasing of Medical Equipment	2016/2017	95744681
county	19	2009	Leasing of Medical Equipment	2015/2016	95744681
county	19	2009	Leasing of Medical Equipment	2016/2017	95744681
county	25	2009	Leasing of Medical Equipment	2015/2016	95744681
county	25	2009	Leasing of Medical Equipment	2016/2017	95744681
county	41	2009	Leasing of Medical Equipment	2015/2016	95744681
county	41	2009	Leasing of Medical Equipment	2016/2017	95744681
county	6	2009	Leasing of Medical Equipment	2015/2016	95744681
county	6	2009	Leasing of Medical Equipment	2016/2017	95744681
county	4	2009	Leasing of Medical Equipment	2015/2016	95744681
county	4	2009	Leasing of Medical Equipment	2016/2017	95744681
county	13	2009	Leasing of Medical Equipment	2015/2016	95744681
county	13	2009	Leasing of Medical Equipment	2016/2017	95744681
county	26	2009	Leasing of Medical Equipment	2015/2016	95744681
county	26	2009	Leasing of Medical Equipment	2016/2017	95744681
county	23	2009	Leasing of Medical Equipment	2015/2016	95744681
county	23	2009	Leasing of Medical Equipment	2016/2017	95744681
county	27	2009	Leasing of Medical Equipment	2015/2016	95744681
county	27	2009	Leasing of Medical Equipment	2016/2017	95744681
county	38	2009	Leasing of Medical Equipment	2015/2016	95744681
county	38	2009	Leasing of Medical Equipment	2016/2017	95744681
county	8	2009	Leasing of Medical Equipment	2015/2016	95744681
county	8	2009	Leasing of Medical Equipment	2016/2017	95744681
county	24	2009	Leasing of Medical Equipment	2015/2016	95744681
county	24	2009	Leasing of Medical Equipment	2016/2017	95744681
county	13	2009	Road Maintenance Fuel Levy	2018/2019	95901220
county	44	2009	Road Maintenance Fuel Levy	2016/2017	96769311
county	16	2009	Grant for Free Maternal Healthcare	2015/2016	97134800
county	39	2009	Road Maintenance Fuel Levy	2015/2016	97507257
county	35	2009	Grant for Free Maternal Healthcare	2015/2016	98854000
county	17	2009	Road Maintenance Fuel Levy	2016/2017	98971324
county	28	2009	Road Maintenance Fuel Levy	2018/2019	99208158
county	40	2009	Grant for Free Maternal Healthcare	2015/2016	99713600
county	5	2009	Special Purpose Grant Supporting Emergency Medical Services	2016/2017	100000000
county	4	2009	Special Purpose Grant Supporting Emergency Medical Services	2016/2017	100000000
county	32	2009	Road Maintenance Fuel Levy	2015/2016	103104393
county	11	2009	Road Maintenance Fuel Levy	2018/2019	103341832
county	2	2009	Grant for Free Maternal Healthcare	2015/2016	104441400
county	16	2009	Grant for Free Maternal Healthcare	2016/2017	105476087
county	6	2009	Road Maintenance Fuel Levy	2018/2019	106648770
county	12	2009	Road Maintenance Fuel Levy	2016/2017	107657595
county	20	2009	Road Maintenance Fuel Levy	2018/2019	108302240
county	31	2009	Road Maintenance Fuel Levy	2018/2019	109128974
county	28	2009	Road Maintenance Fuel Levy	2019/2020	109605563
county	41	2009	Road Maintenance Fuel Levy	2019/2020	111402375
county	16	2009	Road Maintenance Fuel Levy	2016/2017	112217667
county	41	2009	Grant for Free Maternal Healthcare	2016/2017	112559127
county	37	2009	Road Maintenance Fuel Levy	2015/2016	113164138
county	9	2009	Road Maintenance Fuel Levy	2015/2016	113767220
county	12	2009	Grant for Free Maternal Healthcare	2016/2017	114704443
county	25	2009	Road Maintenance Fuel Levy	2018/2019	116569586
county	3	2009	Grant for Free Maternal Healthcare	2015/2016	117077600
county	27	2009	Grant for Free Maternal Healthcare	2015/2016	117335400
county	14	2009	Road Maintenance Fuel Levy	2018/2019	117396321
county	38	2009	Road Maintenance Fuel Levy	2018/2019	117396321
county	45	2009	Road Maintenance Fuel Levy	2016/2017	117605419
county	42	2009	Grant for Free Maternal Healthcare	2016/2017	118015691
county	31	2009	Road Maintenance Fuel Levy	2019/2020	118589625
county	2	2009	Grant for Free Maternal Healthcare	2016/2017	119385662
county	8	2009	Road Maintenance Fuel Levy	2016/2017	119911775
county	11	2009	Road Maintenance Fuel Levy	2019/2020	120386438
county	20	2009	Road Maintenance Fuel Levy	2019/2020	120386438
county	4	2009	Road Maintenance Fuel Levy	2019/2020	120386438
county	15	2009	Road Maintenance Fuel Levy	2016/2017	120484293
county	11	2009	Supplement for construction of county headquarters	2017/2018	121000000
county	11	2009	Supplement for construction of county headquarters	2019/2020	121000000
county	5	2009	Supplement for construction of county headquarters	2017/2018	121000000
county	5	2009	Supplement for construction of county headquarters	2019/2020	121000000
county	18	2009	Supplement for construction of county headquarters	2017/2018	121000000
county	18	2009	Supplement for construction of county headquarters	2019/2020	121000000
county	4	2009	Supplement for construction of county headquarters	2017/2018	121000000
county	13	2009	Supplement for construction of county headquarters	2017/2018	121000000
county	13	2009	Supplement for construction of county headquarters	2019/2020	121000000
county	14	2009	Road Maintenance Fuel Levy	2019/2020	122183250
county	3	2009	Road Maintenance Fuel Levy	2016/2017	123368108
county	22	2009	Road Maintenance Fuel Levy	2016/2017	123738238
county	42	2009	Grant for Free Maternal Healthcare	2015/2016	123782400
county	12	2009	Grant for Free Maternal Healthcare	2015/2016	123782400
county	46	2009	Road Maintenance Fuel Levy	2018/2019	125663667
county	1	2009	Grant for Free Maternal Healthcare	2016/2017	125722505
county	39	2009	Road Maintenance Fuel Levy	2016/2017	127250840
county	41	2009	Grant for Free Maternal Healthcare	2015/2016	128080400
county	43	2009	Grant for Free Maternal Healthcare	2016/2017	128736441
county	18	2009	Road Maintenance Fuel Levy	2018/2019	129797341
county	24	2009	Road Maintenance Fuel Levy	2018/2019	129797341
county	43	2009	Grant for Free Maternal Healthcare	2015/2016	131089000
county	25	2009	Road Maintenance Fuel Levy	2019/2020	131167313
county	30	2009	Leasing of Medical Equipment	2019/2020	131914894
county	36	2009	Leasing of Medical Equipment	2019/2020	131914894
county	39	2009	Leasing of Medical Equipment	2019/2020	131914894
county	40	2009	Leasing of Medical Equipment	2019/2020	131914894
county	28	2009	Leasing of Medical Equipment	2019/2020	131914894
county	14	2009	Leasing of Medical Equipment	2019/2020	131914894
county	7	2009	Leasing of Medical Equipment	2019/2020	131914894
county	43	2009	Leasing of Medical Equipment	2019/2020	131914894
county	11	2009	Leasing of Medical Equipment	2019/2020	131914894
county	34	2009	Leasing of Medical Equipment	2019/2020	131914894
county	37	2009	Leasing of Medical Equipment	2019/2020	131914894
county	35	2009	Leasing of Medical Equipment	2019/2020	131914894
county	22	2009	Leasing of Medical Equipment	2019/2020	131914894
county	3	2009	Leasing of Medical Equipment	2019/2020	131914894
county	20	2009	Leasing of Medical Equipment	2019/2020	131914894
county	45	2009	Leasing of Medical Equipment	2019/2020	131914894
county	42	2009	Leasing of Medical Equipment	2019/2020	131914894
county	15	2009	Leasing of Medical Equipment	2019/2020	131914894
county	2	2009	Leasing of Medical Equipment	2019/2020	131914894
county	31	2009	Leasing of Medical Equipment	2019/2020	131914894
county	5	2009	Leasing of Medical Equipment	2019/2020	131914894
county	16	2009	Leasing of Medical Equipment	2019/2020	131914894
county	17	2009	Leasing of Medical Equipment	2019/2020	131914894
county	9	2009	Leasing of Medical Equipment	2019/2020	131914894
county	10	2009	Leasing of Medical Equipment	2019/2020	131914894
county	12	2009	Leasing of Medical Equipment	2019/2020	131914894
county	44	2009	Leasing of Medical Equipment	2019/2020	131914894
county	1	2009	Leasing of Medical Equipment	2019/2020	131914894
county	21	2009	Leasing of Medical Equipment	2019/2020	131914894
county	47	2009	Leasing of Medical Equipment	2019/2020	131914894
county	32	2009	Leasing of Medical Equipment	2019/2020	131914894
county	29	2009	Leasing of Medical Equipment	2019/2020	131914894
county	33	2009	Leasing of Medical Equipment	2019/2020	131914894
county	46	2009	Leasing of Medical Equipment	2019/2020	131914894
county	18	2009	Leasing of Medical Equipment	2019/2020	131914894
county	19	2009	Leasing of Medical Equipment	2019/2020	131914894
county	25	2009	Leasing of Medical Equipment	2019/2020	131914894
county	41	2009	Leasing of Medical Equipment	2019/2020	131914894
county	6	2009	Leasing of Medical Equipment	2019/2020	131914894
county	4	2009	Leasing of Medical Equipment	2019/2020	131914894
county	13	2009	Leasing of Medical Equipment	2019/2020	131914894
county	26	2009	Leasing of Medical Equipment	2019/2020	131914894
county	23	2009	Leasing of Medical Equipment	2019/2020	131914894
county	27	2009	Leasing of Medical Equipment	2019/2020	131914894
county	38	2009	Leasing of Medical Equipment	2019/2020	131914894
county	8	2009	Leasing of Medical Equipment	2019/2020	131914894
county	24	2009	Leasing of Medical Equipment	2019/2020	131914894
county	38	2009	Road Maintenance Fuel Levy	2019/2020	132065719
county	19	2009	Road Maintenance Fuel Levy	2018/2019	132277544
county	23	2009	Road Maintenance Fuel Levy	2015/2016	133118571
county	30	2009	Road Maintenance Fuel Levy	2018/2019	133931014
county	32	2009	Road Maintenance Fuel Levy	2016/2017	134560844
county	1	2009	Grant for Free Maternal Healthcare	2015/2016	136246600
county	46	2009	Road Maintenance Fuel Levy	2019/2020	136557750
county	18	2009	Road Maintenance Fuel Levy	2019/2020	138354563
county	29	2009	Road Maintenance Fuel Levy	2018/2019	141371626
county	24	2009	Road Maintenance Fuel Levy	2019/2020	141948188
county	30	2009	Road Maintenance Fuel Levy	2019/2020	144643406
county	4	2009	Road Maintenance Fuel Levy	2018/2019	146332034
county	37	2009	Road Maintenance Fuel Levy	2016/2017	147689749
county	26	2009	Road Maintenance Fuel Levy	2018/2019	147985503
county	9	2009	Road Maintenance Fuel Levy	2016/2017	148476828
county	35	2009	Road Maintenance Fuel Levy	2018/2019	150465707
county	29	2009	Road Maintenance Fuel Levy	2019/2020	151830656
county	35	2009	Road Maintenance Fuel Levy	2019/2020	152729063
county	19	2009	Road Maintenance Fuel Levy	2019/2020	153627469
county	36	2009	Road Maintenance Fuel Levy	2018/2019	156252849
county	27	2009	Road Maintenance Fuel Levy	2018/2019	156252849
county	36	2009	Road Maintenance Fuel Levy	2019/2020	156322688
county	40	2009	Road Maintenance Fuel Levy	2018/2019	157079584
county	34	2009	Road Maintenance Fuel Levy	2018/2019	157906319
county	41	2009	Road Maintenance Fuel Levy	2018/2019	158733053
county	26	2009	Road Maintenance Fuel Levy	2019/2020	163509938
county	6	2009	Road Maintenance Fuel Levy	2019/2020	164408344
county	21	2009	Road Maintenance Fuel Levy	2018/2019	164520196
county	44	2009	Grant for Free Maternal Healthcare	2015/2016	165043200
county	47	2009	Road Maintenance Fuel Levy	2015/2016	165100152
county	13	2009	Road Maintenance Fuel Levy	2019/2020	166205156
county	33	2009	Road Maintenance Fuel Levy	2018/2019	167827135
county	45	2009	Grant for Free Maternal Healthcare	2016/2017	168133301
county	39	2009	Grant for Free Maternal Healthcare	2015/2016	170630600
county	40	2009	Road Maintenance Fuel Levy	2019/2020	170697188
county	11	2009	Total Conditional Additional Allocation	2016/2017	172115898
county	44	2009	Grant for Free Maternal Healthcare	2016/2017	172348147
county	23	2009	Road Maintenance Fuel Levy	2016/2017	173732145
county	43	2009	Road Maintenance Fuel Levy	2018/2019	176094481
county	25	2009	Total Conditional Additional Allocation	2016/2017	176911952
county	44	2009	Road Maintenance Fuel Levy	2018/2019	176921216
county	21	2009	Road Maintenance Fuel Levy	2019/2020	178782844
county	27	2009	Road Maintenance Fuel Levy	2019/2020	179681250
county	3	2009	Grant for Free Maternal Healthcare	2016/2017	181669778
county	42	2009	Road Maintenance Fuel Levy	2018/2019	181881624
county	34	2009	Road Maintenance Fuel Levy	2019/2020	182376469
county	7	2009	Road Maintenance Fuel Levy	2018/2019	182708358
county	10	2009	Road Maintenance Fuel Levy	2018/2019	184361828
county	13	2009	Total Conditional Additional Allocation	2016/2017	186035373
county	17	2009	Road Maintenance Fuel Levy	2018/2019	187668766
county	39	2009	Grant for Free Maternal Healthcare	2016/2017	189574801
county	43	2009	Road Maintenance Fuel Levy	2019/2020	191360531
county	10	2009	Road Maintenance Fuel Levy	2019/2020	192258938
county	44	2009	Road Maintenance Fuel Levy	2019/2020	192258938
county	14	2009	Grants to Level5 Hospitals	2015/2016	192882857
county	42	2009	Road Maintenance Fuel Levy	2019/2020	194055750
county	45	2009	Grant for Free Maternal Healthcare	2015/2016	194699400
county	6	2009	Total Conditional Additional Allocation	2016/2017	194904811
county	2	2009	Road Maintenance Fuel Levy	2018/2019	198416317
county	7	2009	Road Maintenance Fuel Levy	2019/2020	199446188
county	47	2009	Grant for Free Maternal Healthcare	2016/2017	199899133
country	KE	2009	Special Purpose Grant Supporting Emergency Medical Services	2016/2017	200000000
county	30	2009	Leasing of Medical Equipment	2018/2019	200000000
county	36	2009	Leasing of Medical Equipment	2018/2019	200000000
county	39	2009	Leasing of Medical Equipment	2018/2019	200000000
county	40	2009	Leasing of Medical Equipment	2018/2019	200000000
county	28	2009	Leasing of Medical Equipment	2018/2019	200000000
county	14	2009	Leasing of Medical Equipment	2018/2019	200000000
county	7	2009	Leasing of Medical Equipment	2018/2019	200000000
county	43	2009	Leasing of Medical Equipment	2018/2019	200000000
county	11	2009	Leasing of Medical Equipment	2018/2019	200000000
county	34	2009	Leasing of Medical Equipment	2018/2019	200000000
county	37	2009	Leasing of Medical Equipment	2018/2019	200000000
county	35	2009	Leasing of Medical Equipment	2018/2019	200000000
county	22	2009	Leasing of Medical Equipment	2018/2019	200000000
county	3	2009	Leasing of Medical Equipment	2018/2019	200000000
county	20	2009	Leasing of Medical Equipment	2018/2019	200000000
county	45	2009	Leasing of Medical Equipment	2018/2019	200000000
county	42	2009	Leasing of Medical Equipment	2018/2019	200000000
county	15	2009	Leasing of Medical Equipment	2018/2019	200000000
county	2	2009	Leasing of Medical Equipment	2018/2019	200000000
county	31	2009	Leasing of Medical Equipment	2018/2019	200000000
county	5	2009	Leasing of Medical Equipment	2018/2019	200000000
county	16	2009	Leasing of Medical Equipment	2018/2019	200000000
county	17	2009	Leasing of Medical Equipment	2018/2019	200000000
county	9	2009	Leasing of Medical Equipment	2018/2019	200000000
county	10	2009	Leasing of Medical Equipment	2018/2019	200000000
county	12	2009	Leasing of Medical Equipment	2018/2019	200000000
county	44	2009	Leasing of Medical Equipment	2018/2019	200000000
county	1	2009	Leasing of Medical Equipment	2018/2019	200000000
county	21	2009	Leasing of Medical Equipment	2018/2019	200000000
county	47	2009	Leasing of Medical Equipment	2018/2019	200000000
county	32	2009	Leasing of Medical Equipment	2018/2019	200000000
county	29	2009	Leasing of Medical Equipment	2018/2019	200000000
county	33	2009	Leasing of Medical Equipment	2018/2019	200000000
county	46	2009	Leasing of Medical Equipment	2018/2019	200000000
county	18	2009	Leasing of Medical Equipment	2018/2019	200000000
county	19	2009	Leasing of Medical Equipment	2018/2019	200000000
county	25	2009	Leasing of Medical Equipment	2018/2019	200000000
county	41	2009	Leasing of Medical Equipment	2018/2019	200000000
county	6	2009	Leasing of Medical Equipment	2018/2019	200000000
county	4	2009	Leasing of Medical Equipment	2018/2019	200000000
county	13	2009	Leasing of Medical Equipment	2018/2019	200000000
county	26	2009	Leasing of Medical Equipment	2018/2019	200000000
county	23	2009	Leasing of Medical Equipment	2018/2019	200000000
county	27	2009	Leasing of Medical Equipment	2018/2019	200000000
county	38	2009	Leasing of Medical Equipment	2018/2019	200000000
county	8	2009	Leasing of Medical Equipment	2018/2019	200000000
county	24	2009	Leasing of Medical Equipment	2018/2019	200000000
county	1	2009	Road Maintenance Fuel Levy	2019/2020	200344594
county	45	2009	Road Maintenance Fuel Levy	2018/2019	203376725
county	28	2009	Total Conditional Additional Allocation	2016/2017	209149840
county	17	2009	Road Maintenance Fuel Levy	2019/2020	210227063
county	12	2009	Road Maintenance Fuel Levy	2018/2019	210817337
county	20	2009	Total Conditional Additional Allocation	2016/2017	211419707
county	10	2009	Total Conditional Additional Allocation	2016/2017	213750227
county	37	2009	Grant for Free Maternal Healthcare	2015/2016	214900000
county	32	2009	Grant for Free Maternal Healthcare	2016/2017	215283613
county	47	2009	Road Maintenance Fuel Levy	2016/2017	215471089
county	1	2009	Road Maintenance Fuel Levy	2018/2019	216604479
county	37	2009	Grant for Free Maternal Healthcare	2016/2017	217184083
county	16	2009	Road Maintenance Fuel Levy	2018/2019	219084683
county	32	2009	Grant for Free Maternal Healthcare	2015/2016	219627800
county	16	2009	Road Maintenance Fuel Levy	2019/2020	220109531
county	45	2009	Road Maintenance Fuel Levy	2019/2020	221007938
county	2	2009	Road Maintenance Fuel Levy	2019/2020	221007938
county	22	2009	Grant for Free Maternal Healthcare	2016/2017	221521352
county	8	2009	Road Maintenance Fuel Levy	2018/2019	223218356
county	31	2009	Total Conditional Additional Allocation	2016/2017	224217040
county	22	2009	Grant for Free Maternal Healthcare	2015/2016	224785400
county	18	2009	Total Conditional Additional Allocation	2016/2017	226788828
county	12	2009	Road Maintenance Fuel Levy	2019/2020	228195188
county	33	2009	Road Maintenance Fuel Levy	2019/2020	228195188
county	15	2009	Road Maintenance Fuel Levy	2018/2019	229832234
county	24	2009	Total Conditional Additional Allocation	2016/2017	230628275
county	5	2009	Total Conditional Additional Allocation	2015/2016	234556520
county	39	2009	Road Maintenance Fuel Levy	2018/2019	235619376
county	38	2009	Total Conditional Additional Allocation	2016/2017	239401487
county	34	2009	Total Conditional Additional Allocation	2016/2017	239970891
county	8	2009	Road Maintenance Fuel Levy	2019/2020	242569688
county	12	2009	Grants to Level5 Hospitals	2015/2016	244318286
county	27	2009	Total Conditional Additional Allocation	2016/2017	244752303
county	22	2009	Road Maintenance Fuel Levy	2018/2019	246366927
county	30	2009	Total Conditional Additional Allocation	2016/2017	247398231
county	5	2009	Total Conditional Additional Allocation	2016/2017	247617538
county	32	2009	Road Maintenance Fuel Levy	2018/2019	248847131
county	36	2009	Total Conditional Additional Allocation	2016/2017	249230239
county	15	2009	Road Maintenance Fuel Levy	2019/2020	250655344
county	39	2009	Road Maintenance Fuel Levy	2019/2020	252452156
county	25	2009	Total Conditional Additional Allocation	2015/2016	253891092
county	11	2009	Total Conditional Additional Allocation	2015/2016	254739627
county	46	2009	Total Conditional Additional Allocation	2016/2017	258376249
county	29	2009	Total Conditional Additional Allocation	2016/2017	260830907
county	4	2009	Total Conditional Additional Allocation	2015/2016	264916131
county	9	2009	Road Maintenance Fuel Levy	2018/2019	267035293
county	22	2009	Road Maintenance Fuel Levy	2019/2020	267725063
county	37	2009	Road Maintenance Fuel Levy	2018/2019	271995701
county	13	2009	Total Conditional Additional Allocation	2015/2016	272978662
county	33	2009	Total Conditional Additional Allocation	2016/2017	273673815
county	26	2009	Total Conditional Additional Allocation	2016/2017	276793229
county	25	2009	Total Conditional Additional Allocation	2017/2018	277702372
county	35	2009	Total Conditional Additional Allocation	2016/2017	278075722
county	6	2009	Total Conditional Additional Allocation	2015/2016	280159968
county	28	2009	Total Conditional Additional Allocation	2019/2020	280537673
county	10	2009	Total Conditional Additional Allocation	2015/2016	281413195
county	28	2009	Total Conditional Additional Allocation	2017/2018	281518265
county	28	2009	Total Conditional Additional Allocation	2015/2016	282941615
county	23	2009	Road Maintenance Fuel Levy	2018/2019	283569986
county	25	2009	Total Conditional Additional Allocation	2019/2020	283801082
county	21	2009	Total Conditional Additional Allocation	2016/2017	284119733
county	3	2009	Road Maintenance Fuel Levy	2018/2019	285223455
county	31	2009	Total Conditional Additional Allocation	2017/2018	286046433
county	14	2009	Grants to Level5 Hospitals	2016/2017	286705202
county	8	2009	Total Conditional Additional Allocation	2016/2017	287241974
county	9	2009	Road Maintenance Fuel Levy	2019/2020	290185219
county	6	2009	Total Conditional Additional Allocation	2017/2018	291798675
county	31	2009	Total Conditional Additional Allocation	2019/2020	292381024
county	4	2009	Total Conditional Additional Allocation	2016/2017	292735592
county	15	2009	Total Conditional Additional Allocation	2016/2017	293741405
county	20	2009	Total Conditional Additional Allocation	2017/2018	295119105
county	40	2009	Total Conditional Additional Allocation	2016/2017	295321032
county	37	2009	Road Maintenance Fuel Levy	2019/2020	295575656
county	3	2009	Road Maintenance Fuel Levy	2019/2020	296474063
county	20	2009	Total Conditional Additional Allocation	2015/2016	297334152
county	24	2009	Total Conditional Additional Allocation	2015/2016	297371526
county	32	2009	Road Maintenance Fuel Levy	2019/2020	297372469
county	17	2009	Total Conditional Additional Allocation	2016/2017	297862274
county	20	2009	Total Conditional Additional Allocation	2019/2020	298087199
county	23	2009	Road Maintenance Fuel Levy	2019/2020	299169281
county	14	2009	Grants to Level5 Hospitals	2017/2018	301040462
county	14	2009	Grants to Level 5 Hospitals	2019/2020	301040462
county	47	2009	Grant for Free Maternal Healthcare	2015/2016	302579200
county	24	2009	Total Conditional Additional Allocation	2019/2020	303304863
county	16	2009	Grants to Level5 Hospitals	2015/2016	304326286
county	31	2009	Total Conditional Additional Allocation	2015/2016	306098811
county	41	2009	Total Conditional Additional Allocation	2019/2020	308325869
county	18	2009	Total Conditional Additional Allocation	2015/2016	308691210
county	41	2009	Total Conditional Additional Allocation	2016/2017	310178291
county	34	2009	Total Conditional Additional Allocation	2015/2016	311294742
county	4	2009	Total Conditional Additional Allocation	2019/2020	313235934
county	12	2009	Grants to Level5 Hospitals	2017/2018	313872832
county	30	2009	Total Conditional Additional Allocation	2019/2020	314622598
county	9	2009	Total Conditional Additional Allocation	2016/2017	315078397
county	2	2009	Total Conditional Additional Allocation	2016/2017	315507017
county	38	2009	Total Conditional Additional Allocation	2015/2016	319378127
county	24	2009	Total Conditional Additional Allocation	2017/2018	324215400
county	38	2009	Total Conditional Additional Allocation	2017/2018	324237222
county	30	2009	Total Conditional Additional Allocation	2015/2016	324481292
county	36	2009	Total Conditional Additional Allocation	2015/2016	324488449
county	23	2009	Total Conditional Additional Allocation	2016/2017	327563586
county	34	2009	Total Conditional Additional Allocation	2017/2018	327698687
county	7	2009	Grants to Level5 Hospitals	2016/2017	328323699
county	22	2009	Grants to Level5 Hospitals	2015/2016	330044000
county	35	2009	Total Conditional Additional Allocation	2019/2020	332126043
county	33	2009	Total Conditional Additional Allocation	2015/2016	332674346
county	30	2009	Total Conditional Additional Allocation	2017/2018	333374243
county	29	2009	Total Conditional Additional Allocation	2015/2016	334367747
county	29	2009	Total Conditional Additional Allocation	2019/2020	334625211
county	46	2009	Total Conditional Additional Allocation	2015/2016	336026183
county	5	2009	Total Conditional Additional Allocation	2017/2018	338400604
county	45	2009	Grants to Level5 Hospitals	2015/2016	338616571
county	42	2009	Grants to Level5 Hospitals	2015/2016	338616571
county	43	2009	Total Conditional Additional Allocation	2016/2017	340520062
county	26	2009	Total Conditional Additional Allocation	2015/2016	341137338
county	35	2009	Total Conditional Additional Allocation	2017/2018	341487512
county	25	2009	Total Conditional Additional Allocation	2018/2019	342710164
county	37	2009	Grants to Level5 Hospitals	2015/2016	342902857
county	38	2009	Total Conditional Additional Allocation	2019/2020	344381111
county	7	2009	Grants to Level5 Hospitals	2017/2018	344739884
county	7	2009	Grants to Level 5 Hospitals	2019/2020	344739884
county	29	2009	Total Conditional Additional Allocation	2017/2018	345713873
county	10	2009	Total Conditional Additional Allocation	2019/2020	346375843
county	8	2009	Total Conditional Additional Allocation	2015/2016	346957977
county	31	2009	Total Conditional Additional Allocation	2018/2019	347622182
county	46	2009	Total Conditional Additional Allocation	2019/2020	348716163
county	28	2009	Total Conditional Additional Allocation	2018/2019	349797077
county	42	2009	Grants to Level5 Hospitals	2016/2017	351445087
county	36	2009	Total Conditional Additional Allocation	2019/2020	352339235
county	10	2009	Total Conditional Additional Allocation	2017/2018	353093486
county	6	2009	Total Conditional Additional Allocation	2019/2020	354796343
county	12	2009	Grants to Level5 Hospitals	2016/2017	356069364
county	32	2009	Grants to Level5 Hospitals	2016/2017	356069364
county	36	2009	Total Conditional Additional Allocation	2017/2018	358153393
county	7	2009	Grants to Level5 Hospitals	2015/2016	360048000
county	21	2009	Total Conditional Additional Allocation	2015/2016	360174609
county	6	2009	Total Conditional Additional Allocation	2018/2019	361620075
county	35	2009	Total Conditional Additional Allocation	2015/2016	363121852
county	16	2009	Grants to Level5 Hospitals	2016/2017	365317919
county	23	2009	Total Conditional Additional Allocation	2015/2016	365628794
county	17	2009	Total Conditional Additional Allocation	2015/2016	366617073
county	34	2009	Total Conditional Additional Allocation	2019/2020	366740025
county	41	2009	Total Conditional Additional Allocation	2017/2018	367420940
county	19	2009	Grants to Level5 Hospitals	2015/2016	368620571
county	15	2009	Total Conditional Additional Allocation	2015/2016	368896848
county	42	2009	Grants to Level5 Hospitals	2017/2018	369017341
county	42	2009	Grants to Level 5 Hospitals	2019/2020	369017341
county	40	2009	Total Conditional Additional Allocation	2015/2016	369561553
county	46	2009	Total Conditional Additional Allocation	2017/2018	369636128
county	1	2009	Grants to Level5 Hospitals	2016/2017	369942197
county	5	2009	Total Conditional Additional Allocation	2019/2020	370333538
county	24	2009	Total Conditional Additional Allocation	2018/2019	370810825
county	20	2009	Total Conditional Additional Allocation	2018/2019	371794810
county	33	2009	Total Conditional Additional Allocation	2017/2018	373105934
county	2	2009	Total Conditional Additional Allocation	2017/2018	373107313
county	27	2009	Total Conditional Additional Allocation	2017/2018	373197782
county	26	2009	Total Conditional Additional Allocation	2017/2018	373438282
county	9	2009	Total Conditional Additional Allocation	2015/2016	373457658
county	12	2009	Grants to Level 5 Hospitals	2019/2020	373872832
county	32	2009	Grants to Level5 Hospitals	2017/2018	373872832
county	32	2009	Grants to Level 5 Hospitals	2019/2020	373872832
county	2	2009	Total Conditional Additional Allocation	2015/2016	374066375
county	44	2009	Total Conditional Additional Allocation	2019/2020	375863013
county	11	2009	Total Conditional Additional Allocation	2017/2018	376614697
county	32	2009	Grants to Level5 Hospitals	2015/2016	377193143
county	26	2009	Total Conditional Additional Allocation	2019/2020	377918043
county	43	2009	Total Conditional Additional Allocation	2019/2020	380624069
county	30	2009	Total Conditional Additional Allocation	2018/2019	382727014
county	40	2009	Total Conditional Additional Allocation	2019/2020	382879464
county	16	2009	Grants to Level5 Hospitals	2017/2018	383583815
county	16	2009	Grants to Level 5 Hospitals	2019/2020	383583815
county	38	2009	Total Conditional Additional Allocation	2018/2019	385053522
county	44	2009	Total Conditional Additional Allocation	2016/2017	386744511
county	11	2009	Total Conditional Additional Allocation	2019/2020	387607090
county	1	2009	Grants to Level5 Hospitals	2017/2018	388439306
county	1	2009	Grants to Level 5 Hospitals	2019/2020	388439306
county	19	2009	Grants to Level5 Hospitals	2016/2017	388439306
county	27	2009	Total Conditional Additional Allocation	2019/2020	389997506
county	46	2009	Total Conditional Additional Allocation	2018/2019	391753888
county	22	2009	Grants to Level5 Hospitals	2016/2017	393063584
county	27	2009	Total Conditional Additional Allocation	2015/2016	393481820
county	29	2009	Total Conditional Additional Allocation	2018/2019	396712989
county	13	2009	Total Conditional Additional Allocation	2017/2018	396766501
county	45	2009	Grants to Level5 Hospitals	2016/2017	397687861
county	33	2009	Total Conditional Additional Allocation	2019/2020	400193676
county	41	2009	Total Conditional Additional Allocation	2015/2016	400533084
county	1	2009	Grants to Level5 Hospitals	2015/2016	402910857
county	37	2009	Grants to Level5 Hospitals	2016/2017	406936416
county	19	2009	Grants to Level5 Hospitals	2017/2018	407861272
county	19	2009	Grants to Level 5 Hospitals	2019/2020	407861272
county	40	2009	Total Conditional Additional Allocation	2017/2018	408177033
county	8	2009	Total Conditional Additional Allocation	2019/2020	409172876
county	35	2009	Total Conditional Additional Allocation	2018/2019	409519496
county	27	2009	Total Conditional Additional Allocation	2018/2019	410315914
county	43	2009	Total Conditional Additional Allocation	2017/2018	410977282
county	35	2009	Grants to Level5 Hospitals	2017/2018	412716763
county	44	2009	Total Conditional Additional Allocation	2017/2018	413106666
county	21	2009	Total Conditional Additional Allocation	2019/2020	414104727
county	43	2009	Total Conditional Additional Allocation	2015/2016	414499437
county	34	2009	Total Conditional Additional Allocation	2018/2019	415206684
county	41	2009	Total Conditional Additional Allocation	2018/2019	415427861
county	47	2009	Road Maintenance Fuel Levy	2018/2019	415847530
county	10	2009	Total Conditional Additional Allocation	2018/2019	417280542
county	45	2009	Grants to Level5 Hospitals	2017/2018	417572254
county	45	2009	Grants to Level 5 Hospitals	2019/2020	417572254
county	33	2009	Total Conditional Additional Allocation	2018/2019	419242432
county	4	2009	Total Conditional Additional Allocation	2017/2018	419558308
county	36	2009	Total Conditional Additional Allocation	2018/2019	420841205
county	17	2009	Total Conditional Additional Allocation	2019/2020	421911014
county	26	2009	Total Conditional Additional Allocation	2018/2019	423000418
county	3	2009	Total Conditional Additional Allocation	2016/2017	427175164
county	37	2009	Grants to Level5 Hospitals	2017/2018	427283237
county	37	2009	Grants to Level 5 Hospitals	2019/2020	427283237
county	2	2009	Total Conditional Additional Allocation	2019/2020	427925722
county	21	2009	Total Conditional Additional Allocation	2017/2018	428174399
county	44	2009	Total Conditional Additional Allocation	2018/2019	430327100
county	17	2009	Total Conditional Additional Allocation	2017/2018	433661302
county	40	2009	Total Conditional Additional Allocation	2018/2019	435973669
county	17	2009	Total Conditional Additional Allocation	2018/2019	438674526
county	18	2009	Total Conditional Additional Allocation	2019/2020	441988676
county	43	2009	Total Conditional Additional Allocation	2018/2019	444954827
county	39	2009	Total Conditional Additional Allocation	2016/2017	445853234
county	13	2009	Total Conditional Additional Allocation	2019/2020	446030885
county	8	2009	Total Conditional Additional Allocation	2017/2018	448002378
county	5	2009	Total Conditional Additional Allocation	2018/2019	448082050
county	11	2009	Total Conditional Additional Allocation	2018/2019	449049293
county	44	2009	Total Conditional Additional Allocation	2015/2016	449931534
county	21	2009	Total Conditional Additional Allocation	2018/2019	450368887
county	47	2009	Road Maintenance Fuel Levy	2019/2020	451898344
county	2	2009	Total Conditional Additional Allocation	2018/2019	455485910
county	18	2009	Total Conditional Additional Allocation	2017/2018	459581935
county	8	2009	Total Conditional Additional Allocation	2018/2019	460298353
county	13	2009	Total Conditional Additional Allocation	2018/2019	465209339
county	9	2009	Total Conditional Additional Allocation	2019/2020	469688330
county	23	2009	Total Conditional Additional Allocation	2019/2020	470612414
county	39	2009	Total Conditional Additional Allocation	2019/2020	471132654
county	15	2009	Total Conditional Additional Allocation	2019/2020	477658441
country	KE	2009	Supplement for construction of county headquarters	2019/2020	485152184
county	3	2009	Total Conditional Additional Allocation	2015/2016	486835382
county	15	2009	Total Conditional Additional Allocation	2017/2018	495457373
county	39	2009	Total Conditional Additional Allocation	2015/2016	495516573
county	4	2009	Total Conditional Additional Allocation	2018/2019	497504571
county	14	2009	Total Conditional Additional Allocation	2015/2016	500625241
county	18	2009	Total Conditional Additional Allocation	2018/2019	503233263
county	3	2009	Total Conditional Additional Allocation	2017/2018	506667945
county	15	2009	Total Conditional Additional Allocation	2018/2019	510797140
county	14	2009	Total Conditional Additional Allocation	2016/2017	511841166
county	3	2009	Total Conditional Additional Allocation	2019/2020	513222118
county	9	2009	Total Conditional Additional Allocation	2018/2019	523750213
county	39	2009	Total Conditional Additional Allocation	2017/2018	531884312
county	9	2009	Total Conditional Additional Allocation	2017/2018	532626010
county	39	2009	Total Conditional Additional Allocation	2018/2019	533956683
county	23	2009	Total Conditional Additional Allocation	2018/2019	534489927
county	22	2009	Grants to Level 5 Hospitals	2019/2020	538716763
county	3	2009	Total Conditional Additional Allocation	2018/2019	564228319
county	7	2009	Total Conditional Additional Allocation	2016/2017	586657085
county	47	2009	Total Conditional Additional Allocation	2016/2017	590993985
county	23	2009	Total Conditional Additional Allocation	2017/2018	594217857
county	14	2009	Total Conditional Additional Allocation	2019/2020	599466129
country	KE	2009	Supplement for construction of county headquarters	2017/2018	605000000
county	14	2009	Total Conditional Additional Allocation	2017/2018	611940103
county	19	2009	Total Conditional Additional Allocation	2016/2017	641510955
county	14	2009	Total Conditional Additional Allocation	2018/2019	667061008
county	12	2009	Total Conditional Additional Allocation	2015/2016	671568065
county	42	2009	Total Conditional Additional Allocation	2016/2017	681249588
county	47	2009	Total Conditional Additional Allocation	2019/2020	686234787
county	7	2009	Total Conditional Additional Allocation	2015/2016	687539457
county	1	2009	Total Conditional Additional Allocation	2016/2017	701099704
county	16	2009	Total Conditional Additional Allocation	2015/2016	702415150
county	16	2009	Total Conditional Additional Allocation	2016/2017	703521230
county	12	2009	Total Conditional Additional Allocation	2016/2017	706272310
county	7	2009	Total Conditional Additional Allocation	2019/2020	709693899
county	19	2009	Total Conditional Additional Allocation	2015/2016	712760771
county	7	2009	Total Conditional Additional Allocation	2017/2018	727272975
county	47	2009	Total Conditional Additional Allocation	2018/2019	729840781
county	47	2009	Total Conditional Additional Allocation	2015/2016	730196325
county	42	2009	Total Conditional Additional Allocation	2015/2016	746516873
county	19	2009	Total Conditional Additional Allocation	2017/2018	749086744
county	42	2009	Total Conditional Additional Allocation	2017/2018	756595347
county	42	2009	Total Conditional Additional Allocation	2019/2020	757960772
county	47	2009	Total Conditional Additional Allocation	2017/2018	759568406
county	1	2009	Total Conditional Additional Allocation	2017/2018	759622516
county	19	2009	Total Conditional Additional Allocation	2019/2020	762248311
county	1	2009	Total Conditional Additional Allocation	2019/2020	769558026
county	7	2009	Total Conditional Additional Allocation	2018/2019	775747878
county	19	2009	Total Conditional Additional Allocation	2018/2019	782635195
county	45	2009	Total Conditional Additional Allocation	2016/2017	806118433
county	16	2009	Total Conditional Additional Allocation	2019/2020	810830576
county	42	2009	Total Conditional Additional Allocation	2018/2019	813848454
county	1	2009	Total Conditional Additional Allocation	2015/2016	816446379
county	12	2009	Total Conditional Additional Allocation	2019/2020	822199639
county	12	2009	Total Conditional Additional Allocation	2017/2018	836607144
county	45	2009	Total Conditional Additional Allocation	2015/2016	839649985
county	32	2009	Total Conditional Additional Allocation	2016/2017	840874682
county	2	2009	Road Maintenance Fuel Levy	2016/2017	849790624
county	16	2009	Total Conditional Additional Allocation	2017/2018	857806061
county	1	2009	Total Conditional Additional Allocation	2018/2019	868324719
county	22	2009	Total Conditional Additional Allocation	2016/2017	869840936
county	45	2009	Total Conditional Additional Allocation	2019/2020	871187381
county	45	2009	Total Conditional Additional Allocation	2017/2018	871511268
county	22	2009	Total Conditional Additional Allocation	2015/2016	876841548
county	16	2009	Total Conditional Additional Allocation	2018/2019	881092537
county	12	2009	Total Conditional Additional Allocation	2018/2019	882363597
county	32	2009	Total Conditional Additional Allocation	2017/2018	889584107
county	37	2009	Total Conditional Additional Allocation	2015/2016	899038414
country	KE	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	900000000
country	KE	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	900000000
country	KE	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	900000000
country	KE	2009	Compensation for User Fee Foregone	2019/2020	900000000
county	32	2009	Total Conditional Additional Allocation	2019/2020	904946758
county	37	2009	Total Conditional Additional Allocation	2016/2017	906172077
county	32	2009	Total Conditional Additional Allocation	2018/2019	909243228
county	45	2009	Total Conditional Additional Allocation	2018/2019	917177976
county	22	2009	Total Conditional Additional Allocation	2017/2018	921227765
county	32	2009	Total Conditional Additional Allocation	2015/2016	926660487
county	37	2009	Total Conditional Additional Allocation	2017/2018	968430285
county	37	2009	Total Conditional Additional Allocation	2019/2020	969486374
county	37	2009	Total Conditional Additional Allocation	2018/2019	1006978228
county	22	2009	Total Conditional Additional Allocation	2019/2020	1028141559
county	22	2009	Total Conditional Additional Allocation	2018/2019	1087865232
country	KE	2009	Rehabilitation of Village Polytechnics	2018/2019	2000000000
country	KE	2009	Rehabilitation of Village Polytechnics	2019/2020	2000000000
country	KE	2009	Road Maintenance Fuel Levy	2015/2016	3300000000
country	KE	2009	Grants to Level5 Hospitals	2015/2016	3600480000
country	KE	2009	Grants to Level5 Hospitals	2016/2017	4000000000
country	KE	2009	Grant for Free Maternal Healthcare	2016/2017	4121029355
country	KE	2009	Grants to Level5 Hospitals	2017/2018	4200000000
country	KE	2009	Grant for Free Maternal Healthcare	2015/2016	4298000000
country	KE	2009	Road Maintenance Fuel Levy	2016/2017	4306807629
country	KE	2009	Grants to Level 5 Hospitals	2019/2020	4326000000
country	KE	2009	County Emergency Fund	2015/2016	4400000000
country	KE	2009	Leasing of Medical Equipment	2015/2016	4500000000
country	KE	2009	Leasing of Medical Equipment	2016/2017	4500000000
country	KE	2009	Leasing of Medical Equipment	2019/2020	6200000000
country	KE	2009	Road Maintenance Fuel Levy	2018/2019	8269000000
country	KE	2009	Road Maintenance Fuel Levy	2019/2020	8984062500
country	KE	2009	Leasing of Medical Equipment	2018/2019	9400000000
country	KE	2009	Total Conditional Additional Allocation	2016/2017	18027836984
country	KE	2009	Total Conditional Additional Allocation	2015/2016	20998480000
country	KE	2009	Total Conditional Additional Allocation	2019/2020	22895214684
country	KE	2009	Total Conditional Additional Allocation	2017/2018	23273192369
country	KE	2009	Total Conditional Additional Allocation	2018/2019	25500000000
\.


--
-- Name: breakdown_condition_fund_ng pk_breakdown_condition_fund_ng; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_ng
    ADD CONSTRAINT pk_breakdown_condition_fund_ng PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

