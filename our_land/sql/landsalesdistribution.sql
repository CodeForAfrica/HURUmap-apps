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

DROP TABLE public.landsalesdistribution;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalesdistribution; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.landsalesdistribution (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "class (R/ha)" character varying(128) NOT NULL,
    "number of transactions in 12 months" numeric,
    "total hectares traded in 12 months" numeric,
    "lowest price per hectares (R/ha) in 12 months" numeric,
    "highest price per hectares (R/ha) in 12 months" numeric,
    "average price per hectares (R/ha) in 12 months" numeric,
    "price trends in 12 months" numeric,
    "average trends in 12 months" numeric,
    "average price in July 2918" numeric
);


ALTER TABLE public.landsalesdistribution OWNER TO our_land;

--
-- Data for Name: landsalesdistribution; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.landsalesdistribution (geo_level, geo_code, geo_version, "class (R/ha)", "number of transactions in 12 months", "total hectares traded in 12 months", "lowest price per hectares (R/ha) in 12 months", "highest price per hectares (R/ha) in 12 months", "average price per hectares (R/ha) in 12 months", "price trends in 12 months", "average trends in 12 months", "average price in July 2918") FROM stdin;
country	ZA	2016	<1 500	163	438972	NaN	1499	706	-22	-3	458
country	ZA	2016	1 501-3 000	229	454975	1505	3001	2238	-1	0	2465
country	ZA	2016	3 001-5 000	280	255796	3003	5000	3989	9	0.2	4018
country	ZA	2016	5 001-10 000	731	440024	5003	10001	7149	-28	-0.4	7066
country	ZA	2016	10 001-20 000	820	276738	10002	20000	13836	-11	-0.1	14110
country	ZA	2016	20 001-30 000	411	113412	20022	30000	24891	46	0.2	24600
country	ZA	2016	30 001-40 000	218	31177	30027	40000	34543	-3	0	34841
country	ZA	2016	40 001-50 000	214	23491	40115	50000	45446	16	0	44315
country	ZA	2016	50 001-100 000	525	50698	50026	100000	68861	29	0	74400
country	ZA	2016	100 001-150 000	224	11089	100719	150000	122248	-283	-0.2	119780
country	ZA	2016	150 001-200 000	115	9932	150299	200000	172294	-513	-0.3	164876
country	ZA	2016	200 001-300 000	113	4962	202381	300000	250528	-625	-0.2	227003
country	ZA	2016	300 001-500 000	92	3680	302000	500000	360276	1523	0.4	368981
country	ZA	2016	500 001-800 000	46	1749	500952	791667	641887	3843	0.6	708333
country	ZA	2016	800 001-1 000 000	10	244	821667	1000000	912104	4491	0.5	NaN
country	ZA	2016	>1 000 000	30	686	1032000	17142857	4736815	-914413	-19.3	2152778
province	EC	2016	<1 500	14	27982	114	1483	776	-13	-1.7	634
province	EC	2016	1 501-3 000	40	54318	1540	3000	2441	-19	-0.8	2726
province	EC	2016	3 001-5 000	47	65186	3003	5000	4146	69	1.7	4050
province	EC	2016	5 001-10 000	87	75185	5006	9924	6958	-52	-0.8	6471
province	EC	2016	10 001-20 000	48	15261	10073	18609	13534	-106	-0.8	12955
province	EC	2016	20 001-30 000	23	7888	20270	29806	25269	-28	-0.1	26807
province	EC	2016	30 001-40 000	9	1307	30556	38851	32829	466	1.4	37528
province	EC	2016	40 001-50 000	17	1952	40250	50000	45329	142	0.3	50000
province	EC	2016	50 001-100 000	32	2110	55882	100000	73010	926	1.3	74706
province	EC	2016	100 001-150 000	10	344	101818	147619	126542	2002	1.6	136290
province	EC	2016	150 001-200 000	10	473	152778	200000	175695	-3468	-2	153901
province	EC	2016	200 001-300 000	5	180	230651	280929	253117	1825	0.7	NaN
province	EC	2016	300 001-500 000	10	546	320551	461538	350782	5888	1.7	NaN
province	EC	2016	500 001-800 000	4	144	518516	791667	606499	-59346	-9.8	NaN
province	EC	2016	800 001-1 000 000	1	15	836000	836000	836000	NaN	NaN	NaN
province	EC	2016	>1 000 000	1	12	1083333	1083333	1083333	NaN	NaN	NaN
province	FS	2016	<1 500	10	4266	9	1482	719	-52	-7.2	1179
province	FS	2016	1 501-3 000	24	13492	1637	3000	2395	-24	-1	NaN
province	FS	2016	3 001-5 000	70	44390	3005	5000	4017	56	1.4	3833
province	FS	2016	5 001-10 000	192	87983	5003	10001	7258	-95	-1.3	6459
province	FS	2016	10 001-20 000	205	72915	10007	20000	13743	-71	-0.5	14082
province	FS	2016	20 001-30 000	65	23370	20022	29545	25276	-219	-0.9	24512
province	FS	2016	30 001-40 000	18	4905	30052	40000	34490	-24	-0.1	36552
province	FS	2016	40 001-50 000	19	2540	40476	49806	45119	-743	-1.6	42279
province	FS	2016	50 001-100 000	23	2753	50026	100000	70831	-1127	-1.6	84416
province	FS	2016	100 001-150 000	6	259	107294	132432	117665	403	0.3	114286
province	FS	2016	150 001-200 000	4	3840	159744	186364	172359	-2666	-1.5	NaN
province	FS	2016	200 001-300 000	4	240	215909	291407	254513	-4098	-1.6	215909
province	FS	2016	300 001-500 000	2	40	316350	375000	345675	-29325	-8.5	NaN
province	FS	2016	500 001-800 000	1	12	583333	583333	583333	NaN	NaN	NaN
province	FS	2016	800 001-1 000 000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN
province	FS	2016	>1 000 000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN
province	GT	2016	<1 500	4	511	332	909	524	20	3.8	NaN
province	GT	2016	1 501-3 000	1	27	1852	1852	1852	\N	\N	NaN
province	GT	2016	3 001-5 000	2	308	3333	3413	3373	8	0.2	NaN
province	GT	2016	5 001-10 000	28	10544	5218	10000	7361	-165	-2.2	6000
province	GT	2016	10 001-20 000	79	16200	10277	20000	14367	116	0.8	17217
province	GT	2016	20 001-30 000	61	4904	20115	30000	24296	89	0.4	22222
province	GT	2016	30 001-40 000	44	3662	30498	40000	35046	52	0.1	33075
province	GT	2016	40 001-50 000	38	3293	40541	50000	45202	-127	-0.3	44474
province	GT	2016	50 001-100 000	107	3012	50909	100000	71878	1258	1.8	72400
province	GT	2016	100 001-150 000	30	647	103571	150000	122066	1190	1	135351
province	GT	2016	150 001-200 000	13	287	153846	200000	175534	-77	0	NaN
province	GT	2016	200 001-300 000	19	618	202381	284615	240466	1618	0.7	226891
province	GT	2016	300 001-500 000	16	370	302326	500000	364701	-5696	-1.6	359091
province	GT	2016	500 001-800 000	7	119	526316	791667	643324	-5450	-0.8	NaN
province	GT	2016	800 001-1 000 000	1	20	940000	940000	940000	NaN	\N	NaN
province	GT	2016	>1 000 000	17	298	1032000	10504286	2742667	-59816	-2.2	2300000
province	KZN	2016	<1 500	7	13619	73	1400	693	-80	-11.6	100
province	KZN	2016	1 501-3 000	8	2716	1523	2909	2419	87	3.6	NaN
province	KZN	2016	3 001-5 000	16	6675	3017	4916	3844	50	1.3	NaN
province	KZN	2016	5 001-10 000	48	28571	5240	10000	7327	50	0.7	8464
province	KZN	2016	10 001-20 000	69	32801	10069	19841	13310	-23	-0.2	13341
province	KZN	2016	20 001-30 000	41	14506	20152	30000	25677	-165	-0.6	20173
province	KZN	2016	30 001-40 000	18	3506	30281	39640	34404	-180	-0.5	NaN
province	KZN	2016	40 001-50 000	24	3229	40962	50000	46321	91	0.2	46889
province	KZN	2016	50 001-100 000	66	15559	50325	100000	72240	14	0	75381
province	KZN	2016	100 001-150 000	36	2110	101449	150000	119707	-506	-0.4	114680
province	KZN	2016	150 001-200 000	12	344	157143	200000	175242	1487	0.8	NaN
province	KZN	2016	200 001-300 000	17	356	210000	300000	245782	-266	-0.1	244318
province	KZN	2016	300 001-500 000	9	261	333333	461538	386730	2646	0.7	NaN
province	KZN	2016	500 001-800 000	3	306	587500	708333	643056	12500	1.9	708333
province	KZN	2016	800 001-1 000 000	1	19	882000	882000	882000	NaN	NaN	NaN
province	KZN	2016	>1 000 000	5	58	2166000	17142857	13751598	-2992012	-21.8	NaN
province	LIM	2016	<1 500	9	6997	18	1398	654	90	13.8	NaN
province	LIM	2016	1 501-3 000	8	6090	1505	2993	2059	41	2	2395
province	LIM	2016	3 001-5 000	29	19097	3046	5000	4137	-35	-0.8	4324
province	LIM	2016	5 001-10 000	82	56297	5126	10000	7361	-107	-1.4	6464
province	LIM	2016	10 001-20 000	100	42962	10031	20000	14178	-17	-0.1	14544
province	LIM	2016	20 001-30 000	58	15979	20048	29688	23843	-175	-0.7	23806
province	LIM	2016	30 001-40 000	26	3547	30550	40000	33881	-175	-0.5	NaN
province	LIM	2016	40 001-50 000	28	1036	40952	50000	44913	-94	-0.2	43478
province	LIM	2016	50 001-100 000	101	4906	50213	100000	71730	588	0.8	67490
province	LIM	2016	100 001-150 000	22	1056	100719	150000	124505	-2402	-1.9	NaN
province	LIM	2016	150 001-200 000	13	635	150299	191463	172242	-51	0	182609
province	LIM	2016	200 001-300 000	8	258	218750	285714	249596	-3580	-1.4	NaN
province	LIM	2016	300 001-500 000	6	141	335294	399000	359928	-1392	-0.4	NaN
province	LIM	2016	500 001-800 000	4	409	538462	766650	641380	24754	3.9	NaN
province	LIM	2016	800 001-1 000 000	1	58	948276	948276	948276	NaN	\N	NaN
province	LIM	2016	>1 000 000	1	157	2615732	2615732	2615732	NaN	\N	NaN
province	MP	2016	<1 500	4	1805	\N	1485	896	300	\N	NaN
province	MP	2016	1 501-3 000	9	1803	1871	2903	2342	60	2.5	2564
province	MP	2016	3 001-5 000	11	2648	3299	5000	4343	49	1.1	NaN
province	MP	2016	5 001-10 000	66	25464	5102	10000	8472	24	0.3	9099
province	MP	2016	10 001-20 000	84	26892	10009	20000	14416	123	0.9	16606
province	MP	2016	20 001-30 000	45	17166	20127	30000	24867	506	2	28367
province	MP	2016	30 001-40 000	33	7573	30027	39962	35370	458	1.3	33636
province	MP	2016	40 001-50 000	28	4172	40434	50000	44188	-39	-0.1	43000
province	MP	2016	50 001-100 000	41	7628	50209	100000	68667	-665	-1	67091
province	MP	2016	100 001-150 000	34	2798	104167	149194	126803	839	0.7	128614
province	MP	2016	150 001-200 000	18	756	150754	200000	170204	3395	2	195238
province	MP	2016	200 001-300 000	13	627	203704	300000	250695	1931	0.8	NaN
province	MP	2016	300 001-500 000	11	644	303339	492000	359080	1369	0.4	380952
province	MP	2016	500 001-800 000	3	45	500952	552462	524320	8229	1.6	NaN
province	MP	2016	800 001-1 000 000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN
province	MP	2016	>1 000 000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN
province	NC	2016	<1 500	72	299033	2	1450	754	-22	-2.9	454
province	NC	2016	1 501-3 000	87	306256	1508	3000	2228	-16	-0.7	2268
province	NC	2016	3 001-5 000	32	63196	3135	4831	3875	-52	-1.4	NaN
province	NC	2016	5 001-10 000	30	28272	5014	10000	6329	73	1.1	6770
province	NC	2016	10 001-20 000	9	2985	10004	19205	13128	69	0.5	14322
province	NC	2016	20 001-30 000	3	540	21413	30000	24992	-7158	NaN	NaN
province	NC	2016	30 001-40 000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN
province	NC	2016	40 001-50 000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN
province	NC	2016	50 001-100 000	11	853	51282	95833	68693	-1691	-2.5	52464
province	NC	2016	100 001-150 000	7	664	102963	145827	112148	-1047	-0.9	102963
province	NC	2016	150 001-200 000	9	1154	152174	192308	181187	-1091	-0.6	NaN
province	NC	2016	200 001-300 000	17	1085	211077	290698	254643	715	0.3	241176
province	NC	2016	300 001-500 000	12	417	302000	367647	330132	199	0.1	NaN
province	NC	2016	500 001-800 000	2	39	540278	642857	591567	-17097	-2.9	NaN
province	NC	2016	800 001-1 000 000	2	33	937500	941176	939394	NaN	NaN	NaN
province	NC	2016	>1 000 000	1	46	1086957	1086957	1086957	NaN	NaN	NaN
province	NW	2016	<1 500	4	3726	20	1304	568	76	13.4	1304
province	NW	2016	1 501-3 000	12	5790	1509	2921	2296	28	1.2	2921
province	NW	2016	3 001-5 000	48	33294	3049	5000	4134	-8	-0.2	4032
province	NW	2016	5 001-10 000	138	86920	5008	10000	7063	120	1.7	9080
province	NW	2016	10 001-20 000	148	42414	10002	20000	13650	-9	-0.1	13836
province	NW	2016	20 001-30 000	69	11234	20123	30000	24824	-138	-0.6	24770
province	NW	2016	30 001-40 000	48	3038	30270	40000	34123	4	0	34231
province	NW	2016	40 001-50 000	32	1910	40909	50000	45267	113	0.2	NaN
province	NW	2016	50 001-100 000	62	3885	51207	100000	68600	-234	-0.3	NaN
province	NW	2016	100 001-150 000	35	880	101111	150000	122228	896	0.7	118367
province	NW	2016	150 001-200 000	12	214	153846	194444	170204	542	0.3	173684
province	NW	2016	200 001-300 000	6	108	213333	280952	255788	4862	1.9	NaN
province	NW	2016	300 001-500 000	3	195	320215	435185	396203	1519	0.4	NaN
province	NW	2016	500 001-800 000	5	119	556777	678788	595573	-6678	-1.1	NaN
province	NW	2016	800 001-1 000 000	3	60	821667	1000000	929803	609	0.1	NaN
province	NW	2016	>1 000 000	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN
province	WC	2016	<1 500	39	81033	30	1499	662	1	0.2	360
province	WC	2016	1 501-3 000	40	64483	1547	3001	2161	3	0.1	2297
province	WC	2016	3 001-5 000	25	21002	3023	4808	3788	27	0.7	4137
province	WC	2016	5 001-10 000	60	40788	5019	10001	7372	-60	-0.8	6962
province	WC	2016	10 001-20 000	78	24308	10020	20000	13920	-5	0	12773
province	WC	2016	20 001-30 000	46	17825	20431	29775	24232	187	0.8	28458
province	WC	2016	30 001-40 000	22	3639	30888	39739	36184	187	0.5	37681
province	WC	2016	40 001-50 000	28	5359	40115	50000	45931	-39	-0.1	NaN
province	WC	2016	50 001-100 000	82	9992	50070	100000	71134	-562	-0.8	68305
province	WC	2016	100 001-150 000	44	2331	103774	150000	122027	-1275	-1	116970
province	WC	2016	150 001-200 000	24	2229	152381	200000	172538	826	0.5	NaN
province	WC	2016	200 001-300 000	24	1490	203125	300000	253472	-1269	-0.5	NaN
province	WC	2016	300 001-500 000	23	1066	320225	483922	371384	2274	0.6	365909
province	WC	2016	500 001-800 000	17	556	515098	733945	617252	-14479	-2.3	NaN
province	WC	2016	800 001-1 000 000	1	39	871205	871205	871205	NaN	\N	NaN
province	WC	2016	>1 000 000	5	115	1250000	3159091	2014205	133675	6.6	1818182
\.


--
-- PostgreSQL database dump complete
--

