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
county	5	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	2481810
county	11	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	3514477
county	25	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	5321855
county	4	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	5699850
county	6	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	6631099
county	10	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	6872636
county	13	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	8419197
county	28	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	8956070
county	31	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	9872539
county	14	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	10776608
county	46	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	11578458
county	20	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	11625078
county	24	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	12316429
county	38	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	13002761
county	18	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	13122239
county	7	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	13126919
county	30	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	13370516
county	36	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	14191766
county	19	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	14347664
county	5	2009	Grant for Free Maternal Healthcare	2016/2017	15372820
county	2	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	15397611
county	9	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	15521730
county	8	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	16011344
county	34	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	16311160
county	25	2009	Grant for Free Maternal Healthcare	2016/2017	16946829
county	40	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	17302828
county	29	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	18055819
county	35	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	18313556
county	41	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	19057307
county	17	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	19449802
county	33	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	20106734
county	26	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	20209153
county	21	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	20749146
county	42	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	21854292
county	44	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	21882372
county	27	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	22181068
county	11	2009	Grant for Free Maternal Healthcare	2016/2017	22181866
county	43	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	22616803
county	15	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	23144997
county	1	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	23514312
county	16	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	24764877
county	10	2009	Grant for Free Maternal Healthcare	2016/2017	25096698
county	4	2009	Grant for Free Maternal Healthcare	2016/2017	25230780
county	23	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	26122720
county	3	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	26392597
county	45	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	26947170
county	13	2009	Grant for Free Maternal Healthcare	2016/2017	29853703
county	23	2009	Grant for Free Maternal Healthcare	2016/2017	31964040
county	12	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	32096227
county	39	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	33282912
county	5	2009	Road Maintenance Fuel Levy	2016/2017	34018227
county	22	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	35773082
county	6	2009	Grant for Free Maternal Healthcare	2016/2017	37659621
county	37	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	38617147
county	32	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	39216180
county	27	2009	Grant for Free Maternal Healthcare	2016/2017	40766831
county	20	2009	Grant for Free Maternal Healthcare	2016/2017	45389754
county	18	2009	Grant for Free Maternal Healthcare	2016/2017	46514879
county	28	2009	Grant for Free Maternal Healthcare	2016/2017	50228374
county	11	2009	Road Maintenance Fuel Levy	2016/2017	50674874
county	24	2009	Grant for Free Maternal Healthcare	2016/2017	51050356
county	13	2009	Road Maintenance Fuel Levy	2016/2017	52017792
county	7	2009	Grant for Free Maternal Healthcare	2016/2017	53772809
county	28	2009	Road Maintenance Fuel Levy	2016/2017	54220715
county	15	2009	Grant for Free Maternal Healthcare	2016/2017	54367434
county	34	2009	Grant for Free Maternal Healthcare	2016/2017	54758022
county	6	2009	Road Maintenance Fuel Levy	2016/2017	54869411
county	14	2009	Grant for Free Maternal Healthcare	2016/2017	54985378
county	9	2009	Grant for Free Maternal Healthcare	2016/2017	55335158
county	8	2009	Grant for Free Maternal Healthcare	2016/2017	55574174
county	31	2009	Road Maintenance Fuel Levy	2016/2017	57190153
county	20	2009	Road Maintenance Fuel Levy	2016/2017	58660195
county	25	2009	Road Maintenance Fuel Levy	2016/2017	58898587
county	36	2009	Grant for Free Maternal Healthcare	2016/2017	61258095
county	31	2009	Grant for Free Maternal Healthcare	2016/2017	61409667
county	14	2009	Road Maintenance Fuel Levy	2016/2017	63629297
county	38	2009	Road Maintenance Fuel Levy	2016/2017	64184231
county	30	2009	Grant for Free Maternal Healthcare	2016/2017	64662618
county	4	2009	Road Maintenance Fuel Levy	2016/2017	66060281
county	38	2009	Grant for Free Maternal Healthcare	2016/2017	66469814
county	29	2009	Grant for Free Maternal Healthcare	2016/2017	68195394
county	46	2009	Road Maintenance Fuel Levy	2016/2017	68878185
county	19	2009	Grant for Free Maternal Healthcare	2016/2017	69215585
county	33	2009	Grant for Free Maternal Healthcare	2016/2017	70154161
county	18	2009	Road Maintenance Fuel Levy	2016/2017	71407030
county	24	2009	Road Maintenance Fuel Levy	2016/2017	71516809
county	34	2009	Road Maintenance Fuel Levy	2016/2017	73157028
county	30	2009	Road Maintenance Fuel Levy	2016/2017	73620416
county	19	2009	Road Maintenance Fuel Levy	2016/2017	73763719
county	35	2009	Road Maintenance Fuel Levy	2016/2017	74689564
county	26	2009	Grant for Free Maternal Healthcare	2016/2017	76292795
county	36	2009	Road Maintenance Fuel Levy	2016/2017	78035696
county	21	2009	Grant for Free Maternal Healthcare	2016/2017	78828699
county	29	2009	Road Maintenance Fuel Levy	2016/2017	78835014
county	47	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2016/2017	79879082
county	46	2009	Grant for Free Maternal Healthcare	2016/2017	82174925
county	41	2009	Road Maintenance Fuel Levy	2016/2017	82817177
county	17	2009	Grant for Free Maternal Healthcare	2016/2017	83696467
county	26	2009	Road Maintenance Fuel Levy	2016/2017	84546600
county	10	2009	Road Maintenance Fuel Levy	2016/2017	86036213
county	27	2009	Road Maintenance Fuel Levy	2016/2017	86059722
county	1	2009	Road Maintenance Fuel Levy	2016/2017	86176009
county	33	2009	Road Maintenance Fuel Levy	2016/2017	87668239
county	21	2009	Road Maintenance Fuel Levy	2016/2017	88797208
county	35	2009	Grant for Free Maternal Healthcare	2016/2017	89327921
county	40	2009	Road Maintenance Fuel Levy	2016/2017	90194001
county	40	2009	Grant for Free Maternal Healthcare	2016/2017	92079522
county	43	2009	Road Maintenance Fuel Levy	2016/2017	93422137
county	42	2009	Road Maintenance Fuel Levy	2016/2017	94189837
county	7	2009	Road Maintenance Fuel Levy	2016/2017	95688977
county	30	2009	Leasing of Medical Equipment	2016/2017	95744681
county	36	2009	Leasing of Medical Equipment	2016/2017	95744681
county	39	2009	Leasing of Medical Equipment	2016/2017	95744681
county	40	2009	Leasing of Medical Equipment	2016/2017	95744681
county	28	2009	Leasing of Medical Equipment	2016/2017	95744681
county	14	2009	Leasing of Medical Equipment	2016/2017	95744681
county	7	2009	Leasing of Medical Equipment	2016/2017	95744681
county	43	2009	Leasing of Medical Equipment	2016/2017	95744681
county	11	2009	Leasing of Medical Equipment	2016/2017	95744681
county	34	2009	Leasing of Medical Equipment	2016/2017	95744681
county	37	2009	Leasing of Medical Equipment	2016/2017	95744681
county	35	2009	Leasing of Medical Equipment	2016/2017	95744681
county	22	2009	Leasing of Medical Equipment	2016/2017	95744681
county	3	2009	Leasing of Medical Equipment	2016/2017	95744681
county	20	2009	Leasing of Medical Equipment	2016/2017	95744681
county	45	2009	Leasing of Medical Equipment	2016/2017	95744681
county	42	2009	Leasing of Medical Equipment	2016/2017	95744681
county	15	2009	Leasing of Medical Equipment	2016/2017	95744681
county	2	2009	Leasing of Medical Equipment	2016/2017	95744681
county	31	2009	Leasing of Medical Equipment	2016/2017	95744681
county	5	2009	Leasing of Medical Equipment	2016/2017	95744681
county	16	2009	Leasing of Medical Equipment	2016/2017	95744681
county	17	2009	Leasing of Medical Equipment	2016/2017	95744681
county	9	2009	Leasing of Medical Equipment	2016/2017	95744681
county	10	2009	Leasing of Medical Equipment	2016/2017	95744681
county	12	2009	Leasing of Medical Equipment	2016/2017	95744681
county	44	2009	Leasing of Medical Equipment	2016/2017	95744681
county	1	2009	Leasing of Medical Equipment	2016/2017	95744681
county	21	2009	Leasing of Medical Equipment	2016/2017	95744681
county	47	2009	Leasing of Medical Equipment	2016/2017	95744681
county	32	2009	Leasing of Medical Equipment	2016/2017	95744681
county	29	2009	Leasing of Medical Equipment	2016/2017	95744681
county	33	2009	Leasing of Medical Equipment	2016/2017	95744681
county	46	2009	Leasing of Medical Equipment	2016/2017	95744681
county	18	2009	Leasing of Medical Equipment	2016/2017	95744681
county	19	2009	Leasing of Medical Equipment	2016/2017	95744681
county	25	2009	Leasing of Medical Equipment	2016/2017	95744681
county	41	2009	Leasing of Medical Equipment	2016/2017	95744681
county	6	2009	Leasing of Medical Equipment	2016/2017	95744681
county	4	2009	Leasing of Medical Equipment	2016/2017	95744681
county	13	2009	Leasing of Medical Equipment	2016/2017	95744681
county	26	2009	Leasing of Medical Equipment	2016/2017	95744681
county	23	2009	Leasing of Medical Equipment	2016/2017	95744681
county	27	2009	Leasing of Medical Equipment	2016/2017	95744681
county	38	2009	Leasing of Medical Equipment	2016/2017	95744681
county	8	2009	Leasing of Medical Equipment	2016/2017	95744681
county	24	2009	Leasing of Medical Equipment	2016/2017	95744681
county	44	2009	Road Maintenance Fuel Levy	2016/2017	96769311
county	17	2009	Road Maintenance Fuel Levy	2016/2017	98971324
county	5	2009	Special Purpose Grant Supporting Emergency Medical Services	2016/2017	100000000
county	4	2009	Special Purpose Grant Supporting Emergency Medical Services	2016/2017	100000000
county	16	2009	Grant for Free Maternal Healthcare	2016/2017	105476087
county	12	2009	Road Maintenance Fuel Levy	2016/2017	107657595
county	16	2009	Road Maintenance Fuel Levy	2016/2017	112217667
county	41	2009	Grant for Free Maternal Healthcare	2016/2017	112559127
county	12	2009	Grant for Free Maternal Healthcare	2016/2017	114704443
county	45	2009	Road Maintenance Fuel Levy	2016/2017	117605419
county	42	2009	Grant for Free Maternal Healthcare	2016/2017	118015691
county	2	2009	Grant for Free Maternal Healthcare	2016/2017	119385662
county	8	2009	Road Maintenance Fuel Levy	2016/2017	119911775
county	15	2009	Road Maintenance Fuel Levy	2016/2017	120484293
county	3	2009	Road Maintenance Fuel Levy	2016/2017	123368108
county	22	2009	Road Maintenance Fuel Levy	2016/2017	123738238
county	1	2009	Grant for Free Maternal Healthcare	2016/2017	125722505
county	39	2009	Road Maintenance Fuel Levy	2016/2017	127250840
county	43	2009	Grant for Free Maternal Healthcare	2016/2017	128736441
county	32	2009	Road Maintenance Fuel Levy	2016/2017	134560844
county	37	2009	Road Maintenance Fuel Levy	2016/2017	147689749
county	9	2009	Road Maintenance Fuel Levy	2016/2017	148476828
county	45	2009	Grant for Free Maternal Healthcare	2016/2017	168133301
county	44	2009	Grant for Free Maternal Healthcare	2016/2017	172348147
county	23	2009	Road Maintenance Fuel Levy	2016/2017	173732145
county	3	2009	Grant for Free Maternal Healthcare	2016/2017	181669778
county	39	2009	Grant for Free Maternal Healthcare	2016/2017	189574801
county	47	2009	Grant for Free Maternal Healthcare	2016/2017	199899133
country	KE	2009	Special Purpose Grant Supporting Emergency Medical Services	2016/2017	200000000
county	32	2009	Grant for Free Maternal Healthcare	2016/2017	215283613
county	47	2009	Road Maintenance Fuel Levy	2016/2017	215471089
county	37	2009	Grant for Free Maternal Healthcare	2016/2017	217184083
county	22	2009	Grant for Free Maternal Healthcare	2016/2017	221521352
county	14	2009	Grants to Level5 Hospitals	2016/2017	286705202
county	7	2009	Grants to Level5 Hospitals	2016/2017	328323699
county	42	2009	Grants to Level5 Hospitals	2016/2017	351445087
county	12	2009	Grants to Level5 Hospitals	2016/2017	356069364
county	32	2009	Grants to Level5 Hospitals	2016/2017	356069364
county	16	2009	Grants to Level5 Hospitals	2016/2017	365317919
county	1	2009	Grants to Level5 Hospitals	2016/2017	369942197
county	19	2009	Grants to Level5 Hospitals	2016/2017	388439306
county	22	2009	Grants to Level5 Hospitals	2016/2017	393063584
county	45	2009	Grants to Level5 Hospitals	2016/2017	397687861
county	37	2009	Grants to Level5 Hospitals	2016/2017	406936416
county	2	2009	Road Maintenance Fuel Levy	2016/2017	849790624
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

