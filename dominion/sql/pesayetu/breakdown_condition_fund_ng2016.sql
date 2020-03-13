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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_ng2016 DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_ng2016;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_ng2016;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_ng2016; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_ng2016 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_ng2016; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_ng2016 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
level1	KE_1_005	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	2481810
level1	KE_1_011	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	3514477
level1	KE_1_025	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	5321855
level1	KE_1_004	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	5699850
level1	KE_1_006	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	6631099
level1	KE_1_010	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	6872636
level1	KE_1_013	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	8419197
level1	KE_1_028	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	8956070
level1	KE_1_031	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	9872539
level1	KE_1_014	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	10776608
level1	KE_1_046	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	11578458
level1	KE_1_020	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	11625078
level1	KE_1_024	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	12316429
level1	KE_1_038	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	13002761
level1	KE_1_018	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	13122239
level1	KE_1_007	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	13126919
level1	KE_1_030	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	13370516
level1	KE_1_036	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	14191766
level1	KE_1_019	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	14347664
level1	KE_1_005	2009	Grant for Free Maternal Healthcare	2016/2017	15372820
level1	KE_1_002	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	15397611
level1	KE_1_009	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	15521730
level1	KE_1_008	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	16011344
level1	KE_1_034	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	16311160
level1	KE_1_025	2009	Grant for Free Maternal Healthcare	2016/2017	16946829
level1	KE_1_040	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	17302828
level1	KE_1_029	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	18055819
level1	KE_1_035	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	18313556
level1	KE_1_041	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	19057307
level1	KE_1_017	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	19449802
level1	KE_1_033	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	20106734
level1	KE_1_026	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	20209153
level1	KE_1_021	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	20749146
level1	KE_1_042	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	21854292
level1	KE_1_044	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	21882372
level1	KE_1_027	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	22181068
level1	KE_1_011	2009	Grant for Free Maternal Healthcare	2016/2017	22181866
level1	KE_1_043	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	22616803
level1	KE_1_015	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	23144997
level1	KE_1_001	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	23514312
level1	KE_1_016	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	24764877
level1	KE_1_010	2009	Grant for Free Maternal Healthcare	2016/2017	25096698
level1	KE_1_004	2009	Grant for Free Maternal Healthcare	2016/2017	25230780
level1	KE_1_023	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	26122720
level1	KE_1_003	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	26392597
level1	KE_1_045	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	26947170
level1	KE_1_013	2009	Grant for Free Maternal Healthcare	2016/2017	29853703
level1	KE_1_023	2009	Grant for Free Maternal Healthcare	2016/2017	31964040
level1	KE_1_012	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	32096227
level1	KE_1_039	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	33282912
level1	KE_1_005	2009	Road Maintenance Fuel Levy	2016/2017	34018227
level1	KE_1_022	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	35773082
level1	KE_1_006	2009	Grant for Free Maternal Healthcare	2016/2017	37659621
level1	KE_1_037	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	38617147
level1	KE_1_032	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	39216180
level1	KE_1_027	2009	Grant for Free Maternal Healthcare	2016/2017	40766831
level1	KE_1_020	2009	Grant for Free Maternal Healthcare	2016/2017	45389754
level1	KE_1_018	2009	Grant for Free Maternal Healthcare	2016/2017	46514879
level1	KE_1_028	2009	Grant for Free Maternal Healthcare	2016/2017	50228374
level1	KE_1_011	2009	Road Maintenance Fuel Levy	2016/2017	50674874
level1	KE_1_024	2009	Grant for Free Maternal Healthcare	2016/2017	51050356
level1	KE_1_013	2009	Road Maintenance Fuel Levy	2016/2017	52017792
level1	KE_1_007	2009	Grant for Free Maternal Healthcare	2016/2017	53772809
level1	KE_1_028	2009	Road Maintenance Fuel Levy	2016/2017	54220715
level1	KE_1_015	2009	Grant for Free Maternal Healthcare	2016/2017	54367434
level1	KE_1_034	2009	Grant for Free Maternal Healthcare	2016/2017	54758022
level1	KE_1_006	2009	Road Maintenance Fuel Levy	2016/2017	54869411
level1	KE_1_014	2009	Grant for Free Maternal Healthcare	2016/2017	54985378
level1	KE_1_009	2009	Grant for Free Maternal Healthcare	2016/2017	55335158
level1	KE_1_008	2009	Grant for Free Maternal Healthcare	2016/2017	55574174
level1	KE_1_031	2009	Road Maintenance Fuel Levy	2016/2017	57190153
level1	KE_1_020	2009	Road Maintenance Fuel Levy	2016/2017	58660195
level1	KE_1_025	2009	Road Maintenance Fuel Levy	2016/2017	58898587
level1	KE_1_036	2009	Grant for Free Maternal Healthcare	2016/2017	61258095
level1	KE_1_031	2009	Grant for Free Maternal Healthcare	2016/2017	61409667
level1	KE_1_014	2009	Road Maintenance Fuel Levy	2016/2017	63629297
level1	KE_1_038	2009	Road Maintenance Fuel Levy	2016/2017	64184231
level1	KE_1_030	2009	Grant for Free Maternal Healthcare	2016/2017	64662618
level1	KE_1_004	2009	Road Maintenance Fuel Levy	2016/2017	66060281
level1	KE_1_038	2009	Grant for Free Maternal Healthcare	2016/2017	66469814
level1	KE_1_029	2009	Grant for Free Maternal Healthcare	2016/2017	68195394
level1	KE_1_046	2009	Road Maintenance Fuel Levy	2016/2017	68878185
level1	KE_1_019	2009	Grant for Free Maternal Healthcare	2016/2017	69215585
level1	KE_1_033	2009	Grant for Free Maternal Healthcare	2016/2017	70154161
level1	KE_1_018	2009	Road Maintenance Fuel Levy	2016/2017	71407030
level1	KE_1_024	2009	Road Maintenance Fuel Levy	2016/2017	71516809
level1	KE_1_034	2009	Road Maintenance Fuel Levy	2016/2017	73157028
level1	KE_1_030	2009	Road Maintenance Fuel Levy	2016/2017	73620416
level1	KE_1_019	2009	Road Maintenance Fuel Levy	2016/2017	73763719
level1	KE_1_035	2009	Road Maintenance Fuel Levy	2016/2017	74689564
level1	KE_1_026	2009	Grant for Free Maternal Healthcare	2016/2017	76292795
level1	KE_1_036	2009	Road Maintenance Fuel Levy	2016/2017	78035696
level1	KE_1_021	2009	Grant for Free Maternal Healthcare	2016/2017	78828699
level1	KE_1_029	2009	Road Maintenance Fuel Levy	2016/2017	78835014
level1	KE_1_047	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	79879082
level1	KE_1_046	2009	Grant for Free Maternal Healthcare	2016/2017	82174925
level1	KE_1_041	2009	Road Maintenance Fuel Levy	2016/2017	82817177
level1	KE_1_017	2009	Grant for Free Maternal Healthcare	2016/2017	83696467
level1	KE_1_026	2009	Road Maintenance Fuel Levy	2016/2017	84546600
level1	KE_1_010	2009	Road Maintenance Fuel Levy	2016/2017	86036213
level1	KE_1_027	2009	Road Maintenance Fuel Levy	2016/2017	86059722
level1	KE_1_001	2009	Road Maintenance Fuel Levy	2016/2017	86176009
level1	KE_1_033	2009	Road Maintenance Fuel Levy	2016/2017	87668239
level1	KE_1_021	2009	Road Maintenance Fuel Levy	2016/2017	88797208
level1	KE_1_035	2009	Grant for Free Maternal Healthcare	2016/2017	89327921
level1	KE_1_040	2009	Road Maintenance Fuel Levy	2016/2017	90194001
level1	KE_1_040	2009	Grant for Free Maternal Healthcare	2016/2017	92079522
level1	KE_1_043	2009	Road Maintenance Fuel Levy	2016/2017	93422137
level1	KE_1_042	2009	Road Maintenance Fuel Levy	2016/2017	94189837
level1	KE_1_007	2009	Road Maintenance Fuel Levy	2016/2017	95688977
level1	KE_1_030	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_036	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_039	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_040	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_028	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_014	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_007	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_043	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_011	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_034	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_037	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_035	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_022	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_003	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_020	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_045	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_042	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_015	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_002	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_031	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_005	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_016	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_017	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_009	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_010	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_012	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_044	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_001	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_021	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_047	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_032	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_029	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_033	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_046	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_018	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_019	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_025	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_041	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_006	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_004	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_013	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_026	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_023	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_027	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_038	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_008	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_024	2009	Leasing of Medical Equipment	2016/2017	95744681
level1	KE_1_044	2009	Road Maintenance Fuel Levy	2016/2017	96769311
level1	KE_1_017	2009	Road Maintenance Fuel Levy	2016/2017	98971324
level1	KE_1_005	2009	Special Purpose Grant Supporting Emergency Medical Services	2016/2017	100000000
level1	KE_1_004	2009	Special Purpose Grant Supporting Emergency Medical Services	2016/2017	100000000
level1	KE_1_016	2009	Grant for Free Maternal Healthcare	2016/2017	105476087
level1	KE_1_012	2009	Road Maintenance Fuel Levy	2016/2017	107657595
level1	KE_1_016	2009	Road Maintenance Fuel Levy	2016/2017	112217667
level1	KE_1_041	2009	Grant for Free Maternal Healthcare	2016/2017	112559127
level1	KE_1_012	2009	Grant for Free Maternal Healthcare	2016/2017	114704443
level1	KE_1_045	2009	Road Maintenance Fuel Levy	2016/2017	117605419
level1	KE_1_042	2009	Grant for Free Maternal Healthcare	2016/2017	118015691
level1	KE_1_002	2009	Grant for Free Maternal Healthcare	2016/2017	119385662
level1	KE_1_008	2009	Road Maintenance Fuel Levy	2016/2017	119911775
level1	KE_1_015	2009	Road Maintenance Fuel Levy	2016/2017	120484293
level1	KE_1_003	2009	Road Maintenance Fuel Levy	2016/2017	123368108
level1	KE_1_022	2009	Road Maintenance Fuel Levy	2016/2017	123738238
level1	KE_1_001	2009	Grant for Free Maternal Healthcare	2016/2017	125722505
level1	KE_1_039	2009	Road Maintenance Fuel Levy	2016/2017	127250840
level1	KE_1_043	2009	Grant for Free Maternal Healthcare	2016/2017	128736441
level1	KE_1_032	2009	Road Maintenance Fuel Levy	2016/2017	134560844
level1	KE_1_037	2009	Road Maintenance Fuel Levy	2016/2017	147689749
level1	KE_1_009	2009	Road Maintenance Fuel Levy	2016/2017	148476828
level1	KE_1_045	2009	Grant for Free Maternal Healthcare	2016/2017	168133301
level1	KE_1_044	2009	Grant for Free Maternal Healthcare	2016/2017	172348147
level1	KE_1_023	2009	Road Maintenance Fuel Levy	2016/2017	173732145
level1	KE_1_003	2009	Grant for Free Maternal Healthcare	2016/2017	181669778
level1	KE_1_039	2009	Grant for Free Maternal Healthcare	2016/2017	189574801
level1	KE_1_047	2009	Grant for Free Maternal Healthcare	2016/2017	199899133
country	KE	2009	Special Purpose Grant Supporting Emergency Medical Services	2016/2017	200000000
level1	KE_1_032	2009	Grant for Free Maternal Healthcare	2016/2017	215283613
level1	KE_1_047	2009	Road Maintenance Fuel Levy	2016/2017	215471089
level1	KE_1_037	2009	Grant for Free Maternal Healthcare	2016/2017	217184083
level1	KE_1_022	2009	Grant for Free Maternal Healthcare	2016/2017	221521352
level1	KE_1_014	2009	Grants to Level5 Hospitals	2016/2017	286705202
level1	KE_1_007	2009	Grants to Level5 Hospitals	2016/2017	328323699
level1	KE_1_042	2009	Grants to Level5 Hospitals	2016/2017	351445087
level1	KE_1_012	2009	Grants to Level5 Hospitals	2016/2017	356069364
level1	KE_1_032	2009	Grants to Level5 Hospitals	2016/2017	356069364
level1	KE_1_016	2009	Grants to Level5 Hospitals	2016/2017	365317919
level1	KE_1_001	2009	Grants to Level5 Hospitals	2016/2017	369942197
level1	KE_1_019	2009	Grants to Level5 Hospitals	2016/2017	388439306
level1	KE_1_022	2009	Grants to Level5 Hospitals	2016/2017	393063584
level1	KE_1_045	2009	Grants to Level5 Hospitals	2016/2017	397687861
level1	KE_1_037	2009	Grants to Level5 Hospitals	2016/2017	406936416
level1	KE_1_002	2009	Road Maintenance Fuel Levy	2016/2017	849790624
country	KE	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	900000000
country	KE	2009	Grants to Level5 Hospitals	2016/2017	4000000000
country	KE	2009	Grant for Free Maternal Healthcare	2016/2017	4121029355
country	KE	2009	Road Maintenance Fuel Levy	2016/2017	4306807629
country	KE	2009	Leasing of Medical Equipment	2016/2017	4500000000
\.


--
-- Name: breakdown_condition_fund_ng2016 pk_breakdown_condition_fund_ng2016; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_ng2016
    ADD CONSTRAINT pk_breakdown_condition_fund_ng2016 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

