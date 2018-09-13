--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

-- Started on 2018-09-13 12:54:41 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 356 (class 1259 OID 71288)
-- Name: redistributionprogrammeoutcomebyyear; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.redistributionprogrammeoutcomebyyear (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    year character varying(128) NOT NULL,
    "outcome of redistribution programme" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.redistributionprogrammeoutcomebyyear OWNER TO our_land;

--
-- TOC entry 3369 (class 0 OID 71288)
-- Dependencies: 356
-- Data for Name: redistributionprogrammeoutcomebyyear; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.redistributionprogrammeoutcomebyyear (geo_level, geo_code, geo_version, year, "outcome of redistribution programme", total) FROM stdin;
province	EC	2016	2009/2010	projects transferred	64
province	FS	2016	2009/2010	projects transferred	55
province	GT	2016	2009/2010	projects transferred	20
province	KZN	2016	2009/2010	projects transferred	66
province	LIM	2016	2009/2010	projects transferred	77
province	MP	2016	2009/2010	projects transferred	35
province	NC	2016	2009/2010	projects transferred	14
province	NW	2016	2009/2010	projects transferred	25
province	WC	2016	2009/2010	projects transferred	18
province	EC	2016	2010/2011	projects transferred	35
province	FS	2016	2010/2011	projects transferred	21
province	GT	2016	2010/2011	projects transferred	21
province	KZN	2016	2010/2011	projects transferred	60
province	LIM	2016	2010/2011	projects transferred	18
province	MP	2016	2010/2011	projects transferred	53
province	NC	2016	2010/2011	projects transferred	28
province	NW	2016	2010/2011	projects transferred	44
province	WC	2016	2010/2011	projects transferred	11
province	EC	2016	2011/2012	projects transferred	55
province	FS	2016	2011/2012	projects transferred	41
province	GT	2016	2011/2012	projects transferred	23
province	KZN	2016	2011/2012	projects transferred	61
province	LIM	2016	2011/2012	projects transferred	24
province	MP	2016	2011/2012	projects transferred	39
province	NC	2016	2011/2012	projects transferred	19
province	NW	2016	2011/2012	projects transferred	38
province	WC	2016	2011/2012	projects transferred	11
province	EC	2016	2012/2013	projects transferred	27
province	FS	2016	2012/2013	projects transferred	28
province	GT	2016	2012/2013	projects transferred	13
province	KZN	2016	2012/2013	projects transferred	30
province	LIM	2016	2012/2013	projects transferred	12
province	MP	2016	2012/2013	projects transferred	33
province	NC	2016	2012/2013	projects transferred	10
province	NW	2016	2012/2013	projects transferred	26
province	WC	2016	2012/2013	projects transferred	6
province	EC	2016	2013/2014	projects transferred	30
province	FS	2016	2013/2014	projects transferred	9
province	GT	2016	2013/2014	projects transferred	17
province	KZN	2016	2013/2014	projects transferred	27
province	LIM	2016	2013/2014	projects transferred	8
province	MP	2016	2013/2014	projects transferred	23
province	NC	2016	2013/2014	projects transferred	8
province	NW	2016	2013/2014	projects transferred	31
province	WC	2016	2013/2014	projects transferred	2
province	EC	2016	2014/2015	projects transferred	19
province	FS	2016	2014/2015	projects transferred	14
province	GT	2016	2014/2015	projects transferred	17
province	KZN	2016	2014/2015	projects transferred	15
province	LIM	2016	2014/2015	projects transferred	13
province	MP	2016	2014/2015	projects transferred	10
province	NC	2016	2014/2015	projects transferred	14
province	NW	2016	2014/2015	projects transferred	32
province	WC	2016	2014/2015	projects transferred	10
province	EC	2016	2015/2016	projects transferred	16
province	FS	2016	2015/2016	projects transferred	14
province	GT	2016	2015/2016	projects transferred	11
province	KZN	2016	2015/2016	projects transferred	18
province	LIM	2016	2015/2016	projects transferred	11
province	MP	2016	2015/2016	projects transferred	10
province	NC	2016	2015/2016	projects transferred	13
province	NW	2016	2015/2016	projects transferred	9
province	WC	2016	2015/2016	projects transferred	2
province	EC	2016	2016/2017	projects transferred	11
province	FS	2016	2016/2017	projects transferred	7
province	GT	2016	2016/2017	projects transferred	8
province	KZN	2016	2016/2017	projects transferred	19
province	LIM	2016	2016/2017	projects transferred	10
province	MP	2016	2016/2017	projects transferred	7
province	NC	2016	2016/2017	projects transferred	11
province	NW	2016	2016/2017	projects transferred	9
province	WC	2016	2016/2017	projects transferred	3
province	EC	2016	2017/2018	projects transferred	4
province	FS	2016	2017/2018	projects transferred	10
province	GT	2016	2017/2018	projects transferred	6
province	KZN	2016	2017/2018	projects transferred	20
province	LIM	2016	2017/2018	projects transferred	8
province	MP	2016	2017/2018	projects transferred	9
province	NC	2016	2017/2018	projects transferred	7
province	NW	2016	2017/2018	projects transferred	10
province	WC	2016	2017/2018	projects transferred	1
province	EC	2016	2009/2010	benefited beneficiaries	844
province	FS	2016	2009/2010	benefited beneficiaries	382
province	GT	2016	2009/2010	benefited beneficiaries	74
province	KZN	2016	2009/2010	benefited beneficiaries	4158
province	LIM	2016	2009/2010	benefited beneficiaries	563
province	MP	2016	2009/2010	benefited beneficiaries	1053
province	NC	2016	2009/2010	benefited beneficiaries	98
province	NW	2016	2009/2010	benefited beneficiaries	3117
province	WC	2016	2009/2010	benefited beneficiaries	1073
province	EC	2016	2010/2011	benefited beneficiaries	281
province	FS	2016	2010/2011	benefited beneficiaries	102
province	GT	2016	2010/2011	benefited beneficiaries	161
province	KZN	2016	2010/2011	benefited beneficiaries	1388
province	LIM	2016	2010/2011	benefited beneficiaries	99
province	MP	2016	2010/2011	benefited beneficiaries	152
province	NC	2016	2010/2011	benefited beneficiaries	91
province	NW	2016	2010/2011	benefited beneficiaries	183
province	WC	2016	2010/2011	benefited beneficiaries	240
province	EC	2016	2011/2012	benefited beneficiaries	148
province	FS	2016	2011/2012	benefited beneficiaries	21
province	GT	2016	2011/2012	benefited beneficiaries	0
province	KZN	2016	2011/2012	benefited beneficiaries	873
province	LIM	2016	2011/2012	benefited beneficiaries	68
province	MP	2016	2011/2012	benefited beneficiaries	56
province	NC	2016	2011/2012	benefited beneficiaries	26
province	NW	2016	2011/2012	benefited beneficiaries	0
province	WC	2016	2011/2012	benefited beneficiaries	20
province	EC	2016	2012/2013	benefited beneficiaries	120
province	FS	2016	2012/2013	benefited beneficiaries	2
province	GT	2016	2012/2013	benefited beneficiaries	18
province	KZN	2016	2012/2013	benefited beneficiaries	257
province	LIM	2016	2012/2013	benefited beneficiaries	18
province	MP	2016	2012/2013	benefited beneficiaries	0
province	NC	2016	2012/2013	benefited beneficiaries	6
province	NW	2016	2012/2013	benefited beneficiaries	1
province	WC	2016	2012/2013	benefited beneficiaries	8
province	EC	2016	2013/2014	benefited beneficiaries	81
province	FS	2016	2013/2014	benefited beneficiaries	9
province	GT	2016	2013/2014	benefited beneficiaries	16
province	KZN	2016	2013/2014	benefited beneficiaries	85
province	LIM	2016	2013/2014	benefited beneficiaries	2109
province	MP	2016	2013/2014	benefited beneficiaries	20
province	NC	2016	2013/2014	benefited beneficiaries	10
province	NW	2016	2013/2014	benefited beneficiaries	32
province	WC	2016	2013/2014	benefited beneficiaries	1
province	EC	2016	2014/2015	benefited beneficiaries	79
province	FS	2016	2014/2015	benefited beneficiaries	5
province	GT	2016	2014/2015	benefited beneficiaries	19
province	KZN	2016	2014/2015	benefited beneficiaries	178
province	LIM	2016	2014/2015	benefited beneficiaries	16
province	MP	2016	2014/2015	benefited beneficiaries	4
province	NC	2016	2014/2015	benefited beneficiaries	28
province	NW	2016	2014/2015	benefited beneficiaries	35
province	WC	2016	2014/2015	benefited beneficiaries	6
province	EC	2016	2015/2016	benefited beneficiaries	82
province	FS	2016	2015/2016	benefited beneficiaries	100
province	GT	2016	2015/2016	benefited beneficiaries	18
province	KZN	2016	2015/2016	benefited beneficiaries	104
province	LIM	2016	2015/2016	benefited beneficiaries	20
province	MP	2016	2015/2016	benefited beneficiaries	71
province	NC	2016	2015/2016	benefited beneficiaries	47
province	NW	2016	2015/2016	benefited beneficiaries	11
province	WC	2016	2015/2016	benefited beneficiaries	11
province	EC	2016	2016/2017	benefited beneficiaries	59
province	FS	2016	2016/2017	benefited beneficiaries	5
province	GT	2016	2016/2017	benefited beneficiaries	14
province	KZN	2016	2016/2017	benefited beneficiaries	602
province	LIM	2016	2016/2017	benefited beneficiaries	15
province	MP	2016	2016/2017	benefited beneficiaries	220
province	NC	2016	2016/2017	benefited beneficiaries	11
province	NW	2016	2016/2017	benefited beneficiaries	52
province	WC	2016	2016/2017	benefited beneficiaries	293
province	EC	2016	2017/2018	benefited beneficiaries	31
province	FS	2016	2017/2018	benefited beneficiaries	306
province	GT	2016	2017/2018	benefited beneficiaries	114
province	KZN	2016	2017/2018	benefited beneficiaries	736
province	LIM	2016	2017/2018	benefited beneficiaries	16
province	MP	2016	2017/2018	benefited beneficiaries	85
province	NC	2016	2017/2018	benefited beneficiaries	12
province	NW	2016	2017/2018	benefited beneficiaries	39
province	WC	2016	2017/2018	benefited beneficiaries	9
province	EC	2016	2009/2010	benefited households	188
province	FS	2016	2009/2010	benefited households	10
province	GT	2016	2009/2010	benefited households	30
province	KZN	2016	2009/2010	benefited households	1690
province	LIM	2016	2009/2010	benefited households	132
province	MP	2016	2009/2010	benefited households	77
province	NC	2016	2009/2010	benefited households	0
province	NW	2016	2009/2010	benefited households	814
province	WC	2016	2009/2010	benefited households	3
province	EC	2016	2010/2011	benefited households	91
province	FS	2016	2010/2011	benefited households	20
province	GT	2016	2010/2011	benefited households	90
province	KZN	2016	2010/2011	benefited households	242
province	LIM	2016	2010/2011	benefited households	50
province	MP	2016	2010/2011	benefited households	14
province	NC	2016	2010/2011	benefited households	0
province	NW	2016	2010/2011	benefited households	58
province	WC	2016	2010/2011	benefited households	209
province	EC	2016	2011/2012	benefited households	70
province	FS	2016	2011/2012	benefited households	0
province	GT	2016	2011/2012	benefited households	0
province	KZN	2016	2011/2012	benefited households	221
province	LIM	2016	2011/2012	benefited households	30
province	MP	2016	2011/2012	benefited households	16
province	NC	2016	2011/2012	benefited households	0
province	NW	2016	2011/2012	benefited households	0
province	WC	2016	2011/2012	benefited households	17
province	EC	2016	2012/2013	benefited households	69
province	FS	2016	2012/2013	benefited households	0
province	GT	2016	2012/2013	benefited households	9
province	KZN	2016	2012/2013	benefited households	74
province	LIM	2016	2012/2013	benefited households	13
province	MP	2016	2012/2013	benefited households	0
province	NC	2016	2012/2013	benefited households	0
province	NW	2016	2012/2013	benefited households	1
province	WC	2016	2012/2013	benefited households	11
province	EC	2016	2013/2014	benefited households	55
province	FS	2016	2013/2014	benefited households	3
province	GT	2016	2013/2014	benefited households	14
province	KZN	2016	2013/2014	benefited households	7
province	LIM	2016	2013/2014	benefited households	7
province	MP	2016	2013/2014	benefited households	0
province	NC	2016	2013/2014	benefited households	0
province	NW	2016	2013/2014	benefited households	24
province	WC	2016	2013/2014	benefited households	0
province	EC	2016	2014/2015	benefited households	38
province	FS	2016	2014/2015	benefited households	3
province	GT	2016	2014/2015	benefited households	5
province	KZN	2016	2014/2015	benefited households	147
province	LIM	2016	2014/2015	benefited households	15
province	MP	2016	2014/2015	benefited households	18
province	NC	2016	2014/2015	benefited households	16
province	NW	2016	2014/2015	benefited households	37
province	WC	2016	2014/2015	benefited households	1
province	EC	2016	2015/2016	benefited households	38
province	FS	2016	2015/2016	benefited households	16
province	GT	2016	2015/2016	benefited households	3
province	KZN	2016	2015/2016	benefited households	15
province	LIM	2016	2015/2016	benefited households	14
province	MP	2016	2015/2016	benefited households	35
province	NC	2016	2015/2016	benefited households	42
province	NW	2016	2015/2016	benefited households	20
province	WC	2016	2015/2016	benefited households	8
province	EC	2016	2016/2017	benefited households	54
province	FS	2016	2016/2017	benefited households	2
province	GT	2016	2016/2017	benefited households	6
province	KZN	2016	2016/2017	benefited households	116
province	LIM	2016	2016/2017	benefited households	15
province	MP	2016	2016/2017	benefited households	170
province	NC	2016	2016/2017	benefited households	11
province	NW	2016	2016/2017	benefited households	37
province	WC	2016	2016/2017	benefited households	85
province	EC	2016	2017/2018	benefited households	25
province	FS	2016	2017/2018	benefited households	23
province	GT	2016	2017/2018	benefited households	2
province	KZN	2016	2017/2018	benefited households	358
province	LIM	2016	2017/2018	benefited households	12
province	MP	2016	2017/2018	benefited households	16
province	NC	2016	2017/2018	benefited households	10
province	NW	2016	2017/2018	benefited households	32
province	WC	2016	2017/2018	benefited households	0
country	ZA	2016	2009/2010	projects transferred	374
country	ZA	2016	2010/2011	projects transferred	291
country	ZA	2016	2011/2012	projects transferred	311
country	ZA	2016	2012/2013	projects transferred	185
country	ZA	2016	2013/2014	projects transferred	155
country	ZA	2016	2014/2015	projects transferred	144
country	ZA	2016	2015/2016	projects transferred	104
country	ZA	2016	2016/2017	projects transferred	85
country	ZA	2016	2017/2018	projects transferred	75
country	ZA	2016	2009/2010	benefited beneficiaries	11362
country	ZA	2016	2010/2011	benefited beneficiaries	2697
country	ZA	2016	2011/2012	benefited beneficiaries	1212
country	ZA	2016	2012/2013	benefited beneficiaries	430
country	ZA	2016	2013/2014	benefited beneficiaries	2363
country	ZA	2016	2014/2015	benefited beneficiaries	370
country	ZA	2016	2015/2016	benefited beneficiaries	464
country	ZA	2016	2016/2017	benefited beneficiaries	1271
country	ZA	2016	2017/2018	benefited beneficiaries	1348
country	ZA	2016	2009/2010	benefited households	2944
country	ZA	2016	2010/2011	benefited households	774
country	ZA	2016	2011/2012	benefited households	354
country	ZA	2016	2012/2013	benefited households	177
country	ZA	2016	2013/2014	benefited households	110
country	ZA	2016	2014/2015	benefited households	280
country	ZA	2016	2015/2016	benefited households	191
country	ZA	2016	2016/2017	benefited households	496
country	ZA	2016	2017/2018	benefited households	478
\.


-- Completed on 2018-09-13 12:54:41 EAT

--
-- PostgreSQL database dump complete
--

