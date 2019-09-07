--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.restitutionfemaleheadedhh DROP CONSTRAINT IF EXISTS pk_restitutionfemaleheadedhh;
DROP TABLE IF EXISTS public.restitutionfemaleheadedhh;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: restitutionfemaleheadedhh; Type: TABLE; Schema: public;
--

CREATE TABLE public.restitutionfemaleheadedhh (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    restitutionfemaleheadedhh character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total numeric
);

--
-- Data for Name: restitutionfemaleheadedhh; Type: TABLE DATA; Schema: public;
--

COPY public.restitutionfemaleheadedhh (geo_level, geo_code, geo_version, restitutionfemaleheadedhh, year, total) FROM stdin;
level1	ZA_1_003	2009	female headed households	2017/2018	197
level1	ZA_1_002	2009	female headed households	2017/2018	0
level1	ZA_1_009	2009	female headed households	2017/2018	145
level1	ZA_1_001	2009	female headed households	2017/2018	849
level1	ZA_1_005	2009	female headed households	2017/2018	722
level1	ZA_1_004	2009	female headed households	2017/2018	13
level1	ZA_1_006	2009	female headed households	2017/2018	10
level1	ZA_1_007	2009	female headed households	2017/2018	2197
level1	ZA_1_008	2009	female headed households	2017/2018	101
country	ZA	2009	female headed households	2017/2018	4234
level1	ZA_1_003	2009	female headed households	2009/2010	559
level1	ZA_1_002	2009	female headed households	2009/2010	79
level1	ZA_1_009	2009	female headed households	2009/2010	0
level1	ZA_1_001	2009	female headed households	2009/2010	1668
level1	ZA_1_005	2009	female headed households	2009/2010	669
level1	ZA_1_004	2009	female headed households	2009/2010	119
level1	ZA_1_006	2009	female headed households	2009/2010	46
level1	ZA_1_007	2009	female headed households	2009/2010	409
level1	ZA_1_008	2009	female headed households	2009/2010	628
country	ZA	2009	female headed households	2009/2010	4177
level1	ZA_1_003	2009	female headed households	2010/2011	1396
level1	ZA_1_002	2009	female headed households	2010/2011	76
level1	ZA_1_009	2009	female headed households	2010/2011	196
level1	ZA_1_001	2009	female headed households	2010/2011	1330
level1	ZA_1_005	2009	female headed households	2010/2011	1071
level1	ZA_1_004	2009	female headed households	2010/2011	41
level1	ZA_1_006	2009	female headed households	2010/2011	719
level1	ZA_1_007	2009	female headed households	2010/2011	19
level1	ZA_1_008	2009	female headed households	2010/2011	1111
country	ZA	2009	female headed households	2010/2011	5959
level1	ZA_1_003	2009	female headed households	2011/2012	533
level1	ZA_1_002	2009	female headed households	2011/2012	242
level1	ZA_1_009	2009	female headed households	2011/2012	21
level1	ZA_1_001	2009	female headed households	2011/2012	1587
level1	ZA_1_005	2009	female headed households	2011/2012	880
level1	ZA_1_004	2009	female headed households	2011/2012	1444
level1	ZA_1_006	2009	female headed households	2011/2012	411
level1	ZA_1_007	2009	female headed households	2011/2012	661
level1	ZA_1_008	2009	female headed households	2011/2012	606
country	ZA	2009	female headed households	2011/2012	6385
level1	ZA_1_003	2009	female headed households	2012/2013	2284
level1	ZA_1_002	2009	female headed households	2012/2013	506
level1	ZA_1_009	2009	female headed households	2012/2013	129
level1	ZA_1_001	2009	female headed households	2012/2013	1372
level1	ZA_1_005	2009	female headed households	2012/2013	421
level1	ZA_1_004	2009	female headed households	2012/2013	1719
level1	ZA_1_006	2009	female headed households	2012/2013	712
level1	ZA_1_007	2009	female headed households	2012/2013	2743
level1	ZA_1_008	2009	female headed households	2012/2013	595
country	ZA	2009	female headed households	2012/2013	10481
level1	ZA_1_003	2009	female headed households	2013/2014	692
level1	ZA_1_002	2009	female headed households	2013/2014	66
level1	ZA_1_009	2009	female headed households	2013/2014	33
level1	ZA_1_001	2009	female headed households	2013/2014	182
level1	ZA_1_005	2009	female headed households	2013/2014	331
level1	ZA_1_004	2009	female headed households	2013/2014	620
level1	ZA_1_006	2009	female headed households	2013/2014	276
level1	ZA_1_007	2009	female headed households	2013/2014	380
level1	ZA_1_008	2009	female headed households	2013/2014	621
country	ZA	2009	female headed households	2013/2014	3201
level1	ZA_1_003	2009	female headed households	2014/2015	864
level1	ZA_1_002	2009	female headed households	2014/2015	112
level1	ZA_1_009	2009	female headed households	2014/2015	294
level1	ZA_1_001	2009	female headed households	2014/2015	1086
level1	ZA_1_005	2009	female headed households	2014/2015	912
level1	ZA_1_004	2009	female headed households	2014/2015	481
level1	ZA_1_006	2009	female headed households	2014/2015	330
level1	ZA_1_007	2009	female headed households	2014/2015	1515
level1	ZA_1_008	2009	female headed households	2014/2015	650
country	ZA	2009	female headed households	2014/2015	6244
level1	ZA_1_003	2009	female headed households	2015/2016	2454
level1	ZA_1_002	2009	female headed households	2015/2016	100
level1	ZA_1_009	2009	female headed households	2015/2016	529
level1	ZA_1_001	2009	female headed households	2015/2016	476
level1	ZA_1_005	2009	female headed households	2015/2016	1856
level1	ZA_1_004	2009	female headed households	2015/2016	711
level1	ZA_1_006	2009	female headed households	2015/2016	174
level1	ZA_1_007	2009	female headed households	2015/2016	75
level1	ZA_1_008	2009	female headed households	2015/2016	624
country	ZA	2009	female headed households	2015/2016	6999
level1	ZA_1_003	2009	female headed households	2016/2017	1258
level1	ZA_1_002	2009	female headed households	2016/2017	146
level1	ZA_1_009	2009	female headed households	2016/2017	431
level1	ZA_1_001	2009	female headed households	2016/2017	1424
level1	ZA_1_005	2009	female headed households	2016/2017	719
level1	ZA_1_004	2009	female headed households	2016/2017	425
level1	ZA_1_006	2009	female headed households	2016/2017	440
level1	ZA_1_007	2009	female headed households	2016/2017	532
level1	ZA_1_008	2009	female headed households	2016/2017	680
country	ZA	2009	female headed households	2016/2017	6055
\.


ALTER TABLE ONLY public.restitutionfemaleheadedhh
    ADD CONSTRAINT pk_restitutionfemaleheadedhh PRIMARY KEY (geo_level, geo_code, geo_version, restitutionfemaleheadedhh, year);

--
-- PostgreSQL database dump complete
--
