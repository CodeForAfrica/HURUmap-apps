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

ALTER TABLE IF EXISTS ONLY pesayetu.health_centres_support DROP CONSTRAINT IF EXISTS pk_financial_year;
DROP TABLE IF EXISTS pesayetu.health_centres_support;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: financial_year; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.health_centres_support (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    financial_year character varying(128) NOT NULL,
    total double precision
);


--
-- Data for Name: financial_year; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.health_centres_support (geo_level, geo_code, geo_version, financial_year, total) FROM stdin;
county	30	2009	2018/2019	13191000
county	30	2009	2019/2020	13191000
county	36	2009	2018/2019	16713356
county	36	2009	2019/2020	16713356
county	39	2009	2018/2019	32837307
county	39	2009	2019/2020	32837307
county	40	2009	2018/2019	16934085
county	40	2009	2019/2020	16934085
county	28	2009	2018/2019	8788919
county	28	2009	2019/2020	8788919
county	14	2009	2018/2019	10724225
county	14	2009	2019/2020	10724225
county	7	2009	2018/2019	12964636
county	7	2009	2019/2020	12964636
county	43	2009	2018/2019	22185346
county	43	2009	2019/2020	22185346
county	11	2009	2018/2019	3472461
county	11	2009	2019/2020	3472461
county	34	2009	2018/2019	16955365
county	34	2009	2019/2020	16955365
county	37	2009	2018/2019	37789290
county	37	2009	2019/2020	37789290
country	KE	2009	2018/2019	900000000
country	KE	2009	2019/2020	900000000
county	35	2009	2018/2019	18048789
county	35	2009	2019/2020	18048789
county	22	2009	2018/2019	34671542
county	22	2009	2019/2020	34671542
county	3	2009	2018/2019	25969864
county	3	2009	2019/2020	25969864
county	20	2009	2018/2019	11282570
county	20	2009	2019/2020	11282570
county	45	2009	2018/2019	26138997
county	45	2009	2019/2020	26138997
county	42	2009	2018/2019	21299489
county	42	2009	2019/2020	21299489
county	15	2009	2018/2019	22499906
county	15	2009	2019/2020	22499906
county	2	2009	2018/2019	15209593
county	2	2009	2019/2020	15209593
county	31	2009	2018/2019	9968208
county	31	2009	2019/2020	9968208
county	5	2009	2018/2019	2451034
county	5	2009	2019/2020	2451034
county	16	2009	2018/2019	24129039
county	16	2009	2019/2020	24129039
county	17	2009	2018/2019	19435760
county	17	2009	2019/2020	19435760
county	9	2009	2018/2019	25474920
county	9	2009	2019/2020	25474920
county	10	2009	2018/2019	6643714
county	10	2009	2019/2020	6643714
county	12	2009	2018/2019	31648428
county	12	2009	2019/2020	31648428
county	44	2009	2018/2019	21655884
county	44	2009	2019/2020	21655884
county	1	2009	2018/2019	23385934
county	1	2009	2019/2020	23385934
county	21	2009	2018/2019	20138691
county	21	2009	2019/2020	20138691
county	47	2009	2018/2019	79423251
county	47	2009	2019/2020	79423251
county	32	2009	2018/2019	38723265
county	32	2009	2019/2020	38723265
county	29	2009	2018/2019	18086363
county	29	2009	2019/2020	18086363
county	33	2009	2018/2019	20595297
county	33	2009	2019/2020	20595297
county	46	2009	2018/2019	13175221
county	46	2009	2019/2020	13175221
county	18	2009	2018/2019	12735922
county	18	2009	2019/2020	12735922
county	19	2009	2018/2019	13701379
county	19	2009	2019/2020	13701379
county	25	2009	2018/2019	5235578
county	25	2009	2019/2020	5235578
county	41	2009	2018/2019	18194808
county	41	2009	2019/2020	18194808
county	6	2009	2018/2019	5296305
county	6	2009	2019/2020	5296305
county	4	2009	2018/2019	5682537
county	4	2009	2019/2020	5682537
county	13	2009	2018/2019	8218119
county	13	2009	2019/2020	8218119
county	26	2009	2018/2019	21304915
county	26	2009	2019/2020	21304915
county	23	2009	2018/2019	25634941
county	23	2009	2019/2020	25634941
county	27	2009	2018/2019	20813065
county	27	2009	2019/2020	20813065
county	38	2009	2018/2019	12657201
county	38	2009	2019/2020	12657201
county	8	2009	2018/2019	15784997
county	8	2009	2019/2020	15784997
county	24	2009	2018/2019	12128484
county	24	2009	2019/2020	12128484
\.


--
-- Name: financial_year pk_financial_year; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.health_centres_support
    ADD CONSTRAINT pk_financial_year PRIMARY KEY (geo_level, geo_code, geo_version, financial_year);


--
-- PostgreSQL database dump complete
--

