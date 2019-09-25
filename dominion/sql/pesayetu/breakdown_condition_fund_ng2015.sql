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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_ng2015 DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_ng2015;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_ng2015;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_ng2015; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_ng2015 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_ng2015; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_ng2015 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
county	46	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	945233
county	5	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	2366871
county	11	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	3340178
county	25	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	5220197
county	4	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	5596140
county	6	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	6635345
county	10	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	6787069
county	13	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	8515829
county	28	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	8624640
county	31	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	9305967
county	33	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	9834915
county	40	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	11377011
county	24	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	11950786
county	14	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	12032884
county	20	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	12308920
county	38	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	12928219
county	30	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	12950107
county	18	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	13898986
county	44	2009	Road Maintenance Fuel Levy	2015/2016	14147432
county	25	2009	Grant for Free Maternal Healthcare	2015/2016	14183400
county	7	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	14523507
county	2	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	15149869
county	8	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	15429821
county	34	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	16021218
county	19	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	16166813
county	5	2009	Grant for Free Maternal Healthcare	2015/2016	16762200
county	36	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	16880750
county	29	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	17551588
county	35	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	17676855
county	26	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	19085197
county	10	2009	Grant for Free Maternal Healthcare	2015/2016	19341000
county	4	2009	Grant for Free Maternal Healthcare	2015/2016	19341000
county	41	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	19634071
county	13	2009	Road Maintenance Fuel Levy	2015/2016	19857530
county	23	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	19939321
county	46	2009	Grant for Free Maternal Healthcare	2015/2016	19942800
county	17	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	20618293
county	27	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	20843281
county	44	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	21379200
county	1	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	21896682
county	21	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	21971530
county	43	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	22466004
county	42	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	22585235
county	11	2009	Grant for Free Maternal Healthcare	2015/2016	23209200
county	23	2009	Grant for Free Maternal Healthcare	2015/2016	23209200
county	15	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	23606211
county	9	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	23910336
county	16	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	25601954
county	3	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	25867884
county	5	2009	Road Maintenance Fuel Levy	2015/2016	26065747
county	45	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	26859653
county	32	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	31373449
county	12	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	31615328
county	13	2009	Grant for Free Maternal Healthcare	2015/2016	35243600
county	22	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	37838646
county	39	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	38017014
county	37	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	38709716
county	11	2009	Road Maintenance Fuel Levy	2015/2016	38828547
county	24	2009	Grant for Free Maternal Healthcare	2015/2016	41260800
county	28	2009	Road Maintenance Fuel Levy	2015/2016	41545473
county	6	2009	Road Maintenance Fuel Levy	2015/2016	42042522
county	6	2009	Grant for Free Maternal Healthcare	2015/2016	42120400
county	28	2009	Grant for Free Maternal Healthcare	2015/2016	43409800
county	31	2009	Road Maintenance Fuel Levy	2015/2016	43820742
county	20	2009	Road Maintenance Fuel Levy	2015/2016	44947130
county	25	2009	Road Maintenance Fuel Levy	2015/2016	45125793
county	9	2009	Grant for Free Maternal Healthcare	2015/2016	46418000
county	14	2009	Road Maintenance Fuel Levy	2015/2016	48754599
county	38	2009	Road Maintenance Fuel Levy	2015/2016	49119806
county	34	2009	Grant for Free Maternal Healthcare	2015/2016	49856800
county	7	2009	Grant for Free Maternal Healthcare	2015/2016	50286600
county	8	2009	Grant for Free Maternal Healthcare	2015/2016	50286600
county	4	2009	Road Maintenance Fuel Levy	2015/2016	50617289
county	20	2009	Grant for Free Maternal Healthcare	2015/2016	50716400
county	18	2009	Grant for Free Maternal Healthcare	2015/2016	50716400
county	46	2009	Road Maintenance Fuel Levy	2015/2016	52776448
county	18	2009	Road Maintenance Fuel Levy	2015/2016	54714122
county	24	2009	Road Maintenance Fuel Levy	2015/2016	54798238
county	34	2009	Road Maintenance Fuel Levy	2015/2016	56055021
county	33	2009	Grant for Free Maternal Healthcare	2015/2016	56303800
county	30	2009	Road Maintenance Fuel Levy	2015/2016	56410082
county	19	2009	Road Maintenance Fuel Levy	2015/2016	56519885
county	35	2009	Road Maintenance Fuel Levy	2015/2016	57229294
county	14	2009	Grant for Free Maternal Healthcare	2015/2016	57593200
county	36	2009	Grant for Free Maternal Healthcare	2015/2016	58452800
county	36	2009	Road Maintenance Fuel Levy	2015/2016	59793197
county	29	2009	Road Maintenance Fuel Levy	2015/2016	60405657
county	33	2009	Road Maintenance Fuel Levy	2015/2016	61113929
county	41	2009	Road Maintenance Fuel Levy	2015/2016	63456905
county	31	2009	Grant for Free Maternal Healthcare	2015/2016	63610000
county	15	2009	Grant for Free Maternal Healthcare	2015/2016	63610400
county	26	2009	Road Maintenance Fuel Levy	2015/2016	64782039
county	2	2009	Road Maintenance Fuel Levy	2015/2016	65113404
county	30	2009	Grant for Free Maternal Healthcare	2015/2016	65759400
county	27	2009	Road Maintenance Fuel Levy	2015/2016	65911431
county	10	2009	Road Maintenance Fuel Levy	2015/2016	65923423
county	1	2009	Road Maintenance Fuel Levy	2015/2016	66030539
county	29	2009	Grant for Free Maternal Healthcare	2015/2016	67048800
county	26	2009	Grant for Free Maternal Healthcare	2015/2016	67908400
county	38	2009	Grant for Free Maternal Healthcare	2015/2016	67908400
county	21	2009	Road Maintenance Fuel Levy	2015/2016	68038977
county	40	2009	Road Maintenance Fuel Levy	2015/2016	69109240
county	43	2009	Road Maintenance Fuel Levy	2015/2016	71582731
county	42	2009	Road Maintenance Fuel Levy	2015/2016	72170965
county	47	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	73155271
county	7	2009	Road Maintenance Fuel Levy	2015/2016	73319649
county	17	2009	Road Maintenance Fuel Levy	2015/2016	75834678
county	17	2009	Grant for Free Maternal Healthcare	2015/2016	80802100
county	21	2009	Grant for Free Maternal Healthcare	2015/2016	80802400
county	19	2009	Grant for Free Maternal Healthcare	2015/2016	82091800
county	12	2009	Road Maintenance Fuel Levy	2015/2016	82490349
county	16	2009	Road Maintenance Fuel Levy	2015/2016	85984407
county	45	2009	Road Maintenance Fuel Levy	2015/2016	90112658
county	8	2009	Road Maintenance Fuel Levy	2015/2016	91879854
county	15	2009	Road Maintenance Fuel Levy	2015/2016	92318534
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
county	3	2009	Road Maintenance Fuel Levy	2015/2016	94528196
county	22	2009	Road Maintenance Fuel Levy	2015/2016	94811800
county	30	2009	Leasing of Medical Equipment	2015/2016	95744681
county	36	2009	Leasing of Medical Equipment	2015/2016	95744681
county	39	2009	Leasing of Medical Equipment	2015/2016	95744681
county	40	2009	Leasing of Medical Equipment	2015/2016	95744681
county	28	2009	Leasing of Medical Equipment	2015/2016	95744681
county	14	2009	Leasing of Medical Equipment	2015/2016	95744681
county	7	2009	Leasing of Medical Equipment	2015/2016	95744681
county	43	2009	Leasing of Medical Equipment	2015/2016	95744681
county	11	2009	Leasing of Medical Equipment	2015/2016	95744681
county	34	2009	Leasing of Medical Equipment	2015/2016	95744681
county	37	2009	Leasing of Medical Equipment	2015/2016	95744681
county	35	2009	Leasing of Medical Equipment	2015/2016	95744681
county	22	2009	Leasing of Medical Equipment	2015/2016	95744681
county	3	2009	Leasing of Medical Equipment	2015/2016	95744681
county	20	2009	Leasing of Medical Equipment	2015/2016	95744681
county	45	2009	Leasing of Medical Equipment	2015/2016	95744681
county	42	2009	Leasing of Medical Equipment	2015/2016	95744681
county	15	2009	Leasing of Medical Equipment	2015/2016	95744681
county	2	2009	Leasing of Medical Equipment	2015/2016	95744681
county	31	2009	Leasing of Medical Equipment	2015/2016	95744681
county	5	2009	Leasing of Medical Equipment	2015/2016	95744681
county	16	2009	Leasing of Medical Equipment	2015/2016	95744681
county	17	2009	Leasing of Medical Equipment	2015/2016	95744681
county	9	2009	Leasing of Medical Equipment	2015/2016	95744681
county	10	2009	Leasing of Medical Equipment	2015/2016	95744681
county	12	2009	Leasing of Medical Equipment	2015/2016	95744681
county	44	2009	Leasing of Medical Equipment	2015/2016	95744681
county	1	2009	Leasing of Medical Equipment	2015/2016	95744681
county	21	2009	Leasing of Medical Equipment	2015/2016	95744681
county	47	2009	Leasing of Medical Equipment	2015/2016	95744681
county	32	2009	Leasing of Medical Equipment	2015/2016	95744681
county	29	2009	Leasing of Medical Equipment	2015/2016	95744681
county	33	2009	Leasing of Medical Equipment	2015/2016	95744681
county	46	2009	Leasing of Medical Equipment	2015/2016	95744681
county	18	2009	Leasing of Medical Equipment	2015/2016	95744681
county	19	2009	Leasing of Medical Equipment	2015/2016	95744681
county	25	2009	Leasing of Medical Equipment	2015/2016	95744681
county	41	2009	Leasing of Medical Equipment	2015/2016	95744681
county	6	2009	Leasing of Medical Equipment	2015/2016	95744681
county	4	2009	Leasing of Medical Equipment	2015/2016	95744681
county	13	2009	Leasing of Medical Equipment	2015/2016	95744681
county	26	2009	Leasing of Medical Equipment	2015/2016	95744681
county	23	2009	Leasing of Medical Equipment	2015/2016	95744681
county	27	2009	Leasing of Medical Equipment	2015/2016	95744681
county	38	2009	Leasing of Medical Equipment	2015/2016	95744681
county	8	2009	Leasing of Medical Equipment	2015/2016	95744681
county	24	2009	Leasing of Medical Equipment	2015/2016	95744681
county	16	2009	Grant for Free Maternal Healthcare	2015/2016	97134800
county	39	2009	Road Maintenance Fuel Levy	2015/2016	97507257
county	35	2009	Grant for Free Maternal Healthcare	2015/2016	98854000
county	40	2009	Grant for Free Maternal Healthcare	2015/2016	99713600
county	32	2009	Road Maintenance Fuel Levy	2015/2016	103104393
county	2	2009	Grant for Free Maternal Healthcare	2015/2016	104441400
county	37	2009	Road Maintenance Fuel Levy	2015/2016	113164138
county	9	2009	Road Maintenance Fuel Levy	2015/2016	113767220
county	3	2009	Grant for Free Maternal Healthcare	2015/2016	117077600
county	27	2009	Grant for Free Maternal Healthcare	2015/2016	117335400
county	42	2009	Grant for Free Maternal Healthcare	2015/2016	123782400
county	12	2009	Grant for Free Maternal Healthcare	2015/2016	123782400
county	41	2009	Grant for Free Maternal Healthcare	2015/2016	128080400
county	43	2009	Grant for Free Maternal Healthcare	2015/2016	131089000
county	23	2009	Road Maintenance Fuel Levy	2015/2016	133118571
county	1	2009	Grant for Free Maternal Healthcare	2015/2016	136246600
county	44	2009	Grant for Free Maternal Healthcare	2015/2016	165043200
county	47	2009	Road Maintenance Fuel Levy	2015/2016	165100152
county	39	2009	Grant for Free Maternal Healthcare	2015/2016	170630600
county	14	2009	Grants to Level5 Hospitals	2015/2016	192882857
county	45	2009	Grant for Free Maternal Healthcare	2015/2016	194699400
county	37	2009	Grant for Free Maternal Healthcare	2015/2016	214900000
county	32	2009	Grant for Free Maternal Healthcare	2015/2016	219627800
county	22	2009	Grant for Free Maternal Healthcare	2015/2016	224785400
county	12	2009	Grants to Level5 Hospitals	2015/2016	244318286
county	47	2009	Grant for Free Maternal Healthcare	2015/2016	302579200
county	16	2009	Grants to Level5 Hospitals	2015/2016	304326286
county	22	2009	Grants to Level5 Hospitals	2015/2016	330044000
county	45	2009	Grants to Level5 Hospitals	2015/2016	338616571
county	42	2009	Grants to Level5 Hospitals	2015/2016	338616571
county	37	2009	Grants to Level5 Hospitals	2015/2016	342902857
county	7	2009	Grants to Level5 Hospitals	2015/2016	360048000
county	19	2009	Grants to Level5 Hospitals	2015/2016	368620571
county	32	2009	Grants to Level5 Hospitals	2015/2016	377193143
county	1	2009	Grants to Level5 Hospitals	2015/2016	402910857
country	KE	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	900000000
country	KE	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2015/2016	900000000
country	KE	2009	Road Maintenance Fuel Levy	2015/2016	3300000000
country	KE	2009	Road Maintenance Fuel Levy	2015/2016	3300000000
country	KE	2009	Grants to Level5 Hospitals	2015/2016	3600480000
country	KE	2009	Grants to Level5 Hospitals	2015/2016	3600480000
country	KE	2009	Grant for Free Maternal Healthcare	2015/2016	4298000000
country	KE	2009	Grant for Free Maternal Healthcare	2015/2016	4298000000
country	KE	2009	County Emergency Fund	2015/2016	4400000000
country	KE	2009	County Emergency Fund	2015/2016	4400000000
country	KE	2009	Leasing of Medical Equipment	2015/2016	4500000000
country	KE	2009	Leasing of Medical Equipment	2015/2016	4500000000
\.


--
-- Name: breakdown_condition_fund_ng2015 pk_breakdown_condition_fund_ng2015; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_ng2015
    ADD CONSTRAINT pk_breakdown_condition_fund_ng2015 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

