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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_combined_2014 DROP CONSTRAINT IF EXISTS pk_breakdown_combined_2014;
DROP TABLE IF EXISTS pesayetu.breakdown_combined_2014;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_combined_2014; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_combined_2014 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_combined_2014; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_combined_2014 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
country	KE	2009	Grant to supplement financing for county health facilities	2014/2015	733650000
county	30	2009	Grant to supplement financing for county health facilities	2014/2015	23790000
county	36	2009	Grant to supplement financing for county health facilities	2014/2015	12570000
county	39	2009	Grant to supplement financing for county health facilities	2014/2015	12370000
county	40	2009	Grant to supplement financing for county health facilities	2014/2015	10310000
county	28	2009	Grant to supplement financing for county health facilities	2014/2015	18420000
county	14	2009	Grant to supplement financing for county health facilities	2014/2015	11370000
county	7	2009	Grant to supplement financing for county health facilities	2014/2015	15560000
county	43	2009	Grant to supplement financing for county health facilities	2014/2015	22390000
county	11	2009	Grant to supplement financing for county health facilities	2014/2015	5590000
county	34	2009	Grant to supplement financing for county health facilities	2014/2015	15510000
county	37	2009	Grant to supplement financing for county health facilities	2014/2015	21120000
country	KE	2009	Grant to supplement financing for county health facilities	2014/2015	733650000
county	35	2009	Grant to supplement financing for county health facilities	2014/2015	20220000
county	22	2009	Grant to supplement financing for county health facilities	2014/2015	16820000
county	3	2009	Grant to supplement financing for county health facilities	2014/2015	13150000
county	20	2009	Grant to supplement financing for county health facilities	2014/2015	10390000
county	45	2009	Grant to supplement financing for county health facilities	2014/2015	20570000
county	42	2009	Grant to supplement financing for county health facilities	2014/2015	14200000
county	15	2009	Grant to supplement financing for county health facilities	2014/2015	34610000
county	2	2009	Grant to supplement financing for county health facilities	2014/2015	11240000
county	31	2009	Grant to supplement financing for county health facilities	2014/2015	9350000
county	5	2009	Grant to supplement financing for county health facilities	2014/2015	5260000
county	16	2009	Grant to supplement financing for county health facilities	2014/2015	24320000
county	17	2009	Grant to supplement financing for county health facilities	2014/2015	21750000
county	9	2009	Grant to supplement financing for county health facilities	2014/2015	12440000
county	10	2009	Grant to supplement financing for county health facilities	2014/2015	13170000
county	12	2009	Grant to supplement financing for county health facilities	2014/2015	18410000
county	44	2009	Grant to supplement financing for county health facilities	2014/2015	18060000
county	1	2009	Grant to supplement financing for county health facilities	2014/2015	3920000
county	21	2009	Grant to supplement financing for county health facilities	2014/2015	22430000
county	47	2009	Grant to supplement financing for county health facilities	2014/2015	24920000
county	32	2009	Grant to supplement financing for county health facilities	2014/2015	22880000
county	29	2009	Grant to supplement financing for county health facilities	2014/2015	15930000
county	33	2009	Grant to supplement financing for county health facilities	2014/2015	15510000
county	46	2009	Grant to supplement financing for county health facilities	2014/2015	21540000
county	18	2009	Grant to supplement financing for county health facilities	2014/2015	16480000
county	19	2009	Grant to supplement financing for county health facilities	2014/2015	20550000
county	25	2009	Grant to supplement financing for county health facilities	2014/2015	8610000
county	41	2009	Grant to supplement financing for county health facilities	2014/2015	25150000
county	6	2009	Grant to supplement financing for county health facilities	2014/2015	12430000
county	4	2009	Grant to supplement financing for county health facilities	2014/2015	7110000
county	13	2009	Grant to supplement financing for county health facilities	2014/2015	9950000
county	26	2009	Grant to supplement financing for county health facilities	2014/2015	8950000
county	23	2009	Grant to supplement financing for county health facilities	2014/2015	9890000
county	27	2009	Grant to supplement financing for county health facilities	2014/2015	14940000
county	38	2009	Grant to supplement financing for county health facilities	2014/2015	11790000
county	8	2009	Grant to supplement financing for county health facilities	2014/2015	17710000
county	24	2009	Grant to supplement financing for county health facilities	2014/2015	10000000
country	KE	2009	Loans and Grants to supplement financing for county functions	2014/2015	13165023499
county	30	2009	Loans and Grants to supplement financing for county functions	2014/2015	159086218
county	36	2009	Loans and Grants to supplement financing for county functions	2014/2015	138199518
county	39	2009	Loans and Grants to supplement financing for county functions	2014/2015	699047035
county	40	2009	Loans and Grants to supplement financing for county functions	2014/2015	650824231
county	28	2009	Loans and Grants to supplement financing for county functions	2014/2015	120942418
county	14	2009	Loans and Grants to supplement financing for county functions	2014/2015	415124990
county	7	2009	Loans and Grants to supplement financing for county functions	2014/2015	76242418
county	43	2009	Loans and Grants to supplement financing for county functions	2014/2015	193072418
county	11	2009	Loans and Grants to supplement financing for county functions	2014/2015	86212418
county	34	2009	Loans and Grants to supplement financing for county functions	2014/2015	198644418
county	37	2009	Loans and Grants to supplement financing for county functions	2014/2015	934576758
country	KE	2009	Loans and Grants to supplement financing for county functions	2014/2015	13165023499
county	35	2009	Loans and Grants to supplement financing for county functions	2014/2015	100607418
county	22	2009	Loans and Grants to supplement financing for county functions	2014/2015	131384518
county	3	2009	Loans and Grants to supplement financing for county functions	2014/2015	129452418
county	20	2009	Loans and Grants to supplement financing for county functions	2014/2015	267186292
county	45	2009	Loans and Grants to supplement financing for county functions	2014/2015	135329518
county	42	2009	Loans and Grants to supplement financing for county functions	2014/2015	196329518
county	15	2009	Loans and Grants to supplement financing for county functions	2014/2015	265106518
county	2	2009	Loans and Grants to supplement financing for county functions	2014/2015	157242418
county	31	2009	Loans and Grants to supplement financing for county functions	2014/2015	145874518
county	5	2009	Loans and Grants to supplement financing for county functions	2014/2015	86542418
county	16	2009	Loans and Grants to supplement financing for county functions	2014/2015	278667289
county	17	2009	Loans and Grants to supplement financing for county functions	2014/2015	287383344
county	9	2009	Loans and Grants to supplement financing for county functions	2014/2015	79362418
county	10	2009	Loans and Grants to supplement financing for county functions	2014/2015	78632418
county	12	2009	Loans and Grants to supplement financing for county functions	2014/2015	1565594384
county	44	2009	Loans and Grants to supplement financing for county functions	2014/2015	198426618
county	1	2009	Loans and Grants to supplement financing for county functions	2014/2015	127809518
county	21	2009	Loans and Grants to supplement financing for county functions	2014/2015	311582785
county	47	2009	Loans and Grants to supplement financing for county functions	2014/2015	1580419854
county	32	2009	Loans and Grants to supplement financing for county functions	2014/2015	115334518
county	29	2009	Loans and Grants to supplement financing for county functions	2014/2015	104869518
county	33	2009	Loans and Grants to supplement financing for county functions	2014/2015	189906618
county	46	2009	Loans and Grants to supplement financing for county functions	2014/2015	132362418
county	18	2009	Loans and Grants to supplement financing for county functions	2014/2015	129294518
county	19	2009	Loans and Grants to supplement financing for county functions	2014/2015	296317785
county	25	2009	Loans and Grants to supplement financing for county functions	2014/2015	83192418
county	41	2009	Loans and Grants to supplement financing for county functions	2014/2015	628456711
county	6	2009	Loans and Grants to supplement financing for county functions	2014/2015	79372418
county	4	2009	Loans and Grants to supplement financing for county functions	2014/2015	116687418
county	13	2009	Loans and Grants to supplement financing for county functions	2014/2015	688873239
county	26	2009	Loans and Grants to supplement financing for county functions	2014/2015	82852418
county	23	2009	Loans and Grants to supplement financing for county functions	2014/2015	81912418
county	27	2009	Loans and Grants to supplement financing for county functions	2014/2015	81492418
county	38	2009	Loans and Grants to supplement financing for county functions	2014/2015	398666808
county	8	2009	Loans and Grants to supplement financing for county functions	2014/2015	74092418
county	24	2009	Loans and Grants to supplement financing for county functions	2014/2015	86432418
\.


--
-- Name: breakdown_combined_2014 pk_breakdown_combined_2014; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_combined_2014
    ADD CONSTRAINT pk_breakdown_combined_2014 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

