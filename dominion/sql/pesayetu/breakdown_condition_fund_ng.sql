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
level1	KE_1_046	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	945233
level1	KE_1_041	2009	Supplement for construction of county headquarters	2019/2020	1152184
level1	KE_1_005	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	2366871
level1	KE_1_005	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	2451034
level1	KE_1_005	2009	Compensation for User Fee Foregone	2019/2020	2451034
level1	KE_1_005	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	2481810
level1	KE_1_011	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	3340178
level1	KE_1_011	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	3472461
level1	KE_1_011	2009	Compensation for User Fee Foregone	2019/2020	3472461
level1	KE_1_011	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	3514477
level1	KE_1_025	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	5220197
level1	KE_1_025	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	5235578
level1	KE_1_025	2009	Compensation for User Fee Foregone	2019/2020	5235578
level1	KE_1_006	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	5296305
level1	KE_1_004	2009	Compensation for User Fee Foregone	2019/2020	5296305
level1	KE_1_025	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	5321855
level1	KE_1_004	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	5596140
level1	KE_1_004	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	5682537
level1	KE_1_013	2009	Compensation for User Fee Foregone	2019/2020	5682537
level1	KE_1_004	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	5699850
level1	KE_1_006	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	6631099
level1	KE_1_006	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	6635345
level1	KE_1_010	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	6643714
level1	KE_1_010	2009	Compensation for User Fee Foregone	2019/2020	6643714
level1	KE_1_010	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	6787069
level1	KE_1_010	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	6872636
level1	KE_1_041	2009	Compensation for User Fee Foregone	2019/2020	8218119
level1	KE_1_013	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	8218119
level1	KE_1_013	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	8419197
level1	KE_1_013	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	8515829
level1	KE_1_028	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	8624640
level1	KE_1_028	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	8788919
level1	KE_1_028	2009	Compensation for User Fee Foregone	2019/2020	8788919
level1	KE_1_028	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	8956070
level1	KE_1_031	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	9305967
level1	KE_1_033	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	9834915
level1	KE_1_031	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	9872539
level1	KE_1_031	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	9968208
level1	KE_1_031	2009	Compensation for User Fee Foregone	2019/2020	9968208
level1	KE_1_014	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	10724225
level1	KE_1_014	2009	Compensation for User Fee Foregone	2019/2020	10724225
level1	KE_1_014	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	10776608
level1	KE_1_011	2009	Rehabilitation of Village Polytechnics	2019/2020	10833298
level1	KE_1_020	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	11282570
level1	KE_1_020	2009	Compensation for User Fee Foregone	2019/2020	11282570
level1	KE_1_040	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	11377011
level1	KE_1_046	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	11578458
level1	KE_1_020	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	11625078
level1	KE_1_024	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	11950786
level1	KE_1_014	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	12032884
level1	KE_1_024	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	12128484
level1	KE_1_024	2009	Compensation for User Fee Foregone	2019/2020	12128484
level1	KE_1_020	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	12308920
level1	KE_1_024	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	12316429
level1	KE_1_038	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	12657201
level1	KE_1_038	2009	Compensation for User Fee Foregone	2019/2020	12657201
level1	KE_1_018	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	12735922
level1	KE_1_018	2009	Compensation for User Fee Foregone	2019/2020	12735922
level1	KE_1_038	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	12928219
level1	KE_1_030	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	12950107
level1	KE_1_007	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	12964636
level1	KE_1_007	2009	Compensation for User Fee Foregone	2019/2020	12964636
level1	KE_1_038	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	13002761
level1	KE_1_018	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	13122239
level1	KE_1_007	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	13126919
level1	KE_1_046	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	13175221
level1	KE_1_046	2009	Compensation for User Fee Foregone	2019/2020	13175221
level1	KE_1_030	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	13191000
level1	KE_1_030	2009	Compensation for User Fee Foregone	2019/2020	13191000
level1	KE_1_030	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	13370516
level1	KE_1_019	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	13701379
level1	KE_1_019	2009	Compensation for User Fee Foregone	2019/2020	13701379
level1	KE_1_023	2009	Rehabilitation of Village Polytechnics	2019/2020	13893298
level1	KE_1_018	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	13898986
level1	KE_1_044	2009	Road Maintenance Fuel Levy	2015/2016	14147432
level1	KE_1_025	2009	Grant for Free Maternal Healthcare	2015/2016	14183400
level1	KE_1_036	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	14191766
level1	KE_1_019	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	14347664
level1	KE_1_007	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	14523507
level1	KE_1_002	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	15149869
level1	KE_1_002	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	15209593
level1	KE_1_002	2009	Compensation for User Fee Foregone	2019/2020	15209593
level1	KE_1_005	2009	Grant for Free Maternal Healthcare	2016/2017	15372820
level1	KE_1_002	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	15397611
level1	KE_1_008	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	15429821
level1	KE_1_025	2009	Rehabilitation of Village Polytechnics	2019/2020	15483298
level1	KE_1_009	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	15521730
level1	KE_1_010	2009	Rehabilitation of Village Polytechnics	2019/2020	15558298
level1	KE_1_008	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	15784997
level1	KE_1_008	2009	Compensation for User Fee Foregone	2019/2020	15784997
level1	KE_1_008	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	16011344
level1	KE_1_034	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	16021218
level1	KE_1_019	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	16166813
level1	KE_1_034	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	16311160
level1	KE_1_036	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	16713356
level1	KE_1_036	2009	Compensation for User Fee Foregone	2019/2020	16713356
level1	KE_1_005	2009	Grant for Free Maternal Healthcare	2015/2016	16762200
level1	KE_1_036	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	16880750
level1	KE_1_040	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	16934085
level1	KE_1_040	2009	Compensation for User Fee Foregone	2019/2020	16934085
level1	KE_1_025	2009	Grant for Free Maternal Healthcare	2016/2017	16946829
level1	KE_1_034	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	16955365
level1	KE_1_034	2009	Compensation for User Fee Foregone	2019/2020	16955365
level1	KE_1_040	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	17302828
level1	KE_1_024	2009	Rehabilitation of Village Polytechnics	2019/2020	17313298
level1	KE_1_029	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	17551588
level1	KE_1_035	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	17676855
level1	KE_1_035	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	18048789
level1	KE_1_035	2009	Compensation for User Fee Foregone	2019/2020	18048789
level1	KE_1_029	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	18055819
level1	KE_1_029	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	18086363
level1	KE_1_029	2009	Compensation for User Fee Foregone	2019/2020	18086363
level1	KE_1_041	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	18194808
level1	KE_1_006	2009	Compensation for User Fee Foregone	2019/2020	18194808
level1	KE_1_035	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	18313556
level1	KE_1_008	2009	Rehabilitation of Village Polytechnics	2019/2020	18903298
level1	KE_1_041	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	19057307
level1	KE_1_026	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	19085197
level1	KE_1_010	2009	Grant for Free Maternal Healthcare	2015/2016	19341000
level1	KE_1_004	2009	Grant for Free Maternal Healthcare	2015/2016	19341000
level1	KE_1_017	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	19435760
level1	KE_1_017	2009	Compensation for User Fee Foregone	2019/2020	19435760
level1	KE_1_017	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	19449802
level1	KE_1_033	2009	Rehabilitation of Village Polytechnics	2019/2020	19488298
level1	KE_1_041	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	19634071
level1	KE_1_013	2009	Road Maintenance Fuel Levy	2015/2016	19857530
level1	KE_1_023	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	19939321
level1	KE_1_046	2009	Grant for Free Maternal Healthcare	2015/2016	19942800
level1	KE_1_033	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	20106734
level1	KE_1_021	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	20138691
level1	KE_1_021	2009	Compensation for User Fee Foregone	2019/2020	20138691
level1	KE_1_026	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	20209153
level1	KE_1_033	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	20595297
level1	KE_1_033	2009	Compensation for User Fee Foregone	2019/2020	20595297
level1	KE_1_017	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	20618293
level1	KE_1_007	2009	Rehabilitation of Village Polytechnics	2019/2020	20628298
level1	KE_1_021	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	20749146
level1	KE_1_027	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	20813065
level1	KE_1_027	2009	Compensation for User Fee Foregone	2019/2020	20813065
level1	KE_1_027	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	20843281
level1	KE_1_025	2009	Rehabilitation of Village Polytechnics	2018/2019	20905000
level1	KE_1_013	2009	Rehabilitation of Village Polytechnics	2019/2020	21228298
level1	KE_1_011	2009	Rehabilitation of Village Polytechnics	2018/2019	21235000
level1	KE_1_008	2009	Rehabilitation of Village Polytechnics	2018/2019	21295000
level1	KE_1_042	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	21299489
level1	KE_1_042	2009	Compensation for User Fee Foregone	2019/2020	21299489
level1	KE_1_026	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	21304915
level1	KE_1_026	2009	Compensation for User Fee Foregone	2019/2020	21304915
level1	KE_1_044	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	21379200
level1	KE_1_044	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	21655884
level1	KE_1_044	2009	Compensation for User Fee Foregone	2019/2020	21655884
level1	KE_1_042	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	21854292
level1	KE_1_044	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	21882372
level1	KE_1_001	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	21896682
level1	KE_1_021	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	21971530
level1	KE_1_009	2009	Rehabilitation of Village Polytechnics	2019/2020	22113298
level1	KE_1_027	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	22181068
level1	KE_1_011	2009	Grant for Free Maternal Healthcare	2016/2017	22181866
level1	KE_1_043	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	22185346
level1	KE_1_043	2009	Compensation for User Fee Foregone	2019/2020	22185346
level1	KE_1_043	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	22466004
level1	KE_1_015	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	22499906
level1	KE_1_015	2009	Compensation for User Fee Foregone	2019/2020	22499906
level1	KE_1_042	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	22585235
level1	KE_1_043	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	22616803
level1	KE_1_047	2009	Rehabilitation of Village Polytechnics	2019/2020	22998298
level1	KE_1_015	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	23144997
level1	KE_1_011	2009	Grant for Free Maternal Healthcare	2015/2016	23209200
level1	KE_1_023	2009	Grant for Free Maternal Healthcare	2015/2016	23209200
level1	KE_1_001	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	23385934
level1	KE_1_001	2009	Compensation for User Fee Foregone	2019/2020	23385934
level1	KE_1_001	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	23514312
level1	KE_1_015	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	23606211
level1	KE_1_009	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	23910336
level1	KE_1_016	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	24129039
level1	KE_1_016	2009	Compensation for User Fee Foregone	2019/2020	24129039
level1	KE_1_004	2009	Rehabilitation of Village Polytechnics	2018/2019	24490000
level1	KE_1_016	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	24764877
level1	KE_1_030	2009	Rehabilitation of Village Polytechnics	2019/2020	24873298
level1	KE_1_010	2009	Grant for Free Maternal Healthcare	2016/2017	25096698
level1	KE_1_004	2009	Grant for Free Maternal Healthcare	2016/2017	25230780
level1	KE_1_023	2009	Rehabilitation of Village Polytechnics	2018/2019	25285000
level1	KE_1_001	2009	Rehabilitation of Village Polytechnics	2019/2020	25473298
level1	KE_1_009	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	25474920
level1	KE_1_009	2009	Compensation for User Fee Foregone	2019/2020	25474920
level1	KE_1_016	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	25601954
level1	KE_1_023	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	25634941
level1	KE_1_023	2009	Compensation for User Fee Foregone	2019/2020	25634941
level1	KE_1_003	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	25867884
level1	KE_1_003	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	25969864
level1	KE_1_003	2009	Compensation for User Fee Foregone	2019/2020	25969864
level1	KE_1_005	2009	Road Maintenance Fuel Levy	2015/2016	26065747
level1	KE_1_023	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	26122720
level1	KE_1_045	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	26138997
level1	KE_1_045	2009	Compensation for User Fee Foregone	2019/2020	26138997
level1	KE_1_010	2009	Rehabilitation of Village Polytechnics	2018/2019	26275000
level1	KE_1_003	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	26392597
level1	KE_1_045	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	26859653
level1	KE_1_045	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	26947170
level1	KE_1_031	2009	Rehabilitation of Village Polytechnics	2018/2019	28525000
level1	KE_1_019	2009	Rehabilitation of Village Polytechnics	2018/2019	28795000
level1	KE_1_024	2009	Rehabilitation of Village Polytechnics	2018/2019	28885000
level1	KE_1_035	2009	Rehabilitation of Village Polytechnics	2019/2020	29433298
level1	KE_1_013	2009	Grant for Free Maternal Healthcare	2016/2017	29853703
level1	KE_1_044	2009	Rehabilitation of Village Polytechnics	2019/2020	30033298
level1	KE_1_028	2009	Rehabilitation of Village Polytechnics	2019/2020	30228298
level1	KE_1_033	2009	Rehabilitation of Village Polytechnics	2018/2019	30820000
level1	KE_1_005	2009	Rehabilitation of Village Polytechnics	2018/2019	31210000
level1	KE_1_009	2009	Rehabilitation of Village Polytechnics	2018/2019	31240000
level1	KE_1_032	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	31373449
level1	KE_1_017	2009	Rehabilitation of Village Polytechnics	2018/2019	31570000
level1	KE_1_012	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	31615328
level1	KE_1_012	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	31648428
level1	KE_1_012	2009	Compensation for User Fee Foregone	2019/2020	31648428
level1	KE_1_044	2009	Rehabilitation of Village Polytechnics	2018/2019	31750000
level1	KE_1_031	2009	Rehabilitation of Village Polytechnics	2019/2020	31908298
level1	KE_1_023	2009	Grant for Free Maternal Healthcare	2016/2017	31964040
level1	KE_1_012	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	32096227
level1	KE_1_029	2009	Rehabilitation of Village Polytechnics	2019/2020	32793298
level1	KE_1_039	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	32837307
level1	KE_1_039	2009	Compensation for User Fee Foregone	2019/2020	32837307
level1	KE_1_027	2009	Rehabilitation of Village Polytechnics	2018/2019	33250000
level1	KE_1_039	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	33282912
level1	KE_1_014	2009	Rehabilitation of Village Polytechnics	2019/2020	33603298
level1	KE_1_005	2009	Road Maintenance Fuel Levy	2016/2017	34018227
level1	KE_1_020	2009	Rehabilitation of Village Polytechnics	2019/2020	34503298
level1	KE_1_047	2009	Rehabilitation of Village Polytechnics	2018/2019	34570000
level1	KE_1_022	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	34671542
level1	KE_1_022	2009	Compensation for User Fee Foregone	2019/2020	34671542
level1	KE_1_043	2009	Rehabilitation of Village Polytechnics	2019/2020	35163298
level1	KE_1_013	2009	Grant for Free Maternal Healthcare	2015/2016	35243600
level1	KE_1_007	2009	Rehabilitation of Village Polytechnics	2018/2019	35335000
level1	KE_1_034	2009	Rehabilitation of Village Polytechnics	2019/2020	35493298
level1	KE_1_030	2009	Rehabilitation of Village Polytechnics	2018/2019	35605000
level1	KE_1_022	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	35773082
level1	KE_1_029	2009	Rehabilitation of Village Polytechnics	2018/2019	37255000
level1	KE_1_006	2009	Grant for Free Maternal Healthcare	2016/2017	37659621
level1	KE_1_037	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	37789290
level1	KE_1_037	2009	Compensation for User Fee Foregone	2019/2020	37789290
level1	KE_1_022	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	37838646
level1	KE_1_014	2009	Rehabilitation of Village Polytechnics	2018/2019	37900000
level1	KE_1_018	2009	Rehabilitation of Village Polytechnics	2019/2020	37983298
level1	KE_1_039	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	38017014
level1	KE_1_041	2009	Rehabilitation of Village Polytechnics	2018/2019	38500000
level1	KE_1_037	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	38617147
level1	KE_1_037	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	38709716
level1	KE_1_032	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	38723265
level1	KE_1_032	2009	Compensation for User Fee Foregone	2019/2020	38723265
level1	KE_1_011	2009	Road Maintenance Fuel Levy	2015/2016	38828547
level1	KE_1_032	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	39216180
level1	KE_1_018	2009	Rehabilitation of Village Polytechnics	2018/2019	39700000
level1	KE_1_001	2009	Rehabilitation of Village Polytechnics	2018/2019	39895000
level1	KE_1_013	2009	Rehabilitation of Village Polytechnics	2018/2019	40090000
level1	KE_1_006	2009	Rehabilitation of Village Polytechnics	2019/2020	40278298
level1	KE_1_034	2009	Rehabilitation of Village Polytechnics	2018/2019	40345000
level1	KE_1_027	2009	Grant for Free Maternal Healthcare	2016/2017	40766831
level1	KE_1_035	2009	Rehabilitation of Village Polytechnics	2018/2019	41005000
level1	KE_1_024	2009	Grant for Free Maternal Healthcare	2015/2016	41260800
level1	KE_1_005	2009	Rehabilitation of Village Polytechnics	2019/2020	41298298
level1	KE_1_028	2009	Road Maintenance Fuel Levy	2015/2016	41545473
level1	KE_1_042	2009	Rehabilitation of Village Polytechnics	2018/2019	41650000
level1	KE_1_042	2009	Rehabilitation of Village Polytechnics	2019/2020	41673298
level1	KE_1_028	2009	Rehabilitation of Village Polytechnics	2018/2019	41800000
level1	KE_1_002	2009	Rehabilitation of Village Polytechnics	2018/2019	41860000
level1	KE_1_006	2009	Road Maintenance Fuel Levy	2015/2016	42042522
level1	KE_1_006	2009	Grant for Free Maternal Healthcare	2015/2016	42120400
level1	KE_1_028	2009	Grant for Free Maternal Healthcare	2015/2016	43409800
level1	KE_1_031	2009	Road Maintenance Fuel Levy	2015/2016	43820742
level1	KE_1_020	2009	Road Maintenance Fuel Levy	2015/2016	44947130
level1	KE_1_025	2009	Road Maintenance Fuel Levy	2015/2016	45125793
level1	KE_1_020	2009	Grant for Free Maternal Healthcare	2016/2017	45389754
level1	KE_1_009	2009	Grant for Free Maternal Healthcare	2015/2016	46418000
level1	KE_1_018	2009	Grant for Free Maternal Healthcare	2016/2017	46514879
level1	KE_1_043	2009	Rehabilitation of Village Polytechnics	2018/2019	46675000
level1	KE_1_036	2009	Rehabilitation of Village Polytechnics	2019/2020	47388298
level1	KE_1_032	2009	Rehabilitation of Village Polytechnics	2018/2019	47800000
level1	KE_1_036	2009	Rehabilitation of Village Polytechnics	2018/2019	47875000
level1	KE_1_014	2009	Road Maintenance Fuel Levy	2015/2016	48754599
level1	KE_1_038	2009	Road Maintenance Fuel Levy	2015/2016	49119806
level1	KE_1_006	2009	Rehabilitation of Village Polytechnics	2018/2019	49675000
level1	KE_1_034	2009	Grant for Free Maternal Healthcare	2015/2016	49856800
level1	KE_1_028	2009	Grant for Free Maternal Healthcare	2016/2017	50228374
level1	KE_1_007	2009	Grant for Free Maternal Healthcare	2015/2016	50286600
level1	KE_1_008	2009	Grant for Free Maternal Healthcare	2015/2016	50286600
level1	KE_1_004	2009	Road Maintenance Fuel Levy	2015/2016	50617289
level1	KE_1_011	2009	Road Maintenance Fuel Levy	2016/2017	50674874
level1	KE_1_020	2009	Grant for Free Maternal Healthcare	2015/2016	50716400
level1	KE_1_018	2009	Grant for Free Maternal Healthcare	2015/2016	50716400
level1	KE_1_024	2009	Grant for Free Maternal Healthcare	2016/2017	51050356
level1	KE_1_016	2009	Rehabilitation of Village Polytechnics	2019/2020	51093298
level1	KE_1_013	2009	Road Maintenance Fuel Levy	2016/2017	52017792
level1	KE_1_020	2009	Rehabilitation of Village Polytechnics	2018/2019	52210000
level1	KE_1_046	2009	Road Maintenance Fuel Levy	2015/2016	52776448
level1	KE_1_046	2009	Rehabilitation of Village Polytechnics	2018/2019	52915000
level1	KE_1_003	2009	Rehabilitation of Village Polytechnics	2018/2019	53035000
level1	KE_1_026	2009	Rehabilitation of Village Polytechnics	2018/2019	53710000
level1	KE_1_007	2009	Grant for Free Maternal Healthcare	2016/2017	53772809
level1	KE_1_039	2009	Rehabilitation of Village Polytechnics	2019/2020	53928298
level1	KE_1_028	2009	Road Maintenance Fuel Levy	2016/2017	54220715
level1	KE_1_016	2009	Rehabilitation of Village Polytechnics	2018/2019	54295000
level1	KE_1_015	2009	Grant for Free Maternal Healthcare	2016/2017	54367434
level1	KE_1_018	2009	Road Maintenance Fuel Levy	2015/2016	54714122
level1	KE_1_034	2009	Grant for Free Maternal Healthcare	2016/2017	54758022
level1	KE_1_024	2009	Road Maintenance Fuel Levy	2015/2016	54798238
level1	KE_1_006	2009	Road Maintenance Fuel Levy	2016/2017	54869411
level1	KE_1_014	2009	Grant for Free Maternal Healthcare	2016/2017	54985378
level1	KE_1_038	2009	Rehabilitation of Village Polytechnics	2018/2019	55000000
level1	KE_1_022	2009	Rehabilitation of Village Polytechnics	2019/2020	55113298
level1	KE_1_019	2009	Rehabilitation of Village Polytechnics	2019/2020	55143298
level1	KE_1_009	2009	Grant for Free Maternal Healthcare	2016/2017	55335158
level1	KE_1_008	2009	Grant for Free Maternal Healthcare	2016/2017	55574174
level1	KE_1_041	2009	Rehabilitation of Village Polytechnics	2019/2020	55638298
level1	KE_1_004	2009	Rehabilitation of Village Polytechnics	2019/2020	55638298
level1	KE_1_034	2009	Road Maintenance Fuel Levy	2015/2016	56055021
level1	KE_1_033	2009	Grant for Free Maternal Healthcare	2015/2016	56303800
level1	KE_1_030	2009	Road Maintenance Fuel Levy	2015/2016	56410082
level1	KE_1_019	2009	Road Maintenance Fuel Levy	2015/2016	56519885
level1	KE_1_012	2009	Rehabilitation of Village Polytechnics	2019/2020	56568298
level1	KE_1_031	2009	Road Maintenance Fuel Levy	2016/2017	57190153
level1	KE_1_035	2009	Road Maintenance Fuel Levy	2015/2016	57229294
level1	KE_1_027	2009	Rehabilitation of Village Polytechnics	2019/2020	57588298
level1	KE_1_014	2009	Grant for Free Maternal Healthcare	2015/2016	57593200
level1	KE_1_036	2009	Grant for Free Maternal Healthcare	2015/2016	58452800
level1	KE_1_015	2009	Rehabilitation of Village Polytechnics	2018/2019	58465000
level1	KE_1_020	2009	Road Maintenance Fuel Levy	2016/2017	58660195
level1	KE_1_003	2009	Rehabilitation of Village Polytechnics	2019/2020	58863298
level1	KE_1_025	2009	Road Maintenance Fuel Levy	2016/2017	58898587
level1	KE_1_036	2009	Road Maintenance Fuel Levy	2015/2016	59793197
level1	KE_1_002	2009	Rehabilitation of Village Polytechnics	2019/2020	59793298
level1	KE_1_017	2009	Rehabilitation of Village Polytechnics	2019/2020	60333298
level1	KE_1_029	2009	Road Maintenance Fuel Levy	2015/2016	60405657
level1	KE_1_033	2009	Road Maintenance Fuel Levy	2015/2016	61113929
level1	KE_1_026	2009	Rehabilitation of Village Polytechnics	2019/2020	61188298
level1	KE_1_036	2009	Grant for Free Maternal Healthcare	2016/2017	61258095
level1	KE_1_031	2009	Grant for Free Maternal Healthcare	2016/2017	61409667
level1	KE_1_040	2009	Rehabilitation of Village Polytechnics	2018/2019	61960000
level1	KE_1_032	2009	Rehabilitation of Village Polytechnics	2019/2020	63063298
level1	KE_1_040	2009	Rehabilitation of Village Polytechnics	2019/2020	63333298
level1	KE_1_041	2009	Road Maintenance Fuel Levy	2015/2016	63456905
level1	KE_1_031	2009	Grant for Free Maternal Healthcare	2015/2016	63610000
level1	KE_1_015	2009	Grant for Free Maternal Healthcare	2015/2016	63610400
level1	KE_1_014	2009	Road Maintenance Fuel Levy	2016/2017	63629297
level1	KE_1_038	2009	Road Maintenance Fuel Levy	2016/2017	64184231
level1	KE_1_030	2009	Grant for Free Maternal Healthcare	2016/2017	64662618
level1	KE_1_026	2009	Road Maintenance Fuel Levy	2015/2016	64782039
level1	KE_1_002	2009	Road Maintenance Fuel Levy	2015/2016	65113404
level1	KE_1_039	2009	Rehabilitation of Village Polytechnics	2018/2019	65500000
level1	KE_1_021	2009	Rehabilitation of Village Polytechnics	2018/2019	65710000
level1	KE_1_030	2009	Grant for Free Maternal Healthcare	2015/2016	65759400
level1	KE_1_027	2009	Road Maintenance Fuel Levy	2015/2016	65911431
level1	KE_1_010	2009	Road Maintenance Fuel Levy	2015/2016	65923423
level1	KE_1_012	2009	Rehabilitation of Village Polytechnics	2018/2019	66025000
level1	KE_1_001	2009	Road Maintenance Fuel Levy	2015/2016	66030539
level1	KE_1_004	2009	Road Maintenance Fuel Levy	2016/2017	66060281
level1	KE_1_038	2009	Grant for Free Maternal Healthcare	2016/2017	66469814
level1	KE_1_029	2009	Grant for Free Maternal Healthcare	2015/2016	67048800
level1	KE_1_046	2009	Rehabilitation of Village Polytechnics	2019/2020	67068298
level1	KE_1_038	2009	Rehabilitation of Village Polytechnics	2019/2020	67743298
level1	KE_1_026	2009	Grant for Free Maternal Healthcare	2015/2016	67908400
level1	KE_1_038	2009	Grant for Free Maternal Healthcare	2015/2016	67908400
level1	KE_1_021	2009	Road Maintenance Fuel Levy	2015/2016	68038977
level1	KE_1_022	2009	Rehabilitation of Village Polytechnics	2018/2019	68110000
level1	KE_1_029	2009	Grant for Free Maternal Healthcare	2016/2017	68195394
level1	KE_1_046	2009	Road Maintenance Fuel Levy	2016/2017	68878185
level1	KE_1_040	2009	Road Maintenance Fuel Levy	2015/2016	69109240
level1	KE_1_019	2009	Grant for Free Maternal Healthcare	2016/2017	69215585
level1	KE_1_037	2009	Rehabilitation of Village Polytechnics	2018/2019	69910000
level1	KE_1_045	2009	Rehabilitation of Village Polytechnics	2018/2019	70090000
level1	KE_1_033	2009	Grant for Free Maternal Healthcare	2016/2017	70154161
level1	KE_1_018	2009	Road Maintenance Fuel Levy	2016/2017	71407030
level1	KE_1_024	2009	Road Maintenance Fuel Levy	2016/2017	71516809
level1	KE_1_043	2009	Road Maintenance Fuel Levy	2015/2016	71582731
level1	KE_1_042	2009	Road Maintenance Fuel Levy	2015/2016	72170965
level1	KE_1_015	2009	Rehabilitation of Village Polytechnics	2019/2020	72588298
level1	KE_1_047	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	73155271
level1	KE_1_034	2009	Road Maintenance Fuel Levy	2016/2017	73157028
level1	KE_1_007	2009	Road Maintenance Fuel Levy	2015/2016	73319649
level1	KE_1_030	2009	Road Maintenance Fuel Levy	2016/2017	73620416
level1	KE_1_005	2009	Road Maintenance Fuel Levy	2019/2020	73669313
level1	KE_1_019	2009	Road Maintenance Fuel Levy	2016/2017	73763719
level1	KE_1_045	2009	Rehabilitation of Village Polytechnics	2019/2020	74553298
level1	KE_1_035	2009	Road Maintenance Fuel Levy	2016/2017	74689564
level1	KE_1_017	2009	Road Maintenance Fuel Levy	2015/2016	75834678
level1	KE_1_026	2009	Grant for Free Maternal Healthcare	2016/2017	76292795
level1	KE_1_037	2009	Rehabilitation of Village Polytechnics	2019/2020	76923298
level1	KE_1_036	2009	Road Maintenance Fuel Levy	2016/2017	78035696
level1	KE_1_021	2009	Grant for Free Maternal Healthcare	2016/2017	78828699
level1	KE_1_029	2009	Road Maintenance Fuel Levy	2016/2017	78835014
level1	KE_1_047	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	79423251
level1	KE_1_047	2009	Compensation for User Fee Foregone	2019/2020	79423251
level1	KE_1_047	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	79879082
level1	KE_1_017	2009	Grant for Free Maternal Healthcare	2015/2016	80802100
level1	KE_1_021	2009	Grant for Free Maternal Healthcare	2015/2016	80802400
level1	KE_1_019	2009	Grant for Free Maternal Healthcare	2015/2016	82091800
level1	KE_1_046	2009	Grant for Free Maternal Healthcare	2016/2017	82174925
level1	KE_1_012	2009	Road Maintenance Fuel Levy	2015/2016	82490349
level1	KE_1_041	2009	Road Maintenance Fuel Levy	2016/2017	82817177
level1	KE_1_021	2009	Rehabilitation of Village Polytechnics	2019/2020	83268298
level1	KE_1_017	2009	Grant for Free Maternal Healthcare	2016/2017	83696467
level1	KE_1_026	2009	Road Maintenance Fuel Levy	2016/2017	84546600
level1	KE_1_016	2009	Road Maintenance Fuel Levy	2015/2016	85984407
level1	KE_1_010	2009	Road Maintenance Fuel Levy	2016/2017	86036213
level1	KE_1_027	2009	Road Maintenance Fuel Levy	2016/2017	86059722
level1	KE_1_001	2009	Road Maintenance Fuel Levy	2016/2017	86176009
level1	KE_1_033	2009	Road Maintenance Fuel Levy	2016/2017	87668239
level1	KE_1_021	2009	Road Maintenance Fuel Levy	2016/2017	88797208
level1	KE_1_035	2009	Grant for Free Maternal Healthcare	2016/2017	89327921
level1	KE_1_045	2009	Road Maintenance Fuel Levy	2015/2016	90112658
level1	KE_1_040	2009	Road Maintenance Fuel Levy	2016/2017	90194001
level1	KE_1_008	2009	Road Maintenance Fuel Levy	2015/2016	91879854
level1	KE_1_040	2009	Grant for Free Maternal Healthcare	2016/2017	92079522
level1	KE_1_015	2009	Road Maintenance Fuel Levy	2015/2016	92318534
level1	KE_1_005	2009	Road Maintenance Fuel Levy	2018/2019	93421016
level1	KE_1_043	2009	Road Maintenance Fuel Levy	2016/2017	93422137
level1	KE_1_030	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_036	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_039	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_040	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_028	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_014	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_007	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_043	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_011	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_034	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_037	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_035	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_022	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_003	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_020	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_045	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_042	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_015	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_002	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_031	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_005	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_016	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_017	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_009	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_010	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_012	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_044	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_001	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_021	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_047	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_032	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_029	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_033	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_046	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_018	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_019	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_025	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_041	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_006	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_004	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_013	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_026	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_023	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_027	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_038	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_008	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_024	2009	County Emergency Fund	2015/2016	93617021
level1	KE_1_042	2009	Road Maintenance Fuel Levy	2016/2017	94189837
level1	KE_1_003	2009	Road Maintenance Fuel Levy	2015/2016	94528196
level1	KE_1_022	2009	Road Maintenance Fuel Levy	2015/2016	94811800
level1	KE_1_007	2009	Road Maintenance Fuel Levy	2016/2017	95688977
level1	KE_1_030	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_030	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_036	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_036	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_039	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_039	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_040	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_040	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_028	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_028	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_014	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_014	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_007	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_007	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_043	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_043	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_011	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_011	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_034	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_034	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_037	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_037	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_035	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_035	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_022	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_022	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_003	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_003	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_020	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_020	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_045	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_045	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_042	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_042	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_015	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_015	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_002	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_002	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_031	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_031	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_005	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_005	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_016	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_016	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_017	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_017	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_009	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_009	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_010	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_010	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_012	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_012	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_044	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_044	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_001	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_001	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_021	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_021	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_047	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_047	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_032	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_032	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_029	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_029	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_033	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_033	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_046	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_046	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_018	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_018	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_019	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_019	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_025	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_025	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_041	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_041	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_006	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_006	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_004	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_004	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_013	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_013	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_026	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_026	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_023	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_023	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_027	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_027	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_038	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_038	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_008	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_008	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_024	2009	Leasing of Medical Equipment	2015/2016	95744681
level1	KE_1_024	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_013	2009	Road Maintenance Fuel Levy	2018/2019	95901220
level1	KE_1_044	2009	Road Maintenance Fuel Levy	2016/2017	96769311
level1	KE_1_016	2009	Grant for Free Maternal Healthcare	2015/2016	97134800
level1	KE_1_039	2009	Road Maintenance Fuel Levy	2015/2016	97507257
level1	KE_1_035	2009	Grant for Free Maternal Healthcare	2015/2016	98854000
level1	KE_1_017	2009	Road Maintenance Fuel Levy	2016/2017	98971324
level1	KE_1_028	2009	Road Maintenance Fuel Levy	2018/2019	99208158
level1	KE_1_040	2009	Grant for Free Maternal Healthcare	2015/2016	99713600
level1	KE_1_005	2009	Special Purpose Grant Supporting Emergency Medical Services	2016/2017	100000000
level1	KE_1_004	2009	Special Purpose Grant Supporting Emergency Medical Services	2016/2017	100000000
level1	KE_1_032	2009	Road Maintenance Fuel Levy	2015/2016	103104393
level1	KE_1_011	2009	Road Maintenance Fuel Levy	2018/2019	103341832
level1	KE_1_002	2009	Grant for Free Maternal Healthcare	2015/2016	104441400
level1	KE_1_016	2009	Grant for Free Maternal Healthcare	2016/2017	105476087
level1	KE_1_006	2009	Road Maintenance Fuel Levy	2018/2019	106648770
level1	KE_1_012	2009	Road Maintenance Fuel Levy	2016/2017	107657595
level1	KE_1_020	2009	Road Maintenance Fuel Levy	2018/2019	108302240
level1	KE_1_031	2009	Road Maintenance Fuel Levy	2018/2019	109128974
level1	KE_1_028	2009	Road Maintenance Fuel Levy	2019/2020	109605563
level1	KE_1_041	2009	Road Maintenance Fuel Levy	2019/2020	111402375
level1	KE_1_016	2009	Road Maintenance Fuel Levy	2016/2017	112217667
level1	KE_1_041	2009	Grant for Free Maternal Healthcare	2016/2017	112559127
level1	KE_1_037	2009	Road Maintenance Fuel Levy	2015/2016	113164138
level1	KE_1_009	2009	Road Maintenance Fuel Levy	2015/2016	113767220
level1	KE_1_012	2009	Grant for Free Maternal Healthcare	2016/2017	114704443
level1	KE_1_025	2009	Road Maintenance Fuel Levy	2018/2019	116569586
level1	KE_1_003	2009	Grant for Free Maternal Healthcare	2015/2016	117077600
level1	KE_1_027	2009	Grant for Free Maternal Healthcare	2015/2016	117335400
level1	KE_1_014	2009	Road Maintenance Fuel Levy	2018/2019	117396321
level1	KE_1_038	2009	Road Maintenance Fuel Levy	2018/2019	117396321
level1	KE_1_045	2009	Road Maintenance Fuel Levy	2016/2017	117605419
level1	KE_1_042	2009	Grant for Free Maternal Healthcare	2016/2017	118015691
level1	KE_1_031	2009	Road Maintenance Fuel Levy	2019/2020	118589625
level1	KE_1_002	2009	Grant for Free Maternal Healthcare	2016/2017	119385662
level1	KE_1_008	2009	Road Maintenance Fuel Levy	2016/2017	119911775
level1	KE_1_011	2009	Road Maintenance Fuel Levy	2019/2020	120386438
level1	KE_1_020	2009	Road Maintenance Fuel Levy	2019/2020	120386438
level1	KE_1_004	2009	Road Maintenance Fuel Levy	2019/2020	120386438
level1	KE_1_015	2009	Road Maintenance Fuel Levy	2016/2017	120484293
level1	KE_1_011	2009	Supplement for construction of county headquarters	2017/2018	121000000
level1	KE_1_011	2009	Supplement for construction of county headquarters	2019/2020	121000000
level1	KE_1_005	2009	Supplement for construction of county headquarters	2017/2018	121000000
level1	KE_1_005	2009	Supplement for construction of county headquarters	2019/2020	121000000
level1	KE_1_018	2009	Supplement for construction of county headquarters	2017/2018	121000000
level1	KE_1_018	2009	Supplement for construction of county headquarters	2019/2020	121000000
level1	KE_1_004	2009	Supplement for construction of county headquarters	2017/2018	121000000
level1	KE_1_013	2009	Supplement for construction of county headquarters	2017/2018	121000000
level1	KE_1_013	2009	Supplement for construction of county headquarters	2019/2020	121000000
level1	KE_1_014	2009	Road Maintenance Fuel Levy	2019/2020	122183250
level1	KE_1_003	2009	Road Maintenance Fuel Levy	2016/2017	123368108
level1	KE_1_022	2009	Road Maintenance Fuel Levy	2016/2017	123738238
level1	KE_1_042	2009	Grant for Free Maternal Healthcare	2015/2016	123782400
level1	KE_1_012	2009	Grant for Free Maternal Healthcare	2015/2016	123782400
level1	KE_1_046	2009	Road Maintenance Fuel Levy	2018/2019	125663667
level1	KE_1_001	2009	Grant for Free Maternal Healthcare	2016/2017	125722505
level1	KE_1_039	2009	Road Maintenance Fuel Levy	2016/2017	127250840
level1	KE_1_041	2009	Grant for Free Maternal Healthcare	2015/2016	128080400
level1	KE_1_043	2009	Grant for Free Maternal Healthcare	2016/2017	128736441
level1	KE_1_018	2009	Road Maintenance Fuel Levy	2018/2019	129797341
level1	KE_1_024	2009	Road Maintenance Fuel Levy	2018/2019	129797341
level1	KE_1_043	2009	Grant for Free Maternal Healthcare	2015/2016	131089000
level1	KE_1_025	2009	Road Maintenance Fuel Levy	2019/2020	131167313
level1	KE_1_030	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_036	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_039	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_040	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_028	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_014	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_007	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_043	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_011	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_034	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_037	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_035	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_022	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_003	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_020	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_045	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_042	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_015	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_002	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_031	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_005	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_016	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_017	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_009	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_010	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_012	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_044	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_001	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_021	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_047	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_032	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_029	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_033	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_046	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_018	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_019	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_025	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_041	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_006	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_004	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_013	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_026	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_023	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_027	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_038	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_008	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_024	2009	Leasing of Medical Equipment	2019/2020	131914894
level1	KE_1_038	2009	Road Maintenance Fuel Levy	2019/2020	132065719
level1	KE_1_019	2009	Road Maintenance Fuel Levy	2018/2019	132277544
level1	KE_1_023	2009	Road Maintenance Fuel Levy	2015/2016	133118571
level1	KE_1_030	2009	Road Maintenance Fuel Levy	2018/2019	133931014
level1	KE_1_032	2009	Road Maintenance Fuel Levy	2016/2017	134560844
level1	KE_1_001	2009	Grant for Free Maternal Healthcare	2015/2016	136246600
level1	KE_1_046	2009	Road Maintenance Fuel Levy	2019/2020	136557750
level1	KE_1_018	2009	Road Maintenance Fuel Levy	2019/2020	138354563
level1	KE_1_029	2009	Road Maintenance Fuel Levy	2018/2019	141371626
level1	KE_1_024	2009	Road Maintenance Fuel Levy	2019/2020	141948188
level1	KE_1_030	2009	Road Maintenance Fuel Levy	2019/2020	144643406
level1	KE_1_004	2009	Road Maintenance Fuel Levy	2018/2019	146332034
level1	KE_1_037	2009	Road Maintenance Fuel Levy	2016/2017	147689749
level1	KE_1_026	2009	Road Maintenance Fuel Levy	2018/2019	147985503
level1	KE_1_009	2009	Road Maintenance Fuel Levy	2016/2017	148476828
level1	KE_1_035	2009	Road Maintenance Fuel Levy	2018/2019	150465707
level1	KE_1_029	2009	Road Maintenance Fuel Levy	2019/2020	151830656
level1	KE_1_035	2009	Road Maintenance Fuel Levy	2019/2020	152729063
level1	KE_1_019	2009	Road Maintenance Fuel Levy	2019/2020	153627469
level1	KE_1_036	2009	Road Maintenance Fuel Levy	2018/2019	156252849
level1	KE_1_027	2009	Road Maintenance Fuel Levy	2018/2019	156252849
level1	KE_1_036	2009	Road Maintenance Fuel Levy	2019/2020	156322688
level1	KE_1_040	2009	Road Maintenance Fuel Levy	2018/2019	157079584
level1	KE_1_034	2009	Road Maintenance Fuel Levy	2018/2019	157906319
level1	KE_1_041	2009	Road Maintenance Fuel Levy	2018/2019	158733053
level1	KE_1_026	2009	Road Maintenance Fuel Levy	2019/2020	163509938
level1	KE_1_006	2009	Road Maintenance Fuel Levy	2019/2020	164408344
level1	KE_1_021	2009	Road Maintenance Fuel Levy	2018/2019	164520196
level1	KE_1_044	2009	Grant for Free Maternal Healthcare	2015/2016	165043200
level1	KE_1_047	2009	Road Maintenance Fuel Levy	2015/2016	165100152
level1	KE_1_013	2009	Road Maintenance Fuel Levy	2019/2020	166205156
level1	KE_1_033	2009	Road Maintenance Fuel Levy	2018/2019	167827135
level1	KE_1_045	2009	Grant for Free Maternal Healthcare	2016/2017	168133301
level1	KE_1_039	2009	Grant for Free Maternal Healthcare	2015/2016	170630600
level1	KE_1_040	2009	Road Maintenance Fuel Levy	2019/2020	170697188
level1	KE_1_011	2009	Total Conditional Additional Allocation	2016/2017	172115898
level1	KE_1_044	2009	Grant for Free Maternal Healthcare	2016/2017	172348147
level1	KE_1_023	2009	Road Maintenance Fuel Levy	2016/2017	173732145
level1	KE_1_043	2009	Road Maintenance Fuel Levy	2018/2019	176094481
level1	KE_1_025	2009	Total Conditional Additional Allocation	2016/2017	176911952
level1	KE_1_044	2009	Road Maintenance Fuel Levy	2018/2019	176921216
level1	KE_1_021	2009	Road Maintenance Fuel Levy	2019/2020	178782844
level1	KE_1_027	2009	Road Maintenance Fuel Levy	2019/2020	179681250
level1	KE_1_003	2009	Grant for Free Maternal Healthcare	2016/2017	181669778
level1	KE_1_042	2009	Road Maintenance Fuel Levy	2018/2019	181881624
level1	KE_1_034	2009	Road Maintenance Fuel Levy	2019/2020	182376469
level1	KE_1_007	2009	Road Maintenance Fuel Levy	2018/2019	182708358
level1	KE_1_010	2009	Road Maintenance Fuel Levy	2018/2019	184361828
level1	KE_1_013	2009	Total Conditional Additional Allocation	2016/2017	186035373
level1	KE_1_017	2009	Road Maintenance Fuel Levy	2018/2019	187668766
level1	KE_1_039	2009	Grant for Free Maternal Healthcare	2016/2017	189574801
level1	KE_1_043	2009	Road Maintenance Fuel Levy	2019/2020	191360531
level1	KE_1_010	2009	Road Maintenance Fuel Levy	2019/2020	192258938
level1	KE_1_044	2009	Road Maintenance Fuel Levy	2019/2020	192258938
level1	KE_1_014	2009	Grants to Level5 Hospitals	2015/2016	192882857
level1	KE_1_042	2009	Road Maintenance Fuel Levy	2019/2020	194055750
level1	KE_1_045	2009	Grant for Free Maternal Healthcare	2015/2016	194699400
level1	KE_1_006	2009	Total Conditional Additional Allocation	2016/2017	194904811
level1	KE_1_002	2009	Road Maintenance Fuel Levy	2018/2019	198416317
level1	KE_1_007	2009	Road Maintenance Fuel Levy	2019/2020	199446188
level1	KE_1_047	2009	Grant for Free Maternal Healthcare	2016/2017	199899133
country	KE	2009	Special Purpose Grant Supporting Emergency Medical Services	2016/2017	200000000
level1	KE_1_030	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_036	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_039	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_040	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_028	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_014	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_007	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_043	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_011	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_034	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_037	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_035	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_022	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_003	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_020	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_045	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_042	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_015	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_002	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_031	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_005	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_016	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_017	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_009	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_010	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_012	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_044	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_001	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_021	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_047	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_032	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_029	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_033	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_046	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_018	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_019	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_025	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_041	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_006	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_004	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_013	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_026	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_023	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_027	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_038	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_008	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_024	2009	Leasing of Medical Equipment	2018/2019	200000000
level1	KE_1_001	2009	Road Maintenance Fuel Levy	2019/2020	200344594
level1	KE_1_045	2009	Road Maintenance Fuel Levy	2018/2019	203376725
level1	KE_1_028	2009	Total Conditional Additional Allocation	2016/2017	209149840
level1	KE_1_017	2009	Road Maintenance Fuel Levy	2019/2020	210227063
level1	KE_1_012	2009	Road Maintenance Fuel Levy	2018/2019	210817337
level1	KE_1_020	2009	Total Conditional Additional Allocation	2016/2017	211419707
level1	KE_1_010	2009	Total Conditional Additional Allocation	2016/2017	213750227
level1	KE_1_037	2009	Grant for Free Maternal Healthcare	2015/2016	214900000
level1	KE_1_032	2009	Grant for Free Maternal Healthcare	2016/2017	215283613
level1	KE_1_047	2009	Road Maintenance Fuel Levy	2016/2017	215471089
level1	KE_1_001	2009	Road Maintenance Fuel Levy	2018/2019	216604479
level1	KE_1_037	2009	Grant for Free Maternal Healthcare	2016/2017	217184083
level1	KE_1_016	2009	Road Maintenance Fuel Levy	2018/2019	219084683
level1	KE_1_032	2009	Grant for Free Maternal Healthcare	2015/2016	219627800
level1	KE_1_016	2009	Road Maintenance Fuel Levy	2019/2020	220109531
level1	KE_1_045	2009	Road Maintenance Fuel Levy	2019/2020	221007938
level1	KE_1_002	2009	Road Maintenance Fuel Levy	2019/2020	221007938
level1	KE_1_022	2009	Grant for Free Maternal Healthcare	2016/2017	221521352
level1	KE_1_008	2009	Road Maintenance Fuel Levy	2018/2019	223218356
level1	KE_1_031	2009	Total Conditional Additional Allocation	2016/2017	224217040
level1	KE_1_022	2009	Grant for Free Maternal Healthcare	2015/2016	224785400
level1	KE_1_018	2009	Total Conditional Additional Allocation	2016/2017	226788828
level1	KE_1_012	2009	Road Maintenance Fuel Levy	2019/2020	228195188
level1	KE_1_033	2009	Road Maintenance Fuel Levy	2019/2020	228195188
level1	KE_1_015	2009	Road Maintenance Fuel Levy	2018/2019	229832234
level1	KE_1_024	2009	Total Conditional Additional Allocation	2016/2017	230628275
level1	KE_1_005	2009	Total Conditional Additional Allocation	2015/2016	234556520
level1	KE_1_039	2009	Road Maintenance Fuel Levy	2018/2019	235619376
level1	KE_1_038	2009	Total Conditional Additional Allocation	2016/2017	239401487
level1	KE_1_034	2009	Total Conditional Additional Allocation	2016/2017	239970891
level1	KE_1_008	2009	Road Maintenance Fuel Levy	2019/2020	242569688
level1	KE_1_012	2009	Grants to Level5 Hospitals	2015/2016	244318286
level1	KE_1_027	2009	Total Conditional Additional Allocation	2016/2017	244752303
level1	KE_1_022	2009	Road Maintenance Fuel Levy	2018/2019	246366927
level1	KE_1_030	2009	Total Conditional Additional Allocation	2016/2017	247398231
level1	KE_1_005	2009	Total Conditional Additional Allocation	2016/2017	247617538
level1	KE_1_032	2009	Road Maintenance Fuel Levy	2018/2019	248847131
level1	KE_1_036	2009	Total Conditional Additional Allocation	2016/2017	249230239
level1	KE_1_015	2009	Road Maintenance Fuel Levy	2019/2020	250655344
level1	KE_1_039	2009	Road Maintenance Fuel Levy	2019/2020	252452156
level1	KE_1_025	2009	Total Conditional Additional Allocation	2015/2016	253891092
level1	KE_1_011	2009	Total Conditional Additional Allocation	2015/2016	254739627
level1	KE_1_046	2009	Total Conditional Additional Allocation	2016/2017	258376249
level1	KE_1_029	2009	Total Conditional Additional Allocation	2016/2017	260830907
level1	KE_1_004	2009	Total Conditional Additional Allocation	2015/2016	264916131
level1	KE_1_009	2009	Road Maintenance Fuel Levy	2018/2019	267035293
level1	KE_1_022	2009	Road Maintenance Fuel Levy	2019/2020	267725063
level1	KE_1_037	2009	Road Maintenance Fuel Levy	2018/2019	271995701
level1	KE_1_013	2009	Total Conditional Additional Allocation	2015/2016	272978662
level1	KE_1_033	2009	Total Conditional Additional Allocation	2016/2017	273673815
level1	KE_1_026	2009	Total Conditional Additional Allocation	2016/2017	276793229
level1	KE_1_025	2009	Total Conditional Additional Allocation	2017/2018	277702372
level1	KE_1_035	2009	Total Conditional Additional Allocation	2016/2017	278075722
level1	KE_1_006	2009	Total Conditional Additional Allocation	2015/2016	280159968
level1	KE_1_028	2009	Total Conditional Additional Allocation	2019/2020	280537673
level1	KE_1_010	2009	Total Conditional Additional Allocation	2015/2016	281413195
level1	KE_1_028	2009	Total Conditional Additional Allocation	2017/2018	281518265
level1	KE_1_028	2009	Total Conditional Additional Allocation	2015/2016	282941615
level1	KE_1_023	2009	Road Maintenance Fuel Levy	2018/2019	283569986
level1	KE_1_025	2009	Total Conditional Additional Allocation	2019/2020	283801082
level1	KE_1_021	2009	Total Conditional Additional Allocation	2016/2017	284119733
level1	KE_1_003	2009	Road Maintenance Fuel Levy	2018/2019	285223455
level1	KE_1_031	2009	Total Conditional Additional Allocation	2017/2018	286046433
level1	KE_1_014	2009	Grants to Level5 Hospitals	2016/2017	286705202
level1	KE_1_008	2009	Total Conditional Additional Allocation	2016/2017	287241974
level1	KE_1_009	2009	Road Maintenance Fuel Levy	2019/2020	290185219
level1	KE_1_006	2009	Total Conditional Additional Allocation	2017/2018	291798675
level1	KE_1_031	2009	Total Conditional Additional Allocation	2019/2020	292381024
level1	KE_1_004	2009	Total Conditional Additional Allocation	2016/2017	292735592
level1	KE_1_015	2009	Total Conditional Additional Allocation	2016/2017	293741405
level1	KE_1_020	2009	Total Conditional Additional Allocation	2017/2018	295119105
level1	KE_1_040	2009	Total Conditional Additional Allocation	2016/2017	295321032
level1	KE_1_037	2009	Road Maintenance Fuel Levy	2019/2020	295575656
level1	KE_1_003	2009	Road Maintenance Fuel Levy	2019/2020	296474063
level1	KE_1_020	2009	Total Conditional Additional Allocation	2015/2016	297334152
level1	KE_1_024	2009	Total Conditional Additional Allocation	2015/2016	297371526
level1	KE_1_032	2009	Road Maintenance Fuel Levy	2019/2020	297372469
level1	KE_1_017	2009	Total Conditional Additional Allocation	2016/2017	297862274
level1	KE_1_020	2009	Total Conditional Additional Allocation	2019/2020	298087199
level1	KE_1_023	2009	Road Maintenance Fuel Levy	2019/2020	299169281
level1	KE_1_014	2009	Grants to Level5 Hospitals	2017/2018	301040462
level1	KE_1_014	2009	Grants to Level 5 Hospitals	2019/2020	301040462
level1	KE_1_047	2009	Grant for Free Maternal Healthcare	2015/2016	302579200
level1	KE_1_024	2009	Total Conditional Additional Allocation	2019/2020	303304863
level1	KE_1_016	2009	Grants to Level5 Hospitals	2015/2016	304326286
level1	KE_1_031	2009	Total Conditional Additional Allocation	2015/2016	306098811
level1	KE_1_041	2009	Total Conditional Additional Allocation	2019/2020	308325869
level1	KE_1_018	2009	Total Conditional Additional Allocation	2015/2016	308691210
level1	KE_1_041	2009	Total Conditional Additional Allocation	2016/2017	310178291
level1	KE_1_034	2009	Total Conditional Additional Allocation	2015/2016	311294742
level1	KE_1_004	2009	Total Conditional Additional Allocation	2019/2020	313235934
level1	KE_1_012	2009	Grants to Level5 Hospitals	2017/2018	313872832
level1	KE_1_030	2009	Total Conditional Additional Allocation	2019/2020	314622598
level1	KE_1_009	2009	Total Conditional Additional Allocation	2016/2017	315078397
level1	KE_1_002	2009	Total Conditional Additional Allocation	2016/2017	315507017
level1	KE_1_038	2009	Total Conditional Additional Allocation	2015/2016	319378127
level1	KE_1_024	2009	Total Conditional Additional Allocation	2017/2018	324215400
level1	KE_1_038	2009	Total Conditional Additional Allocation	2017/2018	324237222
level1	KE_1_030	2009	Total Conditional Additional Allocation	2015/2016	324481292
level1	KE_1_036	2009	Total Conditional Additional Allocation	2015/2016	324488449
level1	KE_1_023	2009	Total Conditional Additional Allocation	2016/2017	327563586
level1	KE_1_034	2009	Total Conditional Additional Allocation	2017/2018	327698687
level1	KE_1_007	2009	Grants to Level5 Hospitals	2016/2017	328323699
level1	KE_1_022	2009	Grants to Level5 Hospitals	2015/2016	330044000
level1	KE_1_035	2009	Total Conditional Additional Allocation	2019/2020	332126043
level1	KE_1_033	2009	Total Conditional Additional Allocation	2015/2016	332674346
level1	KE_1_030	2009	Total Conditional Additional Allocation	2017/2018	333374243
level1	KE_1_029	2009	Total Conditional Additional Allocation	2015/2016	334367747
level1	KE_1_029	2009	Total Conditional Additional Allocation	2019/2020	334625211
level1	KE_1_046	2009	Total Conditional Additional Allocation	2015/2016	336026183
level1	KE_1_005	2009	Total Conditional Additional Allocation	2017/2018	338400604
level1	KE_1_045	2009	Grants to Level5 Hospitals	2015/2016	338616571
level1	KE_1_042	2009	Grants to Level5 Hospitals	2015/2016	338616571
level1	KE_1_043	2009	Total Conditional Additional Allocation	2016/2017	340520062
level1	KE_1_026	2009	Total Conditional Additional Allocation	2015/2016	341137338
level1	KE_1_035	2009	Total Conditional Additional Allocation	2017/2018	341487512
level1	KE_1_025	2009	Total Conditional Additional Allocation	2018/2019	342710164
level1	KE_1_037	2009	Grants to Level5 Hospitals	2015/2016	342902857
level1	KE_1_038	2009	Total Conditional Additional Allocation	2019/2020	344381111
level1	KE_1_007	2009	Grants to Level5 Hospitals	2017/2018	344739884
level1	KE_1_007	2009	Grants to Level 5 Hospitals	2019/2020	344739884
level1	KE_1_029	2009	Total Conditional Additional Allocation	2017/2018	345713873
level1	KE_1_010	2009	Total Conditional Additional Allocation	2019/2020	346375843
level1	KE_1_008	2009	Total Conditional Additional Allocation	2015/2016	346957977
level1	KE_1_031	2009	Total Conditional Additional Allocation	2018/2019	347622182
level1	KE_1_046	2009	Total Conditional Additional Allocation	2019/2020	348716163
level1	KE_1_028	2009	Total Conditional Additional Allocation	2018/2019	349797077
level1	KE_1_042	2009	Grants to Level5 Hospitals	2016/2017	351445087
level1	KE_1_036	2009	Total Conditional Additional Allocation	2019/2020	352339235
level1	KE_1_010	2009	Total Conditional Additional Allocation	2017/2018	353093486
level1	KE_1_006	2009	Total Conditional Additional Allocation	2019/2020	354796343
level1	KE_1_012	2009	Grants to Level5 Hospitals	2016/2017	356069364
level1	KE_1_032	2009	Grants to Level5 Hospitals	2016/2017	356069364
level1	KE_1_036	2009	Total Conditional Additional Allocation	2017/2018	358153393
level1	KE_1_007	2009	Grants to Level5 Hospitals	2015/2016	360048000
level1	KE_1_021	2009	Total Conditional Additional Allocation	2015/2016	360174609
level1	KE_1_006	2009	Total Conditional Additional Allocation	2018/2019	361620075
level1	KE_1_035	2009	Total Conditional Additional Allocation	2015/2016	363121852
level1	KE_1_016	2009	Grants to Level5 Hospitals	2016/2017	365317919
level1	KE_1_023	2009	Total Conditional Additional Allocation	2015/2016	365628794
level1	KE_1_017	2009	Total Conditional Additional Allocation	2015/2016	366617073
level1	KE_1_034	2009	Total Conditional Additional Allocation	2019/2020	366740025
level1	KE_1_041	2009	Total Conditional Additional Allocation	2017/2018	367420940
level1	KE_1_019	2009	Grants to Level5 Hospitals	2015/2016	368620571
level1	KE_1_015	2009	Total Conditional Additional Allocation	2015/2016	368896848
level1	KE_1_042	2009	Grants to Level5 Hospitals	2017/2018	369017341
level1	KE_1_042	2009	Grants to Level 5 Hospitals	2019/2020	369017341
level1	KE_1_040	2009	Total Conditional Additional Allocation	2015/2016	369561553
level1	KE_1_046	2009	Total Conditional Additional Allocation	2017/2018	369636128
level1	KE_1_001	2009	Grants to Level5 Hospitals	2016/2017	369942197
level1	KE_1_005	2009	Total Conditional Additional Allocation	2019/2020	370333538
level1	KE_1_024	2009	Total Conditional Additional Allocation	2018/2019	370810825
level1	KE_1_020	2009	Total Conditional Additional Allocation	2018/2019	371794810
level1	KE_1_033	2009	Total Conditional Additional Allocation	2017/2018	373105934
level1	KE_1_002	2009	Total Conditional Additional Allocation	2017/2018	373107313
level1	KE_1_027	2009	Total Conditional Additional Allocation	2017/2018	373197782
level1	KE_1_026	2009	Total Conditional Additional Allocation	2017/2018	373438282
level1	KE_1_009	2009	Total Conditional Additional Allocation	2015/2016	373457658
level1	KE_1_012	2009	Grants to Level 5 Hospitals	2019/2020	373872832
level1	KE_1_032	2009	Grants to Level5 Hospitals	2017/2018	373872832
level1	KE_1_032	2009	Grants to Level 5 Hospitals	2019/2020	373872832
level1	KE_1_002	2009	Total Conditional Additional Allocation	2015/2016	374066375
level1	KE_1_044	2009	Total Conditional Additional Allocation	2019/2020	375863013
level1	KE_1_011	2009	Total Conditional Additional Allocation	2017/2018	376614697
level1	KE_1_032	2009	Grants to Level5 Hospitals	2015/2016	377193143
level1	KE_1_026	2009	Total Conditional Additional Allocation	2019/2020	377918043
level1	KE_1_043	2009	Total Conditional Additional Allocation	2019/2020	380624069
level1	KE_1_030	2009	Total Conditional Additional Allocation	2018/2019	382727014
level1	KE_1_040	2009	Total Conditional Additional Allocation	2019/2020	382879464
level1	KE_1_016	2009	Grants to Level5 Hospitals	2017/2018	383583815
level1	KE_1_016	2009	Grants to Level 5 Hospitals	2019/2020	383583815
level1	KE_1_038	2009	Total Conditional Additional Allocation	2018/2019	385053522
level1	KE_1_044	2009	Total Conditional Additional Allocation	2016/2017	386744511
level1	KE_1_011	2009	Total Conditional Additional Allocation	2019/2020	387607090
level1	KE_1_001	2009	Grants to Level5 Hospitals	2017/2018	388439306
level1	KE_1_001	2009	Grants to Level 5 Hospitals	2019/2020	388439306
level1	KE_1_019	2009	Grants to Level5 Hospitals	2016/2017	388439306
level1	KE_1_027	2009	Total Conditional Additional Allocation	2019/2020	389997506
level1	KE_1_046	2009	Total Conditional Additional Allocation	2018/2019	391753888
level1	KE_1_022	2009	Grants to Level5 Hospitals	2016/2017	393063584
level1	KE_1_027	2009	Total Conditional Additional Allocation	2015/2016	393481820
level1	KE_1_029	2009	Total Conditional Additional Allocation	2018/2019	396712989
level1	KE_1_013	2009	Total Conditional Additional Allocation	2017/2018	396766501
level1	KE_1_045	2009	Grants to Level5 Hospitals	2016/2017	397687861
level1	KE_1_033	2009	Total Conditional Additional Allocation	2019/2020	400193676
level1	KE_1_041	2009	Total Conditional Additional Allocation	2015/2016	400533084
level1	KE_1_001	2009	Grants to Level5 Hospitals	2015/2016	402910857
level1	KE_1_037	2009	Grants to Level5 Hospitals	2016/2017	406936416
level1	KE_1_019	2009	Grants to Level5 Hospitals	2017/2018	407861272
level1	KE_1_019	2009	Grants to Level 5 Hospitals	2019/2020	407861272
level1	KE_1_040	2009	Total Conditional Additional Allocation	2017/2018	408177033
level1	KE_1_008	2009	Total Conditional Additional Allocation	2019/2020	409172876
level1	KE_1_035	2009	Total Conditional Additional Allocation	2018/2019	409519496
level1	KE_1_027	2009	Total Conditional Additional Allocation	2018/2019	410315914
level1	KE_1_043	2009	Total Conditional Additional Allocation	2017/2018	410977282
level1	KE_1_035	2009	Grants to Level5 Hospitals	2017/2018	412716763
level1	KE_1_044	2009	Total Conditional Additional Allocation	2017/2018	413106666
level1	KE_1_021	2009	Total Conditional Additional Allocation	2019/2020	414104727
level1	KE_1_043	2009	Total Conditional Additional Allocation	2015/2016	414499437
level1	KE_1_034	2009	Total Conditional Additional Allocation	2018/2019	415206684
level1	KE_1_041	2009	Total Conditional Additional Allocation	2018/2019	415427861
level1	KE_1_047	2009	Road Maintenance Fuel Levy	2018/2019	415847530
level1	KE_1_010	2009	Total Conditional Additional Allocation	2018/2019	417280542
level1	KE_1_045	2009	Grants to Level5 Hospitals	2017/2018	417572254
level1	KE_1_045	2009	Grants to Level 5 Hospitals	2019/2020	417572254
level1	KE_1_033	2009	Total Conditional Additional Allocation	2018/2019	419242432
level1	KE_1_004	2009	Total Conditional Additional Allocation	2017/2018	419558308
level1	KE_1_036	2009	Total Conditional Additional Allocation	2018/2019	420841205
level1	KE_1_017	2009	Total Conditional Additional Allocation	2019/2020	421911014
level1	KE_1_026	2009	Total Conditional Additional Allocation	2018/2019	423000418
level1	KE_1_003	2009	Total Conditional Additional Allocation	2016/2017	427175164
level1	KE_1_037	2009	Grants to Level5 Hospitals	2017/2018	427283237
level1	KE_1_037	2009	Grants to Level 5 Hospitals	2019/2020	427283237
level1	KE_1_002	2009	Total Conditional Additional Allocation	2019/2020	427925722
level1	KE_1_021	2009	Total Conditional Additional Allocation	2017/2018	428174399
level1	KE_1_044	2009	Total Conditional Additional Allocation	2018/2019	430327100
level1	KE_1_017	2009	Total Conditional Additional Allocation	2017/2018	433661302
level1	KE_1_040	2009	Total Conditional Additional Allocation	2018/2019	435973669
level1	KE_1_017	2009	Total Conditional Additional Allocation	2018/2019	438674526
level1	KE_1_018	2009	Total Conditional Additional Allocation	2019/2020	441988676
level1	KE_1_043	2009	Total Conditional Additional Allocation	2018/2019	444954827
level1	KE_1_039	2009	Total Conditional Additional Allocation	2016/2017	445853234
level1	KE_1_013	2009	Total Conditional Additional Allocation	2019/2020	446030885
level1	KE_1_008	2009	Total Conditional Additional Allocation	2017/2018	448002378
level1	KE_1_005	2009	Total Conditional Additional Allocation	2018/2019	448082050
level1	KE_1_011	2009	Total Conditional Additional Allocation	2018/2019	449049293
level1	KE_1_044	2009	Total Conditional Additional Allocation	2015/2016	449931534
level1	KE_1_021	2009	Total Conditional Additional Allocation	2018/2019	450368887
level1	KE_1_047	2009	Road Maintenance Fuel Levy	2019/2020	451898344
level1	KE_1_002	2009	Total Conditional Additional Allocation	2018/2019	455485910
level1	KE_1_018	2009	Total Conditional Additional Allocation	2017/2018	459581935
level1	KE_1_008	2009	Total Conditional Additional Allocation	2018/2019	460298353
level1	KE_1_013	2009	Total Conditional Additional Allocation	2018/2019	465209339
level1	KE_1_009	2009	Total Conditional Additional Allocation	2019/2020	469688330
level1	KE_1_023	2009	Total Conditional Additional Allocation	2019/2020	470612414
level1	KE_1_039	2009	Total Conditional Additional Allocation	2019/2020	471132654
level1	KE_1_015	2009	Total Conditional Additional Allocation	2019/2020	477658441
country	KE	2009	Supplement for construction of county headquarters	2019/2020	485152184
level1	KE_1_003	2009	Total Conditional Additional Allocation	2015/2016	486835382
level1	KE_1_015	2009	Total Conditional Additional Allocation	2017/2018	495457373
level1	KE_1_039	2009	Total Conditional Additional Allocation	2015/2016	495516573
level1	KE_1_004	2009	Total Conditional Additional Allocation	2018/2019	497504571
level1	KE_1_014	2009	Total Conditional Additional Allocation	2015/2016	500625241
level1	KE_1_018	2009	Total Conditional Additional Allocation	2018/2019	503233263
level1	KE_1_003	2009	Total Conditional Additional Allocation	2017/2018	506667945
level1	KE_1_015	2009	Total Conditional Additional Allocation	2018/2019	510797140
level1	KE_1_014	2009	Total Conditional Additional Allocation	2016/2017	511841166
level1	KE_1_003	2009	Total Conditional Additional Allocation	2019/2020	513222118
level1	KE_1_009	2009	Total Conditional Additional Allocation	2018/2019	523750213
level1	KE_1_039	2009	Total Conditional Additional Allocation	2017/2018	531884312
level1	KE_1_009	2009	Total Conditional Additional Allocation	2017/2018	532626010
level1	KE_1_039	2009	Total Conditional Additional Allocation	2018/2019	533956683
level1	KE_1_023	2009	Total Conditional Additional Allocation	2018/2019	534489927
level1	KE_1_022	2009	Grants to Level 5 Hospitals	2019/2020	538716763
level1	KE_1_003	2009	Total Conditional Additional Allocation	2018/2019	564228319
level1	KE_1_007	2009	Total Conditional Additional Allocation	2016/2017	586657085
level1	KE_1_047	2009	Total Conditional Additional Allocation	2016/2017	590993985
level1	KE_1_023	2009	Total Conditional Additional Allocation	2017/2018	594217857
level1	KE_1_014	2009	Total Conditional Additional Allocation	2019/2020	599466129
country	KE	2009	Supplement for construction of county headquarters	2017/2018	605000000
level1	KE_1_014	2009	Total Conditional Additional Allocation	2017/2018	611940103
level1	KE_1_019	2009	Total Conditional Additional Allocation	2016/2017	641510955
level1	KE_1_014	2009	Total Conditional Additional Allocation	2018/2019	667061008
level1	KE_1_012	2009	Total Conditional Additional Allocation	2015/2016	671568065
level1	KE_1_042	2009	Total Conditional Additional Allocation	2016/2017	681249588
level1	KE_1_047	2009	Total Conditional Additional Allocation	2019/2020	686234787
level1	KE_1_007	2009	Total Conditional Additional Allocation	2015/2016	687539457
level1	KE_1_001	2009	Total Conditional Additional Allocation	2016/2017	701099704
level1	KE_1_016	2009	Total Conditional Additional Allocation	2015/2016	702415150
level1	KE_1_016	2009	Total Conditional Additional Allocation	2016/2017	703521230
level1	KE_1_012	2009	Total Conditional Additional Allocation	2016/2017	706272310
level1	KE_1_007	2009	Total Conditional Additional Allocation	2019/2020	709693899
level1	KE_1_019	2009	Total Conditional Additional Allocation	2015/2016	712760771
level1	KE_1_007	2009	Total Conditional Additional Allocation	2017/2018	727272975
level1	KE_1_047	2009	Total Conditional Additional Allocation	2018/2019	729840781
level1	KE_1_047	2009	Total Conditional Additional Allocation	2015/2016	730196325
level1	KE_1_042	2009	Total Conditional Additional Allocation	2015/2016	746516873
level1	KE_1_019	2009	Total Conditional Additional Allocation	2017/2018	749086744
level1	KE_1_042	2009	Total Conditional Additional Allocation	2017/2018	756595347
level1	KE_1_042	2009	Total Conditional Additional Allocation	2019/2020	757960772
level1	KE_1_047	2009	Total Conditional Additional Allocation	2017/2018	759568406
level1	KE_1_001	2009	Total Conditional Additional Allocation	2017/2018	759622516
level1	KE_1_019	2009	Total Conditional Additional Allocation	2019/2020	762248311
level1	KE_1_001	2009	Total Conditional Additional Allocation	2019/2020	769558026
level1	KE_1_007	2009	Total Conditional Additional Allocation	2018/2019	775747878
level1	KE_1_019	2009	Total Conditional Additional Allocation	2018/2019	782635195
level1	KE_1_045	2009	Total Conditional Additional Allocation	2016/2017	806118433
level1	KE_1_016	2009	Total Conditional Additional Allocation	2019/2020	810830576
level1	KE_1_042	2009	Total Conditional Additional Allocation	2018/2019	813848454
level1	KE_1_001	2009	Total Conditional Additional Allocation	2015/2016	816446379
level1	KE_1_012	2009	Total Conditional Additional Allocation	2019/2020	822199639
level1	KE_1_012	2009	Total Conditional Additional Allocation	2017/2018	836607144
level1	KE_1_045	2009	Total Conditional Additional Allocation	2015/2016	839649985
level1	KE_1_032	2009	Total Conditional Additional Allocation	2016/2017	840874682
level1	KE_1_002	2009	Road Maintenance Fuel Levy	2016/2017	849790624
level1	KE_1_016	2009	Total Conditional Additional Allocation	2017/2018	857806061
level1	KE_1_001	2009	Total Conditional Additional Allocation	2018/2019	868324719
level1	KE_1_022	2009	Total Conditional Additional Allocation	2016/2017	869840936
level1	KE_1_045	2009	Total Conditional Additional Allocation	2019/2020	871187381
level1	KE_1_045	2009	Total Conditional Additional Allocation	2017/2018	871511268
level1	KE_1_022	2009	Total Conditional Additional Allocation	2015/2016	876841548
level1	KE_1_016	2009	Total Conditional Additional Allocation	2018/2019	881092537
level1	KE_1_012	2009	Total Conditional Additional Allocation	2018/2019	882363597
level1	KE_1_032	2009	Total Conditional Additional Allocation	2017/2018	889584107
level1	KE_1_037	2009	Total Conditional Additional Allocation	2015/2016	899038414
country	KE	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	900000000
country	KE	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	900000000
country	KE	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	900000000
country	KE	2009	Compensation for User Fee Foregone	2019/2020	900000000
level1	KE_1_032	2009	Total Conditional Additional Allocation	2019/2020	904946758
level1	KE_1_037	2009	Total Conditional Additional Allocation	2016/2017	906172077
level1	KE_1_032	2009	Total Conditional Additional Allocation	2018/2019	909243228
level1	KE_1_045	2009	Total Conditional Additional Allocation	2018/2019	917177976
level1	KE_1_022	2009	Total Conditional Additional Allocation	2017/2018	921227765
level1	KE_1_032	2009	Total Conditional Additional Allocation	2015/2016	926660487
level1	KE_1_037	2009	Total Conditional Additional Allocation	2017/2018	968430285
level1	KE_1_037	2009	Total Conditional Additional Allocation	2019/2020	969486374
level1	KE_1_037	2009	Total Conditional Additional Allocation	2018/2019	1006978228
level1	KE_1_022	2009	Total Conditional Additional Allocation	2019/2020	1028141559
level1	KE_1_022	2009	Total Conditional Additional Allocation	2018/2019	1087865232
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

