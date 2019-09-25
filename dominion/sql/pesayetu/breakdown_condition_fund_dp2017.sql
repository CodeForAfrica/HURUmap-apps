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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_dp2017 DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_dp2017;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_dp2017;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_dp2017; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_dp2017 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_dp2017; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_dp2017 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
county	1	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	5007422
county	5	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	5921224
county	11	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	8824955
county	13	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	9058820
county	28	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	9442450
county	6	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	9555425
county	31	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	9959579
county	20	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	10215585
county	25	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	10256191
county	14	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11080940
county	38	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11177587
county	4	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	11224457
county	3	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11484371
county	4	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11504299
county	5	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	11785000
county	44	2009	Other Loans & Grants	2017/2018	11991777
county	46	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11995032
county	39	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12161151
county	18	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12435427
county	24	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12454549
county	11	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	12607500
county	30	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12820885
county	19	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12845841
county	35	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	13007075
county	36	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	13589799
county	29	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	13728991
county	41	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	14422487
county	26	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	14723664
county	2	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	14798976
county	13	2009	Other Loans & Grants	2017/2018	14982351
county	27	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	14987172
county	33	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	15267291
county	21	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	15463900
county	20	2009	Other Loans & Grants	2017/2018	15618572
county	40	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	15707150
county	37	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	15719948
county	14	2009	Other Loans & Grants	2017/2018	16091521
county	5	2009	Other Loans & Grants	2017/2018	16251730
county	43	2009	Other Loans & Grants	2017/2018	16266980
county	43	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	16269325
county	42	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	16312993
county	42	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	16403010
county	7	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	16664092
county	44	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	16852230
county	19	2009	Other Loans & Grants	2017/2018	17065212
county	17	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	17235701
county	26	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	18322590
county	12	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	18748409
county	13	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	18767500
county	28	2009	Other Loans & Grants	2017/2018	18956691
county	1	2009	Other Loans & Grants	2017/2018	18990114
county	46	2009	Other Loans & Grants	2017/2018	19530441
county	16	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	19542538
county	6	2009	Other Loans & Grants	2017/2018	20118951
county	45	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	20480801
county	8	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	20882455
county	15	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	20982159
county	22	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	21548821
county	22	2009	Other Loans & Grants	2017/2018	21851856
county	14	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
county	22	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
county	20	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
county	21	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
county	18	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
county	19	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
county	13	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
county	32	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	23133561
county	1	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	23619271
county	23	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	24195000
county	4	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	24725000
county	31	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	25255000
county	11	2009	Other Loans & Grants	2017/2018	25550510
county	34	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	25719948
county	18	2009	Other Loans & Grants	2017/2018	25839485
county	9	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	25857016
county	35	2009	Other Loans & Grants	2017/2018	26375133
county	31	2009	Other Loans & Grants	2017/2018	26439559
county	9	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	28305000
county	46	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	28452981
county	5	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	28585490
county	12	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	29524087
county	42	2009	Other Loans & Grants	2017/2018	30073021
county	23	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	30255192
county	28	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	30279354
county	45	2009	Other Loans & Grants	2017/2018	31439291
county	5	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	31560240
county	30	2009	Other Loans & Grants	2017/2018	31707536
county	6	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	31797500
county	14	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	31912879
county	6	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	32699643
county	34	2009	Other Loans & Grants	2017/2018	33670568
county	27	2009	Other Loans & Grants	2017/2018	33834647
county	36	2009	Other Loans & Grants	2017/2018	34476132
county	40	2009	Other Loans & Grants	2017/2018	35708101
county	13	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	35989344
county	25	2009	Other Loans & Grants	2017/2018	35998283
county	28	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	36005074
county	11	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	36113321
county	6	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	36728875
county	25	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	36731596
county	10	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	36800000
county	2	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	37075000
county	47	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	37420064
county	47	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	37523967
county	34	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	37645000
county	29	2009	Other Loans & Grants	2017/2018	37935161
county	20	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	38364051
county	31	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	38403461
county	7	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	38645000
county	4	2009	Other Loans & Grants	2017/2018	38702117
county	2	2009	Other Loans & Grants	2017/2018	38819201
county	38	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	38854627
county	41	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	39021230
county	46	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	39582751
county	24	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	40081255
county	18	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	40222990
county	16	2009	Other Loans & Grants	2017/2018	40561481
county	44	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	40625000
county	30	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	40839509
county	19	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	40850289
county	4	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	41095762
county	35	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	41594910
county	29	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	41606801
county	33	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	41780000
county	36	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	41921669
county	17	2009	Other Loans & Grants	2017/2018	42068481
county	35	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	42286732
county	21	2009	Other Loans & Grants	2017/2018	42505145
county	32	2009	Other Loans & Grants	2017/2018	42587323
county	34	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	42829641
county	34	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	42954113
county	41	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	43031378
county	26	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	43386482
county	27	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	43650314
county	26	2009	Other Loans & Grants	2017/2018	43699195
county	40	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	44261335
county	7	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	44599121
county	24	2009	Other Loans & Grants	2017/2018	44669544
county	8	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	45040000
county	21	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	45056255
county	10	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	45148545
county	11	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	45533001
county	38	2009	Other Loans & Grants	2017/2018	45759161
county	33	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	45796321
county	31	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	46115937
county	43	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	46229189
county	44	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	46330991
county	42	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	46361941
county	33	2009	Other Loans & Grants	2017/2018	46406308
county	2	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	47394010
county	17	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	47396651
county	28	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	47990000
county	1	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	49809062
county	8	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	49871995
county	16	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	49893161
county	39	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	14	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	43	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	22	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	3	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	20	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	45	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	15	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	2	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	17	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	12	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	44	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	21	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	32	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	29	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	33	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	46	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	25	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	26	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	23	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	38	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	45	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	50373481
county	12	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	50375116
county	38	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	50845284
county	7	2009	Other Loans & Grants	2017/2018	50874733
county	45	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	50984665
county	25	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	53125000
county	15	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	53665060
county	30	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	54243300
county	39	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	54474504
county	10	2009	Other Loans & Grants	2017/2018	54542181
county	9	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	54795930
county	32	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	56299041
county	27	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	56301747
county	3	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	57107014
county	15	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	58210000
county	15	2009	Other Loans & Grants	2017/2018	58554011
county	43	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	59001481
county	37	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	59311725
county	36	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	59403836
county	40	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	59552830
county	23	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	61120888
county	37	2009	Other Loans & Grants	2017/2018	61145971
county	8	2009	Other Loans & Grants	2017/2018	61485350
county	10	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	61800000
county	39	2009	Other Loans & Grants	2017/2018	62188791
county	41	2009	Other Loans & Grants	2017/2018	63669291
county	9	2009	Other Loans & Grants	2017/2018	64221359
county	32	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	65337491
county	16	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	65588781
county	30	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
county	45	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
county	42	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
county	2	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
county	31	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
county	17	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
county	44	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
county	18	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
county	25	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
county	6	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
county	4	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
county	27	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
county	8	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
county	24	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	66000000
county	23	2009	Other Loans & Grants	2017/2018	66640350
county	25	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	66786111
county	29	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	66845279
county	2	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	67495490
county	24	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	67985000
county	17	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	71695461
county	47	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	71910897
county	44	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	71990710
county	3	2009	Other Loans & Grants	2017/2018	74392884
county	24	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	83202997
county	33	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	83620453
county	7	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	91760861
county	3	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	93668250
county	30	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	94210000
county	3	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	96840000
county	10	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	101892430
county	15	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	103430429
county	39	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
county	37	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
county	9	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
county	23	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
county	8	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
county	10	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	149513995
county	22	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	561591351
country	KE	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	762979751
country	KE	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	873407500
country	KE	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	985800000
country	KE	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	1050000000
county	47	2009	Other Loans & Grants	2017/2018	2137641302
country	KE	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	2148000009
country	KE	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	2750000000
county	12	2009	Other Loans & Grants	2017/2018	3943731665
country	KE	2009	Other Loans & Grants	2017/2018	7837638872
\.


--
-- Name: breakdown_condition_fund_dp2017 pk_breakdown_condition_fund_dp2017; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_dp2017
    ADD CONSTRAINT pk_breakdown_condition_fund_dp2017 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

