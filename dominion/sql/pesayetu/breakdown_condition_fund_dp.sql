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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_dp DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_dp;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_dp;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_dp; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_dp (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_dp; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_dp (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
county	33	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435
county	1	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	3150000
county	1	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	3150000
county	5	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	3820000
county	5	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	3820000
county	11	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	3985000
county	11	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	3985000
county	4	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	4645000
county	4	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	4645000
county	1	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	5007422
county	25	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	5495000
county	25	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	5495000
county	26	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	5665000
county	26	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	5665000
county	26	2009	Total Conditional Additional Allocation	2016/2017	5665000
county	31	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	5765000
county	31	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	5765000
county	5	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	5921224
county	23	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6035000
county	23	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6035000
county	24	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6090000
county	24	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6090000
county	13	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6165000
county	13	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6165000
county	20	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6385000
county	20	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6385000
county	20	2009	Total Conditional Additional Allocation	2016/2017	6385000
county	40	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6495000
county	40	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6495000
county	40	2009	Total Conditional Additional Allocation	2016/2017	6495000
county	2	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6810000
county	2	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6810000
county	14	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6875000
county	14	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	6875000
county	14	2009	Total Conditional Additional Allocation	2016/2017	6875000
county	38	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7085000
county	38	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7085000
county	38	2009	Total Conditional Additional Allocation	2016/2017	7085000
county	9	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7310000
county	9	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7310000
county	39	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7375000
county	39	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7375000
county	39	2009	Total Conditional Additional Allocation	2016/2017	7375000
county	6	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7405000
county	6	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7405000
county	10	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7675000
county	10	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7675000
county	3	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7765000
county	3	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	7765000
county	42	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8290000
county	42	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8290000
county	5	2009	Rehabilitation of Village Polytechnics	2018/2019	8302500
county	27	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8660000
county	27	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8660000
county	27	2009	Total Conditional Additional Allocation	2016/2017	8660000
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
county	36	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8810000
county	36	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8810000
county	36	2009	Total Conditional Additional Allocation	2016/2017	8810000
county	11	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	8824955
county	34	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8945000
county	34	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8945000
county	33	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8945000
county	33	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8945000
county	7	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8970000
county	7	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	8970000
county	13	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	9058820
county	29	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	9155000
county	29	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	9155000
county	29	2009	Total Conditional Additional Allocation	2016/2017	9155000
county	18	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	9430000
county	18	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	9430000
county	18	2009	Total Conditional Additional Allocation	2016/2017	9430000
county	28	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	9442450
county	6	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	9555425
county	22	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	9600000
county	22	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	9600000
county	22	2009	Total Conditional Additional Allocation	2016/2017	9600000
county	31	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	9959579
county	35	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	9965000
county	35	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	9965000
county	35	2009	Total Conditional Additional Allocation	2016/2017	9965000
county	8	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	10045000
county	8	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	10045000
county	20	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	10215585
county	44	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	10220000
county	44	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	10220000
county	25	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	10256191
county	12	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	10295000
county	12	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	10295000
county	28	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	10400000
county	28	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	10400000
county	5	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	10593750
county	13	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	10875000
county	14	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11080940
county	38	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11177587
county	4	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	11224457
county	28	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	11250000
county	26	2009	Total Conditional Additional Allocation	2015/2016	11330000
county	19	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	11465000
county	19	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	11465000
county	19	2009	Total Conditional Additional Allocation	2016/2017	11465000
county	45	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	11475000
county	45	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	11475000
county	45	2009	Total Conditional Additional Allocation	2016/2017	11475000
county	3	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11484371
county	4	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11504299
county	37	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	11750000
county	37	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	11750000
county	37	2009	Total Conditional Additional Allocation	2016/2017	11750000
county	5	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	11785000
county	46	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	11960000
county	46	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	11960000
county	46	2009	Total Conditional Additional Allocation	2016/2017	11960000
county	44	2009	Other Loans & Grants	2017/2018	11991777
county	46	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	11995032
county	17	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	12065000
county	17	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	12065000
county	17	2009	Total Conditional Additional Allocation	2016/2017	12065000
county	6	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	12093750
county	28	2009	Rehabilitation of Village Polytechnics	2018/2019	12150000
county	39	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12161151
county	20	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	12281250
county	31	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	12281250
county	13	2009	Rehabilitation of Village Polytechnics	2018/2019	12352500
county	43	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	12385000
county	43	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	12385000
county	43	2009	Total Conditional Additional Allocation	2016/2017	12385000
county	21	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	12405000
county	21	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	12405000
county	21	2009	Total Conditional Additional Allocation	2016/2017	12405000
county	18	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12435427
county	24	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12454549
county	11	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	12607500
county	32	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	12630000
county	32	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	12630000
county	32	2009	Total Conditional Additional Allocation	2016/2017	12630000
county	11	2009	Rehabilitation of Village Polytechnics	2018/2019	12656250
county	25	2009	Rehabilitation of Village Polytechnics	2018/2019	12757500
county	30	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12820885
county	19	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	12845841
county	30	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	12985000
county	30	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	12985000
county	35	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	13007075
county	6	2009	Rehabilitation of Village Polytechnics	2018/2019	13061250
county	25	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	13218750
county	14	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	13312500
county	38	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	13312500
county	16	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	13350000
county	16	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	13350000
county	16	2009	Total Conditional Additional Allocation	2016/2017	13350000
county	36	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	13589799
county	29	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	13728991
county	41	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	13765000
county	41	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	13765000
county	41	2009	Total Conditional Additional Allocation	2016/2017	13765000
county	14	2009	Rehabilitation of Village Polytechnics	2018/2019	13770001
county	47	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	13900000
county	47	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	13900000
county	46	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	14250000
county	5	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	14265997
county	41	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	14422487
county	20	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	14513506
county	5	2009	World Bank grant to supplement financing for county health facilities	2015/2016	14528378
county	5	2009	World Bank grant to supplement financing for county health facilities	2016/2017	14528378
county	18	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	14718750
county	24	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	14718750
county	26	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	14723664
county	5	2009	Total Conditional Additional Allocation	2015/2016	14772526
county	20	2009	Rehabilitation of Village Polytechnics	2018/2019	14782500
county	38	2009	Rehabilitation of Village Polytechnics	2018/2019	14782500
county	2	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	14798976
county	36	2009	Total Conditional Additional Allocation	2015/2016	14950000
county	13	2009	Other Loans & Grants	2017/2018	14982351
county	27	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	14987172
county	19	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	15000000
county	31	2009	Rehabilitation of Village Polytechnics	2018/2019	15086250
county	30	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	15187500
county	19	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15187858
county	33	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	15267291
county	14	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15418468
county	4	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	15431865
county	21	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	15463900
county	46	2009	Rehabilitation of Village Polytechnics	2018/2019	15491250
county	13	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15518089
county	20	2009	Other Loans & Grants	2017/2018	15618572
county	40	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	15707150
county	37	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	15719948
county	38	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15724263
county	24	2009	Rehabilitation of Village Polytechnics	2018/2019	15896250
county	18	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	15987360
county	18	2009	Rehabilitation of Village Polytechnics	2018/2019	15997500
county	1	2009	Other Loans & Grants	2015/2016	16000000
county	29	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	16031250
county	14	2009	Other Loans & Grants	2017/2018	16091521
county	5	2009	Other Loans & Grants	2017/2018	16251730
county	43	2009	Other Loans & Grants	2017/2018	16266980
county	43	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	16269325
county	42	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	16312993
county	27	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16331289
county	21	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16369053
county	1	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16374963
county	42	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	16403010
county	35	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16415491
county	29	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16507185
county	41	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16561840
county	11	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	16572474
county	4	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	16593750
county	19	2009	Rehabilitation of Village Polytechnics	2018/2019	16605000
county	31	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16625223
county	28	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16632723
county	7	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	16664092
county	11	2009	Total Conditional Additional Allocation	2015/2016	16698052
county	30	2009	Rehabilitation of Village Polytechnics	2018/2019	16706250
county	26	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16768813
county	26	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	16781250
county	44	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	16852230
county	46	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	16937554
county	42	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17029227
county	6	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17060386
county	35	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	17062500
county	19	2009	Other Loans & Grants	2017/2018	17065212
county	29	2009	Rehabilitation of Village Polytechnics	2018/2019	17111250
county	17	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	17235701
county	34	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17285908
county	27	2009	Total Conditional Additional Allocation	2015/2016	17320000
county	22	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17404219
county	36	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17416549
county	35	2009	Rehabilitation of Village Polytechnics	2018/2019	17516250
county	12	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17575209
county	30	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17586468
county	36	2009	Rehabilitation of Village Polytechnics	2018/2019	17617500
county	36	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	17718750
county	4	2009	Total Conditional Additional Allocation	2015/2016	17771988
county	33	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17793235
county	44	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17805472
county	40	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	17812500
county	43	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17858004
county	16	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	17869663
county	4	2009	Rehabilitation of Village Polytechnics	2018/2019	17921250
county	40	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18257455
county	29	2009	Total Conditional Additional Allocation	2015/2016	18310000
county	26	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	18322590
county	5	2009	Total Conditional Additional Allocation	2016/2017	18348378
county	15	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	18495000
county	15	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	18495000
county	32	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18507501
county	45	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18527653
county	41	2009	Rehabilitation of Village Polytechnics	2018/2019	18528750
county	11	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18540513
county	24	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18586308
county	21	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	18656250
county	12	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	18748409
county	13	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	18767500
county	39	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18814092
county	26	2009	Rehabilitation of Village Polytechnics	2018/2019	18933750
county	28	2009	Other Loans & Grants	2017/2018	18956691
county	1	2009	Other Loans & Grants	2017/2018	18990114
county	25	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	18994320
county	33	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	19031250
county	17	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	19051135
county	27	2009	Rehabilitation of Village Polytechnics	2018/2019	19136250
county	1	2009	Total Conditional Additional Allocation	2016/2017	19150000
county	34	2009	Rehabilitation of Village Polytechnics	2018/2019	19338750
county	2	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	19348633
county	46	2009	Other Loans & Grants	2017/2018	19530441
county	40	2009	Rehabilitation of Village Polytechnics	2018/2019	19541250
county	16	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	19542538
county	25	2009	Total Conditional Additional Allocation	2015/2016	19659898
county	3	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	19723695
county	37	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	19811716
county	43	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	19968750
county	44	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	20062500
county	6	2009	Other Loans & Grants	2017/2018	20118951
county	18	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	20223224
county	4	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	20358867
county	15	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	20392968
county	45	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	20480801
county	7	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	20520018
county	42	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	20625000
county	7	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	20718750
county	21	2009	Rehabilitation of Village Polytechnics	2018/2019	20756250
county	8	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	20882455
county	15	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	20982159
county	30	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	21118210
county	47	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	21183840
county	17	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	21281250
county	31	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	21345341
county	24	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	21495096
county	22	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	21548821
county	44	2009	Rehabilitation of Village Polytechnics	2018/2019	21667500
county	22	2009	Other Loans & Grants	2017/2018	21851856
county	43	2009	Rehabilitation of Village Polytechnics	2018/2019	21870000
county	33	2009	Rehabilitation of Village Polytechnics	2018/2019	21870000
county	42	2009	Rehabilitation of Village Polytechnics	2018/2019	21971250
county	14	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
county	22	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
county	20	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
county	21	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
county	18	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
county	19	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
county	13	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	22000000
county	10	2009	Rehabilitation of Village Polytechnics	2018/2019	22072500
county	11	2009	World Bank grant to supplement financing for county health facilities	2015/2016	22247373
county	11	2009	World Bank grant to supplement financing for county health facilities	2016/2017	22247373
county	1	2009	Total Conditional Additional Allocation	2015/2016	22300000
county	7	2009	Rehabilitation of Village Polytechnics	2018/2019	22325625
county	10	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	22466188
county	2	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	22500000
county	35	2009	Total Conditional Additional Allocation	2015/2016	22600000
county	9	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	22822072
county	17	2009	Rehabilitation of Village Polytechnics	2018/2019	22882500
county	45	2009	Total Conditional Additional Allocation	2015/2016	22950000
county	45	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	22968750
county	32	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	23133561
county	8	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	23548494
county	1	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	23619271
county	10	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	23851133
county	12	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	23906250
county	46	2009	Total Conditional Additional Allocation	2015/2016	23920000
county	4	2009	World Bank grant to supplement financing for county health facilities	2015/2016	24174105
county	4	2009	World Bank grant to supplement financing for county health facilities	2016/2017	24174105
county	23	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	24195000
county	2	2009	Rehabilitation of Village Polytechnics	2018/2019	24300000
county	8	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	24481325
county	1	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	24562500
county	4	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	24725000
county	43	2009	Total Conditional Additional Allocation	2015/2016	24770000
county	16	2009	Rehabilitation of Village Polytechnics	2018/2019	24806251
county	16	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	24843750
county	34	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	24844848
county	45	2009	Rehabilitation of Village Polytechnics	2018/2019	24907500
county	31	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	25255000
county	32	2009	Total Conditional Additional Allocation	2015/2016	25260000
county	8	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	25312500
county	23	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	25346766
county	10	2009	Total Conditional Additional Allocation	2015/2016	25436676
county	11	2009	Other Loans & Grants	2017/2018	25550510
county	34	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	25719948
county	12	2009	Rehabilitation of Village Polytechnics	2018/2019	25818750
county	18	2009	Other Loans & Grants	2017/2018	25839485
county	9	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	25857016
county	41	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	25932368
county	27	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	25961694
county	15	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	26062500
county	11	2009	Total Conditional Additional Allocation	2016/2017	26232373
county	35	2009	Other Loans & Grants	2017/2018	26375133
county	31	2009	Other Loans & Grants	2017/2018	26439559
county	39	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	26718750
county	8	2009	Rehabilitation of Village Polytechnics	2018/2019	27286875
county	1	2009	Rehabilitation of Village Polytechnics	2018/2019	27337500
county	22	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	27937500
county	24	2009	Total Conditional Additional Allocation	2015/2016	27979898
county	9	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	28305000
county	9	2009	Total Conditional Additional Allocation	2015/2016	28306168
county	46	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	28452981
county	5	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	28585490
county	4	2009	Total Conditional Additional Allocation	2016/2017	28819105
county	15	2009	Rehabilitation of Village Polytechnics	2018/2019	29008125
county	10	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	29133697
county	39	2009	Rehabilitation of Village Polytechnics	2018/2019	29362500
county	12	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	29524087
county	25	2009	World Bank grant to supplement financing for county health facilities	2015/2016	29848554
county	25	2009	World Bank grant to supplement financing for county health facilities	2016/2017	29848554
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
county	42	2009	Other Loans & Grants	2015/2016	30000000
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
county	42	2009	Other Loans & Grants	2017/2018	30073021
county	23	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	30255192
county	28	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	30279354
county	9	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	30281250
county	37	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	30843750
county	32	2009	Rehabilitation of Village Polytechnics	2018/2019	31083750
county	45	2009	Other Loans & Grants	2017/2018	31439291
county	5	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	31560240
county	30	2009	Other Loans & Grants	2017/2018	31707536
county	6	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	31797500
county	14	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	31912879
county	6	2009	Total Conditional Additional Allocation	2015/2016	32052898
county	23	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	32156250
county	25	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	32159348
county	3	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	32343750
county	22	2009	Rehabilitation of Village Polytechnics	2018/2019	32400000
county	23	2009	Total Conditional Additional Allocation	2015/2016	32556700
county	9	2009	Rehabilitation of Village Polytechnics	2018/2019	32653125
county	6	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	32699643
county	7	2009	Total Conditional Additional Allocation	2015/2016	33028268
county	37	2009	Rehabilitation of Village Polytechnics	2018/2019	33311250
county	3	2009	Rehabilitation of Village Polytechnics	2018/2019	33361875
county	34	2009	Other Loans & Grants	2017/2018	33670568
county	23	2009	Rehabilitation of Village Polytechnics	2018/2019	33766875
county	5	2009	Leasing of Medical Equipment	2018/2019	33793559
county	27	2009	Other Loans & Grants	2017/2018	33834647
county	36	2009	Other Loans & Grants	2017/2018	34476132
county	10	2009	World Bank grant to supplement financing for county health facilities	2015/2016	34627134
county	10	2009	World Bank grant to supplement financing for county health facilities	2016/2017	34627134
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
county	25	2009	Total Conditional Additional Allocation	2016/2017	35343554
county	40	2009	Other Loans & Grants	2017/2018	35708101
county	13	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	35989344
county	25	2009	Other Loans & Grants	2017/2018	35998283
county	28	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	36005074
county	6	2009	World Bank grant to supplement financing for county health facilities	2015/2016	36034216
county	6	2009	World Bank grant to supplement financing for county health facilities	2016/2017	36034216
county	42	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	36068231
county	11	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	36113321
county	8	2009	Total Conditional Additional Allocation	2015/2016	36459300
county	26	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	36686728
county	6	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	36728875
county	25	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	36731596
county	10	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	36800000
county	2	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	37075000
county	47	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	37420064
county	47	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	37523967
county	34	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	37645000
county	1	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	37921806
county	29	2009	Other Loans & Grants	2017/2018	37935161
county	33	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	38282966
county	42	2009	Total Conditional Additional Allocation	2016/2017	38290000
county	20	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	38364051
county	31	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	38403461
county	13	2009	Leasing of Medical Equipment	2018/2019	38536081
county	28	2009	Leasing of Medical Equipment	2018/2019	38552919
county	7	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	38645000
county	11	2009	Leasing of Medical Equipment	2018/2019	38668826
county	4	2009	Other Loans & Grants	2017/2018	38702117
county	2	2009	Other Loans & Grants	2017/2018	38819201
county	38	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	38854627
county	41	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	39021230
county	30	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	39175834
county	6	2009	Leasing of Medical Equipment	2018/2019	39327939
county	25	2009	Leasing of Medical Equipment	2018/2019	39330852
county	46	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	39582751
county	34	2009	Other Loans & Grants	2015/2016	40000000
county	27	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	40028573
county	13	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	40049752
county	24	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	40081255
county	18	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	40222990
county	16	2009	Other Loans & Grants	2017/2018	40561481
county	14	2009	Leasing of Medical Equipment	2018/2019	40595727
county	44	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	40625000
county	30	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	40839509
county	19	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	40850289
county	28	2009	Total Conditional Additional Allocation	2015/2016	40979116
county	20	2009	Leasing of Medical Equipment	2018/2019	41078830
county	4	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	41095762
county	32	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	41107213
county	31	2009	Leasing of Medical Equipment	2018/2019	41121027
county	7	2009	World Bank grant to supplement financing for county health facilities	2015/2016	41161467
county	7	2009	World Bank grant to supplement financing for county health facilities	2016/2017	41161467
county	35	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	41594910
county	38	2009	Leasing of Medical Equipment	2018/2019	41604116
county	29	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	41606801
county	33	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	41780000
county	36	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	41921669
county	17	2009	Other Loans & Grants	2017/2018	42068481
county	35	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	42286732
county	10	2009	Total Conditional Additional Allocation	2016/2017	42302134
county	41	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	42327625
county	46	2009	Leasing of Medical Equipment	2018/2019	42383765
county	6	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	42394162
county	9	2009	World Bank grant to supplement financing for county health facilities	2015/2016	42477798
county	9	2009	World Bank grant to supplement financing for county health facilities	2016/2017	42477798
county	21	2009	Other Loans & Grants	2017/2018	42505145
county	32	2009	Other Loans & Grants	2017/2018	42587323
county	34	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	42829641
county	24	2009	Leasing of Medical Equipment	2018/2019	42917546
county	34	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	42954113
county	41	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	43031378
county	18	2009	Leasing of Medical Equipment	2018/2019	43069316
county	30	2009	Total Conditional Additional Allocation	2015/2016	43194300
county	26	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	43386482
county	6	2009	Total Conditional Additional Allocation	2016/2017	43439216
county	27	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	43650314
county	44	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	43668076
county	26	2009	Other Loans & Grants	2017/2018	43699195
county	30	2009	Leasing of Medical Equipment	2018/2019	43729455
county	19	2009	Leasing of Medical Equipment	2018/2019	43740998
county	4	2009	Leasing of Medical Equipment	2018/2019	44003842
county	40	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	44261335
county	2	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	44360883
county	35	2009	Leasing of Medical Equipment	2018/2019	44538343
county	29	2009	Leasing of Medical Equipment	2018/2019	44551044
county	14	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	44569827
county	7	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	44599121
county	13	2009	World Bank grant to supplement financing for county health facilities	2015/2016	44654343
county	13	2009	World Bank grant to supplement financing for county health facilities	2016/2017	44654343
county	24	2009	Other Loans & Grants	2017/2018	44669544
county	45	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	44696901
county	36	2009	Leasing of Medical Equipment	2018/2019	44888193
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
county	8	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	45040000
county	21	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	45056255
county	10	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	45148545
county	11	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	45533001
county	45	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	45697438
county	38	2009	Other Loans & Grants	2017/2018	45759161
county	33	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	45796321
county	34	2009	Leasing of Medical Equipment	2018/2019	45860424
county	41	2009	Leasing of Medical Equipment	2018/2019	46076429
county	31	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	46115937
county	8	2009	World Bank grant to supplement financing for county health facilities	2015/2016	46166458
county	8	2009	World Bank grant to supplement financing for county health facilities	2016/2017	46166458
county	43	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	46229189
county	40	2009	Total Conditional Additional Allocation	2015/2016	46240000
county	44	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	46330991
county	29	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	46342186
county	42	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	46361941
county	33	2009	Other Loans & Grants	2017/2018	46406308
county	26	2009	Leasing of Medical Equipment	2018/2019	46456661
county	27	2009	Leasing of Medical Equipment	2018/2019	46739163
county	47	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	47156250
county	40	2009	Leasing of Medical Equipment	2018/2019	47393422
county	2	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	47394010
county	17	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	47396651
county	7	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	47421765
county	7	2009	Leasing of Medical Equipment	2018/2019	47755752
county	28	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	47990000
county	21	2009	Leasing of Medical Equipment	2018/2019	48244593
county	10	2009	Leasing of Medical Equipment	2018/2019	48985872
county	33	2009	Leasing of Medical Equipment	2018/2019	49037031
county	43	2009	Leasing of Medical Equipment	2018/2019	49500526
county	44	2009	Leasing of Medical Equipment	2018/2019	49609593
county	42	2009	Leasing of Medical Equipment	2018/2019	49642674
county	9	2009	Total Conditional Additional Allocation	2016/2017	49787798
county	1	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	49809062
county	8	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	49871995
county	16	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	49893161
county	39	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	28	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	14	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	14	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	43	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	22	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	22	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	3	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	20	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	20	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	45	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	15	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	2	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	2	2009	Road Maintenance Fuel Levy	2018/2019	50000000
county	2	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	31	2009	Road Maintenance Fuel Levy	2018/2019	50000000
county	31	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	5	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	17	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	10	2009	Road Maintenance Fuel Levy	2018/2019	50000000
county	10	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	12	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	12	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	44	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	1	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	21	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	21	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	32	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	29	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	33	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	46	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	46	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	18	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	19	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	25	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	25	2009	Road Maintenance Fuel Levy	2018/2019	50000000
county	25	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	41	2009	Road Maintenance Fuel Levy	2018/2019	50000000
county	41	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	6	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	6	2009	Road Maintenance Fuel Levy	2018/2019	50000000
county	6	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	4	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	13	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	13	2009	Road Maintenance Fuel Levy	2018/2019	50000000
county	13	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	50000000
county	26	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	23	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	38	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	50000000
county	7	2009	Total Conditional Additional Allocation	2016/2017	50131467
county	17	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	50180747
county	19	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	50181184
county	27	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	50223504
county	45	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	50373481
county	12	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	50375116
county	2	2009	Leasing of Medical Equipment	2018/2019	50747782
county	17	2009	Leasing of Medical Equipment	2018/2019	50750604
county	13	2009	Total Conditional Additional Allocation	2016/2017	50819343
county	38	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	50845284
county	4	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	50849353
county	7	2009	Other Loans & Grants	2017/2018	50874733
county	45	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	50984665
county	47	2009	Rehabilitation of Village Polytechnics	2018/2019	51637500
county	30	2009	Road Maintenance Fuel Levy	2018/2019	52360500
county	30	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	52360500
county	25	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	53125000
county	1	2009	Leasing of Medical Equipment	2018/2019	53333725
county	8	2009	Leasing of Medical Equipment	2018/2019	53401112
county	16	2009	Leasing of Medical Equipment	2018/2019	53423784
county	15	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	53665060
county	43	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	53812849
county	45	2009	Leasing of Medical Equipment	2018/2019	53938093
county	12	2009	Leasing of Medical Equipment	2018/2019	53939835
county	30	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	54243300
county	47	2009	Grants to Level5 Hospitals	2018/2019	54429184
county	39	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	54474504
county	10	2009	Other Loans & Grants	2017/2018	54542181
county	9	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	54795930
county	33	2009	Total Conditional Additional Allocation	2015/2016	56027350
county	24	2009	World Bank grant to supplement financing for county health facilities	2015/2016	56049761
county	24	2009	World Bank grant to supplement financing for county health facilities	2016/2017	56049761
county	38	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	56065640
county	8	2009	Total Conditional Additional Allocation	2016/2017	56211458
county	32	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	56299041
county	27	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	56301747
county	41	2009	Grants to Level5 Hospitals	2018/2019	56758154
county	28	2009	World Bank grant to supplement financing for county health facilities	2015/2016	56932570
county	28	2009	World Bank grant to supplement financing for county health facilities	2016/2017	56932570
county	6	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	56942903
county	3	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	57107014
county	10	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	57240000
county	15	2009	Leasing of Medical Equipment	2018/2019	57462594
county	15	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	58210000
county	39	2009	Leasing of Medical Equipment	2018/2019	58329310
county	32	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	58346857
county	15	2009	Other Loans & Grants	2017/2018	58554011
county	9	2009	Leasing of Medical Equipment	2018/2019	58673488
county	43	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	59001481
county	37	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	59311725
county	2	2009	Total Conditional Additional Allocation	2015/2016	59379322
county	36	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	59403836
county	40	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	59552830
county	31	2009	World Bank grant to supplement financing for county health facilities	2015/2016	60049676
county	31	2009	World Bank grant to supplement financing for county health facilities	2016/2017	60049676
county	32	2009	Leasing of Medical Equipment	2018/2019	60282958
county	22	2009	Leasing of Medical Equipment	2018/2019	60455156
county	23	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	61120888
county	37	2009	Other Loans & Grants	2017/2018	61145971
county	3	2009	Leasing of Medical Equipment	2018/2019	61148106
county	8	2009	Other Loans & Grants	2017/2018	61485350
county	35	2009	Grants to Level5 Hospitals	2018/2019	61507974
county	37	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	61794598
county	10	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	61800000
county	24	2009	Total Conditional Additional Allocation	2016/2017	62139761
county	39	2009	Other Loans & Grants	2017/2018	62188791
county	21	2009	Road Maintenance Fuel Levy	2018/2019	62437600
county	21	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	62437600
county	34	2009	Grants to Level5 Hospitals	2018/2019	62478710
county	37	2009	Leasing of Medical Equipment	2018/2019	63508831
county	41	2009	Other Loans & Grants	2017/2018	63669291
county	9	2009	Other Loans & Grants	2017/2018	64221359
county	11	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	64373437
county	42	2009	Total Conditional Additional Allocation	2015/2016	64580000
county	32	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	65337491
county	23	2009	Leasing of Medical Equipment	2018/2019	65446016
county	16	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	65588781
county	31	2009	Total Conditional Additional Allocation	2016/2017	65814676
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
county	11	2009	Grants to Level5 Hospitals	2018/2019	66229830
county	23	2009	Other Loans & Grants	2017/2018	66640350
county	38	2009	Total Conditional Additional Allocation	2015/2016	66670000
county	25	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	66786111
county	29	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	66845279
county	31	2009	Grants to Level5 Hospitals	2018/2019	67077728
county	23	2009	World Bank grant to supplement financing for county health facilities	2015/2016	67258982
county	23	2009	World Bank grant to supplement financing for county health facilities	2016/2017	67258982
county	28	2009	Total Conditional Additional Allocation	2016/2017	67332570
county	42	2009	Grants to Level5 Hospitals	2018/2019	67364355
county	2	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	67495490
county	24	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	67985000
county	20	2009	Road Maintenance Fuel Levy	2018/2019	71302200
county	20	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	71302200
county	35	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	71544247
county	17	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	71695461
county	47	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	71910897
county	44	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	71990710
county	23	2009	Total Conditional Additional Allocation	2016/2017	73293982
county	24	2009	Road Maintenance Fuel Levy	2018/2019	73392300
county	24	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	73392300
county	38	2009	Grants to Level5 Hospitals	2018/2019	73956778
county	45	2009	Grants to Level5 Hospitals	2018/2019	74159514
county	3	2009	Other Loans & Grants	2017/2018	74392884
county	33	2009	Road Maintenance Fuel Levy	2018/2019	74905300
county	33	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	74905300
county	44	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	76811165
county	21	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	76894209
county	30	2009	World Bank grant to supplement financing for county health facilities	2015/2016	77761278
county	30	2009	World Bank grant to supplement financing for county health facilities	2016/2017	77761278
county	30	2009	Grants to Level5 Hospitals	2018/2019	78899347
county	22	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	80079440
county	40	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	81106071
county	33	2009	World Bank grant to supplement financing for county health facilities	2015/2016	81201403
county	33	2009	World Bank grant to supplement financing for county health facilities	2016/2017	81201403
county	27	2009	Grants to Level5 Hospitals	2018/2019	81893450
county	2	2009	World Bank grant to supplement financing for county health facilities	2015/2016	82166289
county	2	2009	World Bank grant to supplement financing for county health facilities	2016/2017	82166289
county	3	2009	Total Conditional Additional Allocation	2015/2016	82306764
county	24	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	83202997
county	47	2009	Leasing of Medical Equipment	2018/2019	83424144
county	33	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	83620453
county	15	2009	Total Conditional Additional Allocation	2015/2016	83958266
county	23	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	84141376
county	43	2009	Grants to Level5 Hospitals	2018/2019	85820342
county	36	2009	Grants to Level5 Hospitals	2018/2019	86405581
county	40	2009	Grants to Level5 Hospitals	2018/2019	86622298
county	44	2009	Total Conditional Additional Allocation	2015/2016	87452156
county	2	2009	Total Conditional Additional Allocation	2016/2017	88976289
county	17	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	89179782
county	34	2009	Total Conditional Additional Allocation	2015/2016	89533654
county	28	2009	Road Maintenance Fuel Levy	2018/2019	89802100
county	28	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	89802100
county	33	2009	Total Conditional Additional Allocation	2016/2017	90146403
county	30	2009	Total Conditional Additional Allocation	2016/2017	90746278
county	7	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	91760861
county	18	2009	Total Conditional Additional Allocation	2015/2016	91860000
county	19	2009	Total Conditional Additional Allocation	2017/2018	92761342
county	3	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	93668250
county	11	2009	Road Maintenance Fuel Levy	2018/2019	93968100
county	11	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	93968100
county	5	2009	Total Conditional Additional Allocation	2017/2018	94106690
county	30	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	94210000
county	23	2009	Road Maintenance Fuel Levy	2018/2019	95023200
county	23	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	95023200
county	32	2009	Grants to Level5 Hospitals	2018/2019	95036357
county	16	2009	Grants to Level5 Hospitals	2018/2019	95401875
county	47	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	96359510
county	3	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	96840000
county	25	2009	Grants to Level5 Hospitals	2018/2019	97143610
county	29	2009	Grants to Level5 Hospitals	2018/2019	97229498
county	2	2009	Grants to Level5 Hospitals	2018/2019	98175267
county	39	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	7	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	37	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	3	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	15	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	17	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	9	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	10	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	44	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	33	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	4	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	26	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	23	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	8	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	24	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	34	2009	World Bank grant to supplement financing for county health facilities	2015/2016	100581341
county	34	2009	World Bank grant to supplement financing for county health facilities	2016/2017	100581341
county	13	2009	Total Conditional Additional Allocation	2017/2018	100798020
county	40	2009	Road Maintenance Fuel Levy	2018/2019	101071500
county	40	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	101071500
county	1	2009	Total Conditional Additional Allocation	2017/2018	101425861
county	10	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	101892430
county	15	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	103430429
county	39	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
county	37	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
county	9	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
county	23	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
county	8	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	110000000
county	14	2009	Total Conditional Additional Allocation	2015/2016	113750000
county	3	2009	World Bank grant to supplement financing for county health facilities	2015/2016	114657642
county	3	2009	World Bank grant to supplement financing for county health facilities	2016/2017	114657642
county	46	2009	Road Maintenance Fuel Levy	2018/2019	114705300
county	46	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	114705300
county	12	2009	Road Maintenance Fuel Levy	2018/2019	116890200
county	12	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	116890200
county	40	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	116993505
county	30	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	36	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	40	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	28	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	34	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	37	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	37	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	117000000
county	35	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	42	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	31	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	16	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	18	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	19	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	41	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	6	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	13	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	27	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	24	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	6	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	117024000
county	18	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	117268690
county	24	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	117291410
county	28	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	118422545
county	42	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	118482110
county	41	2009	Total Conditional Additional Allocation	2015/2016	119030000
county	43	2009	Road Maintenance Fuel Levy	2018/2019	119361500
county	43	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	119361500
county	14	2009	Road Maintenance Fuel Levy	2018/2019	119892100
county	14	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	119892100
county	3	2009	Total Conditional Additional Allocation	2016/2017	122422642
county	35	2009	Total Conditional Additional Allocation	2017/2018	123263880
county	21	2009	Total Conditional Additional Allocation	2015/2016	124810000
county	9	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	125791038
county	11	2009	Total Conditional Additional Allocation	2017/2018	128629328
county	3	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	129114721
county	16	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	129858778
county	15	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	129886088
county	31	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	131027150
county	15	2009	World Bank grant to supplement financing for county health facilities	2015/2016	131525244
county	15	2009	World Bank grant to supplement financing for county health facilities	2016/2017	131525244
county	18	2009	Road Maintenance Fuel Levy	2018/2019	135543400
county	18	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	135543400
county	34	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	135621176
county	20	2009	Total Conditional Additional Allocation	2017/2018	136198212
county	17	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	136261600
county	14	2009	Total Conditional Additional Allocation	2017/2018	137088346
county	44	2009	World Bank grant to supplement financing for county health facilities	2015/2016	138220725
county	44	2009	World Bank grant to supplement financing for county health facilities	2016/2017	138220725
county	39	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	14	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	43	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	22	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	3	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	20	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	45	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	15	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	2	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	17	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	12	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	44	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	21	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	32	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	29	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	46	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	25	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	26	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	23	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	38	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	30	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	141097380
county	41	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	142126290
county	28	2009	Total Conditional Additional Allocation	2017/2018	142673578
county	39	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	143042792
county	34	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	143531050
county	44	2009	Total Conditional Additional Allocation	2016/2017	148440725
county	36	2009	Total Conditional Additional Allocation	2017/2018	149391438
county	10	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	149513995
county	34	2009	Total Conditional Additional Allocation	2016/2017	149526341
county	46	2009	Total Conditional Additional Allocation	2017/2018	149561205
county	7	2009	Compensation for User Fee Foregone	2018/2019	150000000
county	11	2009	Compensation for User Fee Foregone	2018/2019	150000000
county	5	2009	Compensation for User Fee Foregone	2018/2019	150000000
county	9	2009	Compensation for User Fee Foregone	2018/2019	150000000
county	10	2009	Compensation for User Fee Foregone	2018/2019	150000000
county	10	2009	German Development Bank (KfW) Drought Resilience Programme in Northern Kenya (DRPNK)	2019/2020	150000000
county	4	2009	Compensation for User Fee Foregone	2018/2019	150000000
county	8	2009	Compensation for User Fee Foregone	2018/2019	150000000
county	15	2009	Total Conditional Additional Allocation	2016/2017	150020244
county	16	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	150156390
county	13	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	152374180
county	8	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	153172330
county	40	2009	Total Conditional Additional Allocation	2017/2018	155229716
county	10	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	156114090
county	7	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	157422850
county	5	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	157507010
county	2	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	157706559
county	41	2009	Total Conditional Additional Allocation	2017/2018	160144386
county	45	2009	Road Maintenance Fuel Levy	2018/2019	164053800
county	45	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	164053800
county	8	2009	Road Maintenance Fuel Levy	2018/2019	165643500
county	8	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	165643500
county	18	2009	Total Conditional Additional Allocation	2017/2018	166491908
county	36	2009	Road Maintenance Fuel Levy	2018/2019	168334800
county	36	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	168334800
county	11	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	170794330
county	22	2009	Total Conditional Additional Allocation	2017/2018	171860543
county	21	2009	Total Conditional Additional Allocation	2017/2018	175025300
county	16	2009	Total Conditional Additional Allocation	2017/2018	175585971
county	9	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	175819500
county	29	2009	Road Maintenance Fuel Levy	2018/2019	177231700
county	29	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	177231700
county	36	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	180000000
county	34	2009	Total Conditional Additional Allocation	2017/2018	182819277
county	19	2009	Total Conditional Additional Allocation	2015/2016	182930000
county	19	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	186033960
county	47	2009	Total Conditional Additional Allocation	2019/2020	194699600
county	38	2009	Total Conditional Additional Allocation	2017/2018	196636664
county	39	2009	Total Conditional Additional Allocation	2015/2016	196750000
county	6	2009	Total Conditional Additional Allocation	2017/2018	196900401
county	35	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	199459400
county	9	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	200000000
county	4	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	200000000
county	23	2009	German Development Bank (KfW) Drought Resilience Programme in Northern Kenya (DRPNK)	2019/2020	200000000
county	27	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	200000000
county	42	2009	Total Conditional Additional Allocation	2017/2018	205150974
county	16	2009	Total Conditional Additional Allocation	2015/2016	206700000
county	29	2009	Total Conditional Additional Allocation	2017/2018	210116247
county	31	2009	Total Conditional Additional Allocation	2017/2018	212173539
county	27	2009	Total Conditional Additional Allocation	2017/2018	214713880
county	47	2009	Total Conditional Additional Allocation	2018/2019	215149968
county	12	2009	Total Conditional Additional Allocation	2015/2016	220590000
county	26	2009	Total Conditional Additional Allocation	2017/2018	230131937
county	15	2009	Road Maintenance Fuel Levy	2018/2019	232374200
county	15	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	232374200
county	7	2009	Road Maintenance Fuel Levy	2018/2019	233506000
county	7	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	233506000
county	31	2009	Total Conditional Additional Allocation	2015/2016	236375096
county	19	2009	Road Maintenance Fuel Levy	2018/2019	236639100
county	19	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	236639100
county	32	2009	Total Conditional Additional Allocation	2017/2018	237657121
county	7	2009	Total Conditional Additional Allocation	2017/2018	242544407
county	17	2009	Total Conditional Additional Allocation	2015/2016	244130000
county	43	2009	Total Conditional Additional Allocation	2017/2018	247766983
county	8	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	250000000
county	38	2009	Road Maintenance Fuel Levy	2018/2019	250950700
county	38	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	250950700
county	4	2009	Total Conditional Additional Allocation	2017/2018	253251635
county	35	2009	Road Maintenance Fuel Levy	2018/2019	256299000
county	35	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	256299000
county	37	2009	Total Conditional Additional Allocation	2017/2018	259117644
county	34	2009	Road Maintenance Fuel Levy	2018/2019	265950300
county	34	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	265950300
county	45	2009	Total Conditional Additional Allocation	2017/2018	272278253
county	37	2009	Total Conditional Additional Allocation	2015/2016	278500000
county	33	2009	Total Conditional Additional Allocation	2017/2018	282870310
county	9	2009	Total Conditional Additional Allocation	2017/2018	283179311
county	17	2009	Total Conditional Additional Allocation	2017/2018	294396310
county	39	2009	Total Conditional Additional Allocation	2017/2018	298824753
county	26	2009	Road Maintenance Fuel Levy	2018/2019	299106900
county	26	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	299106900
county	30	2009	Total Conditional Additional Allocation	2017/2018	299821230
county	12	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	299971780
county	2	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	300000000
county	39	2009	Road Maintenance Fuel Levy	2018/2019	300977100
county	39	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	300977100
county	31	2009	Total Conditional Additional Allocation	2019/2020	305078964
county	5	2009	Total Conditional Additional Allocation	2019/2020	306166757
county	13	2009	Total Conditional Additional Allocation	2019/2020	307617021
county	21	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	307623650
county	24	2009	Total Conditional Additional Allocation	2017/2018	314393341
county	10	2009	Total Conditional Additional Allocation	2017/2018	315142151
county	25	2009	Total Conditional Additional Allocation	2017/2018	318897301
county	2	2009	Total Conditional Additional Allocation	2017/2018	321582690
county	30	2009	Total Conditional Additional Allocation	2019/2020	325325892
county	13	2009	Total Conditional Additional Allocation	2015/2016	326229808
county	13	2009	Total Conditional Additional Allocation	2018/2019	326966757
county	3	2009	Road Maintenance Fuel Levy	2018/2019	330534500
county	3	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	330534500
county	22	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	331195210
county	44	2009	Total Conditional Additional Allocation	2017/2018	333790711
county	20	2009	Total Conditional Additional Allocation	2015/2016	336770000
county	23	2009	Total Conditional Additional Allocation	2017/2018	342211436
county	29	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	343929300
county	15	2009	Total Conditional Additional Allocation	2017/2018	344841671
county	5	2009	Total Conditional Additional Allocation	2018/2019	349454694
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
county	8	2009	Total Conditional Additional Allocation	2017/2018	353279800
county	28	2009	Total Conditional Additional Allocation	2019/2020	354907368
county	47	2009	Other Loans & Grants	2015/2016	360000000
county	41	2009	Total Conditional Additional Allocation	2019/2020	360748123
county	24	2009	Total Conditional Additional Allocation	2019/2020	364283864
county	47	2009	Total Conditional Additional Allocation	2016/2017	373900000
county	20	2009	Total Conditional Additional Allocation	2018/2019	375297242
county	18	2009	Total Conditional Additional Allocation	2019/2020	377541424
county	21	2009	Total Conditional Additional Allocation	2018/2019	382120438
county	37	2009	Road Maintenance Fuel Levy	2018/2019	389118800
county	37	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	389118800
county	4	2009	Total Conditional Additional Allocation	2019/2020	392033835
county	3	2009	Total Conditional Additional Allocation	2017/2018	393492525
country	KE	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Institutional Grants (UIG)	2019/2020	396000000
county	7	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	400000000
county	6	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	400000000
county	11	2009	Total Conditional Additional Allocation	2019/2020	403048854
county	40	2009	Total Conditional Additional Allocation	2019/2020	419041031
country	KE	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	422355000
country	KE	2009	DANIDA grant to supplement financing for county health facilities	2016/2017	422355000
county	14	2009	Total Conditional Additional Allocation	2018/2019	423634353
county	46	2009	Total Conditional Additional Allocation	2018/2019	424043052
county	11	2009	Total Conditional Additional Allocation	2018/2019	424751976
county	41	2009	Total Conditional Additional Allocation	2018/2019	428874926
county	31	2009	Total Conditional Additional Allocation	2018/2019	440883643
county	28	2009	Total Conditional Additional Allocation	2018/2019	448113957
county	33	2009	Total Conditional Additional Allocation	2018/2019	448450203
county	12	2009	Total Conditional Additional Allocation	2018/2019	448987235
county	30	2009	Total Conditional Additional Allocation	2018/2019	455614301
county	36	2009	Total Conditional Additional Allocation	2019/2020	457270099
county	18	2009	Total Conditional Additional Allocation	2018/2019	466332856
county	25	2009	Total Conditional Additional Allocation	2018/2019	473519323
county	43	2009	Total Conditional Additional Allocation	2018/2019	479279189
country	KE	2009	EU Grant (Instruments for Devolution Advice and Support IDEAS)	2019/2020	492698583
country	KE	2009	EU Water Tower Protection and Climate Change Mitigation and Adaptation Programme (WaTER)	2019/2020	495000000
county	36	2009	Total Conditional Additional Allocation	2018/2019	495931469
county	4	2009	Road Maintenance Fuel Levy	2018/2019	500000001
county	23	2009	Total Conditional Additional Allocation	2018/2019	507247478
county	4	2009	Total Conditional Additional Allocation	2018/2019	507651269
county	40	2009	Total Conditional Additional Allocation	2018/2019	514468709
county	44	2009	Road Maintenance Fuel Levy	2018/2019	518367800
county	44	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	518367800
county	10	2009	Total Conditional Additional Allocation	2018/2019	519678603
county	21	2009	Total Conditional Additional Allocation	2019/2020	520780762
county	20	2009	Total Conditional Additional Allocation	2019/2020	521896956
county	19	2009	Total Conditional Additional Allocation	2018/2019	522609757
county	10	2009	Total Conditional Additional Allocation	2019/2020	527605108
county	12	2009	Total Conditional Additional Allocation	2019/2020	532143439
county	25	2009	Total Conditional Additional Allocation	2019/2020	538172418
county	33	2009	Total Conditional Additional Allocation	2019/2020	538812751
county	19	2009	Total Conditional Additional Allocation	2019/2020	541842102
county	22	2009	Total Conditional Additional Allocation	2015/2016	556200000
county	35	2009	Total Conditional Additional Allocation	2018/2019	557172175
county	17	2009	Total Conditional Additional Allocation	2018/2019	559260092
county	22	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	561591351
county	24	2009	Total Conditional Additional Allocation	2018/2019	562497958
county	46	2009	Total Conditional Additional Allocation	2019/2020	569692854
county	34	2009	Total Conditional Additional Allocation	2018/2019	572134165
county	14	2009	Total Conditional Additional Allocation	2019/2020	581992895
county	9	2009	Total Conditional Additional Allocation	2018/2019	586255092
county	45	2009	Total Conditional Additional Allocation	2018/2019	590705381
county	9	2009	Total Conditional Additional Allocation	2019/2020	593513860
county	35	2009	Total Conditional Additional Allocation	2019/2020	599580638
county	43	2009	Total Conditional Additional Allocation	2019/2020	599801103
county	3	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	600000000
county	29	2009	Total Conditional Additional Allocation	2018/2019	616995189
county	15	2009	Total Conditional Additional Allocation	2018/2019	625053090
county	34	2009	Total Conditional Additional Allocation	2019/2020	626033282
county	27	2009	Road Maintenance Fuel Levy	2018/2019	630147800
county	27	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	630147800
county	38	2009	Total Conditional Additional Allocation	2018/2019	661090578
county	29	2009	Total Conditional Additional Allocation	2019/2020	683841621
county	45	2009	Total Conditional Additional Allocation	2019/2020	684744542
county	37	2009	Total Conditional Additional Allocation	2019/2020	702368864
county	17	2009	Total Conditional Additional Allocation	2019/2020	704754514
county	8	2009	Total Conditional Additional Allocation	2019/2020	715958149
county	6	2009	Total Conditional Additional Allocation	2019/2020	734315201
county	26	2009	Total Conditional Additional Allocation	2018/2019	745728311
county	1	2009	Total Conditional Additional Allocation	2018/2019	749726174
country	KE	2009	DANIDA grant for Universal Healthcare in Devolved System Program	2017/2018	762979751
county	38	2009	Total Conditional Additional Allocation	2019/2020	769853103
county	39	2009	Total Conditional Additional Allocation	2018/2019	772708758
county	42	2009	Road Maintenance Fuel Levy	2018/2019	773573300
county	42	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	773573300
county	15	2009	Total Conditional Additional Allocation	2019/2020	797515756
county	26	2009	Total Conditional Additional Allocation	2019/2020	803143691
county	6	2009	Total Conditional Additional Allocation	2018/2019	820585453
county	23	2009	Total Conditional Additional Allocation	2019/2020	825467592
county	37	2009	Total Conditional Additional Allocation	2018/2019	847913637
country	KE	2009	Sweden Agricultural Sector Development Support Programme (ASDSP) II	2019/2020	849626237
county	2	2009	Total Conditional Additional Allocation	2018/2019	872997000
country	KE	2009	World Bank Loan to supplement financing of County Health facilities	2017/2018	873407500
county	7	2009	Total Conditional Additional Allocation	2019/2020	918389383
county	39	2009	Total Conditional Additional Allocation	2019/2020	923352734
county	44	2009	Total Conditional Additional Allocation	2018/2019	982299570
county	2	2009	Total Conditional Additional Allocation	2019/2020	982716075
country	KE	2009	EU Grant or instrument for Devolution Advice and Support	2017/2018	985800000
country	KE	2009	DANIDA Grant (Universal Healthcare in Devolved System Program)	2019/2020	986583544
country	KE	2009	Rehabilitation of Village Polytechnics	2018/2019	1012500000
county	16	2009	Road Maintenance Fuel Levy	2018/2019	1018320500
county	16	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	1018320500
county	27	2009	Total Conditional Additional Allocation	2019/2020	1046492860
country	KE	2009	World Bank Loan for National Agricultural and Rural Inclusive Growth Project	2017/2018	1050000000
county	44	2009	Total Conditional Additional Allocation	2019/2020	1065515013
county	27	2009	Total Conditional Additional Allocation	2018/2019	1080111632
county	42	2009	Total Conditional Additional Allocation	2019/2020	1084577868
county	32	2009	Road Maintenance Fuel Levy	2018/2019	1084843300
county	32	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	1084843300
county	3	2009	Total Conditional Additional Allocation	2018/2019	1130333518
county	42	2009	Total Conditional Additional Allocation	2018/2019	1260705051
country	KE	2009	World Bank grant to supplement financing for county health facilities	2015/2016	1302324737
country	KE	2009	World Bank grant to supplement financing for county health facilities	2016/2017	1302324737
county	17	2009	Road Maintenance Fuel Levy	2018/2019	1362616001
county	16	2009	Total Conditional Additional Allocation	2018/2019	1371260080
county	16	2009	Total Conditional Additional Allocation	2019/2020	1379849081
country	KE	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 1 grant	2019/2020	1410000000
county	32	2009	Total Conditional Additional Allocation	2018/2019	1474865158
county	3	2009	Total Conditional Additional Allocation	2019/2020	1500516666
county	1	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	1550000000
county	32	2009	Total Conditional Additional Allocation	2019/2020	1591604871
county	8	2009	Total Conditional Additional Allocation	2018/2019	1611438084
county	7	2009	Total Conditional Additional Allocation	2018/2019	1619534869
county	1	2009	Total Conditional Additional Allocation	2019/2020	1658859269
county	12	2009	Other Loans & Grants	2015/2016	1700000000
county	12	2009	Total Conditional Additional Allocation	2016/2017	1710295000
county	9	2009	Road Maintenance Fuel Levy	2018/2019	1758195001
county	22	2009	Road Maintenance Fuel Levy	2018/2019	1885993000
county	22	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	1885993000
county	47	2009	Other Loans & Grants	2017/2018	2137641302
country	KE	2009	Other Loans & Grants	2015/2016	2146000000
country	KE	2009	KDSP (Level 1 Grant + FY 2016/2017 allocation)	2017/2018	2148000009
county	22	2009	Total Conditional Additional Allocation	2018/2019	2230951780
county	47	2009	Total Conditional Additional Allocation	2017/2018	2290502230
country	KE	2009	Leasing of Medical Equipment	2018/2019	2300000000
county	22	2009	Total Conditional Additional Allocation	2019/2020	2381409369
country	KE	2009	World Bank Loan for transforming health systems for Universal Care Project	2017/2018	2750000000
country	KE	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	2949138423
country	KE	2009	World Bank Transforming Health Systems for Universal Care Project	2019/2020	2994247736
country	KE	2009	Compensation for User Fee Foregone	2018/2019	3039000001
country	KE	2009	IDA (World Bank) Water & Sanitation Development Project (WSDP)	2019/2020	3500000000
country	KE	2009	Grants to Level5 Hospitals	2018/2019	3636589847
country	KE	2009	IDA (World Bank) Kenya Climate Smart Agriculture Project (KCSAP)	2019/2020	3643298670
country	KE	2009	Total Conditional Additional Allocation	2016/2017	3870679737
county	12	2009	Other Loans & Grants	2017/2018	3943731665
county	12	2009	Total Conditional Additional Allocation	2017/2018	4092379277
country	KE	2009	IDA (World Bank) Kenya Devolution Support Project (KDSP) Level 2 grant	2019/2020	4890000000
county	47	2009	Total Conditional Additional Allocation	2015/2016	6227800000
country	KE	2009	IDA (World Bank) National Agricultural and Rural Inclusive Growth Project (NARIGP)	2019/2020	7232719940
country	KE	2009	Other Loans & Grants	2017/2018	7837638872
country	KE	2009	Total Conditional Additional Allocation	2015/2016	10671178204
country	KE	2009	Road Maintenance Fuel Levy	2018/2019	11464702500
country	KE	2009	IDA (World Bank) Kenya Urban Support Project (KUSP) Urban Development Grant (UDG)	2019/2020	11464702500
country	KE	2009	Total Conditional Additional Allocation	2017/2018	16407826139
country	KE	2009	Total Conditional Additional Allocation	2018/2019	36981384138
country	KE	2009	Total Conditional Additional Allocation	2019/2020	38704877210
\.


--
-- Name: breakdown_condition_fund_dp pk_breakdown_condition_fund_dp; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_dp
    ADD CONSTRAINT pk_breakdown_condition_fund_dp PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

