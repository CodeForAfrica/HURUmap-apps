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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_ng2019 DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_ng2019;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_ng2019;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_ng2019; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_ng2019 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_ng2019; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_ng2019 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
county	41	2009	Supplement for construction of county headquarters	2019/2020	1152184
county	5	2009	Compensation for User Fee Foregone	2019/2020	2451034
county	11	2009	Compensation for User Fee Foregone	2019/2020	3472461
county	25	2009	Compensation for User Fee Foregone	2019/2020	5235578
county	4	2009	Compensation for User Fee Foregone	2019/2020	5296305
county	13	2009	Compensation for User Fee Foregone	2019/2020	5682537
county	10	2009	Compensation for User Fee Foregone	2019/2020	6643714
county	41	2009	Compensation for User Fee Foregone	2019/2020	8218119
county	28	2009	Compensation for User Fee Foregone	2019/2020	8788919
county	31	2009	Compensation for User Fee Foregone	2019/2020	9968208
county	14	2009	Compensation for User Fee Foregone	2019/2020	10724225
county	11	2009	Rehabilitation of Village Polytechnics	2019/2020	10833298
county	20	2009	Compensation for User Fee Foregone	2019/2020	11282570
county	24	2009	Compensation for User Fee Foregone	2019/2020	12128484
county	38	2009	Compensation for User Fee Foregone	2019/2020	12657201
county	18	2009	Compensation for User Fee Foregone	2019/2020	12735922
county	7	2009	Compensation for User Fee Foregone	2019/2020	12964636
county	46	2009	Compensation for User Fee Foregone	2019/2020	13175221
county	30	2009	Compensation for User Fee Foregone	2019/2020	13191000
county	19	2009	Compensation for User Fee Foregone	2019/2020	13701379
county	23	2009	Rehabilitation of Village Polytechnics	2019/2020	13893298
county	2	2009	Compensation for User Fee Foregone	2019/2020	15209593
county	25	2009	Rehabilitation of Village Polytechnics	2019/2020	15483298
county	10	2009	Rehabilitation of Village Polytechnics	2019/2020	15558298
county	8	2009	Compensation for User Fee Foregone	2019/2020	15784997
county	36	2009	Compensation for User Fee Foregone	2019/2020	16713356
county	40	2009	Compensation for User Fee Foregone	2019/2020	16934085
county	34	2009	Compensation for User Fee Foregone	2019/2020	16955365
county	24	2009	Rehabilitation of Village Polytechnics	2019/2020	17313298
county	35	2009	Compensation for User Fee Foregone	2019/2020	18048789
county	29	2009	Compensation for User Fee Foregone	2019/2020	18086363
county	6	2009	Compensation for User Fee Foregone	2019/2020	18194808
county	8	2009	Rehabilitation of Village Polytechnics	2019/2020	18903298
county	17	2009	Compensation for User Fee Foregone	2019/2020	19435760
county	33	2009	Rehabilitation of Village Polytechnics	2019/2020	19488298
county	21	2009	Compensation for User Fee Foregone	2019/2020	20138691
county	33	2009	Compensation for User Fee Foregone	2019/2020	20595297
county	7	2009	Rehabilitation of Village Polytechnics	2019/2020	20628298
county	27	2009	Compensation for User Fee Foregone	2019/2020	20813065
county	13	2009	Rehabilitation of Village Polytechnics	2019/2020	21228298
county	42	2009	Compensation for User Fee Foregone	2019/2020	21299489
county	26	2009	Compensation for User Fee Foregone	2019/2020	21304915
county	44	2009	Compensation for User Fee Foregone	2019/2020	21655884
county	9	2009	Rehabilitation of Village Polytechnics	2019/2020	22113298
county	43	2009	Compensation for User Fee Foregone	2019/2020	22185346
county	15	2009	Compensation for User Fee Foregone	2019/2020	22499906
county	47	2009	Rehabilitation of Village Polytechnics	2019/2020	22998298
county	1	2009	Compensation for User Fee Foregone	2019/2020	23385934
county	16	2009	Compensation for User Fee Foregone	2019/2020	24129039
county	30	2009	Rehabilitation of Village Polytechnics	2019/2020	24873298
county	1	2009	Rehabilitation of Village Polytechnics	2019/2020	25473298
county	9	2009	Compensation for User Fee Foregone	2019/2020	25474920
county	23	2009	Compensation for User Fee Foregone	2019/2020	25634941
county	3	2009	Compensation for User Fee Foregone	2019/2020	25969864
county	45	2009	Compensation for User Fee Foregone	2019/2020	26138997
county	35	2009	Rehabilitation of Village Polytechnics	2019/2020	29433298
county	44	2009	Rehabilitation of Village Polytechnics	2019/2020	30033298
county	28	2009	Rehabilitation of Village Polytechnics	2019/2020	30228298
county	12	2009	Compensation for User Fee Foregone	2019/2020	31648428
county	31	2009	Rehabilitation of Village Polytechnics	2019/2020	31908298
county	29	2009	Rehabilitation of Village Polytechnics	2019/2020	32793298
county	39	2009	Compensation for User Fee Foregone	2019/2020	32837307
county	14	2009	Rehabilitation of Village Polytechnics	2019/2020	33603298
county	20	2009	Rehabilitation of Village Polytechnics	2019/2020	34503298
county	22	2009	Compensation for User Fee Foregone	2019/2020	34671542
county	43	2009	Rehabilitation of Village Polytechnics	2019/2020	35163298
county	34	2009	Rehabilitation of Village Polytechnics	2019/2020	35493298
county	37	2009	Compensation for User Fee Foregone	2019/2020	37789290
county	18	2009	Rehabilitation of Village Polytechnics	2019/2020	37983298
county	32	2009	Compensation for User Fee Foregone	2019/2020	38723265
county	6	2009	Rehabilitation of Village Polytechnics	2019/2020	40278298
county	5	2009	Rehabilitation of Village Polytechnics	2019/2020	41298298
county	42	2009	Rehabilitation of Village Polytechnics	2019/2020	41673298
county	36	2009	Rehabilitation of Village Polytechnics	2019/2020	47388298
county	16	2009	Rehabilitation of Village Polytechnics	2019/2020	51093298
county	39	2009	Rehabilitation of Village Polytechnics	2019/2020	53928298
county	22	2009	Rehabilitation of Village Polytechnics	2019/2020	55113298
county	19	2009	Rehabilitation of Village Polytechnics	2019/2020	55143298
county	41	2009	Rehabilitation of Village Polytechnics	2019/2020	55638298
county	4	2009	Rehabilitation of Village Polytechnics	2019/2020	55638298
county	12	2009	Rehabilitation of Village Polytechnics	2019/2020	56568298
county	27	2009	Rehabilitation of Village Polytechnics	2019/2020	57588298
county	3	2009	Rehabilitation of Village Polytechnics	2019/2020	58863298
county	2	2009	Rehabilitation of Village Polytechnics	2019/2020	59793298
county	17	2009	Rehabilitation of Village Polytechnics	2019/2020	60333298
county	26	2009	Rehabilitation of Village Polytechnics	2019/2020	61188298
county	32	2009	Rehabilitation of Village Polytechnics	2019/2020	63063298
county	40	2009	Rehabilitation of Village Polytechnics	2019/2020	63333298
county	46	2009	Rehabilitation of Village Polytechnics	2019/2020	67068298
county	38	2009	Rehabilitation of Village Polytechnics	2019/2020	67743298
county	15	2009	Rehabilitation of Village Polytechnics	2019/2020	72588298
county	5	2009	Road Maintenance Fuel Levy	2019/2020	73669313
county	45	2009	Rehabilitation of Village Polytechnics	2019/2020	74553298
county	37	2009	Rehabilitation of Village Polytechnics	2019/2020	76923298
county	47	2009	Compensation for User Fee Foregone	2019/2020	79423251
county	21	2009	Rehabilitation of Village Polytechnics	2019/2020	83268298
county	28	2009	Road Maintenance Fuel Levy	2019/2020	109605563
county	41	2009	Road Maintenance Fuel Levy	2019/2020	111402375
county	31	2009	Road Maintenance Fuel Levy	2019/2020	118589625
county	11	2009	Road Maintenance Fuel Levy	2019/2020	120386438
county	20	2009	Road Maintenance Fuel Levy	2019/2020	120386438
county	4	2009	Road Maintenance Fuel Levy	2019/2020	120386438
county	11	2009	Supplement for construction of county headquarters	2019/2020	121000000
county	5	2009	Supplement for construction of county headquarters	2019/2020	121000000
county	18	2009	Supplement for construction of county headquarters	2019/2020	121000000
county	13	2009	Supplement for construction of county headquarters	2019/2020	121000000
county	14	2009	Road Maintenance Fuel Levy	2019/2020	122183250
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
county	46	2009	Road Maintenance Fuel Levy	2019/2020	136557750
county	18	2009	Road Maintenance Fuel Levy	2019/2020	138354563
county	24	2009	Road Maintenance Fuel Levy	2019/2020	141948188
county	30	2009	Road Maintenance Fuel Levy	2019/2020	144643406
county	29	2009	Road Maintenance Fuel Levy	2019/2020	151830656
county	35	2009	Road Maintenance Fuel Levy	2019/2020	152729063
county	19	2009	Road Maintenance Fuel Levy	2019/2020	153627469
county	36	2009	Road Maintenance Fuel Levy	2019/2020	156322688
county	26	2009	Road Maintenance Fuel Levy	2019/2020	163509938
county	6	2009	Road Maintenance Fuel Levy	2019/2020	164408344
county	13	2009	Road Maintenance Fuel Levy	2019/2020	166205156
county	40	2009	Road Maintenance Fuel Levy	2019/2020	170697188
county	21	2009	Road Maintenance Fuel Levy	2019/2020	178782844
county	27	2009	Road Maintenance Fuel Levy	2019/2020	179681250
county	34	2009	Road Maintenance Fuel Levy	2019/2020	182376469
county	43	2009	Road Maintenance Fuel Levy	2019/2020	191360531
county	10	2009	Road Maintenance Fuel Levy	2019/2020	192258938
county	44	2009	Road Maintenance Fuel Levy	2019/2020	192258938
county	42	2009	Road Maintenance Fuel Levy	2019/2020	194055750
county	7	2009	Road Maintenance Fuel Levy	2019/2020	199446188
county	1	2009	Road Maintenance Fuel Levy	2019/2020	200344594
county	17	2009	Road Maintenance Fuel Levy	2019/2020	210227063
county	16	2009	Road Maintenance Fuel Levy	2019/2020	220109531
county	45	2009	Road Maintenance Fuel Levy	2019/2020	221007938
county	2	2009	Road Maintenance Fuel Levy	2019/2020	221007938
county	12	2009	Road Maintenance Fuel Levy	2019/2020	228195188
county	33	2009	Road Maintenance Fuel Levy	2019/2020	228195188
county	8	2009	Road Maintenance Fuel Levy	2019/2020	242569688
county	15	2009	Road Maintenance Fuel Levy	2019/2020	250655344
county	39	2009	Road Maintenance Fuel Levy	2019/2020	252452156
county	22	2009	Road Maintenance Fuel Levy	2019/2020	267725063
county	9	2009	Road Maintenance Fuel Levy	2019/2020	290185219
county	37	2009	Road Maintenance Fuel Levy	2019/2020	295575656
county	3	2009	Road Maintenance Fuel Levy	2019/2020	296474063
county	32	2009	Road Maintenance Fuel Levy	2019/2020	297372469
county	23	2009	Road Maintenance Fuel Levy	2019/2020	299169281
county	14	2009	Grants to Level 5 Hospitals	2019/2020	301040462
county	7	2009	Grants to Level 5 Hospitals	2019/2020	344739884
county	42	2009	Grants to Level 5 Hospitals	2019/2020	369017341
county	12	2009	Grants to Level 5 Hospitals	2019/2020	373872832
county	32	2009	Grants to Level 5 Hospitals	2019/2020	373872832
county	16	2009	Grants to Level 5 Hospitals	2019/2020	383583815
county	1	2009	Grants to Level 5 Hospitals	2019/2020	388439306
county	19	2009	Grants to Level 5 Hospitals	2019/2020	407861272
county	45	2009	Grants to Level 5 Hospitals	2019/2020	417572254
county	37	2009	Grants to Level 5 Hospitals	2019/2020	427283237
county	47	2009	Road Maintenance Fuel Levy	2019/2020	451898344
country	KE	2009	Supplement for construction of county headquarters	2019/2020	485152184
county	22	2009	Grants to Level 5 Hospitals	2019/2020	538716763
country	KE	2009	Compensation for User Fee Foregone	2019/2020	900000000
country	KE	2009	Rehabilitation of Village Polytechnics	2019/2020	2000000000
country	KE	2009	Grants to Level 5 Hospitals	2019/2020	4326000000
country	KE	2009	Leasing of Medical Equipment	2019/2020	6200000000
country	KE	2009	Road Maintenance Fuel Levy	2019/2020	8984062500
\.


--
-- Name: breakdown_condition_fund_ng2019 pk_breakdown_condition_fund_ng2019; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_ng2019
    ADD CONSTRAINT pk_breakdown_condition_fund_ng2019 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

