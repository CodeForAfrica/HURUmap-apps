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

ALTER TABLE IF EXISTS ONLY public.restitutionhectaresacquired DROP CONSTRAINT IF EXISTS pk_restitutionhectaresacquired;
DROP TABLE IF EXISTS public.restitutionhectaresacquired;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: restitutionhectaresacquired; Type: TABLE; Schema: public;
--

CREATE TABLE public.restitutionhectaresacquired (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    restitutionhectaresacquired character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total numeric
);

--
-- Data for Name: restitutionhectaresacquired; Type: TABLE DATA; Schema: public;
--

COPY public.restitutionhectaresacquired (geo_level, geo_code, geo_version, restitutionhectaresacquired, year, total) FROM stdin;
level1	ZA_1_002	2009	hectares acquired	2017/2018	0
level1	ZA_1_004	2009	hectares acquired	2017/2018	0
level1	ZA_1_007	2009	hectares acquired	2017/2018	0
level1	ZA_1_009	2009	hectares acquired	2017/2018	3657
level1	ZA_1_005	2009	hectares acquired	2017/2018	766
level1	ZA_1_008	2009	hectares acquired	2017/2018	1010
level1	ZA_1_003	2009	hectares acquired	2017/2018	1370
level1	ZA_1_006	2009	hectares acquired	2017/2018	17663
level1	ZA_1_001	2009	hectares acquired	2017/2018	10
country	ZA	2009	hectares acquired	2017/2018	24476
level1	ZA_1_002	2009	hectares acquired	2009/2010	1289
level1	ZA_1_004	2009	hectares acquired	2009/2010	252
level1	ZA_1_007	2009	hectares acquired	2009/2010	0
level1	ZA_1_009	2009	hectares acquired	2009/2010	30469
level1	ZA_1_005	2009	hectares acquired	2009/2010	25089
level1	ZA_1_008	2009	hectares acquired	2009/2010	10481
level1	ZA_1_003	2009	hectares acquired	2009/2010	67724
level1	ZA_1_006	2009	hectares acquired	2009/2010	9551
level1	ZA_1_001	2009	hectares acquired	2009/2010	637
country	ZA	2009	hectares acquired	2009/2010	145492
level1	ZA_1_002	2009	hectares acquired	2010/2011	34186
level1	ZA_1_004	2009	hectares acquired	2010/2011	3837
level1	ZA_1_007	2009	hectares acquired	2010/2011	6759
level1	ZA_1_009	2009	hectares acquired	2010/2011	23853
level1	ZA_1_005	2009	hectares acquired	2010/2011	32348
level1	ZA_1_008	2009	hectares acquired	2010/2011	10043
level1	ZA_1_003	2009	hectares acquired	2010/2011	238
level1	ZA_1_006	2009	hectares acquired	2010/2011	13175
level1	ZA_1_001	2009	hectares acquired	2010/2011	68
country	ZA	2009	hectares acquired	2010/2011	124507
level1	ZA_1_002	2009	hectares acquired	2011/2012	0
level1	ZA_1_004	2009	hectares acquired	2011/2012	1437
level1	ZA_1_007	2009	hectares acquired	2011/2012	0
level1	ZA_1_009	2009	hectares acquired	2011/2012	31508
level1	ZA_1_005	2009	hectares acquired	2011/2012	18609
level1	ZA_1_008	2009	hectares acquired	2011/2012	34675
level1	ZA_1_003	2009	hectares acquired	2011/2012	0
level1	ZA_1_006	2009	hectares acquired	2011/2012	12252
level1	ZA_1_001	2009	hectares acquired	2011/2012	3
country	ZA	2009	hectares acquired	2011/2012	98484
level1	ZA_1_002	2009	hectares acquired	2012/2013	829
level1	ZA_1_004	2009	hectares acquired	2012/2013	3293
level1	ZA_1_007	2009	hectares acquired	2012/2013	586
level1	ZA_1_009	2009	hectares acquired	2012/2013	62644
level1	ZA_1_005	2009	hectares acquired	2012/2013	24978
level1	ZA_1_008	2009	hectares acquired	2012/2013	27493
level1	ZA_1_003	2009	hectares acquired	2012/2013	8089
level1	ZA_1_006	2009	hectares acquired	2012/2013	68004
level1	ZA_1_001	2009	hectares acquired	2012/2013	51
country	ZA	2009	hectares acquired	2012/2013	195967
level1	ZA_1_002	2009	hectares acquired	2013/2014	0
level1	ZA_1_004	2009	hectares acquired	2013/2014	2394
level1	ZA_1_007	2009	hectares acquired	2013/2014	284
level1	ZA_1_009	2009	hectares acquired	2013/2014	9036
level1	ZA_1_005	2009	hectares acquired	2013/2014	12195
level1	ZA_1_008	2009	hectares acquired	2013/2014	28529
level1	ZA_1_003	2009	hectares acquired	2013/2014	6391
level1	ZA_1_006	2009	hectares acquired	2013/2014	10001
level1	ZA_1_001	2009	hectares acquired	2013/2014	8
country	ZA	2009	hectares acquired	2013/2014	68838
level1	ZA_1_002	2009	hectares acquired	2014/2015	1342
level1	ZA_1_004	2009	hectares acquired	2014/2015	0
level1	ZA_1_007	2009	hectares acquired	2014/2015	0
level1	ZA_1_009	2009	hectares acquired	2014/2015	29512
level1	ZA_1_005	2009	hectares acquired	2014/2015	19701
level1	ZA_1_008	2009	hectares acquired	2014/2015	25261
level1	ZA_1_003	2009	hectares acquired	2014/2015	38006
level1	ZA_1_006	2009	hectares acquired	2014/2015	28139
level1	ZA_1_001	2009	hectares acquired	2014/2015	2445
country	ZA	2009	hectares acquired	2014/2015	144406
level1	ZA_1_002	2009	hectares acquired	2015/2016	4111
level1	ZA_1_004	2009	hectares acquired	2015/2016	1164
level1	ZA_1_007	2009	hectares acquired	2015/2016	0
level1	ZA_1_009	2009	hectares acquired	2015/2016	13667
level1	ZA_1_005	2009	hectares acquired	2015/2016	11269
level1	ZA_1_008	2009	hectares acquired	2015/2016	19815
level1	ZA_1_003	2009	hectares acquired	2015/2016	37295
level1	ZA_1_006	2009	hectares acquired	2015/2016	10137
level1	ZA_1_001	2009	hectares acquired	2015/2016	4427
country	ZA	2009	hectares acquired	2015/2016	101886
level1	ZA_1_002	2009	hectares acquired	2016/2017	1389
level1	ZA_1_004	2009	hectares acquired	2016/2017	2897
level1	ZA_1_007	2009	hectares acquired	2016/2017	142
level1	ZA_1_009	2009	hectares acquired	2016/2017	6545
level1	ZA_1_005	2009	hectares acquired	2016/2017	18051
level1	ZA_1_008	2009	hectares acquired	2016/2017	14855
level1	ZA_1_003	2009	hectares acquired	2016/2017	43170
level1	ZA_1_006	2009	hectares acquired	2016/2017	20827
level1	ZA_1_001	2009	hectares acquired	2016/2017	2
country	ZA	2009	hectares acquired	2016/2017	107878
\.


ALTER TABLE ONLY public.restitutionhectaresacquired
    ADD CONSTRAINT pk_restitutionhectaresacquired PRIMARY KEY (geo_level, geo_code, geo_version, restitutionhectaresacquired, year);

--
-- PostgreSQL database dump complete
--
