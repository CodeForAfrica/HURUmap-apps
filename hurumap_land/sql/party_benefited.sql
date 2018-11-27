--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.party_benefited DROP CONSTRAINT IF EXISTS pk_party_benefited;
DROP TABLE IF EXISTS public.party_benefited;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: party_benefited; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.party_benefited (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    year character varying(128) NOT NULL,
    party_benefited character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: party_benefited; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.party_benefited (geo_level, geo_code, geo_version, year, party_benefited, total) FROM stdin;
province	EC	2016	2009/2010	female	193
province	FS	2016	2009/2010	female	189
province	GT	2016	2009/2010	female	26
province	KZN	2016	2009/2010	female	2250
province	LIM	2016	2009/2010	female	286
province	MP	2016	2009/2010	female	411
province	NC	2016	2009/2010	female	39
province	NW	2016	2009/2010	female	1872
province	WC	2016	2009/2010	female	529
country	ZA	2016	2009/2010	female	5795
province	EC	2016	2010/2011	female	122
province	FS	2016	2010/2011	female	44
province	GT	2016	2010/2011	female	73
province	KZN	2016	2010/2011	female	732
province	LIM	2016	2010/2011	female	42
province	MP	2016	2010/2011	female	56
province	NC	2016	2010/2011	female	30
province	NW	2016	2010/2011	female	85
province	WC	2016	2010/2011	female	84
country	ZA	2016	2010/2011	female	1268
province	EC	2016	2011/2012	female	52
province	FS	2016	2011/2012	female	5
province	GT	2016	2011/2012	female	0
province	KZN	2016	2011/2012	female	449
province	LIM	2016	2011/2012	female	25
province	MP	2016	2011/2012	female	26
province	NC	2016	2011/2012	female	2
province	NW	2016	2011/2012	female	0
province	WC	2016	2011/2012	female	9
country	ZA	2016	2011/2012	female	568
province	EC	2016	2012/2013	female	60
province	FS	2016	2012/2013	female	1
province	GT	2016	2012/2013	female	6
province	KZN	2016	2012/2013	female	48
province	LIM	2016	2012/2013	female	1
province	MP	2016	2012/2013	female	0
province	NC	2016	2012/2013	female	2
province	NW	2016	2012/2013	female	0
province	WC	2016	2012/2013	female	1
country	ZA	2016	2012/2013	female	119
province	EC	2016	2013/2014	female	12
province	FS	2016	2013/2014	female	1
province	GT	2016	2013/2014	female	2
province	KZN	2016	2013/2014	female	0
province	LIM	2016	2013/2014	female	3
province	MP	2016	2013/2014	female	0
province	NC	2016	2013/2014	female	4
province	NW	2016	2013/2014	female	0
province	WC	2016	2013/2014	female	0
country	ZA	2016	2013/2014	female	22
province	EC	2016	2014/2015	female	30
province	FS	2016	2014/2015	female	0
province	GT	2016	2014/2015	female	10
province	KZN	2016	2014/2015	female	16
province	LIM	2016	2014/2015	female	5
province	MP	2016	2014/2015	female	0
province	NC	2016	2014/2015	female	3
province	NW	2016	2014/2015	female	2
province	WC	2016	2014/2015	female	2
country	ZA	2016	2014/2015	female	68
province	EC	2016	2015/2016	female	22
province	FS	2016	2015/2016	female	0
province	GT	2016	2015/2016	female	7
province	KZN	2016	2015/2016	female	6
province	LIM	2016	2015/2016	female	7
province	MP	2016	2015/2016	female	23
province	NC	2016	2015/2016	female	0
province	NW	2016	2015/2016	female	2
province	WC	2016	2015/2016	female	3
country	ZA	2016	2015/2016	female	70
province	EC	2016	2016/2017	female	19
province	FS	2016	2016/2017	female	2
province	GT	2016	2016/2017	female	5
province	KZN	2016	2016/2017	female	242
province	LIM	2016	2016/2017	female	4
province	MP	2016	2016/2017	female	99
province	NC	2016	2016/2017	female	0
province	NW	2016	2016/2017	female	25
province	WC	2016	2016/2017	female	123
country	ZA	2016	2016/2017	female	519
province	EC	2016	2017/2018	female	14
province	FS	2016	2017/2018	female	20
province	GT	2016	2017/2018	female	5
province	KZN	2016	2017/2018	female	226
province	LIM	2016	2017/2018	female	5
province	MP	2016	2017/2018	female	43
province	NC	2016	2017/2018	female	2
province	NW	2016	2017/2018	female	19
province	WC	2016	2017/2018	female	0
country	ZA	2016	2017/2018	female	334
province	EC	2016	2009/2010	youth	117
province	FS	2016	2009/2010	youth	89
province	GT	2016	2009/2010	youth	18
province	KZN	2016	2009/2010	youth	1990
province	LIM	2016	2009/2010	youth	275
province	MP	2016	2009/2010	youth	593
province	NC	2016	2009/2010	youth	41
province	NW	2016	2009/2010	youth	549
province	WC	2016	2009/2010	youth	466
country	ZA	2016	2009/2010	youth	4138
province	EC	2016	2010/2011	youth	72
province	FS	2016	2010/2011	youth	39
province	GT	2016	2010/2011	youth	60
province	KZN	2016	2010/2011	youth	664
province	LIM	2016	2010/2011	youth	50
province	MP	2016	2010/2011	youth	63
province	NC	2016	2010/2011	youth	30
province	NW	2016	2010/2011	youth	74
province	WC	2016	2010/2011	youth	65
country	ZA	2016	2010/2011	youth	1117
province	EC	2016	2011/2012	youth	48
province	FS	2016	2011/2012	youth	1
province	GT	2016	2011/2012	youth	0
province	KZN	2016	2011/2012	youth	395
province	LIM	2016	2011/2012	youth	23
province	MP	2016	2011/2012	youth	18
province	NC	2016	2011/2012	youth	4
province	NW	2016	2011/2012	youth	0
province	WC	2016	2011/2012	youth	6
country	ZA	2016	2011/2012	youth	495
province	EC	2016	2012/2013	youth	43
province	FS	2016	2012/2013	youth	0
province	GT	2016	2012/2013	youth	6
province	KZN	2016	2012/2013	youth	43
province	LIM	2016	2012/2013	youth	1
province	MP	2016	2012/2013	youth	0
province	NC	2016	2012/2013	youth	2
province	NW	2016	2012/2013	youth	0
province	WC	2016	2012/2013	youth	0
country	ZA	2016	2012/2013	youth	95
province	EC	2016	2013/2014	youth	8
province	FS	2016	2013/2014	youth	1
province	GT	2016	2013/2014	youth	0
province	KZN	2016	2013/2014	youth	1
province	LIM	2016	2013/2014	youth	6
province	MP	2016	2013/2014	youth	0
province	NC	2016	2013/2014	youth	2
province	NW	2016	2013/2014	youth	0
province	WC	2016	2013/2014	youth	0
country	ZA	2016	2013/2014	youth	18
province	EC	2016	2014/2015	youth	8
province	FS	2016	2014/2015	youth	0
province	GT	2016	2014/2015	youth	8
province	KZN	2016	2014/2015	youth	12
province	LIM	2016	2014/2015	youth	3
province	MP	2016	2014/2015	youth	0
province	NC	2016	2014/2015	youth	5
province	NW	2016	2014/2015	youth	0
province	WC	2016	2014/2015	youth	2
country	ZA	2016	2014/2015	youth	38
province	EC	2016	2015/2016	youth	24
province	FS	2016	2015/2016	youth	0
province	GT	2016	2015/2016	youth	1
province	KZN	2016	2015/2016	youth	8
province	LIM	2016	2015/2016	youth	8
province	MP	2016	2015/2016	youth	4
province	NC	2016	2015/2016	youth	2
province	NW	2016	2015/2016	youth	0
province	WC	2016	2015/2016	youth	2
country	ZA	2016	2015/2016	youth	49
province	EC	2016	2016/2017	youth	6
province	FS	2016	2016/2017	youth	0
province	GT	2016	2016/2017	youth	1
province	KZN	2016	2016/2017	youth	191
province	LIM	2016	2016/2017	youth	4
province	MP	2016	2016/2017	youth	83
province	NC	2016	2016/2017	youth	6
province	NW	2016	2016/2017	youth	20
province	WC	2016	2016/2017	youth	0
country	ZA	2016	2016/2017	youth	311
province	EC	2016	2017/2018	youth	7
province	FS	2016	2017/2018	youth	32
province	GT	2016	2017/2018	youth	2
province	KZN	2016	2017/2018	youth	151
province	LIM	2016	2017/2018	youth	3
province	MP	2016	2017/2018	youth	43
province	NC	2016	2017/2018	youth	0
province	NW	2016	2017/2018	youth	18
province	WC	2016	2017/2018	youth	0
country	ZA	2016	2017/2018	youth	256
province	EC	2016	2009/2010	disable people	0
province	FS	2016	2009/2010	disable people	0
province	GT	2016	2009/2010	disable people	0
province	KZN	2016	2009/2010	disable people	1
province	LIM	2016	2009/2010	disable people	14
province	MP	2016	2009/2010	disable people	1
province	NC	2016	2009/2010	disable people	2
province	NW	2016	2009/2010	disable people	0
province	WC	2016	2009/2010	disable people	14
country	ZA	2016	2009/2010	disable people	32
province	EC	2016	2010/2011	disable people	2
province	FS	2016	2010/2011	disable people	0
province	GT	2016	2010/2011	disable people	0
province	KZN	2016	2010/2011	disable people	8
province	LIM	2016	2010/2011	disable people	0
province	MP	2016	2010/2011	disable people	0
province	NC	2016	2010/2011	disable people	1
province	NW	2016	2010/2011	disable people	2
province	WC	2016	2010/2011	disable people	0
country	ZA	2016	2010/2011	disable people	13
province	EC	2016	2011/2012	disable people	1
province	FS	2016	2011/2012	disable people	0
province	GT	2016	2011/2012	disable people	0
province	KZN	2016	2011/2012	disable people	1
province	LIM	2016	2011/2012	disable people	0
province	MP	2016	2011/2012	disable people	0
province	NC	2016	2011/2012	disable people	0
province	NW	2016	2011/2012	disable people	0
province	WC	2016	2011/2012	disable people	0
country	ZA	2016	2011/2012	disable people	2
province	EC	2016	2012/2013	disable people	0
province	FS	2016	2012/2013	disable people	0
province	GT	2016	2012/2013	disable people	0
province	KZN	2016	2012/2013	disable people	1
province	LIM	2016	2012/2013	disable people	0
province	MP	2016	2012/2013	disable people	0
province	NC	2016	2012/2013	disable people	0
province	NW	2016	2012/2013	disable people	0
province	WC	2016	2012/2013	disable people	0
country	ZA	2016	2012/2013	disable people	1
province	EC	2016	2013/2014	disable people	0
province	FS	2016	2013/2014	disable people	0
province	GT	2016	2013/2014	disable people	0
province	KZN	2016	2013/2014	disable people	0
province	LIM	2016	2013/2014	disable people	0
province	MP	2016	2013/2014	disable people	0
province	NC	2016	2013/2014	disable people	0
province	NW	2016	2013/2014	disable people	0
province	WC	2016	2013/2014	disable people	0
country	ZA	2016	2013/2014	disable people	0
province	EC	2016	2014/2015	disable people	0
province	FS	2016	2014/2015	disable people	0
province	GT	2016	2014/2015	disable people	0
province	KZN	2016	2014/2015	disable people	0
province	LIM	2016	2014/2015	disable people	0
province	MP	2016	2014/2015	disable people	0
province	NC	2016	2014/2015	disable people	1
province	NW	2016	2014/2015	disable people	0
province	WC	2016	2014/2015	disable people	0
country	ZA	2016	2014/2015	disable people	1
province	EC	2016	2015/2016	disable people	0
province	FS	2016	2015/2016	disable people	0
province	GT	2016	2015/2016	disable people	1
province	KZN	2016	2015/2016	disable people	0
province	LIM	2016	2015/2016	disable people	0
province	MP	2016	2015/2016	disable people	1
province	NC	2016	2015/2016	disable people	0
province	NW	2016	2015/2016	disable people	0
province	WC	2016	2015/2016	disable people	0
country	ZA	2016	2015/2016	disable people	2
province	EC	2016	2016/2017	disable people	0
province	FS	2016	2016/2017	disable people	0
province	GT	2016	2016/2017	disable people	0
province	KZN	2016	2016/2017	disable people	0
province	LIM	2016	2016/2017	disable people	0
province	MP	2016	2016/2017	disable people	0
province	NC	2016	2016/2017	disable people	0
province	NW	2016	2016/2017	disable people	0
province	WC	2016	2016/2017	disable people	0
country	ZA	2016	2016/2017	disable people	0
province	EC	2016	2017/2018	disable people	1
province	FS	2016	2017/2018	disable people	0
province	GT	2016	2017/2018	disable people	0
province	KZN	2016	2017/2018	disable people	0
province	LIM	2016	2017/2018	disable people	0
province	MP	2016	2017/2018	disable people	0
province	NC	2016	2017/2018	disable people	0
province	NW	2016	2017/2018	disable people	0
province	WC	2016	2017/2018	disable people	0
country	ZA	2016	2017/2018	disable people	1
\.


--
-- Name: party_benefited pk_party_benefited; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.party_benefited
    ADD CONSTRAINT pk_party_benefited PRIMARY KEY (geo_level, geo_code, geo_version, year, party_benefited);


--
-- PostgreSQL database dump complete
--

