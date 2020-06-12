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
level1	ZA_1_002	2009	2009/2010	female	193
level1	ZA_1_004	2009	2009/2010	female	189
level1	ZA_1_007	2009	2009/2010	female	26
level1	ZA_1_009	2009	2009/2010	female	2250
level1	ZA_1_005	2009	2009/2010	female	286
level1	ZA_1_008	2009	2009/2010	female	411
level1	ZA_1_003	2009	2009/2010	female	39
level1	ZA_1_006	2009	2009/2010	female	1872
level1	ZA_1_001	2009	2009/2010	female	529
country	ZA	2009	2009/2010	female	5795
level1	ZA_1_002	2009	2010/2011	female	122
level1	ZA_1_004	2009	2010/2011	female	44
level1	ZA_1_007	2009	2010/2011	female	73
level1	ZA_1_009	2009	2010/2011	female	732
level1	ZA_1_005	2009	2010/2011	female	42
level1	ZA_1_008	2009	2010/2011	female	56
level1	ZA_1_003	2009	2010/2011	female	30
level1	ZA_1_006	2009	2010/2011	female	85
level1	ZA_1_001	2009	2010/2011	female	84
country	ZA	2009	2010/2011	female	1268
level1	ZA_1_002	2009	2011/2012	female	52
level1	ZA_1_004	2009	2011/2012	female	5
level1	ZA_1_007	2009	2011/2012	female	0
level1	ZA_1_009	2009	2011/2012	female	449
level1	ZA_1_005	2009	2011/2012	female	25
level1	ZA_1_008	2009	2011/2012	female	26
level1	ZA_1_003	2009	2011/2012	female	2
level1	ZA_1_006	2009	2011/2012	female	0
level1	ZA_1_001	2009	2011/2012	female	9
country	ZA	2009	2011/2012	female	568
level1	ZA_1_002	2009	2012/2013	female	60
level1	ZA_1_004	2009	2012/2013	female	1
level1	ZA_1_007	2009	2012/2013	female	6
level1	ZA_1_009	2009	2012/2013	female	48
level1	ZA_1_005	2009	2012/2013	female	1
level1	ZA_1_008	2009	2012/2013	female	0
level1	ZA_1_003	2009	2012/2013	female	2
level1	ZA_1_006	2009	2012/2013	female	0
level1	ZA_1_001	2009	2012/2013	female	1
country	ZA	2009	2012/2013	female	119
level1	ZA_1_002	2009	2013/2014	female	12
level1	ZA_1_004	2009	2013/2014	female	1
level1	ZA_1_007	2009	2013/2014	female	2
level1	ZA_1_009	2009	2013/2014	female	0
level1	ZA_1_005	2009	2013/2014	female	3
level1	ZA_1_008	2009	2013/2014	female	0
level1	ZA_1_003	2009	2013/2014	female	4
level1	ZA_1_006	2009	2013/2014	female	0
level1	ZA_1_001	2009	2013/2014	female	0
country	ZA	2009	2013/2014	female	22
level1	ZA_1_002	2009	2014/2015	female	30
level1	ZA_1_004	2009	2014/2015	female	0
level1	ZA_1_007	2009	2014/2015	female	10
level1	ZA_1_009	2009	2014/2015	female	16
level1	ZA_1_005	2009	2014/2015	female	5
level1	ZA_1_008	2009	2014/2015	female	0
level1	ZA_1_003	2009	2014/2015	female	3
level1	ZA_1_006	2009	2014/2015	female	2
level1	ZA_1_001	2009	2014/2015	female	2
country	ZA	2009	2014/2015	female	68
level1	ZA_1_002	2009	2015/2016	female	22
level1	ZA_1_004	2009	2015/2016	female	0
level1	ZA_1_007	2009	2015/2016	female	7
level1	ZA_1_009	2009	2015/2016	female	6
level1	ZA_1_005	2009	2015/2016	female	7
level1	ZA_1_008	2009	2015/2016	female	23
level1	ZA_1_003	2009	2015/2016	female	0
level1	ZA_1_006	2009	2015/2016	female	2
level1	ZA_1_001	2009	2015/2016	female	3
country	ZA	2009	2015/2016	female	70
level1	ZA_1_002	2009	2016/2017	female	19
level1	ZA_1_004	2009	2016/2017	female	2
level1	ZA_1_007	2009	2016/2017	female	5
level1	ZA_1_009	2009	2016/2017	female	242
level1	ZA_1_005	2009	2016/2017	female	4
level1	ZA_1_008	2009	2016/2017	female	99
level1	ZA_1_003	2009	2016/2017	female	0
level1	ZA_1_006	2009	2016/2017	female	25
level1	ZA_1_001	2009	2016/2017	female	123
country	ZA	2009	2016/2017	female	519
level1	ZA_1_002	2009	2017/2018	female	14
level1	ZA_1_004	2009	2017/2018	female	20
level1	ZA_1_007	2009	2017/2018	female	5
level1	ZA_1_009	2009	2017/2018	female	226
level1	ZA_1_005	2009	2017/2018	female	5
level1	ZA_1_008	2009	2017/2018	female	43
level1	ZA_1_003	2009	2017/2018	female	2
level1	ZA_1_006	2009	2017/2018	female	19
level1	ZA_1_001	2009	2017/2018	female	0
country	ZA	2009	2017/2018	female	334
level1	ZA_1_002	2009	2009/2010	youth	117
level1	ZA_1_004	2009	2009/2010	youth	89
level1	ZA_1_007	2009	2009/2010	youth	18
level1	ZA_1_009	2009	2009/2010	youth	1990
level1	ZA_1_005	2009	2009/2010	youth	275
level1	ZA_1_008	2009	2009/2010	youth	593
level1	ZA_1_003	2009	2009/2010	youth	41
level1	ZA_1_006	2009	2009/2010	youth	549
level1	ZA_1_001	2009	2009/2010	youth	466
country	ZA	2009	2009/2010	youth	4138
level1	ZA_1_002	2009	2010/2011	youth	72
level1	ZA_1_004	2009	2010/2011	youth	39
level1	ZA_1_007	2009	2010/2011	youth	60
level1	ZA_1_009	2009	2010/2011	youth	664
level1	ZA_1_005	2009	2010/2011	youth	50
level1	ZA_1_008	2009	2010/2011	youth	63
level1	ZA_1_003	2009	2010/2011	youth	30
level1	ZA_1_006	2009	2010/2011	youth	74
level1	ZA_1_001	2009	2010/2011	youth	65
country	ZA	2009	2010/2011	youth	1117
level1	ZA_1_002	2009	2011/2012	youth	48
level1	ZA_1_004	2009	2011/2012	youth	1
level1	ZA_1_007	2009	2011/2012	youth	0
level1	ZA_1_009	2009	2011/2012	youth	395
level1	ZA_1_005	2009	2011/2012	youth	23
level1	ZA_1_008	2009	2011/2012	youth	18
level1	ZA_1_003	2009	2011/2012	youth	4
level1	ZA_1_006	2009	2011/2012	youth	0
level1	ZA_1_001	2009	2011/2012	youth	6
country	ZA	2009	2011/2012	youth	495
level1	ZA_1_002	2009	2012/2013	youth	43
level1	ZA_1_004	2009	2012/2013	youth	0
level1	ZA_1_007	2009	2012/2013	youth	6
level1	ZA_1_009	2009	2012/2013	youth	43
level1	ZA_1_005	2009	2012/2013	youth	1
level1	ZA_1_008	2009	2012/2013	youth	0
level1	ZA_1_003	2009	2012/2013	youth	2
level1	ZA_1_006	2009	2012/2013	youth	0
level1	ZA_1_001	2009	2012/2013	youth	0
country	ZA	2009	2012/2013	youth	95
level1	ZA_1_002	2009	2013/2014	youth	8
level1	ZA_1_004	2009	2013/2014	youth	1
level1	ZA_1_007	2009	2013/2014	youth	0
level1	ZA_1_009	2009	2013/2014	youth	1
level1	ZA_1_005	2009	2013/2014	youth	6
level1	ZA_1_008	2009	2013/2014	youth	0
level1	ZA_1_003	2009	2013/2014	youth	2
level1	ZA_1_006	2009	2013/2014	youth	0
level1	ZA_1_001	2009	2013/2014	youth	0
country	ZA	2009	2013/2014	youth	18
level1	ZA_1_002	2009	2014/2015	youth	8
level1	ZA_1_004	2009	2014/2015	youth	0
level1	ZA_1_007	2009	2014/2015	youth	8
level1	ZA_1_009	2009	2014/2015	youth	12
level1	ZA_1_005	2009	2014/2015	youth	3
level1	ZA_1_008	2009	2014/2015	youth	0
level1	ZA_1_003	2009	2014/2015	youth	5
level1	ZA_1_006	2009	2014/2015	youth	0
level1	ZA_1_001	2009	2014/2015	youth	2
country	ZA	2009	2014/2015	youth	38
level1	ZA_1_002	2009	2015/2016	youth	24
level1	ZA_1_004	2009	2015/2016	youth	0
level1	ZA_1_007	2009	2015/2016	youth	1
level1	ZA_1_009	2009	2015/2016	youth	8
level1	ZA_1_005	2009	2015/2016	youth	8
level1	ZA_1_008	2009	2015/2016	youth	4
level1	ZA_1_003	2009	2015/2016	youth	2
level1	ZA_1_006	2009	2015/2016	youth	0
level1	ZA_1_001	2009	2015/2016	youth	2
country	ZA	2009	2015/2016	youth	49
level1	ZA_1_002	2009	2016/2017	youth	6
level1	ZA_1_004	2009	2016/2017	youth	0
level1	ZA_1_007	2009	2016/2017	youth	1
level1	ZA_1_009	2009	2016/2017	youth	191
level1	ZA_1_005	2009	2016/2017	youth	4
level1	ZA_1_008	2009	2016/2017	youth	83
level1	ZA_1_003	2009	2016/2017	youth	6
level1	ZA_1_006	2009	2016/2017	youth	20
level1	ZA_1_001	2009	2016/2017	youth	0
country	ZA	2009	2016/2017	youth	311
level1	ZA_1_002	2009	2017/2018	youth	7
level1	ZA_1_004	2009	2017/2018	youth	32
level1	ZA_1_007	2009	2017/2018	youth	2
level1	ZA_1_009	2009	2017/2018	youth	151
level1	ZA_1_005	2009	2017/2018	youth	3
level1	ZA_1_008	2009	2017/2018	youth	43
level1	ZA_1_003	2009	2017/2018	youth	0
level1	ZA_1_006	2009	2017/2018	youth	18
level1	ZA_1_001	2009	2017/2018	youth	0
country	ZA	2009	2017/2018	youth	256
level1	ZA_1_002	2009	2009/2010	disable people	0
level1	ZA_1_004	2009	2009/2010	disable people	0
level1	ZA_1_007	2009	2009/2010	disable people	0
level1	ZA_1_009	2009	2009/2010	disable people	1
level1	ZA_1_005	2009	2009/2010	disable people	14
level1	ZA_1_008	2009	2009/2010	disable people	1
level1	ZA_1_003	2009	2009/2010	disable people	2
level1	ZA_1_006	2009	2009/2010	disable people	0
level1	ZA_1_001	2009	2009/2010	disable people	14
country	ZA	2009	2009/2010	disable people	32
level1	ZA_1_002	2009	2010/2011	disable people	2
level1	ZA_1_004	2009	2010/2011	disable people	0
level1	ZA_1_007	2009	2010/2011	disable people	0
level1	ZA_1_009	2009	2010/2011	disable people	8
level1	ZA_1_005	2009	2010/2011	disable people	0
level1	ZA_1_008	2009	2010/2011	disable people	0
level1	ZA_1_003	2009	2010/2011	disable people	1
level1	ZA_1_006	2009	2010/2011	disable people	2
level1	ZA_1_001	2009	2010/2011	disable people	0
country	ZA	2009	2010/2011	disable people	13
level1	ZA_1_002	2009	2011/2012	disable people	1
level1	ZA_1_004	2009	2011/2012	disable people	0
level1	ZA_1_007	2009	2011/2012	disable people	0
level1	ZA_1_009	2009	2011/2012	disable people	1
level1	ZA_1_005	2009	2011/2012	disable people	0
level1	ZA_1_008	2009	2011/2012	disable people	0
level1	ZA_1_003	2009	2011/2012	disable people	0
level1	ZA_1_006	2009	2011/2012	disable people	0
level1	ZA_1_001	2009	2011/2012	disable people	0
country	ZA	2009	2011/2012	disable people	2
level1	ZA_1_002	2009	2012/2013	disable people	0
level1	ZA_1_004	2009	2012/2013	disable people	0
level1	ZA_1_007	2009	2012/2013	disable people	0
level1	ZA_1_009	2009	2012/2013	disable people	1
level1	ZA_1_005	2009	2012/2013	disable people	0
level1	ZA_1_008	2009	2012/2013	disable people	0
level1	ZA_1_003	2009	2012/2013	disable people	0
level1	ZA_1_006	2009	2012/2013	disable people	0
level1	ZA_1_001	2009	2012/2013	disable people	0
country	ZA	2009	2012/2013	disable people	1
level1	ZA_1_002	2009	2013/2014	disable people	0
level1	ZA_1_004	2009	2013/2014	disable people	0
level1	ZA_1_007	2009	2013/2014	disable people	0
level1	ZA_1_009	2009	2013/2014	disable people	0
level1	ZA_1_005	2009	2013/2014	disable people	0
level1	ZA_1_008	2009	2013/2014	disable people	0
level1	ZA_1_003	2009	2013/2014	disable people	0
level1	ZA_1_006	2009	2013/2014	disable people	0
level1	ZA_1_001	2009	2013/2014	disable people	0
country	ZA	2009	2013/2014	disable people	0
level1	ZA_1_002	2009	2014/2015	disable people	0
level1	ZA_1_004	2009	2014/2015	disable people	0
level1	ZA_1_007	2009	2014/2015	disable people	0
level1	ZA_1_009	2009	2014/2015	disable people	0
level1	ZA_1_005	2009	2014/2015	disable people	0
level1	ZA_1_008	2009	2014/2015	disable people	0
level1	ZA_1_003	2009	2014/2015	disable people	1
level1	ZA_1_006	2009	2014/2015	disable people	0
level1	ZA_1_001	2009	2014/2015	disable people	0
country	ZA	2009	2014/2015	disable people	1
level1	ZA_1_002	2009	2015/2016	disable people	0
level1	ZA_1_004	2009	2015/2016	disable people	0
level1	ZA_1_007	2009	2015/2016	disable people	1
level1	ZA_1_009	2009	2015/2016	disable people	0
level1	ZA_1_005	2009	2015/2016	disable people	0
level1	ZA_1_008	2009	2015/2016	disable people	1
level1	ZA_1_003	2009	2015/2016	disable people	0
level1	ZA_1_006	2009	2015/2016	disable people	0
level1	ZA_1_001	2009	2015/2016	disable people	0
country	ZA	2009	2015/2016	disable people	2
level1	ZA_1_002	2009	2016/2017	disable people	0
level1	ZA_1_004	2009	2016/2017	disable people	0
level1	ZA_1_007	2009	2016/2017	disable people	0
level1	ZA_1_009	2009	2016/2017	disable people	0
level1	ZA_1_005	2009	2016/2017	disable people	0
level1	ZA_1_008	2009	2016/2017	disable people	0
level1	ZA_1_003	2009	2016/2017	disable people	0
level1	ZA_1_006	2009	2016/2017	disable people	0
level1	ZA_1_001	2009	2016/2017	disable people	0
country	ZA	2009	2016/2017	disable people	0
level1	ZA_1_002	2009	2017/2018	disable people	1
level1	ZA_1_004	2009	2017/2018	disable people	0
level1	ZA_1_007	2009	2017/2018	disable people	0
level1	ZA_1_009	2009	2017/2018	disable people	0
level1	ZA_1_005	2009	2017/2018	disable people	0
level1	ZA_1_008	2009	2017/2018	disable people	0
level1	ZA_1_003	2009	2017/2018	disable people	0
level1	ZA_1_006	2009	2017/2018	disable people	0
level1	ZA_1_001	2009	2017/2018	disable people	0
country	ZA	2009	2017/2018	disable people	1
\.


--
-- Name: party_benefited pk_party_benefited; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.party_benefited
    ADD CONSTRAINT pk_party_benefited PRIMARY KEY (geo_level, geo_code, geo_version, year, party_benefited);


--
-- PostgreSQL database dump complete
--

