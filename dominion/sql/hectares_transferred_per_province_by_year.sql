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

ALTER TABLE IF EXISTS ONLY public.hectares_transferred_per_province_by_year DROP CONSTRAINT IF EXISTS pk_hectares_transferred_per_province_by_year;
DROP TABLE IF EXISTS public.hectares_transferred_per_province_by_year;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: hectarestransferredperprovincebyyear; Type: TABLE; Schema: public
--

CREATE TABLE public.hectares_transferred_per_province_by_year (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    hectares_transferred_per_province_by_year character varying(128) NOT NULL,
    total numeric
);




--
-- Data for Name: hectarestransferredperprovincebyyear; Type: TABLE DATA; Schema: public
--

COPY public.hectares_transferred_per_province_by_year (geo_level, geo_code, geo_version, hectares_transferred_per_province_by_year, total) FROM stdin;
level1	ZA_1_003	2009	2009/2010	39677.9
level1	ZA_1_002	2009	2009/2010	30211.5
level1	ZA_1_009	2009	2009/2010	1745
level1	ZA_1_001	2009	2009/2010	43422.4
level1	ZA_1_005	2009	2009/2010	14704
level1	ZA_1_004	2009	2009/2010	29081.3
level1	ZA_1_006	2009	2009/2010	56827.3
level1	ZA_1_007	2009	2009/2010	13041.2
level1	ZA_1_008	2009	2009/2010	11279.7
country	ZA	2009	2009/2010	239990.5
level1	ZA_1_003	2009	2010/2011	40899.5
level1	ZA_1_002	2009	2010/2011	10403.8
level1	ZA_1_009	2009	2010/2011	3267.7
level1	ZA_1_001	2009	2010/2011	25974.3
level1	ZA_1_005	2009	2010/2011	6558.1
level1	ZA_1_004	2009	2010/2011	37561.1
level1	ZA_1_006	2009	2010/2011	165249.5
level1	ZA_1_007	2009	2010/2011	24668.7
level1	ZA_1_008	2009	2010/2011	13457.2
country	ZA	2009	2010/2011	328040
level1	ZA_1_003	2009	2011/2012	66021.4
level1	ZA_1_002	2009	2011/2012	42690.3
level1	ZA_1_009	2009	2011/2012	3348.4
level1	ZA_1_001	2009	2011/2012	27175.6
level1	ZA_1_005	2009	2011/2012	24554.8
level1	ZA_1_004	2009	2011/2012	36336.2
level1	ZA_1_006	2009	2011/2012	148392.2
level1	ZA_1_007	2009	2011/2012	39394.5
level1	ZA_1_008	2009	2011/2012	4936.1
country	ZA	2009	2011/2012	392849.7
level1	ZA_1_003	2009	2012/2013	18985.2
level1	ZA_1_002	2009	2012/2013	16167.8
level1	ZA_1_009	2009	2012/2013	3265.3
level1	ZA_1_001	2009	2012/2013	18294.4
level1	ZA_1_005	2009	2012/2013	8297.1
level1	ZA_1_004	2009	2012/2013	20313.5
level1	ZA_1_006	2009	2012/2013	36690.8
level1	ZA_1_007	2009	2012/2013	31163.5
level1	ZA_1_008	2009	2012/2013	4378.2
country	ZA	2009	2012/2013	157556
level1	ZA_1_003	2009	2013/2014	27771
level1	ZA_1_002	2009	2013/2014	15385
level1	ZA_1_009	2009	2013/2014	4424
level1	ZA_1_001	2009	2013/2014	21938
level1	ZA_1_005	2009	2013/2014	1971
level1	ZA_1_004	2009	2013/2014	21214
level1	ZA_1_006	2009	2013/2014	39397
level1	ZA_1_007	2009	2013/2014	20896
level1	ZA_1_008	2009	2013/2014	590
country	ZA	2009	2013/2014	153586
level1	ZA_1_003	2009	2014/2015	18223.8
level1	ZA_1_002	2009	2014/2015	107900
level1	ZA_1_009	2009	2014/2015	6784
level1	ZA_1_001	2009	2014/2015	26772.1
level1	ZA_1_005	2009	2014/2015	12214.5
level1	ZA_1_004	2009	2014/2015	15893.6
level1	ZA_1_006	2009	2014/2015	59031.3
level1	ZA_1_007	2009	2014/2015	32118.5
level1	ZA_1_008	2009	2014/2015	28568.1
country	ZA	2009	2014/2015	210395.8
level1	ZA_1_003	2009	2015/2016	15526.5
level1	ZA_1_002	2009	2015/2016	8274.9
level1	ZA_1_009	2009	2015/2016	2780.3
level1	ZA_1_001	2009	2015/2016	19285.9
level1	ZA_1_005	2009	2015/2016	13179.8
level1	ZA_1_004	2009	2015/2016	6289.3
level1	ZA_1_006	2009	2015/2016	46916.3
level1	ZA_1_007	2009	2015/2016	27365.1
level1	ZA_1_008	2009	2015/2016	1052.2
country	ZA	2009	2015/2016	140670.3
level1	ZA_1_003	2009	2016/2017	7170
level1	ZA_1_002	2009	2016/2017	6513.1
level1	ZA_1_009	2009	2016/2017	883.4
level1	ZA_1_001	2009	2016/2017	14047.8
level1	ZA_1_005	2009	2016/2017	10991.6
level1	ZA_1_004	2009	2016/2017	5501.9
level1	ZA_1_006	2009	2016/2017	36652
level1	ZA_1_007	2009	2016/2017	11845.3
level1	ZA_1_008	2009	2016/2017	674
country	ZA	2009	2016/2017	94279.2
level1	ZA_1_003	2009	2017/2018	1314.7
level1	ZA_1_002	2009	2017/2018	11735.8
level1	ZA_1_009	2009	2017/2018	1256.1
level1	ZA_1_001	2009	2017/2018	13770
level1	ZA_1_005	2009	2017/2018	7337.1
level1	ZA_1_004	2009	2017/2018	6704.3
level1	ZA_1_006	2009	2017/2018	34037.2
level1	ZA_1_007	2009	2017/2018	15017.2
level1	ZA_1_008	2009	2017/2018	859.9
country	ZA	2009	2017/2018	92032.4
\.

--
-- Name: landownership pk_hectarestransferredperprovincebyyear; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hectares_transferred_per_province_by_year
    ADD CONSTRAINT pk_hectares_transferred_per_province_by_year PRIMARY KEY (geo_level, geo_code, geo_version, hectares_transferred_per_province_by_year);



--
-- PostgreSQL database dump complete
--
