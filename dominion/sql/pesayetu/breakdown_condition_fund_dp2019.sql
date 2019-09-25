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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_dp2019 DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_dp2019;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_dp2019;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_dp2019; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_dp2019 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_dp2019; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_dp2019 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
county	30	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	36	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	39	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	40	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	28	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	14	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	7	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	43	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	11	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	34	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	37	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	35	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	22	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	3	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	20	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	45	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	42	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	15	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	2	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	31	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	5	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	16	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	17	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	9	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	10	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	12	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	44	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	1	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	21	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	32	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	29	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	33	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	46	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	18	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	19	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	25	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	41	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	6	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	4	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	13	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	26	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	23	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	27	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	38	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	8	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	24	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	8800000
county	5	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	10593750
county	13	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	10875000
county	28	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	11250000
county	6	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	12093750
county	20	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	12281250
county	31	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	12281250
county	25	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	13218750
county	14	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	13312500
county	38	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	13312500
county	46	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	14250000
county	5	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	14265997
county	20	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	14513506
county	18	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	14718750
county	24	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	14718750
county	19	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	15000000
county	30	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	15187500
county	19	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15187858
county	14	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15418468
county	4	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	15431865
county	13	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15518089
county	38	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15724263
county	18	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15987360
county	29	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	16031250
county	27	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16331289
county	21	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16369053
county	1	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16374963
county	35	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16415491
county	29	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16507185
county	41	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16561840
county	11	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	16572474
county	4	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	16593750
county	31	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16625223
county	28	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16632723
county	26	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16768813
county	26	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	16781250
county	46	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16937554
county	42	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17029227
county	6	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17060386
county	35	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	17062500
county	34	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17285908
county	22	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17404219
county	36	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17416549
county	12	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17575209
county	30	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17586468
county	36	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	17718750
county	33	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17793235
county	44	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17805472
county	40	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	17812500
county	43	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17858004
county	16	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17869663
county	40	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18257455
county	32	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18507501
county	45	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18527653
county	11	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18540513
county	24	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18586308
county	21	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	18656250
county	39	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18814092
county	25	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18994320
county	33	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	19031250
county	17	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	19051135
county	2	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	19348633
county	3	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	19723695
county	37	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	19811716
county	43	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	19968750
county	44	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	20062500
county	18	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	20223224
county	4	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	20358867
county	15	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	20392968
county	7	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	20520018
county	42	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	20625000
county	7	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	20718750
county	30	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	21118210
county	47	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	21183840
county	17	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	21281250
county	31	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	21345341
county	24	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	21495096
county	10	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	22466188
county	2	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	22500000
county	9	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	22822072
county	45	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	22968750
county	8	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	23548494
county	10	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	23851133
county	12	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	23906250
county	8	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	24481325
county	1	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	24562500
county	16	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	24843750
county	34	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	24844848
county	8	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	25312500
county	23	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	25346766
county	41	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	25932368
county	27	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	25961694
county	15	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	26062500
county	39	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	26718750
county	22	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	27937500
county	10	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	29133697
county	30	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	36	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	39	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	40	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	28	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	14	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	7	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	43	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	11	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	34	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	37	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	35	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	22	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	3	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	20	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	45	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	42	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	15	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	2	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	31	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	5	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	16	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	17	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	9	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	10	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	12	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	44	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	1	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	21	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	47	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	32	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	29	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	33	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	46	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	18	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	19	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	25	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	41	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	6	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	4	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	13	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	26	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	23	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	27	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	38	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	8	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	24	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	30000000
county	9	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	30281250
county	37	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	30843750
county	23	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	32156250
county	25	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	32159348
county	3	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	32343750
county	36	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
county	28	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
county	20	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
county	42	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
county	31	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
county	5	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
county	12	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
county	46	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
county	18	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
county	25	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
county	8	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
county	24	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	35000000
county	42	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	36068231
county	26	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	36686728
county	1	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	37921806
county	33	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	38282966
county	30	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	39175834
county	27	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	40028573
county	13	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	40049752
county	32	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	41107213
county	41	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	42327625
county	6	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	42394162
county	44	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	43668076
county	2	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	44360883
county	14	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	44569827
county	45	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	44696901
county	39	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
county	40	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
county	28	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
county	37	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
county	42	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
county	29	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
county	41	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
county	26	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
county	27	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
county	38	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
county	24	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	45000000
county	45	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	45697438
county	29	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	46342186
county	47	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	47156250
county	7	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	47421765
county	2	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	31	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	5	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	10	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	25	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	41	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	6	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	4	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	13	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	17	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	50180747
county	19	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	50181184
county	27	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	50223504
county	4	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	50849353
county	30	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	52360500
county	43	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	53812849
county	38	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	56065640
county	6	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	56942903
county	10	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	57240000
county	32	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	58346857
county	37	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	61794598
county	21	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	62437600
county	11	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	64373437
county	20	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	71302200
county	35	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	71544247
county	24	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	73392300
county	33	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	74905300
county	44	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	76811165
county	21	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	76894209
county	22	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	80079440
county	40	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	81106071
county	23	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	84141376
county	17	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	89179782
county	28	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	89802100
county	11	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	93968100
county	23	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	95023200
county	47	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	96359510
county	40	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	101071500
county	46	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	114705300
county	12	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	116890200
county	40	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	116993505
county	37	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	117000000
county	6	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	117024000
county	18	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	117268690
county	24	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	117291410
county	28	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	118422545
county	42	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	118482110
county	43	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	119361500
county	14	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	119892100
county	9	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	125791038
county	3	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	129114721
county	16	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	129858778
county	15	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	129886088
county	31	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	131027150
county	18	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	135543400
county	34	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	135621176
county	17	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	136261600
county	30	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	141097380
county	41	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	142126290
county	39	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	143042792
county	34	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	143531050
county	10	2009	German Development Bank (KfW) Drought Resilience Programme in Northern Kenya (DRPNK)	2019/2020	150000000
county	16	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	150156390
county	13	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	152374180
county	8	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	153172330
county	10	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	156114090
county	7	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	157422850
county	5	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	157507010
county	2	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	157706559
county	45	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	164053800
county	8	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	165643500
county	36	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	168334800
county	11	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	170794330
county	9	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	175819500
county	29	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	177231700
county	36	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	180000000
county	19	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	186033960
county	35	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	199459400
county	23	2009	German Development Bank (KfW) Drought Resilience Programme in Northern Kenya (DRPNK)	2019/2020	200000000
county	9	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	200000000
county	4	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	200000000
county	27	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	200000000
county	15	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	232374200
county	7	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	233506000
county	19	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	236639100
county	8	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	250000000
county	38	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	250950700
county	35	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	256299000
county	34	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	265950300
county	26	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	299106900
county	12	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	299971780
county	2	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	300000000
county	39	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	300977100
county	21	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	307623650
county	3	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	330534500
county	22	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	331195210
county	29	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	343929300
country	KE	2009	German Development Bank (KfW) Drought Resilience Programme in Northern Kenya (DRPNK)	2019/2020	350000000
county	39	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
county	14	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
county	43	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
county	3	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
county	20	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
county	45	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
county	15	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
county	2	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
county	17	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
county	44	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
county	32	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
county	33	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
county	46	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
county	25	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
county	26	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
county	23	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
county	38	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	350000000
county	37	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	389118800
country	KE	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	396000000
county	7	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	400000000
county	6	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	400000000
country	KE	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	492698583
country	KE	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	495000000
county	44	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	518367800
county	3	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	600000000
county	27	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	630147800
county	42	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	773573300
country	KE	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	849626237
country	KE	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	986583544
county	16	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	1018320500
county	32	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	1084843300
country	KE	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	1410000000
county	1	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	1550000000
county	22	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	1885993000
country	KE	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	2994247736
country	KE	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	3500000000
country	KE	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	3643298670
country	KE	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 2 grant	2019/2020	4890000000
country	KE	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	7232719940
country	KE	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	11464702500
\.


--
-- Name: breakdown_condition_fund_dp2019 pk_breakdown_condition_fund_dp2019; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_dp2019
    ADD CONSTRAINT pk_breakdown_condition_fund_dp2019 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

