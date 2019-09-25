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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_ng2017 DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_ng2017;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_ng2017;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_ng2017; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_ng2017 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_ng2017; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_ng2017 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
county	5	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	2451034
county	11	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	3472461
county	25	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	5235578
county	6	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	5296305
county	4	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	5682537
county	10	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	6643714
county	13	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	8218119
county	28	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	8788919
county	31	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	9968208
county	14	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	10724225
county	20	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	11282570
county	24	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	12128484
county	38	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	12657201
county	18	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	12735922
county	7	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	12964636
county	46	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	13175221
county	30	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	13191000
county	19	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	13701379
county	2	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	15209593
county	8	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	15784997
county	36	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	16713356
county	40	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	16934085
county	34	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	16955365
county	35	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	18048789
county	29	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	18086363
county	41	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	18194808
county	17	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	19435760
county	21	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	20138691
county	33	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	20595297
county	27	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	20813065
county	42	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	21299489
county	26	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	21304915
county	44	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	21655884
county	43	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	22185346
county	15	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	22499906
county	1	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	23385934
county	16	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	24129039
county	9	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	25474920
county	23	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	25634941
county	3	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	25969864
county	45	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	26138997
county	12	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	31648428
county	39	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	32837307
county	22	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	34671542
county	37	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	37789290
county	32	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	38723265
county	47	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	79423251
county	11	2009	Supplement for construction of county headquarters	2017/2018	121000000
county	5	2009	Supplement for construction of county headquarters	2017/2018	121000000
county	18	2009	Supplement for construction of county headquarters	2017/2018	121000000
county	4	2009	Supplement for construction of county headquarters	2017/2018	121000000
county	13	2009	Supplement for construction of county headquarters	2017/2018	121000000
county	14	2009	Grants to Level5 Hospitals	2017/2018	301040462
county	12	2009	Grants to Level5 Hospitals	2017/2018	313872832
county	7	2009	Grants to Level5 Hospitals	2017/2018	344739884
county	42	2009	Grants to Level5 Hospitals	2017/2018	369017341
county	32	2009	Grants to Level5 Hospitals	2017/2018	373872832
county	16	2009	Grants to Level5 Hospitals	2017/2018	383583815
county	1	2009	Grants to Level5 Hospitals	2017/2018	388439306
county	19	2009	Grants to Level5 Hospitals	2017/2018	407861272
county	35	2009	Grants to Level5 Hospitals	2017/2018	412716763
county	45	2009	Grants to Level5 Hospitals	2017/2018	417572254
county	37	2009	Grants to Level5 Hospitals	2017/2018	427283237
country	KE	2009	Supplement for construction of county headquarters	2017/2018	605000000
country	KE	2009	Grant for Compensation for User Fee Foregone (County Health Fund)	2017/2018	900000000
country	KE	2009	Grants to Level5 Hospitals	2017/2018	4200000000
\.


--
-- Name: breakdown_condition_fund_ng2017 pk_breakdown_condition_fund_ng2017; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_ng2017
    ADD CONSTRAINT pk_breakdown_condition_fund_ng2017 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

