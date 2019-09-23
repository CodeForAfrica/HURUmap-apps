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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdwon_condition_fund_c DROP CONSTRAINT IF EXISTS pk_breakdwon_condition_fund_c;
DROP TABLE IF EXISTS pesayetu.breakdwon_condition_fund_c;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdwon_condition_fund_c; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdwon_condition_fund_c (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdwon_condition_fund_c; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdwon_condition_fund_c (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
county	1		Grant to supplement financing for county health facilities	2014/2015	3920000
county	5		Grant to supplement financing for county health facilities	2014/2015	5260000
county	11		Grant to supplement financing for county health facilities	2014/2015	5590000
county	4		Grant to supplement financing for county health facilities	2014/2015	7110000
county	25		Grant to supplement financing for county health facilities	2014/2015	8610000
county	26		Grant to supplement financing for county health facilities	2014/2015	8950000
county	31		Grant to supplement financing for county health facilities	2014/2015	9350000
county	23		Grant to supplement financing for county health facilities	2014/2015	9890000
county	13		Grant to supplement financing for county health facilities	2014/2015	9950000
county	24		Grant to supplement financing for county health facilities	2014/2015	10000000
county	40		Grant to supplement financing for county health facilities	2014/2015	10310000
county	20		Grant to supplement financing for county health facilities	2014/2015	10390000
county	2		Grant to supplement financing for county health facilities	2014/2015	11240000
county	14		Grant to supplement financing for county health facilities	2014/2015	11370000
county	38		Grant to supplement financing for county health facilities	2014/2015	11790000
county	39		Grant to supplement financing for county health facilities	2014/2015	12370000
county	6		Grant to supplement financing for county health facilities	2014/2015	12430000
county	9		Grant to supplement financing for county health facilities	2014/2015	12440000
county	36		Grant to supplement financing for county health facilities	2014/2015	12570000
county	3		Grant to supplement financing for county health facilities	2014/2015	13150000
county	10		Grant to supplement financing for county health facilities	2014/2015	13170000
county	42		Grant to supplement financing for county health facilities	2014/2015	14200000
county	27		Grant to supplement financing for county health facilities	2014/2015	14940000
county	34		Grant to supplement financing for county health facilities	2014/2015	15510000
county	33		Grant to supplement financing for county health facilities	2014/2015	15510000
county	7		Grant to supplement financing for county health facilities	2014/2015	15560000
county	29		Grant to supplement financing for county health facilities	2014/2015	15930000
county	18		Grant to supplement financing for county health facilities	2014/2015	16480000
county	22		Grant to supplement financing for county health facilities	2014/2015	16820000
county	8		Grant to supplement financing for county health facilities	2014/2015	17710000
county	44		Grant to supplement financing for county health facilities	2014/2015	18060000
county	12		Grant to supplement financing for county health facilities	2014/2015	18410000
county	28		Grant to supplement financing for county health facilities	2014/2015	18420000
county	35		Grant to supplement financing for county health facilities	2014/2015	20220000
county	19		Grant to supplement financing for county health facilities	2014/2015	20550000
county	45		Grant to supplement financing for county health facilities	2014/2015	20570000
county	37		Grant to supplement financing for county health facilities	2014/2015	21120000
county	46		Grant to supplement financing for county health facilities	2014/2015	21540000
county	17		Grant to supplement financing for county health facilities	2014/2015	21750000
county	43		Grant to supplement financing for county health facilities	2014/2015	22390000
county	21		Grant to supplement financing for county health facilities	2014/2015	22430000
county	32		Grant to supplement financing for county health facilities	2014/2015	22880000
county	30		Grant to supplement financing for county health facilities	2014/2015	23790000
county	16		Grant to supplement financing for county health facilities	2014/2015	24320000
county	47		Grant to supplement financing for county health facilities	2014/2015	24920000
county	41		Grant to supplement financing for county health facilities	2014/2015	25150000
county	15		Grant to supplement financing for county health facilities	2014/2015	34610000
county	8		Loans and Grants to supplement financing for county functions	2014/2015	74092418
county	7		Loans and Grants to supplement financing for county functions	2014/2015	76242418
county	10		Loans and Grants to supplement financing for county functions	2014/2015	78632418
county	9		Loans and Grants to supplement financing for county functions	2014/2015	79362418
county	6		Loans and Grants to supplement financing for county functions	2014/2015	79372418
county	27		Loans and Grants to supplement financing for county functions	2014/2015	81492418
county	23		Loans and Grants to supplement financing for county functions	2014/2015	81912418
county	26		Loans and Grants to supplement financing for county functions	2014/2015	82852418
county	25		Loans and Grants to supplement financing for county functions	2014/2015	83192418
county	11		Loans and Grants to supplement financing for county functions	2014/2015	86212418
county	24		Loans and Grants to supplement financing for county functions	2014/2015	86432418
county	5		Loans and Grants to supplement financing for county functions	2014/2015	86542418
county	7		Total Conditional Additional Allocation	2014/2015	91802418
county	11		Total Conditional Additional Allocation	2014/2015	91802418
county	5		Total Conditional Additional Allocation	2014/2015	91802418
county	9		Total Conditional Additional Allocation	2014/2015	91802418
county	10		Total Conditional Additional Allocation	2014/2015	91802418
county	25		Total Conditional Additional Allocation	2014/2015	91802418
county	6		Total Conditional Additional Allocation	2014/2015	91802418
county	26		Total Conditional Additional Allocation	2014/2015	91802418
county	23		Total Conditional Additional Allocation	2014/2015	91802418
county	8		Total Conditional Additional Allocation	2014/2015	91802418
county	27		Total Conditional Additional Allocation	2014/2015	96432418
county	24		Total Conditional Additional Allocation	2014/2015	96432418
county	5		Total Conditional Additional Allocation	2013/2014	99237004
county	35		Loans and Grants to supplement financing for county functions	2014/2015	100607418
county	29		Loans and Grants to supplement financing for county functions	2014/2015	104869518
county	32		Loans and Grants to supplement financing for county functions	2014/2015	115334518
county	4		Loans and Grants to supplement financing for county functions	2014/2015	116687418
county	29		Total Conditional Additional Allocation	2014/2015	120799518
county	35		Total Conditional Additional Allocation	2014/2015	120827418
county	28		Loans and Grants to supplement financing for county functions	2014/2015	120942418
county	4		Total Conditional Additional Allocation	2014/2015	123797418
county	1		Loans and Grants to supplement financing for county functions	2014/2015	127809518
county	18		Loans and Grants to supplement financing for county functions	2014/2015	129294518
county	3		Loans and Grants to supplement financing for county functions	2014/2015	129452418
county	22		Loans and Grants to supplement financing for county functions	2014/2015	131384518
county	1		Total Conditional Additional Allocation	2014/2015	131729518
county	46		Loans and Grants to supplement financing for county functions	2014/2015	132362418
county	45		Loans and Grants to supplement financing for county functions	2014/2015	135329518
county	36		Loans and Grants to supplement financing for county functions	2014/2015	138199518
county	32		Total Conditional Additional Allocation	2014/2015	138214518
county	28		Total Conditional Additional Allocation	2014/2015	139362418
county	13		Total Conditional Additional Allocation	2013/2014	139762124
county	3		Total Conditional Additional Allocation	2014/2015	142602418
county	18		Total Conditional Additional Allocation	2014/2015	145774518
county	31		Loans and Grants to supplement financing for county functions	2014/2015	145874518
county	22		Total Conditional Additional Allocation	2014/2015	148204518
county	36		Total Conditional Additional Allocation	2014/2015	150769518
county	46		Total Conditional Additional Allocation	2014/2015	153902418
county	31		Total Conditional Additional Allocation	2014/2015	155224518
county	45		Total Conditional Additional Allocation	2014/2015	155899518
county	2		Loans and Grants to supplement financing for county functions	2014/2015	157242418
county	30		Loans and Grants to supplement financing for county functions	2014/2015	159086218
county	2		Total Conditional Additional Allocation	2014/2015	168482418
county	30		Total Conditional Additional Allocation	2014/2015	182876218
county	11		Total Conditional Additional Allocation	2013/2014	187893545
county	33		Loans and Grants to supplement financing for county functions	2014/2015	189906618
county	43		Loans and Grants to supplement financing for county functions	2014/2015	193072418
county	26		Total Conditional Additional Allocation	2013/2014	193134230
county	42		Loans and Grants to supplement financing for county functions	2014/2015	196329518
county	38		Total Conditional Additional Allocation	2013/2014	196974298
county	44		Loans and Grants to supplement financing for county functions	2014/2015	198426618
county	34		Loans and Grants to supplement financing for county functions	2014/2015	198644418
county	4		Total Conditional Additional Allocation	2013/2014	204478573
county	33		Total Conditional Additional Allocation	2014/2015	205416618
county	6		Total Conditional Additional Allocation	2013/2014	205852212
county	25		Total Conditional Additional Allocation	2013/2014	206938875
county	42		Total Conditional Additional Allocation	2014/2015	210529518
county	34		Total Conditional Additional Allocation	2014/2015	214154418
county	43		Total Conditional Additional Allocation	2014/2015	215462418
county	44		Total Conditional Additional Allocation	2014/2015	216486618
county	23		Total Conditional Additional Allocation	2013/2014	229995474
county	9		Total Conditional Additional Allocation	2013/2014	230310408
county	31		Total Conditional Additional Allocation	2013/2014	234821897
county	20		Total Conditional Additional Allocation	2013/2014	242055751
county	15		Loans and Grants to supplement financing for county functions	2014/2015	265106518
county	40		Total Conditional Additional Allocation	2013/2014	266369417
county	20		Loans and Grants to supplement financing for county functions	2014/2015	267186292
county	27		Total Conditional Additional Allocation	2013/2014	270261206
county	36		Total Conditional Additional Allocation	2013/2014	272582727
county	10		Total Conditional Additional Allocation	2013/2014	272856567
county	20		Total Conditional Additional Allocation	2014/2015	277576292
county	46		Total Conditional Additional Allocation	2013/2014	278440754
county	16		Loans and Grants to supplement financing for county functions	2014/2015	278667289
county	33		Total Conditional Additional Allocation	2013/2014	278791611
county	2		Total Conditional Additional Allocation	2013/2014	280447997
county	34		Total Conditional Additional Allocation	2013/2014	284382199
county	18		Total Conditional Additional Allocation	2013/2014	284911755
county	17		Loans and Grants to supplement financing for county functions	2014/2015	287383344
county	19		Loans and Grants to supplement financing for county functions	2014/2015	296317785
county	15		Total Conditional Additional Allocation	2014/2015	299716518
county	16		Total Conditional Additional Allocation	2014/2015	302987289
county	17		Total Conditional Additional Allocation	2014/2015	309133344
county	21		Loans and Grants to supplement financing for county functions	2014/2015	311582785
county	19		Total Conditional Additional Allocation	2014/2015	316867785
county	35		Total Conditional Additional Allocation	2013/2014	317792977
county	41		Total Conditional Additional Allocation	2013/2014	318012871
county	21		Total Conditional Additional Allocation	2014/2015	334012785
county	39		Total Conditional Additional Allocation	2013/2014	334595329
county	17		Total Conditional Additional Allocation	2013/2014	354912725
county	8		Total Conditional Additional Allocation	2013/2014	357469372
county	3		Total Conditional Additional Allocation	2013/2014	377885641
county	30		Total Conditional Additional Allocation	2013/2014	382555501
county	47		Total Conditional Additional Allocation	2013/2014	390470421
county	38		Loans and Grants to supplement financing for county functions	2014/2015	398666808
county	21		Total Conditional Additional Allocation	2013/2014	404431503
county	29		Total Conditional Additional Allocation	2013/2014	408946759
county	38		Total Conditional Additional Allocation	2014/2015	410456808
county	14		Loans and Grants to supplement financing for county functions	2014/2015	415124990
county	14		Total Conditional Additional Allocation	2014/2015	426494990
county	24		Total Conditional Additional Allocation	2013/2014	437777043
county	7		Total Conditional Additional Allocation	2013/2014	475032960
county	44		Total Conditional Additional Allocation	2013/2014	490967787
county	15		Total Conditional Additional Allocation	2013/2014	519086118
county	16		Total Conditional Additional Allocation	2013/2014	523080848
county	1		Total Conditional Additional Allocation	2013/2014	545817618
county	14		Total Conditional Additional Allocation	2013/2014	557198402
county	41		Loans and Grants to supplement financing for county functions	2014/2015	628456711
county	45		Total Conditional Additional Allocation	2013/2014	635954331
county	40		Loans and Grants to supplement financing for county functions	2014/2015	650824231
county	41		Total Conditional Additional Allocation	2014/2015	653606711
county	40		Total Conditional Additional Allocation	2014/2015	661134231
county	13		Loans and Grants to supplement financing for county functions	2014/2015	688873239
county	13		Total Conditional Additional Allocation	2014/2015	698823239
county	39		Loans and Grants to supplement financing for county functions	2014/2015	699047035
county	42		Total Conditional Additional Allocation	2013/2014	711380679
county	39		Total Conditional Additional Allocation	2014/2015	711417035
country	KE		Grant to supplement financing for county health facilities	2014/2015	733650000
county	28		Total Conditional Additional Allocation	2013/2014	744501814
county	12		Total Conditional Additional Allocation	2013/2014	758421849
county	22		Total Conditional Additional Allocation	2013/2014	805574808
county	19		Total Conditional Additional Allocation	2013/2014	817147697
county	37		Total Conditional Additional Allocation	2013/2014	840702017
county	37		Loans and Grants to supplement financing for county functions	2014/2015	934576758
county	37		Total Conditional Additional Allocation	2014/2015	955696758
county	32		Total Conditional Additional Allocation	2013/2014	1024998693
county	12		Loans and Grants to supplement financing for county functions	2014/2015	1565594384
county	47		Loans and Grants to supplement financing for county functions	2014/2015	1580419854
county	12		Total Conditional Additional Allocation	2014/2015	1584004384
county	43		Total Conditional Additional Allocation	2013/2014	1604785613
county	47		Total Conditional Additional Allocation	2014/2015	1605339854
country	KE		Loans and Grants to supplement financing for county functions	2014/2015	13165023499
country	KE		Total Conditional Additional Allocation	2014/2015	13898673499
country	KE		Total Conditional Additional Allocation	2013/2014	20000000000
\.


--
-- Name: breakdwon_condition_fund_c pk_breakdwon_condition_fund_c; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdwon_condition_fund_c
    ADD CONSTRAINT pk_breakdwon_condition_fund_c PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

