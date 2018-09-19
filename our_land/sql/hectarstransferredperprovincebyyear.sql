--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP TABLE public.hectarestransferredperprovincebyyear;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: hectarestransferredperprovincebyyear; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.hectarestransferredperprovincebyyear (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    year character varying(128) NOT NULL,
    "hectares transferred per province by year" numeric
);


ALTER TABLE public.hectarestransferredperprovincebyyear OWNER TO our_land;

--
-- Data for Name: hectarestransferredperprovincebyyear; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.hectarestransferredperprovincebyyear (geo_level, geo_code, geo_version, year, "hectares transferred per province by year") FROM stdin;
province	EC	2016	2009/2010	39677.9
province	FS	2016	2009/2010	30211.5
province	GT	2016	2009/2010	1745
province	KZN	2016	2009/2010	43422.4
province	LIM	2016	2009/2010	14704
province	MP	2016	2009/2010	29081.3
province	NC	2016	2009/2010	56827.3
province	NW	2016	2009/2010	13041.2
province	WC	2016	2009/2010	11279.7
country	ZA	2016	2009/2010	239990.5
province	EC	2016	2010/2011	40899.5
province	FS	2016	2010/2011	10403.8
province	GT	2016	2010/2011	3267.7
province	KZN	2016	2010/2011	25974.3
province	LIM	2016	2010/2011	6558.1
province	MP	2016	2010/2011	37561.1
province	NC	2016	2010/2011	165249.5
province	NW	2016	2010/2011	24668.7
province	WC	2016	2010/2011	13457.2
country	ZA	2016	2010/2011	328040
province	EC	2016	2011/2012	66021.4
province	FS	2016	2011/2012	42690.3
province	GT	2016	2011/2012	3348.4
province	KZN	2016	2011/2012	27175.6
province	LIM	2016	2011/2012	24554.8
province	MP	2016	2011/2012	36336.2
province	NC	2016	2011/2012	148392.2
province	NW	2016	2011/2012	39394.5
province	WC	2016	2011/2012	4936.1
country	ZA	2016	2011/2012	392849.7
province	EC	2016	2012/2013	18985.2
province	FS	2016	2012/2013	16167.8
province	GT	2016	2012/2013	3265.3
province	KZN	2016	2012/2013	18294.4
province	LIM	2016	2012/2013	8297.1
province	MP	2016	2012/2013	20313.5
province	NC	2016	2012/2013	36690.8
province	NW	2016	2012/2013	31163.5
province	WC	2016	2012/2013	4378.2
country	ZA	2016	2012/2013	157556
province	EC	2016	2013/2014	27771
province	FS	2016	2013/2014	15385
province	GT	2016	2013/2014	4424
province	KZN	2016	2013/2014	21938
province	LIM	2016	2013/2014	1971
province	MP	2016	2013/2014	21214
province	NC	2016	2013/2014	39397
province	NW	2016	2013/2014	20896
province	WC	2016	2013/2014	590
country	ZA	2016	2013/2014	153586
province	EC	2016	2014/2015	18223.8
province	FS	2016	2014/2015	107900
province	GT	2016	2014/2015	6784
province	KZN	2016	2014/2015	26772.1
province	LIM	2016	2014/2015	12214.5
province	MP	2016	2014/2015	15893.6
province	NC	2016	2014/2015	59031.3
province	NW	2016	2014/2015	32118.5
province	WC	2016	2014/2015	28568.1
country	ZA	2016	2014/2015	210395.8
province	EC	2016	2015/2016	15526.5
province	FS	2016	2015/2016	8274.9
province	GT	2016	2015/2016	2780.3
province	KZN	2016	2015/2016	19285.9
province	LIM	2016	2015/2016	13179.8
province	MP	2016	2015/2016	6289.3
province	NC	2016	2015/2016	46916.3
province	NW	2016	2015/2016	27365.1
province	WC	2016	2015/2016	1052.2
country	ZA	2016	2015/2016	140670.3
province	EC	2016	2016/2017	7170
province	FS	2016	2016/2017	6513.1
province	GT	2016	2016/2017	883.4
province	KZN	2016	2016/2017	14047.8
province	LIM	2016	2016/2017	10991.6
province	MP	2016	2016/2017	5501.9
province	NC	2016	2016/2017	36652
province	NW	2016	2016/2017	11845.3
province	WC	2016	2016/2017	674
country	ZA	2016	2016/2017	94279.2
province	EC	2016	2017/2018	1314.7
province	FS	2016	2017/2018	11735.8
province	GT	2016	2017/2018	1256.1
province	KZN	2016	2017/2018	13770
province	LIM	2016	2017/2018	7337.1
province	MP	2016	2017/2018	6704.3
province	NC	2016	2017/2018	34037.2
province	NW	2016	2017/2018	15017.2
province	WC	2016	2017/2018	859.9
country	ZA	2016	2017/2018	92032.4
\.


--
-- PostgreSQL database dump complete
--

