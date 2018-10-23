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

DROP TABLE public.landsalesdistrictdistribution;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalesdistrictdistribution; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.landsalesdistrictdistribution (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    town_name character varying(128) NOT NULL,
    class character varying(128) NOT NULL,
    number_of_transactions numeric,
    total_hecatres numeric,
    lowest_price_per_hectares numeric,
    highest_price_per_hectares numeric,
    average_price_per_hectares numeric,
    price_trends numeric,
    average_trends numeric,
    avg_price_july numeric
);


ALTER TABLE public.landsalesdistrictdistribution OWNER TO our_land;

--
-- Data for Name: landsalesdistrictdistribution; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.landsalesdistrictdistribution (geo_level, geo_code, geo_version, town_name, class, number_of_transactions, total_hecatres, lowest_price_per_hectares, highest_price_per_hectares, average_price_per_hectares, price_trends, average_trends, avg_price_july) FROM stdin;
district	DC10	2016	Aberdeen	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	1,501-3K	1	2046	2796	2796	2796	\N	\N	\N
district	DC10	2016	Aberdeen	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	50,001-100K	1	475	50400	50400	50400	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	1,501-3K	1	3077	3000	3000	3000	\N	\N	\N
district	DC10	2016	Albany	3,001-5K	3	3145	3214	4530	3466	-101	-2.9	\N
district	DC10	2016	Albany	5,001-10K	7	3253	5210	9694	7137	35	0.5	\N
district	DC10	2016	Albany	10,001-20K	3	677	10926	15020	13279	-261	-2	\N
district	DC10	2016	Albany	20,001-30K	4	768	21076	29213	25037	910	3.6	\N
district	DC10	2016	Albany	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	50,001-100K	1	11	69091	69091	69091	\N	\N	\N
district	DC10	2016	Albany	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	150,001-200K	1	14	178571	178571	178571	\N	\N	\N
district	DC10	2016	Albany	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	1,501-3K	1	545	3001	3001	3001	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	3,001-5K	1	2333	3772	3772	3772	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	5,001-10K	1	384	6848	6848	6848	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	3,001-5K	1	970	3552	3552	3552	\N	\N	3552
district	DC10	2016	Alexandria Ndlambe	5,001-10K	3	2204	8041	9272	8746	-119	-1.4	8041
district	DC10	2016	Alexandria Ndlambe	10,001-20K	3	555	15522	16536	16020	89	0.6	16536
district	DC10	2016	Alexandria Ndlambe	20,001-30K	2	892	26962	29806	28384	-259	-0.9	26962
district	DC10	2016	Alexandria Ndlambe	30,001-40K	1	110	31318	31318	31318	\N	\N	31318
district	DC10	2016	Alexandria Ndlambe	40,001-50K	1	604	43046	43046	43046	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	300,001-500K	1	25	339394	339394	339394	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	3,001-5K	1	779	3376	3376	3376	\N	\N	3376
district	DC14	2016	Aliwal-Noord Maletsiwai	5,001-10K	3	2045	5551	8002	6520	506	7.8	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	10,001-20K	2	1041	11688	18038	14863	907	6.1	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	20,001-30K	1	407	24570	24570	24570	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Alldays Blouberg	Under 1.5K	1	117	117	117	117	\N	\N	\N
district	DC35	2016	Alldays Blouberg	1,501-3K	2	1548	2000	2933	2466	155	6.3	\N
district	DC35	2016	Alldays Blouberg	3,001-5K	8	9230	3046	4931	4167	-3	-0.1	4324
district	DC35	2016	Alldays Blouberg	5,001-10K	9	4652	5214	9225	7083	-119	-1.7	5214
district	DC35	2016	Alldays Blouberg	10,001-20K	3	1479	10320	18286	15293	-1914	-12.5	\N
district	DC35	2016	Alldays Blouberg	20,001-30K	2	816	20455	21795	21125	-1340	-6.3	\N
district	DC35	2016	Alldays Blouberg	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Alldays Blouberg	40,001-50K	3	86	41860	44286	43109	-281	-0.7	\N
district	DC35	2016	Alldays Blouberg	50,001-100K	2	59	65789	71429	68609	705	1	\N
district	DC35	2016	Alldays Blouberg	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Alldays Blouberg	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Alldays Blouberg	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Alldays Blouberg	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Alldays Blouberg	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Alldays Blouberg	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Alldays Blouberg	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Amsterdam Mkhondo	Under 1.5K	1	99	1485	1485	1485	\N	\N	\N
district	DC30	2016	Amsterdam Mkhondo	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Amsterdam Mkhondo	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Amsterdam Mkhondo	5,001-10K	4	1604	7092	9677	8781	-133	-1.5	\N
district	DC30	2016	Amsterdam Mkhondo	10,001-20K	14	7571	10074	19474	14108	90	0.6	16106
district	DC30	2016	Amsterdam Mkhondo	20,001-30K	2	2838	20819	21739	21279	115	0.5	\N
district	DC30	2016	Amsterdam Mkhondo	30,001-40K	4	1700	30027	32942	31329	266	0.8	32942
district	DC30	2016	Amsterdam Mkhondo	40,001-50K	3	81	44444	50000	46296	529	1.1	\N
district	DC30	2016	Amsterdam Mkhondo	50,001-100K	3	66	61364	95455	86364	-3636	-4.2	\N
district	DC30	2016	Amsterdam Mkhondo	100,001-150K	7	382	104167	149194	123773	3068	2.5	126214
district	DC30	2016	Amsterdam Mkhondo	150,001-200K	2	44	154545	200000	177273	22727	12.8	\N
district	DC30	2016	Amsterdam Mkhondo	200,001-300K	3	51	275397	300000	284800	7287	2.6	\N
district	DC30	2016	Amsterdam Mkhondo	300,001-500K	2	25	400000	492000	446000	-46000	-10.3	\N
district	DC30	2016	Amsterdam Mkhondo	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Amsterdam Mkhondo	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Amsterdam Mkhondo	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC29	2016	Ballito KwaDukuza	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC29	2016	Ballito KwaDukuza	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC29	2016	Ballito KwaDukuza	3,001-5K	1	379	3846	3846	3846	\N	\N	\N
district	DC29	2016	Ballito KwaDukuza	5,001-10K	2	56	6750	10000	8375	-3250	\N	\N
district	DC29	2016	Ballito KwaDukuza	10,001-20K	3	220	10500	17647	13132	-800	-6.1	11250
district	DC29	2016	Ballito KwaDukuza	20,001-30K	5	752	23804	29412	27328	-258	-0.9	\N
district	DC29	2016	Ballito KwaDukuza	30,001-40K	2	180	30281	34459	32370	-696	-2.2	\N
district	DC29	2016	Ballito KwaDukuza	40,001-50K	6	659	42000	50000	46640	-411	-0.9	\N
district	DC29	2016	Ballito KwaDukuza	50,001-100K	10	740	58475	100000	76526	-1006	-1.3	80645
district	DC29	2016	Ballito KwaDukuza	100,001-150K	2	622	109375	117966	117524	\N	\N	117524
district	DC29	2016	Ballito KwaDukuza	150,001-200K	2	43	185185	200000	193798	\N	\N	\N
district	DC29	2016	Ballito KwaDukuza	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC29	2016	Ballito KwaDukuza	300,001-500K	1	13	461538	461538	461538	\N	\N	\N
district	DC29	2016	Ballito KwaDukuza	500,001-800K	2	294	587500	633333	610417	-15278	-2.5	\N
district	DC29	2016	Ballito KwaDukuza	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC29	2016	Ballito KwaDukuza	Above 1M	3	34	9025000	16145000	13264497	-1920335	-14.5	\N
district	DC9	2016	Barkley-Wes Dikgatlong	Under 1.5K	1	2017	992	992	992	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	1,501-3K	2	1822	2326	2875	2601	91	3.5	\N
district	DC9	2016	Barkley-Wes Dikgatlong	3,001-5K	3	4205	3607	4463	3939	-72	-1.8	\N
district	DC9	2016	Barkley-Wes Dikgatlong	5,001-10K	7	7520	5297	7779	6322	-103	-1.6	\N
district	DC9	2016	Barkley-Wes Dikgatlong	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	1,501-3K	2	1348	2065	2801	2433	-82	-3.4	\N
district	DC14	2016	Barkly-Oos Senqu	3,001-5K	1	508	4921	4921	4921	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	5,001-10K	5	4281	5330	7311	6511	56	0.9	\N
district	DC14	2016	Barkly-Oos Senqu	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	5,001-10K	4	1129	5158	9524	8158	-3	0	\N
district	DC10	2016	Bathurst Ndlambe	10,001-20K	4	2221	11463	14670	12686	-157	-1.2	\N
district	DC10	2016	Bathurst Ndlambe	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	40,001-50K	2	104	41667	44944	43305	-1092	-2.5	\N
district	DC10	2016	Bathurst Ndlambe	50,001-100K	1	28	57143	57143	57143	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	100,001-150K	1	55	101818	101818	101818	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	Under 1.5K	2	4080	1100	1244	1172	24	2	\N
district	DC5	2016	Beaufort-Wes	1,501-3K	5	11222	1608	2640	2169	71	3.3	\N
district	DC5	2016	Beaufort-Wes	3,001-5K	2	9919	3023	3187	3105	-41	-1.3	\N
district	DC5	2016	Beaufort-Wes	5,001-10K	1	269	9015	9015	9015	\N	\N	\N
district	DC5	2016	Beaufort-Wes	10,001-20K	1	478	14221	14221	14221	\N	\N	\N
district	DC5	2016	Beaufort-Wes	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	5,001-10K	1	3591	5038	5038	5038	\N	\N	\N
district	DC12	2016	Bedford Amathole	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	20,001-30K	1	2707	27704	27704	27704	\N	\N	\N
district	DC12	2016	Bedford Amathole	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	200,001-300K	1	52	250000	250000	250000	\N	\N	\N
district	DC12	2016	Bedford Amathole	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Bethal Gonovan Mbeki	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Bethal Gonovan Mbeki	1,501-3K	1	396	2071	2071	2071	\N	\N	\N
district	DC30	2016	Bethal Gonovan Mbeki	3,001-5K	3	840	4329	4878	4627	-172	-3.7	\N
district	DC30	2016	Bethal Gonovan Mbeki	5,001-10K	12	2935	6870	9468	8395	153	1.8	\N
district	DC30	2016	Bethal Gonovan Mbeki	10,001-20K	22	8216	10009	19200	13898	58	0.4	17572
district	DC30	2016	Bethal Gonovan Mbeki	20,001-30K	16	3390	20127	29762	25109	385	1.5	28846
district	DC30	2016	Bethal Gonovan Mbeki	30,001-40K	11	3790	30385	39962	35274	644	1.8	\N
district	DC30	2016	Bethal Gonovan Mbeki	40,001-50K	11	2397	42028	49626	44382	-481	-1.1	42105
district	DC30	2016	Bethal Gonovan Mbeki	50,001-100K	2	98	75031	92593	83812	5854	7	\N
district	DC30	2016	Bethal Gonovan Mbeki	100,001-150K	2	201	130682	131285	130983	-60	0	130682
district	DC30	2016	Bethal Gonovan Mbeki	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Bethal Gonovan Mbeki	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Bethal Gonovan Mbeki	300,001-500K	1	23	303339	303339	303339	\N	\N	\N
district	DC30	2016	Bethal Gonovan Mbeki	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Bethal Gonovan Mbeki	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Bethal Gonovan Mbeki	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	Under 1.5K	1	737	543	543	543	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	5,001-10K	2	256	6927	9865	8396	-735	-8.7	6927
district	DC19	2016	Bethlehem Dihlabeng	10,001-20K	6	1876	10750	19108	14276	711	5	19108
district	DC19	2016	Bethlehem Dihlabeng	20,001-30K	10	3525	21001	27321	23459	-265	-1.1	\N
district	DC19	2016	Bethlehem Dihlabeng	30,001-40K	5	1375	30052	34154	32586	-205	-0.6	\N
district	DC19	2016	Bethlehem Dihlabeng	40,001-50K	3	335	42857	49635	47191	-773	-1.6	\N
district	DC19	2016	Bethlehem Dihlabeng	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	500,001-800K	1	12	583333	583333	583333	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	5,001-10K	2	2880	5761	6366	6064	86	1.4	\N
district	DC16	2016	Bethulie	10,001-20K	1	357	10924	10924	10924	\N	\N	\N
district	DC16	2016	Bethulie	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Bloemfontein Mangaung	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Bloemfontein Mangaung	1,501-3K	1	306	2121	2121	2121	\N	\N	\N
municipality	MAN	2016	Bloemfontein Mangaung	3,001-5K	7	5514	3061	5000	4152	-75	-1.8	3061
municipality	MAN	2016	Bloemfontein Mangaung	5,001-10K	10	5653	5007	9697	6592	90	1.4	\N
municipality	MAN	2016	Bloemfontein Mangaung	10,001-20K	14	6544	10323	17442	13219	358	2.7	17037
municipality	MAN	2016	Bloemfontein Mangaung	20,001-30K	7	1294	21483	28571	24427	270	1.1	\N
municipality	MAN	2016	Bloemfontein Mangaung	30,001-40K	3	274	32086	38462	34499	591	1.7	38462
municipality	MAN	2016	Bloemfontein Mangaung	40,001-50K	3	115	40476	48231	43662	-702	-1.6	42279
municipality	MAN	2016	Bloemfontein Mangaung	50,001-100K	5	287	62244	100000	86712	-497	-0.6	\N
municipality	MAN	2016	Bloemfontein Mangaung	100,001-150K	3	143	107294	132432	118004	-175	-0.1	114286
municipality	MAN	2016	Bloemfontein Mangaung	150,001-200K	2	37	166615	186364	176490	-9874	-5.6	\N
municipality	MAN	2016	Bloemfontein Mangaung	200,001-300K	2	83	220882	291407	256144	35263	13.8	\N
municipality	MAN	2016	Bloemfontein Mangaung	300,001-500K	1	12	375000	375000	375000	\N	\N	\N
municipality	MAN	2016	Bloemfontein Mangaung	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Bloemfontein Mangaung	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Bloemfontein Mangaung	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	1,501-3K	2	675	1509	2813	2161	1303	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	3,001-5K	9	2589	3049	5000	4088	117	2.9	4000
district	DC39	2016	Bloemhof Lekwa-Tecma	5,001-10K	13	7342	5528	9813	7045	-63	-0.9	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	10,001-20K	8	3352	10283	17967	12426	-282	-2.3	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	20,001-30K	4	88	22727	29545	26355	539	2	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	30,001-40K	3	85	35714	38372	37043	532	1.4	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	40,001-50K	2	37	44118	45000	44559	-441	-1	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	50,001-100K	1	116	90517	90517	90517	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	Under 1.5K	1	563	888	888	888	\N	\N	\N
district	DC18	2016	Boshof Tokologo	1,501-3K	4	3806	1710	2818	2203	20	0.9	\N
district	DC18	2016	Boshof Tokologo	3,001-5K	12	7614	3500	4972	4224	17	0.4	4018
district	DC18	2016	Boshof Tokologo	5,001-10K	15	6814	5057	9884	5937	-26	-0.4	5680
district	DC18	2016	Boshof Tokologo	10,001-20K	2	499	11782	18874	15328	-3546	-23.1	\N
district	DC18	2016	Boshof Tokologo	20,001-30K	3	2399	23864	24477	24186	73	0.3	\N
district	DC18	2016	Boshof Tokologo	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	50,001-100K	1	21	72381	72381	72381	\N	\N	\N
district	DC18	2016	Boshof Tokologo	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	3,001-5K	1	602	4007	4007	4007	\N	\N	\N
district	DC18	2016	Bothaville Nala	5,001-10K	7	2673	5003	9709	6713	-676	-10.1	\N
district	DC18	2016	Bothaville Nala	10,001-20K	10	3404	10261	19469	15202	-193	-1.3	10261
district	DC18	2016	Bothaville Nala	20,001-30K	4	640	22000	27771	25328	644	2.5	\N
district	DC18	2016	Bothaville Nala	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	40,001-50K	3	739	42180	44509	43035	-272	-0.6	\N
district	DC18	2016	Bothaville Nala	50,001-100K	6	1360	50026	62849	55492	-266	-0.5	\N
district	DC18	2016	Bothaville Nala	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	5,001-10K	8	2803	5510	9726	8038	243	3	\N
district	DC18	2016	Brandfort Masilonyana	10,001-20K	5	1030	10258	16908	12094	-392	-3.2	10390
district	DC18	2016	Brandfort Masilonyana	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	40,001-50K	1	21	40476	40476	40476	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	50,001-100K	1	49	85714	85714	85714	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	3,001-5K	4	10752	3306	4998	4269	226	5.3	\N
district	DC39	2016	Bray Kagisano-Molopo	5,001-10K	4	4467	5251	7976	6301	150	2.4	\N
district	DC39	2016	Bray Kagisano-Molopo	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	3,001-5K	6	629	3277	3838	3423	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	5,001-10K	1	146	9932	9932	9932	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	10,001-20K	2	754	10574	13043	11809	-1235	-10.5	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	20,001-30K	1	37	29663	29663	29663	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	50,001-100K	4	736	56452	86093	72131	636	0.9	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	100,001-150K	3	138	105376	140974	118536	-1817	-1.5	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	Above 1M	1	10	1250000	1250000	1250000	\N	\N	\N
district	DC7	2016	Britstown	Under 1.5K	5	25207	124	1403	942	-12	-1.3	\N
district	DC7	2016	Britstown	1,501-3K	9	40869	1625	2204	1934	24	1.2	\N
district	DC7	2016	Britstown	3,001-5K	1	829	4101	4101	4101	\N	\N	\N
district	DC7	2016	Britstown	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	3,001-5K	1	1055	4455	4455	4455	\N	\N	4455
district	DC18	2016	Bultfontein Tswelopele	5,001-10K	4	959	6977	8780	7784	-231	-3	\N
district	DC18	2016	Bultfontein Tswelopele	10,001-20K	1	236	10169	10169	10169	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	20,001-30K	2	202	23585	27907	25746	-1081	-4.2	\N
district	DC18	2016	Bultfontein Tswelopele	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	40,001-50K	1	368	48479	48479	48479	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	50,001-100K	1	137	83212	83212	83212	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC47	2016	Burgersfort Thubatse	Under 1.5K	2	4006	99	1000	549	180	\N	\N
district	DC47	2016	Burgersfort Thubatse	1,501-3K	1	831	1805	1805	1805	\N	\N	\N
district	DC47	2016	Burgersfort Thubatse	3,001-5K	3	1716	3050	4258	3741	102	2.7	\N
district	DC47	2016	Burgersfort Thubatse	5,001-10K	3	1708	6505	9148	7461	-324	-4.3	\N
district	DC47	2016	Burgersfort Thubatse	10,001-20K	6	3177	10360	17077	13910	506	3.6	\N
district	DC47	2016	Burgersfort Thubatse	20,001-30K	4	1179	21359	25578	22918	-242	-1.1	21359
district	DC47	2016	Burgersfort Thubatse	30,001-40K	2	132	33043	39683	36363	-6639	-18.3	\N
district	DC47	2016	Burgersfort Thubatse	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC47	2016	Burgersfort Thubatse	50,001-100K	14	783	52381	90909	75077	607	0.8	83333
district	DC47	2016	Burgersfort Thubatse	100,001-150K	3	232	103448	137363	118366	-724	-0.6	\N
district	DC47	2016	Burgersfort Thubatse	150,001-200K	4	464	150299	190909	159953	1738	1.1	\N
district	DC47	2016	Burgersfort Thubatse	200,001-300K	2	149	225275	227418	226346	-1072	-0.5	\N
district	DC47	2016	Burgersfort Thubatse	300,001-500K	2	41	369565	399000	384283	4906	1.3	\N
district	DC47	2016	Burgersfort Thubatse	500,001-800K	1	374	690409	690409	690409	\N	\N	\N
district	DC47	2016	Burgersfort Thubatse	800,001-1M	1	58	948276	948276	948276	\N	\N	\N
district	DC47	2016	Burgersfort Thubatse	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	5,001-10K	1	12	8333	8333	8333	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	10,001-20K	3	287	17148	20000	18130	-422	-2.3	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	20,001-30K	4	1082	20888	27613	22891	457	2	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	30,001-40K	1	173	37572	37572	37572	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	50,001-100K	15	2842	50070	100000	78587	-1978	-2.5	67616
district	DC3	2016	Caledon (Overberg) Theewaterskloof	100,001-150K	4	333	120000	142017	134179	1615	1.2	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	150,001-200K	2	133	186667	194215	190441	944	0.5	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	200,001-300K	1	22	227273	227273	227273	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	300,001-500K	1	58	374353	374353	374353	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	500,001-800K	4	116	515098	595833	555592	-9318	-1.7	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	Under 1.5K	1	757	830	830	830	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	5,001-10K	5	1599	5052	8851	6247	-298	-4.8	\N
district	DC4	2016	Calitzdorp Kannaland	10,001-20K	2	43	13571	19000	16286	-1086	-6.7	\N
district	DC4	2016	Calitzdorp Kannaland	20,001-30K	1	480	25625	25625	25625	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	40,001-50K	1	289	47059	47059	47059	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	50,001-100K	2	61	82609	100000	91304	-17391	-19	\N
district	DC4	2016	Calitzdorp Kannaland	100,001-150K	2	57	142857	144828	143860	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	Under 1.5K	11	29400	364	1300	863	-27	-3.1	\N
district	DC6	2016	Calvinia Hantam	1,501-3K	5	12700	1750	2871	2312	-113	-4.9	\N
district	DC6	2016	Calvinia Hantam	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	3,001-5K	1	351	3989	3989	3989	\N	\N	\N
municipality	CPT	2016	Cape Town	5,001-10K	1	2328	9880	9880	9880	\N	\N	\N
municipality	CPT	2016	Cape Town	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	20,001-30K	1	383	21279	21279	21279	\N	\N	\N
municipality	CPT	2016	Cape Town	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	50,001-100K	3	89	52632	78043	62904	-5303	-8.4	\N
municipality	CPT	2016	Cape Town	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	150,001-200K	1	21	152381	152381	152381	\N	\N	\N
municipality	CPT	2016	Cape Town	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC48	2016	Carletonville Merafong	Under 1.5K	1	211	332	332	332	\N	\N	\N
district	DC48	2016	Carletonville Merafong	1,501-3K	1	27	1852	1852	1852	\N	\N	\N
district	DC48	2016	Carletonville Merafong	3,001-5K	1	293	3413	3413	3413	\N	\N	\N
district	DC48	2016	Carletonville Merafong	5,001-10K	16	7862	5750	10000	7901	31	0.4	\N
district	DC48	2016	Carletonville Merafong	10,001-20K	25	5149	10833	20000	13817	-109	-0.8	14286
district	DC48	2016	Carletonville Merafong	20,001-30K	11	627	20213	28864	24415	128	0.5	\N
district	DC48	2016	Carletonville Merafong	30,001-40K	12	913	30516	38636	34450	-122	-0.4	33333
district	DC48	2016	Carletonville Merafong	40,001-50K	8	1314	40541	48837	45594	-60	-0.1	46653
district	DC48	2016	Carletonville Merafong	50,001-100K	29	1042	51923	100000	71419	150	0.2	66688
district	DC48	2016	Carletonville Merafong	100,001-150K	9	136	103571	140000	121616	1014	0.8	\N
district	DC48	2016	Carletonville Merafong	150,001-200K	3	40	181818	193800	184668	5699	3.1	\N
district	DC48	2016	Carletonville Merafong	200,001-300K	4	160	208333	268657	231649	-2200	-0.9	208333
district	DC48	2016	Carletonville Merafong	300,001-500K	5	83	306923	491667	371103	-6547	-1.8	390000
district	DC48	2016	Carletonville Merafong	500,001-800K	1	12	791667	791667	791667	\N	\N	\N
district	DC48	2016	Carletonville Merafong	800,001-1M	1	20	940000	940000	940000	\N	\N	\N
district	DC48	2016	Carletonville Merafong	Above 1M	3	49	1885385	6546450	4776381	-432762	-9.1	\N
district	DC7	2016	Carnavon Kareeberg	Under 1.5K	1	2030	133	133	133	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	1,501-3K	8	36575	1667	2466	2313	15	0.7	\N
district	DC7	2016	Carnavon Kareeberg	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	3,001-5K	1	641	4680	4680	4680	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	5,001-10K	4	2390	6565	9843	8082	-139	-1.7	6565
district	DC12	2016	Cathcart Amahlathi	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	50,001-100K	1	22	56818	56818	56818	\N	\N	56818
district	DC12	2016	Cathcart Amahlathi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	Under 1.5K	4	17911	530	1234	828	11	1.4	\N
district	DC2	2016	Ceres Witzenberg	1,501-3K	4	14438	1547	2350	1863	61	3.3	\N
district	DC2	2016	Ceres Witzenberg	3,001-5K	1	1212	3795	3795	3795	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	5,001-10K	2	3658	6270	9174	7722	415	5.4	\N
district	DC2	2016	Ceres Witzenberg	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	20,001-30K	2	353	25714	26494	26104	130	0.5	\N
district	DC2	2016	Ceres Witzenberg	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	40,001-50K	1	229	41485	41485	41485	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	100,001-150K	2	120	116223	134615	125419	-1839	-1.5	116223
district	DC2	2016	Ceres Witzenberg	150,001-200K	1	140	200000	200000	200000	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	Under 1.5K	4	2271	391	1030	872	-37	-4.3	\N
district	DC1	2016	Clanwilliam Cederberg	1,501-3K	6	7460	2162	2804	2485	-8	-0.3	2297
district	DC1	2016	Clanwilliam Cederberg	3,001-5K	2	1799	3325	4717	3899	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	5,001-10K	4	1548	5328	6643	6004	72	1.2	\N
district	DC1	2016	Clanwilliam Cederberg	10,001-20K	2	1113	10338	12732	11535	-2394	-20.8	\N
district	DC1	2016	Clanwilliam Cederberg	20,001-30K	1	1576	20431	20431	20431	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	50,001-100K	4	242	76000	95455	86874	-3292	-3.8	\N
district	DC1	2016	Clanwilliam Cederberg	100,001-150K	1	53	122642	122642	122642	\N	\N	122642
district	DC1	2016	Clanwilliam Cederberg	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	1,501-3K	1	518	1931	1931	1931	\N	\N	\N
district	DC19	2016	Clocolan Setso	3,001-5K	1	183	3005	3005	3005	\N	\N	\N
district	DC19	2016	Clocolan Setso	5,001-10K	2	696	7005	7470	7238	-116	-1.6	\N
district	DC19	2016	Clocolan Setso	10,001-20K	9	1772	14583	19521	15317	-542	-3.5	\N
district	DC19	2016	Clocolan Setso	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	Under 1.5K	2	7734	776	893	835	29	3.5	\N
district	DC7	2016	Colesberg Umsombomvu	1,501-3K	6	16558	1731	2933	2367	105	4.4	2649
district	DC7	2016	Colesberg Umsombomvu	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	5,001-10K	1	3275	5115	5115	5115	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	1,501-3K	1	277	1805	1805	1805	\N	\N	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	3,001-5K	5	2224	3856	4705	4263	-91	-2.1	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	5,001-10K	17	6818	5072	10000	7522	-37	-0.5	8913
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	10,001-20K	24	6046	10005	20000	13999	-279	-2	13480
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	20,001-30K	9	3310	21543	26293	23602	-106	-0.4	23558
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	30,001-40K	4	145	32353	36000	34958	-167	-0.5	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	40,001-50K	5	82	42857	50000	45769	-824	-1.8	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	50,001-100K	4	71	51538	82353	61381	-2752	-4.5	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	100,001-150K	1	27	101111	101111	101111	\N	\N	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	150,001-200K	2	33	156522	175000	165761	-6159	-3.7	156522
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	300,001-500K	1	23	400000	400000	400000	\N	\N	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	1,501-3K	1	3897	1540	1540	1540	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	3,001-5K	4	10428	3347	4996	4360	72	1.6	\N
district	DC13	2016	Cradock Inxuba Yethemba	5,001-10K	3	5977	5645	8079	6776	-323	-4.8	\N
district	DC13	2016	Cradock Inxuba Yethemba	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	40,001-50K	1	559	40250	40250	40250	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	50,001-100K	2	508	59226	63380	61303	-519	-0.8	\N
district	DC13	2016	Cradock Inxuba Yethemba	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	150,001-200K	1	141	153901	153901	153901	\N	\N	153901
district	DC13	2016	Cradock Inxuba Yethemba	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	1,501-3K	1	514	2200	2200	2200	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	3,001-5K	2	371	4222	4458	4340	-30	-0.7	\N
district	DC38	2016	Delareyville Tswaing	5,001-10K	19	8247	5063	9615	8333	83	1	\N
district	DC38	2016	Delareyville Tswaing	10,001-20K	37	11029	10206	19556	12535	55	0.4	11016
district	DC38	2016	Delareyville Tswaing	20,001-30K	3	694	22027	25641	23269	496	2.1	\N
district	DC38	2016	Delareyville Tswaing	30,001-40K	2	43	36364	38095	37229	247	0.7	\N
district	DC38	2016	Delareyville Tswaing	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	3,001-5K	5	1329	3333	4439	3984	-17	-0.4	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	5,001-10K	14	11435	5126	9944	7334	-172	-2.3	7345
district	DC34	2016	Dendron Makhado (Louis Trichardt)	10,001-20K	12	3378	10031	17763	13734	-362	-2.6	10732
district	DC34	2016	Dendron Makhado (Louis Trichardt)	20,001-30K	4	513	24762	26360	25883	132	0.5	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	30,001-40K	3	385	32914	37143	34786	-367	-1.1	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	40,001-50K	2	97	41071	43902	42487	1416	3.3	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	50,001-100K	15	604	72581	100000	86232	-357	-0.4	84615
district	DC34	2016	Dendron Makhado (Louis Trichardt)	100,001-150K	7	267	100719	150000	131727	-1034	-0.8	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	150,001-200K	4	80	160000	190000	176421	-131	-0.1	182609
district	DC34	2016	Dendron Makhado (Louis Trichardt)	200,001-300K	1	31	239032	239032	239032	\N	\N	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	300,001-500K	1	22	363636	363636	363636	\N	\N	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	5,001-10K	6	5257	5846	10000	7946	194	2.4	10000
district	DC38	2016	Derdepoort	10,001-20K	4	2710	10304	15067	12550	220	1.8	12351
district	DC38	2016	Derdepoort	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	50,001-100K	1	168	89286	89286	89286	\N	\N	\N
district	DC38	2016	Derdepoort	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	3,001-5K	4	3306	3214	4892	4459	555	12.4	\N
district	DC16	2016	Dewetsdorp Naledi	5,001-10K	1	149	5501	5501	5501	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	3,001-5K	1	707	4243	4243	4243	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	100,001-150K	1	57	120000	120000	120000	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	150,001-200K	3	139	152174	184783	170535	-28495	-16.7	\N
district	DC7	2016	Douglas Siyancuma	200,001-300K	1	39	256410	256410	256410	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	1,501-3K	4	1937	2710	3000	2814	-59	-2.1	\N
district	DC16	2016	Edenburg Kopanong	3,001-5K	1	453	3250	3250	3250	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	5,001-10K	2	855	5699	6355	6027	328	5.4	\N
district	DC16	2016	Edenburg Kopanong	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	1,501-3K	1	136	1679	1679	1679	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	3,001-5K	3	1422	4235	4991	4658	-17	-0.4	\N
district	DC14	2016	Elliot Sakhiszwe	5,001-10K	2	1167	5609	8987	7298	3378	\N	\N
district	DC14	2016	Elliot Sakhiszwe	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	20,001-30K	2	531	22431	23485	22958	-150	-0.7	\N
district	DC14	2016	Elliot Sakhiszwe	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	40,001-50K	1	37	43135	43135	43135	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	50,001-100K	1	12	100000	100000	100000	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	1,501-3K	1	1087	1557	1557	1557	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	3,001-5K	3	1185	3509	4051	3791	520	13.7	\N
district	DC36	2016	Ellisras Lephalale	5,001-10K	10	8789	5309	9334	6842	-72	-1.1	6111
district	DC36	2016	Ellisras Lephalale	10,001-20K	11	5859	10078	16796	12949	-331	-2.6	13338
district	DC36	2016	Ellisras Lephalale	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	30,001-40K	1	338	32544	32544	32544	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	40,001-50K	1	23	43478	43478	43478	\N	\N	43478
district	DC36	2016	Ellisras Lephalale	50,001-100K	2	67	50213	52381	51297	1084	2.1	\N
district	DC36	2016	Ellisras Lephalale	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	300,001-500K	1	22	340909	340909	340909	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	3,001-5K	1	2730	4500	4500	4500	\N	\N	\N
municipality	DC40	2016	Ewbank	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	1,501-3K	2	776	2541	2804	2672	88	3.3	\N
district	DC16	2016	Fauresmith Kopanong	3,001-5K	6	6247	3218	4956	3790	118	3.1	\N
district	DC16	2016	Fauresmith Kopanong	5,001-10K	8	4618	5854	10001	7518	75	1	\N
district	DC16	2016	Fauresmith Kopanong	10,001-20K	1	343	11633	11633	11633	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	50,001-100K	1	117	59829	59829	59829	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	5,001-10K	6	2356	5838	9986	8791	1166	13.3	\N
district	DC19	2016	Ficksburg Setso	10,001-20K	3	1405	11475	13673	12769	-181	-1.4	11475
district	DC19	2016	Ficksburg Setso	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	40,001-50K	1	80	41638	41638	41638	\N	\N	\N
district	DC19	2016	Ficksburg Setso	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	1,501-3K	1	702	2114	2114	2114	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	5,001-10K	1	723	8240	8240	8240	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	5,001-10K	1	405	8889	8889	8889	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	10,001-20K	5	643	13167	17442	14593	-124	-0.8	\N
district	DC19	2016	Fouriesburg Dikabeng	20,001-30K	1	550	23091	23091	23091	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	200,001-300K	1	88	215909	215909	215909	\N	\N	215909
district	DC19	2016	Fouriesburg Dikabeng	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	5,001-10K	3	519	7888	10000	9296	-568	-6.1	\N
district	DC20	2016	Frankfort Mafube	10,001-20K	13	5380	10141	19966	15040	522	3.5	\N
district	DC20	2016	Frankfort Mafube	20,001-30K	5	1612	20022	28902	25849	-1	0	\N
district	DC20	2016	Frankfort Mafube	30,001-40K	1	517	38685	38685	38685	\N	\N	\N
district	DC20	2016	Frankfort Mafube	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	Under 1.5K	4	19598	735	1337	1020	-12	-1.1	1008
district	DC6	2016	Fraserburg Karoo Hoogland	1,501-3K	3	6461	1619	2487	2089	42	2	\N
district	DC6	2016	Fraserburg Karoo Hoogland	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	George	Under 1.5K	1	694	1009	1009	1009	\N	\N	\N
district	DC4	2016	George	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	George	3,001-5K	1	61	4508	4508	4508	\N	\N	\N
district	DC4	2016	George	5,001-10K	3	295	6190	6540	6427	32	0.5	\N
district	DC4	2016	George	10,001-20K	2	520	15472	19444	17458	662	3.8	\N
district	DC4	2016	George	20,001-30K	2	216	27869	29032	28704	\N	\N	28704
district	DC4	2016	George	30,001-40K	3	99	32000	37755	35905	189	0.5	\N
district	DC4	2016	George	40,001-50K	2	454	46154	49760	47957	902	1.9	\N
district	DC4	2016	George	50,001-100K	5	567	52239	76190	68559	39	0.1	\N
district	DC4	2016	George	100,001-150K	4	158	105584	137931	119353	-18947	-15.9	\N
district	DC4	2016	George	150,001-200K	2	142	169355	171556	170455	-734	-0.4	\N
district	DC4	2016	George	200,001-300K	1	24	250000	250000	250000	\N	\N	\N
district	DC4	2016	George	300,001-500K	1	35	331429	331429	331429	\N	\N	\N
district	DC4	2016	George	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	George	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	George	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Gordonia	Under 1.5K	8	33314	6	1005	598	-88	-14.7	\N
district	DC6	2016	Gordonia	1,501-3K	14	64579	1792	2750	2282	-54	-2.4	1792
district	DC6	2016	Gordonia	3,001-5K	4	13469	3135	3998	3452	-14	-0.4	\N
district	DC6	2016	Gordonia	5,001-10K	1	359	5014	5014	5014	\N	\N	\N
district	DC6	2016	Gordonia	10,001-20K	1	23	10409	10409	10409	\N	\N	\N
district	DC6	2016	Gordonia	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Gordonia	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Gordonia	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Gordonia	50,001-100K	1	14	85714	85714	85714	\N	\N	\N
district	DC6	2016	Gordonia	100,001-150K	1	22	113636	113636	113636	\N	\N	\N
district	DC6	2016	Gordonia	150,001-200K	1	16	156250	156250	156250	\N	\N	\N
district	DC6	2016	Gordonia	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Gordonia	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Gordonia	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Gordonia	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Gordonia	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	Under 1.5K	1	1937	1033	1033	1033	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	1,501-3K	1	1937	1766	1766	1766	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	3,001-5K	2	5804	3238	3502	3370	-88	-2.6	\N
district	DC10	2016	Graaff-Reinet Camdeboo	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	1,501-3K	2	5401	2440	2983	2629	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	3,001-5K	1	857	3991	3991	3991	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	5,001-10K	1	2218	5937	5937	5937	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	3,001-5K	1	428	3207	3207	3207	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	5,001-10K	5	4895	7340	9286	8315	-76	-0.9	7340
district	DC19	2016	Harrismith Maluti-A-Phofung	10,001-20K	12	5877	10783	19919	14235	-111	-0.8	14935
district	DC19	2016	Harrismith Maluti-A-Phofung	20,001-30K	3	534	20354	26563	22846	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	30,001-40K	2	2277	33633	33992	33812	60	0.2	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	40,001-50K	1	19	44737	44737	44737	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	1,501-3K	1	349	2500	2500	2500	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	5,001-10K	5	2052	6707	9488	8024	-32	-0.4	\N
district	DC20	2016	Heilbron Ngwathe	10,001-20K	9	4093	10668	15217	12264	-55	-0.4	\N
district	DC20	2016	Heilbron Ngwathe	20,001-30K	3	2043	25042	28497	26846	-300	-1.1	25196
district	DC20	2016	Heilbron Ngwathe	30,001-40K	2	85	35506	40000	37753	-449	-1.2	35506
district	DC20	2016	Heilbron Ngwathe	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	50,001-100K	1	25	60000	60000	60000	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	3,001-5K	1	116	3017	3017	3017	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	5,001-10K	3	2112	5252	7000	6034	521	8.6	\N
district	DC24	2016	Helpmekaar uMzinyathi	10,001-20K	2	824	10292	10456	10340	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	10,001-20K	2	726	13066	18254	15317	\N	\N	15317
district	DC18	2016	Hoopstad Tswelopele	20,001-30K	3	733	20979	28528	23643	-5327	-22.5	\N
district	DC18	2016	Hoopstad Tswelopele	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	1,501-3K	3	9105	2484	2800	2607	35	1.4	\N
district	DC7	2016	Hopetown Thembelihle	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	5,001-10K	1	491	9165	9165	9165	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	20,001-30K	1	491	21413	21413	21413	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	100,001-150K	1	423	103546	103546	103546	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	150,001-200K	2	892	184799	188688	186743	1296	0.7	\N
district	DC7	2016	Hopetown Thembelihle	200,001-300K	1	278	260288	260288	260288	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Humansdorp Kouga	Under 1.5K	5	2184	541	1483	963	56	5.8	\N
district	DC10	2016	Humansdorp Kouga	1,501-3K	3	1287	1848	2994	2281	-143	-6.3	\N
district	DC10	2016	Humansdorp Kouga	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Humansdorp Kouga	5,001-10K	1	152	5461	5461	5461	\N	\N	\N
district	DC10	2016	Humansdorp Kouga	10,001-20K	6	2254	12389	18609	15622	313	2	\N
district	DC10	2016	Humansdorp Kouga	20,001-30K	1	124	28226	28226	28226	\N	\N	\N
district	DC10	2016	Humansdorp Kouga	30,001-40K	1	592	38851	38851	38851	\N	\N	38851
district	DC10	2016	Humansdorp Kouga	40,001-50K	2	190	44984	45298	45141	-157	-0.3	\N
district	DC10	2016	Humansdorp Kouga	50,001-100K	6	828	66667	100000	83689	1378	1.6	66667
district	DC10	2016	Humansdorp Kouga	100,001-150K	1	21	102381	102381	102381	\N	\N	\N
district	DC10	2016	Humansdorp Kouga	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Humansdorp Kouga	200,001-300K	1	21	280929	280929	280929	\N	\N	\N
district	DC10	2016	Humansdorp Kouga	300,001-500K	2	40	342777	361111	351944	-6111	-1.7	\N
district	DC10	2016	Humansdorp Kouga	500,001-800K	2	47	600000	791667	695833	-95833	-13.8	\N
district	DC10	2016	Humansdorp Kouga	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Humansdorp Kouga	Above 1M	1	12	1083333	1083333	1083333	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	1,501-3K	1	705	2837	2837	2837	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	3,001-5K	5	3382	3496	4557	3904	61	1.6	\N
district	DC16	2016	Jacobsdal Letsemeng	5,001-10K	5	2501	6358	8602	7057	-90	-1.3	\N
district	DC16	2016	Jacobsdal Letsemeng	10,001-20K	2	467	12498	16829	14663	4331	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	1,501-3K	1	3927	2232	2232	2232	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	3,001-5K	1	2288	3059	3059	3059	\N	\N	3059
district	DC10	2016	Jansenville Ikwezi	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	Under 1.5K	1	499	752	752	752	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	1,501-3K	1	296	2196	2196	2196	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	5,001-10K	2	89	6238	8571	7405	778	10.5	\N
district	DC20	2016	Koppies Ngwathe	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	10,001-20K	3	150	12766	16671	14442	-449	-3.1	\N
district	DC10	2016	Joubertina Kou-Kamma	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	30,001-40K	1	36	30556	30556	30556	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	40,001-50K	2	32	42895	50000	46447	-1776	-3.8	\N
district	DC10	2016	Joubertina Kou-Kamma	50,001-100K	1	12	70833	70833	70833	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	300,001-500K	1	95	320551	320551	320551	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	10,001-20K	1	21	12381	12381	12381	\N	\N	\N
district	DC27	2016	Jozini Mkuze	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	30,001-40K	1	14	37294	37294	37294	\N	\N	\N
district	DC27	2016	Jozini Mkuze	40,001-50K	2	451	40962	43578	42270	-872	-2.1	\N
district	DC27	2016	Jozini Mkuze	50,001-100K	1	20	75000	75000	75000	\N	\N	\N
district	DC27	2016	Jozini Mkuze	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	Under 1.5K	14	97346	2	1222	766	58	7.6	\N
district	DC8	2016	Kenhardt Kai !Garib	1,501-3K	2	8154	1508	2005	1757	-248	-14.1	\N
district	DC8	2016	Kenhardt Kai !Garib	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	5,001-10K	1	852	9002	9002	9002	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	10,001-20K	1	44	19205	19205	19205	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	20,001-30K	1	10	30000	30000	30000	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	50,001-100K	1	12	95833	95833	95833	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	100,001-150K	1	27	102963	102963	102963	\N	\N	102963
district	DC8	2016	Kenhardt Kai !Garib	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	200,001-300K	2	45	222727	267647	245187	-22460	-9.2	\N
district	DC8	2016	Kenhardt Kai !Garib	300,001-500K	1	12	325000	325000	325000	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	Under 1.5K	1	4323	1450	1450	1450	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	1,501-3K	11	25692	1800	3000	2556	36	1.4	2673
district	DC9	2016	Kimberley / HAY Frances Baard	3,001-5K	14	30246	3500	4831	3876	1	0	\N
district	DC9	2016	Kimberley / HAY Frances Baard	5,001-10K	6	2886	5333	10000	8315	-201	-2.4	\N
district	DC9	2016	Kimberley / HAY Frances Baard	10,001-20K	3	917	12657	14322	13302	379	2.9	14322
district	DC9	2016	Kimberley / HAY Frances Baard	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	50,001-100K	5	477	51282	80519	62155	-2315	-3.7	51282
district	DC9	2016	Kimberley / HAY Frances Baard	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	150,001-200K	1	29	163971	163971	163971	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	200,001-300K	1	86	290698	290698	290698	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	Above 1M	1	46	1086957	1086957	1086957	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	Under 1.5K	2	508	532	966	749	-217	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	1,501-3K	1	2560	1841	1841	1841	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	5,001-10K	4	2547	5503	9820	6729	-161	-2.4	5503
municipality	BUF	2016	King Williams Town Baffalo City	10,001-20K	2	400	11957	13418	12687	-1462	-11.5	\N
municipality	BUF	2016	King Williams Town Baffalo City	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	300,001-500K	1	183	382514	382514	382514	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Knysna	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Knysna	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Knysna	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Knysna	5,001-10K	1	276	9417	9417	9417	\N	\N	\N
district	DC4	2016	Knysna	10,001-20K	1	2106	15332	15332	15332	\N	\N	\N
district	DC4	2016	Knysna	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Knysna	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Knysna	40,001-50K	1	223	49327	49327	49327	\N	\N	\N
district	DC4	2016	Knysna	50,001-100K	5	678	58182	88235	71971	-2722	-3.8	\N
district	DC4	2016	Knysna	100,001-150K	6	144	110345	140000	121701	-1196	-1	\N
district	DC4	2016	Knysna	150,001-200K	1	55	176182	176182	176182	\N	\N	\N
district	DC4	2016	Knysna	200,001-300K	1	25	300000	300000	300000	\N	\N	\N
district	DC4	2016	Knysna	300,001-500K	1	21	392857	392857	392857	\N	\N	\N
district	DC4	2016	Knysna	500,001-800K	1	11	545455	545455	545455	\N	\N	\N
district	DC4	2016	Knysna	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Knysna	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Kokstad	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Kokstad	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Kokstad	3,001-5K	1	646	4644	4644	4644	\N	\N	\N
district	DC43	2016	Kokstad	5,001-10K	1	490	8163	8163	8163	\N	\N	\N
district	DC43	2016	Kokstad	10,001-20K	7	7026	11851	18530	14952	-62	-0.4	12361
district	DC43	2016	Kokstad	20,001-30K	3	1545	20404	29499	25364	-551	-2.2	\N
district	DC43	2016	Kokstad	30,001-40K	1	76	36184	36184	36184	\N	\N	\N
district	DC43	2016	Kokstad	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Kokstad	50,001-100K	3	227	58824	96900	77329	-1017	-1.3	\N
district	DC43	2016	Kokstad	100,001-150K	1	18	102222	102222	102222	\N	\N	\N
district	DC43	2016	Kokstad	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Kokstad	200,001-300K	1	10	235000	235000	235000	\N	\N	\N
district	DC43	2016	Kokstad	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Kokstad	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Kokstad	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Kokstad	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	1,501-3K	1	291	2577	2577	2577	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	5,001-10K	6	975	5650	10000	8145	485	6	10000
district	DC32	2016	Komatipoort Nkomazi	10,001-20K	4	1048	14019	20000	17498	110	0.6	\N
district	DC32	2016	Komatipoort Nkomazi	20,001-30K	1	184	21196	21196	21196	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	30,001-40K	1	157	32484	32484	32484	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	50,001-100K	5	4690	50209	76923	66751	-1148	-1.7	\N
district	DC32	2016	Komatipoort Nkomazi	100,001-150K	6	473	112500	139738	123686	-224	-0.2	\N
district	DC32	2016	Komatipoort Nkomazi	150,001-200K	6	366	150754	176471	160989	2277	1.4	\N
district	DC32	2016	Komatipoort Nkomazi	200,001-300K	2	57	203704	245000	224352	-20648	-9.2	\N
district	DC32	2016	Komatipoort Nkomazi	300,001-500K	2	103	307692	350649	329171	42957	13.1	\N
district	DC32	2016	Komatipoort Nkomazi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	1,501-3K	1	243	2469	2469	2469	\N	\N	\N
district	DC12	2016	Komga Great Kei	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	5,001-10K	4	2819	7908	9924	8540	14	0.2	8239
district	DC12	2016	Komga Great Kei	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	20,001-30K	2	87	20270	26923	23597	-1331	-5.6	\N
district	DC12	2016	Komga Great Kei	30,001-40K	2	419	31328	32500	31914	117	0.4	32500
district	DC12	2016	Komga Great Kei	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	5,001-10K	5	2247	6413	8884	8067	236	2.9	\N
district	DC20	2016	Koppies Ngwathe	10,001-20K	5	1166	10014	13969	12087	-63	-0.5	\N
district	DC20	2016	Koppies Ngwathe	20,001-30K	1	174	29483	29483	29483	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	5,001-10K	10	4381	6875	9986	8362	85	1	\N
district	DC20	2016	Kroonstad Moqhaka	10,001-20K	10	3537	10007	16205	13035	-227	-1.7	11111
district	DC20	2016	Kroonstad Moqhaka	20,001-30K	2	519	21333	27397	24365	-3032	-12.4	\N
district	DC20	2016	Kroonstad Moqhaka	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	Under 1.5K	3	2250	132	1264	621	35	5.6	\N
district	DC45	2016	Kuruman Ga-Segonyana	1,501-3K	10	31409	1723	2762	2198	-26	-1.2	\N
district	DC45	2016	Kuruman Ga-Segonyana	3,001-5K	6	12386	3400	4764	4044	-51	-1.3	\N
district	DC45	2016	Kuruman Ga-Segonyana	5,001-10K	11	8637	5142	7980	6327	56	0.9	6770
district	DC45	2016	Kuruman Ga-Segonyana	10,001-20K	1	712	10534	10534	10534	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	50,001-100K	1	60	54000	54000	54000	\N	\N	54000
district	DC45	2016	Kuruman Ga-Segonyana	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	200,001-300K	1	300	266667	266667	266667	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	Under 1.5K	3	4236	98	1499	666	8	1.2	\N
district	DC4	2016	Ladismith Kannaland	1,501-3K	3	2703	1617	2959	2452	467	19	\N
district	DC4	2016	Ladismith Kannaland	3,001-5K	2	230	3787	3812	3799	-13	-0.3	\N
district	DC4	2016	Ladismith Kannaland	5,001-10K	5	777	5134	7317	6112	206	3.4	\N
district	DC4	2016	Ladismith Kannaland	10,001-20K	4	236	12692	18636	15006	340	2.3	\N
district	DC4	2016	Ladismith Kannaland	20,001-30K	2	69	20588	24286	22437	-3697	-16.5	\N
district	DC4	2016	Ladismith Kannaland	30,001-40K	1	58	32759	32759	32759	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	50,001-100K	2	32	66667	67857	67262	-298	-0.4	\N
district	DC4	2016	Ladismith Kannaland	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	150,001-200K	1	18	165156	165156	165156	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	Under 1.5K	2	714	98	168	133	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	3,001-5K	4	1430	3922	5000	4502	31	0.7	\N
district	DC19	2016	Ladybrand Mantsopa	5,001-10K	2	678	6453	9785	8119	-555	-6.8	\N
district	DC19	2016	Ladybrand Mantsopa	10,001-20K	3	1775	10174	18203	13041	-2007	-15.4	\N
district	DC19	2016	Ladybrand Mantsopa	20,001-30K	1	223	20179	20179	20179	\N	\N	20179
district	DC19	2016	Ladybrand Mantsopa	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	3,001-5K	3	1243	3675	4916	4544	744	16.4	\N
district	DC23	2016	Ladysmith Emnambithi	5,001-10K	10	7065	5801	8447	7032	-44	-0.6	\N
district	DC23	2016	Ladysmith Emnambithi	10,001-20K	5	3075	11180	15544	13457	522	3.9	\N
district	DC23	2016	Ladysmith Emnambithi	20,001-30K	2	122	20152	20513	20332	-361	-1.8	\N
district	DC23	2016	Ladysmith Emnambithi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	40,001-50K	1	133	43609	43609	43609	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	50,001-100K	2	87	52083	98718	75401	-11659	-15.5	\N
district	DC23	2016	Ladysmith Emnambithi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	200,001-300K	1	20	210000	210000	210000	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	Under 1.5K	1	1679	536	536	536	\N	\N	\N
district	DC5	2016	Laingsburg	1,501-3K	2	1858	1855	2423	2139	-113	-5.3	\N
district	DC5	2016	Laingsburg	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	Under 1.5K	1	253	909	909	909	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	5,001-10K	2	382	5618	7059	6338	1441	22.7	\N
district	DC30	2016	Leandra Gonovan Mbeki	10,001-20K	25	6908	10277	18471	14056	39	0.3	\N
district	DC30	2016	Leandra Gonovan Mbeki	20,001-30K	9	1351	20115	27581	23962	56	0.2	\N
district	DC30	2016	Leandra Gonovan Mbeki	30,001-40K	4	1160	33818	39560	36861	580	1.6	\N
district	DC30	2016	Leandra Gonovan Mbeki	40,001-50K	2	648	43796	44880	44421	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	50,001-100K	5	139	58333	73600	62134	2434	3.9	\N
district	DC30	2016	Leandra Gonovan Mbeki	100,001-150K	2	158	125262	133333	129298	2018	1.6	\N
district	DC30	2016	Leandra Gonovan Mbeki	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	200,001-300K	1	20	259750	259750	259750	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	5,001-10K	18	7316	5556	9887	6877	-142	-2.1	\N
district	DC19	2016	Lindley Nketoana	10,001-20K	9	4742	11597	18962	14626	-324	-2.2	11921
district	DC19	2016	Lindley Nketoana	20,001-30K	4	1004	20645	29545	26367	-15	-0.1	\N
district	DC19	2016	Lindley Nketoana	30,001-40K	1	23	32609	32609	32609	\N	\N	\N
district	DC19	2016	Lindley Nketoana	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	1,501-3K	1	1836	2042	2042	2042	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	5,001-10K	2	1885	5743	9553	6737	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	10,001-20K	2	2642	15625	17552	16588	-385	-2.3	\N
district	DC26	2016	Louwsburg Abaqulusi	20,001-30K	1	5900	28903	28903	28903	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	100,001-150K	4	389	102649	136074	113858	1174	1	106617
district	DC26	2016	Louwsburg Abaqulusi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	1,501-3K	6	3622	2571	2999	2805	4	0.1	2850
district	DC14	2016	Maclear Elundini	3,001-5K	1	755	3974	3974	3974	\N	\N	\N
district	DC14	2016	Maclear Elundini	5,001-10K	2	767	7042	9032	8037	-498	-6.2	\N
district	DC14	2016	Maclear Elundini	10,001-20K	3	1764	10073	17896	14157	-509	-3.6	\N
district	DC14	2016	Maclear Elundini	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Mahikeng	Under 1.5K	1	1486	20	20	20	\N	\N	\N
district	DC38	2016	Mahikeng	1,501-3K	1	428	2921	2921	2921	\N	\N	2921
district	DC38	2016	Mahikeng	3,001-5K	1	2182	3277	3277	3277	\N	\N	\N
district	DC38	2016	Mahikeng	5,001-10K	6	3443	5031	9378	6748	199	2.9	\N
district	DC38	2016	Mahikeng	10,001-20K	3	1510	10905	18750	13694	87	0.6	\N
district	DC38	2016	Mahikeng	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Mahikeng	30,001-40K	1	18	36111	36111	36111	\N	\N	\N
district	DC38	2016	Mahikeng	40,001-50K	1	11	40909	40909	40909	\N	\N	\N
district	DC38	2016	Mahikeng	50,001-100K	1	17	76471	76471	76471	\N	\N	\N
district	DC38	2016	Mahikeng	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Mahikeng	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Mahikeng	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Mahikeng	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Mahikeng	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Mahikeng	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Mahikeng	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	Under 1.5K	1	171	30	30	30	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	1,501-3K	3	3340	2287	2472	2349	21	0.9	\N
district	DC1	2016	Malmesbury Swartland	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	5,001-10K	1	1174	7836	7836	7836	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	10,001-20K	4	3280	10514	17209	13166	-597	-4.5	\N
district	DC1	2016	Malmesbury Swartland	20,001-30K	3	1459	20698	23256	22465	171	0.8	\N
district	DC1	2016	Malmesbury Swartland	30,001-40K	2	1026	32787	39739	38499	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	40,001-50K	4	1177	40115	48780	45898	743	1.6	\N
district	DC1	2016	Malmesbury Swartland	50,001-100K	7	1544	51422	100000	65249	-3596	-5.5	\N
district	DC1	2016	Malmesbury Swartland	100,001-150K	2	235	119084	122143	120614	-3059	-2.5	\N
district	DC1	2016	Malmesbury Swartland	150,001-200K	1	629	170588	170588	170588	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	200,001-300K	2	139	236889	269321	253105	8108	3.2	\N
district	DC1	2016	Malmesbury Swartland	300,001-500K	1	10	475000	475000	475000	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	Under 1.5K	2	46	652	1304	978	163	16.7	1304
district	DC37	2016	Marikana (Rustenburg) Bonjala	1,501-3K	2	198	2344	2794	2569	450	17.5	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	3,001-5K	7	3155	3250	4461	3755	-102	-2.7	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	5,001-10K	11	1861	6053	10000	8179	-70	-0.9	6452
district	DC37	2016	Marikana (Rustenburg) Bonjala	10,001-20K	26	3816	10200	19847	16290	-132	-0.8	14372
district	DC37	2016	Marikana (Rustenburg) Bonjala	20,001-30K	28	1788	20123	30000	24583	-149	-0.6	25977
district	DC37	2016	Marikana (Rustenburg) Bonjala	30,001-40K	29	2030	30515	40000	34483	-196	-0.6	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	40,001-50K	23	1641	41176	50000	45404	215	0.5	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	50,001-100K	51	3329	51207	100000	69359	520	0.7	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	100,001-150K	29	746	102273	150000	125148	1669	1.3	118367
district	DC37	2016	Marikana (Rustenburg) Bonjala	150,001-200K	10	181	153846	194444	171567	1495	0.9	185294
district	DC37	2016	Marikana (Rustenburg) Bonjala	200,001-300K	6	108	213333	280952	255788	4862	1.9	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	300,001-500K	2	172	320215	435185	392406	\N	\N	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	500,001-800K	4	86	556777	630000	583092	-4004	-0.7	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	800,001-1M	3	60	821667	1000000	929803	609	0.1	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	1,501-3K	1	446	2993	2993	2993	\N	\N	\N
district	DC36	2016	Marken	3,001-5K	2	1279	3967	4233	4100	-33	-0.8	\N
district	DC36	2016	Marken	5,001-10K	10	10801	5882	9709	7546	89	1.2	8048
district	DC36	2016	Marken	10,001-20K	3	2485	10358	18328	13071	-255	-1.9	\N
district	DC36	2016	Marken	20,001-30K	6	2859	20761	26852	23977	-638	-2.7	\N
district	DC36	2016	Marken	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	50,001-100K	1	93	69892	69892	69892	\N	\N	\N
district	DC36	2016	Marken	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	5,001-10K	7	3448	5670	10000	7895	-484	-6.1	\N
district	DC19	2016	Marquard Setso	10,001-20K	6	1379	10417	13750	11735	-174	-1.5	\N
district	DC19	2016	Marquard Setso	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	1,501-3K	4	8815	2553	2991	2763	28	1	2811
district	DC13	2016	Middelburg EC Inxuba Yethemba	3,001-5K	5	12282	3150	4281	3784	58	1.5	4125
district	DC13	2016	Middelburg EC Inxuba Yethemba	5,001-10K	1	1487	6027	6027	6027	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	Under 1.5K	2	706	\N	79	2	\N	\N	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	1,501-3K	4	614	1871	2903	2410	67	2.8	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	3,001-5K	8	1808	3299	5000	4233	13	0.3	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	5,001-10K	24	10042	5102	10000	8628	-2	0	7646
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	10,001-20K	24	4768	11200	19663	14709	116	0.8	15625
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	20,001-30K	16	9937	22313	29557	26285	251	1	28571
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	30,001-40K	11	1308	32333	39783	36526	377	1	37725
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	40,001-50K	5	805	40434	50000	44534	753	1.7	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	50,001-100K	16	1791	53864	93940	71096	42	0.1	61471
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	100,001-150K	14	1609	105038	147619	126772	-103	-0.1	131016
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	150,001-200K	4	204	156250	191304	167862	-8806	-5.2	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	200,001-300K	5	443	223881	285714	249606	2148	0.9	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	300,001-500K	2	316	334603	385246	359924	-16881	-4.7	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	500,001-800K	1	11	519545	519545	519545	\N	\N	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	5,001-10K	4	7191	5008	5453	5287	116	2.2	\N
district	DC39	2016	Moloporivier Bophirima	10,001-20K	2	1545	13908	14465	14321	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	1,501-3K	1	369	2439	2439	2439	\N	\N	2439
district	DC13	2016	Molteno Inkwanca	3,001-5K	1	2573	3003	3003	3003	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	5,001-10K	1	375	8035	8035	8035	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Montagu Langeberg	Under 1.5K	2	662	191	421	306	38	12.6	\N
district	DC2	2016	Montagu Langeberg	1,501-3K	1	472	2701	2701	2701	\N	\N	\N
district	DC2	2016	Montagu Langeberg	3,001-5K	2	651	4137	4808	4472	-224	-5	4137
district	DC2	2016	Montagu Langeberg	5,001-10K	5	3766	6005	10001	7777	-204	-2.6	6532
district	DC2	2016	Montagu Langeberg	10,001-20K	7	1361	12082	20000	15393	46	0.3	\N
district	DC2	2016	Montagu Langeberg	20,001-30K	1	231	21645	21645	21645	\N	\N	\N
district	DC2	2016	Montagu Langeberg	30,001-40K	1	40	35000	35000	35000	\N	\N	\N
district	DC2	2016	Montagu Langeberg	40,001-50K	1	50	45600	45600	45600	\N	\N	\N
district	DC2	2016	Montagu Langeberg	50,001-100K	4	125	59524	65217	63183	295	0.5	\N
district	DC2	2016	Montagu Langeberg	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Montagu Langeberg	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Montagu Langeberg	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Montagu Langeberg	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Montagu Langeberg	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Montagu Langeberg	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Montagu Langeberg	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	5,001-10K	1	193	5907	5907	5907	\N	\N	\N
district	DC4	2016	Mosselbaai	10,001-20K	3	276	16414	19420	17119	-59	-0.3	16855
district	DC4	2016	Mosselbaai	20,001-30K	3	714	21495	23522	22798	184	0.8	\N
district	DC4	2016	Mosselbaai	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	40,001-50K	6	867	43333	50000	47784	-560	-1.2	\N
district	DC4	2016	Mosselbaai	50,001-100K	8	191	65625	100000	86158	-706	-0.8	\N
district	DC4	2016	Mosselbaai	100,001-150K	4	112	108621	135556	121062	947	0.8	135556
district	DC4	2016	Mosselbaai	150,001-200K	3	74	175000	184884	181022	1018	0.6	\N
district	DC4	2016	Mosselbaai	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	Under 1.5K	2	1265	634	1343	988	-237	-23.9	634
district	DC15	2016	Mthatha King Sabata Dalindyebo	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	3,001-5K	1	1046	4589	4589	4589	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	10,001-20K	2	1013	13089	17256	15685	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	1,501-3K	1	3919	2348	2348	2348	\N	\N	\N
district	DC5	2016	Murraysburg	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	20,001-30K	1	509	29470	29470	29470	\N	\N	\N
district	DC5	2016	Murraysburg	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	Under 1.5K	1	56	18	18	18	\N	\N	\N
district	DC34	2016	Musina	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	3,001-5K	1	264	3788	3788	3788	\N	\N	\N
district	DC34	2016	Musina	5,001-10K	1	21	5714	5714	5714	\N	\N	\N
district	DC34	2016	Musina	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	30,001-40K	1	258	31008	31008	31008	\N	\N	\N
district	DC34	2016	Musina	40,001-50K	1	73	43836	43836	43836	\N	\N	\N
district	DC34	2016	Musina	50,001-100K	1	100	56000	56000	56000	\N	\N	\N
district	DC34	2016	Musina	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	Above 1M	1	157	2615732	2615732	2615732	\N	\N	\N
district	DC6	2016	Namakwa	Under 1.5K	13	46362	80	1202	497	-15	-3	284
district	DC6	2016	Namakwa	1,501-3K	3	12989	1824	2318	2076	15	0.7	\N
district	DC6	2016	Namakwa	3,001-5K	1	322	3540	3540	3540	\N	\N	\N
district	DC6	2016	Namakwa	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	10,001-20K	1	38	18421	18421	18421	\N	\N	\N
district	DC6	2016	Namakwa	20,001-30K	1	39	28205	28205	28205	\N	\N	\N
district	DC6	2016	Namakwa	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	50,001-100K	1	24	54167	54167	54167	\N	\N	\N
district	DC6	2016	Namakwa	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Nelspruit Mbombela	Under 1.5K	1	1000	1200	1200	1200	\N	\N	\N
district	DC32	2016	Nelspruit Mbombela	1,501-3K	3	502	2336	2564	2472	38	1.5	2564
district	DC32	2016	Nelspruit Mbombela	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Nelspruit Mbombela	5,001-10K	20	9908	5126	9926	8207	-89	-1.1	9857
district	DC32	2016	Nelspruit Mbombela	10,001-20K	20	5289	10526	20000	14546	141	1	15152
district	DC32	2016	Nelspruit Mbombela	20,001-30K	10	817	20400	30000	25976	-306	-1.2	21739
district	DC32	2016	Nelspruit Mbombela	30,001-40K	6	618	30303	39138	35060	260	0.7	34250
district	DC32	2016	Nelspruit Mbombela	40,001-50K	9	889	40580	50000	45164	-127	-0.3	49206
district	DC32	2016	Nelspruit Mbombela	50,001-100K	14	508	58140	100000	79353	1184	1.5	76190
district	DC32	2016	Nelspruit Mbombela	100,001-150K	5	133	109524	145161	124705	2415	1.9	\N
district	DC32	2016	Nelspruit Mbombela	150,001-200K	6	142	171429	195238	179679	2894	1.6	195238
district	DC32	2016	Nelspruit Mbombela	200,001-300K	3	76	214286	272727	245671	-29221	-11.9	\N
district	DC32	2016	Nelspruit Mbombela	300,001-500K	4	177	328947	383333	357132	-1917	-0.5	380952
district	DC32	2016	Nelspruit Mbombela	500,001-800K	2	34	500952	552462	526707	25755	4.9	\N
district	DC32	2016	Nelspruit Mbombela	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Nelspruit Mbombela	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Newcastle	Under 1.5K	1	2035	1400	1400	1400	\N	\N	\N
district	DC25	2016	Newcastle	1,501-3K	2	60	1523	2500	2011	-140	-6.9	\N
district	DC25	2016	Newcastle	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Newcastle	5,001-10K	7	2734	5702	9697	8417	-203	-2.4	\N
district	DC25	2016	Newcastle	10,001-20K	7	1745	11561	18024	14377	-133	-0.9	\N
district	DC25	2016	Newcastle	20,001-30K	3	587	20173	30000	24414	-1005	-4.1	20173
district	DC25	2016	Newcastle	30,001-40K	1	13	33846	33846	33846	\N	\N	\N
district	DC25	2016	Newcastle	40,001-50K	1	63	43651	43651	43651	\N	\N	\N
district	DC25	2016	Newcastle	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Newcastle	100,001-150K	1	33	121212	121212	121212	\N	\N	\N
district	DC25	2016	Newcastle	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Newcastle	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Newcastle	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Newcastle	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Newcastle	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Newcastle	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	EKU	2016	Nigel Ekurhuleni	Under 1.5K	2	47	400	455	427	-9	-2.1	\N
municipality	EKU	2016	Nigel Ekurhuleni	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	EKU	2016	Nigel Ekurhuleni	3,001-5K	1	15	3333	3333	3333	\N	\N	\N
municipality	EKU	2016	Nigel Ekurhuleni	5,001-10K	4	620	5218	7042	6003	-68	-1.1	6000
municipality	EKU	2016	Nigel Ekurhuleni	10,001-20K	10	2285	11207	20000	16238	-112	-0.7	\N
municipality	EKU	2016	Nigel Ekurhuleni	20,001-30K	8	990	22222	28571	24693	-67	-0.3	22222
municipality	EKU	2016	Nigel Ekurhuleni	30,001-40K	6	359	30952	38889	34107	1311	3.8	\N
municipality	EKU	2016	Nigel Ekurhuleni	40,001-50K	3	517	42424	50000	46790	-738	-1.6	42424
municipality	EKU	2016	Nigel Ekurhuleni	50,001-100K	12	446	51220	95455	70058	1934	2.8	79545
municipality	EKU	2016	Nigel Ekurhuleni	100,001-150K	4	87	105882	142500	125119	4645	3.7	142500
municipality	EKU	2016	Nigel Ekurhuleni	150,001-200K	2	35	176923	200000	188462	7692	4.1	\N
municipality	EKU	2016	Nigel Ekurhuleni	200,001-300K	4	127	207692	250000	227244	-2885	-1.3	217949
municipality	EKU	2016	Nigel Ekurhuleni	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	EKU	2016	Nigel Ekurhuleni	500,001-800K	1	12	583333	583333	583333	\N	\N	\N
municipality	EKU	2016	Nigel Ekurhuleni	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	EKU	2016	Nigel Ekurhuleni	Above 1M	4	75	1227692	8858025	3413096	-573715	-16.8	2300000
district	DC36	2016	Nylstroom Modimolle	Under 1.5K	2	418	810	1220	1015	-137	-13.5	\N
district	DC36	2016	Nylstroom Modimolle	1,501-3K	2	2104	2203	2395	2299	21	0.9	2395
district	DC36	2016	Nylstroom Modimolle	3,001-5K	2	418	4286	4412	4349	-21	-0.5	\N
district	DC36	2016	Nylstroom Modimolle	5,001-10K	14	7802	5507	9719	7220	-247	-3.4	\N
district	DC36	2016	Nylstroom Modimolle	10,001-20K	32	9044	10325	20000	15150	29	0.2	18135
district	DC36	2016	Nylstroom Modimolle	20,001-30K	24	6799	20086	29688	24060	-46	-0.2	24059
district	DC36	2016	Nylstroom Modimolle	30,001-40K	11	1178	31183	40000	35778	-209	-0.6	\N
district	DC36	2016	Nylstroom Modimolle	40,001-50K	15	470	40952	50000	45817	468	1	\N
district	DC36	2016	Nylstroom Modimolle	50,001-100K	29	682	50476	100000	70869	1292	1.8	79014
district	DC36	2016	Nylstroom Modimolle	100,001-150K	7	118	109857	141667	122165	-2880	-2.4	\N
district	DC36	2016	Nylstroom Modimolle	150,001-200K	1	11	163636	163636	163636	\N	\N	\N
district	DC36	2016	Nylstroom Modimolle	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Nylstroom Modimolle	300,001-500K	1	17	335294	335294	335294	\N	\N	\N
district	DC36	2016	Nylstroom Modimolle	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Nylstroom Modimolle	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Nylstroom Modimolle	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	10,001-20K	1	257	14195	14195	14195	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	40,001-50K	1	38	44474	44474	44474	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	50,001-100K	1	38	76316	76316	76316	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	Oos-Londen Baffalo City	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	Oos-Londen Baffalo City	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	Oos-Londen Baffalo City	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	Oos-Londen Baffalo City	5,001-10K	2	269	7738	8108	7923	74	0.9	\N
municipality	BUF	2016	Oos-Londen Baffalo City	10,001-20K	6	467	11250	18182	14872	-178	-1.2	\N
municipality	BUF	2016	Oos-Londen Baffalo City	20,001-30K	3	229	24091	29739	26748	439	1.6	\N
municipality	BUF	2016	Oos-Londen Baffalo City	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	Oos-Londen Baffalo City	40,001-50K	2	87	43860	48000	45930	-1035	-2.3	\N
municipality	BUF	2016	Oos-Londen Baffalo City	50,001-100K	10	307	55882	90909	70249	2405	3.4	78309
municipality	BUF	2016	Oos-Londen Baffalo City	100,001-150K	4	90	109091	147619	128496	2335	1.8	130000
municipality	BUF	2016	Oos-Londen Baffalo City	150,001-200K	6	123	152778	200000	177487	-3727	-2.1	\N
municipality	BUF	2016	Oos-Londen Baffalo City	200,001-300K	1	48	250000	250000	250000	\N	\N	\N
municipality	BUF	2016	Oos-Londen Baffalo City	300,001-500K	2	43	332353	461538	396946	32296	8.1	\N
municipality	BUF	2016	Oos-Londen Baffalo City	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	Oos-Londen Baffalo City	800,001-1M	1	15	836000	836000	836000	\N	\N	\N
municipality	BUF	2016	Oos-Londen Baffalo City	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Oudtshoorn	Under 1.5K	5	10794	138	1045	589	-53	-9	138
district	DC4	2016	Oudtshoorn	1,501-3K	2	258	2222	2684	2453	231	9.4	\N
district	DC4	2016	Oudtshoorn	3,001-5K	1	119	3361	3361	3361	\N	\N	\N
district	DC4	2016	Oudtshoorn	5,001-10K	2	953	5734	6303	6018	-142	-2.4	\N
district	DC4	2016	Oudtshoorn	10,001-20K	6	2702	11111	18817	15491	194	1.3	\N
district	DC4	2016	Oudtshoorn	20,001-30K	7	986	21429	27322	24496	-62	-0.3	\N
district	DC4	2016	Oudtshoorn	30,001-40K	3	276	31034	38716	35852	945	2.6	\N
district	DC4	2016	Oudtshoorn	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Oudtshoorn	50,001-100K	4	295	57222	89744	72252	-1476	-2	\N
district	DC4	2016	Oudtshoorn	100,001-150K	2	142	120588	128000	124294	3706	3	\N
district	DC4	2016	Oudtshoorn	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Oudtshoorn	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Oudtshoorn	300,001-500K	1	67	414126	414126	414126	\N	\N	\N
district	DC4	2016	Oudtshoorn	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Oudtshoorn	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Oudtshoorn	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	10,001-20K	1	60	19167	19167	19167	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	30,001-40K	1	74	37838	37838	37838	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	40,001-50K	1	70	44429	44429	44429	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	50,001-100K	3	349	61951	76271	68846	-1724	-2.5	\N
district	DC7	2016	Phillipstown Renosterberg	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	100,001-150K	1	45	121111	121111	121111	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	150,001-200K	3	134	171000	193548	184261	-96	-0.1	\N
district	DC2	2016	Paarl/Wel Drakenstein	200,001-300K	4	742	205882	291328	237744	-3644	-1.5	\N
district	DC2	2016	Paarl/Wel Drakenstein	300,001-500K	6	225	339320	376923	354260	-3464	-1	\N
district	DC2	2016	Paarl/Wel Drakenstein	500,001-800K	4	85	593750	701786	658850	28624	4.3	\N
district	DC2	2016	Paarl/Wel Drakenstein	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	Above 1M	2	23	1625000	1818182	1721591	38636	2.2	1818182
district	DC20	2016	Parys Ngwathe	Under 1.5K	1	115	410	410	410	\N	\N	\N
district	DC20	2016	Parys Ngwathe	1,501-3K	1	10	1670	1670	1670	\N	\N	\N
district	DC20	2016	Parys Ngwathe	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Parys Ngwathe	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Parys Ngwathe	10,001-20K	5	1743	13000	18000	16240	-61	-0.4	\N
district	DC20	2016	Parys Ngwathe	20,001-30K	1	72	20833	20833	20833	\N	\N	\N
district	DC20	2016	Parys Ngwathe	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Parys Ngwathe	40,001-50K	2	79	44444	46941	45693	-499	-1.1	\N
district	DC20	2016	Parys Ngwathe	50,001-100K	2	97	84416	100000	92208	-7792	-8.5	84416
district	DC20	2016	Parys Ngwathe	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Parys Ngwathe	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Parys Ngwathe	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Parys Ngwathe	300,001-500K	1	28	316350	316350	316350	\N	\N	\N
district	DC20	2016	Parys Ngwathe	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Parys Ngwathe	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Parys Ngwathe	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	5,001-10K	5	8955	5006	6647	5327	-14	-0.3	5418
district	DC10	2016	Pearston Blue Crane	10,001-20K	1	483	15578	15578	15578	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	50,001-100K	1	103	58398	58398	58398	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	20,001-30K	1	21	20048	20048	20048	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	50,001-100K	3	63	64286	100000	84921	8883	10.5	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	100,001-150K	1	21	117000	117000	117000	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	3,001-5K	2	2971	4198	4944	4571	746	16.3	\N
district	DC16	2016	Philipolis Kopanong	5,001-10K	1	857	8539	8539	8539	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	Under 1.5K	3	7676	186	1178	648	-132	-20.4	\N
district	DC7	2016	Phillipstown Renosterberg	1,501-3K	1	3431	2477	2477	2477	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	10,001-20K	2	1251	10004	12249	11127	374	3.4	\N
district	DC7	2016	Phillipstown Renosterberg	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC22	2016	Pietermaritzburg Msunduzi	Under 1.5K	3	844	100	1092	596	-992	\N	100
district	DC22	2016	Pietermaritzburg Msunduzi	1,501-3K	1	253	2767	2767	2767	\N	\N	\N
district	DC22	2016	Pietermaritzburg Msunduzi	3,001-5K	1	206	3641	3641	3641	\N	\N	\N
district	DC22	2016	Pietermaritzburg Msunduzi	5,001-10K	4	2171	6836	9658	8141	-19	-0.2	\N
district	DC22	2016	Pietermaritzburg Msunduzi	10,001-20K	11	2207	10101	19841	13327	138	1	12292
district	DC22	2016	Pietermaritzburg Msunduzi	20,001-30K	12	1317	20253	30000	25263	-4	0	\N
district	DC22	2016	Pietermaritzburg Msunduzi	30,001-40K	6	1800	31707	37999	34768	-477	-1.4	\N
district	DC22	2016	Pietermaritzburg Msunduzi	40,001-50K	3	725	49878	50000	49959	-7	0	\N
district	DC22	2016	Pietermaritzburg Msunduzi	50,001-100K	28	8407	51786	95000	68041	103	0.2	66438
district	DC22	2016	Pietermaritzburg Msunduzi	100,001-150K	15	505	102381	150000	124260	-1889	-1.5	\N
district	DC22	2016	Pietermaritzburg Msunduzi	150,001-200K	8	257	157143	195093	172518	910	0.5	\N
district	DC22	2016	Pietermaritzburg Msunduzi	200,001-300K	12	286	220000	300000	257099	-500	-0.2	262069
district	DC22	2016	Pietermaritzburg Msunduzi	300,001-500K	6	217	333333	445485	381212	8157	2.1	\N
district	DC22	2016	Pietermaritzburg Msunduzi	500,001-800K	1	12	708333	708333	708333	\N	\N	708333
district	DC22	2016	Pietermaritzburg Msunduzi	800,001-1M	1	19	882000	882000	882000	\N	\N	\N
district	DC22	2016	Pietermaritzburg Msunduzi	Above 1M	2	24	2166000	17142857	9654429	-7488429	\N	\N
district	DC1	2016	Piketberg Bergriver	Under 1.5K	1	39	629	629	629	\N	\N	629
district	DC1	2016	Piketberg Bergriver	1,501-3K	2	661	1948	2290	2119	-68	-3.2	\N
district	DC1	2016	Piketberg Bergriver	3,001-5K	4	2134	3109	4647	3742	-51	-1.4	\N
district	DC1	2016	Piketberg Bergriver	5,001-10K	5	7636	5658	9975	7350	287	3.9	9975
district	DC1	2016	Piketberg Bergriver	10,001-20K	9	4590	10020	20000	12751	249	2	\N
district	DC1	2016	Piketberg Bergriver	20,001-30K	4	1079	21027	29124	23785	909	3.8	\N
district	DC1	2016	Piketberg Bergriver	30,001-40K	1	81	32716	32716	32716	\N	\N	\N
district	DC1	2016	Piketberg Bergriver	40,001-50K	1	121	41322	41322	41322	\N	\N	\N
district	DC1	2016	Piketberg Bergriver	50,001-100K	1	144	55556	55556	55556	\N	\N	\N
district	DC1	2016	Piketberg Bergriver	100,001-150K	2	67	120000	128070	124035	8070	6.5	\N
district	DC1	2016	Piketberg Bergriver	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Piketberg Bergriver	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Piketberg Bergriver	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Piketberg Bergriver	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Piketberg Bergriver	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Piketberg Bergriver	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	3,001-5K	1	172	4942	4942	4942	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	20,001-30K	1	34	25000	25000	25000	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	30,001-40K	1	32	31094	31094	31094	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	40,001-50K	1	43	50000	50000	50000	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	1,501-3K	3	545	1956	2577	2270	205	9	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	5,001-10K	4	1059	6386	8647	7715	218	2.8	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	10,001-20K	5	248	10074	17895	14519	-242	-1.7	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	20,001-30K	3	1238	24390	30000	26580	305	1.1	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	40,001-50K	5	142	41000	50000	43457	-243	-0.6	43902
district	DC21	2016	Port Shepstone Ray Nkonyeni	50,001-100K	8	243	55556	90909	71408	2905	4.1	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	100,001-150K	3	99	103704	146774	113310	-6404	-5.7	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	150,001-200K	1	23	165859	165859	165859	\N	\N	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	200,001-300K	1	15	210000	210000	210000	\N	\N	210000
district	DC21	2016	Port Shepstone Ray Nkonyeni	300,001-500K	2	31	350000	419048	384524	-17262	-4.5	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	TSH	2016	Pretoria Tshwane	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	TSH	2016	Pretoria Tshwane	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	TSH	2016	Pretoria Tshwane	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	TSH	2016	Pretoria Tshwane	5,001-10K	6	1680	6047	9545	7820	-261	-3.3	\N
municipality	TSH	2016	Pretoria Tshwane	10,001-20K	19	1858	11765	20000	14838	545	3.7	17872
municipality	TSH	2016	Pretoria Tshwane	20,001-30K	33	1936	20423	30000	25505	229	0.9	\N
municipality	TSH	2016	Pretoria Tshwane	30,001-40K	22	1230	30498	40000	35460	-267	-0.8	33046
municipality	TSH	2016	Pretoria Tshwane	40,001-50K	25	814	40625	50000	45315	87	0.2	45238
municipality	TSH	2016	Pretoria Tshwane	50,001-100K	61	1385	50909	100000	75815	1563	2.1	76102
municipality	TSH	2016	Pretoria Tshwane	100,001-150K	15	266	106667	150000	119719	1097	0.9	130152
municipality	TSH	2016	Pretoria Tshwane	150,001-200K	8	212	153846	200000	173636	-412	-0.2	\N
municipality	TSH	2016	Pretoria Tshwane	200,001-300K	10	311	202381	284615	238346	4639	1.9	233108
municipality	TSH	2016	Pretoria Tshwane	300,001-500K	11	287	302326	500000	357865	-3045	-0.9	333333
municipality	TSH	2016	Pretoria Tshwane	500,001-800K	5	95	526316	703477	600720	21831	3.6	\N
municipality	TSH	2016	Pretoria Tshwane	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	TSH	2016	Pretoria Tshwane	Above 1M	10	174	1032000	10504286	3381043	119416	3.5	\N
district	DC7	2016	Prieska Siyathemba	Under 1.5K	1	1875	1000	1000	1000	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	1,501-3K	4	16382	1524	2396	1838	-121	-6.6	\N
district	DC7	2016	Prieska Siyathemba	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	Under 1.5K	3	11304	812	1283	1008	-105	-10.4	\N
district	DC5	2016	Prins Albert	1,501-3K	6	12092	1587	2852	1936	-4	-0.2	\N
district	DC5	2016	Prins Albert	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	5,001-10K	1	51	9804	9804	9804	\N	\N	\N
district	DC5	2016	Prins Albert	10,001-20K	1	131	12794	12794	12794	\N	\N	\N
district	DC5	2016	Prins Albert	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	1,501-3K	1	1631	2739	2739	2739	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	5,001-10K	1	754	7560	7560	7560	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	3,001-5K	3	1831	3792	4669	4236	-119	-2.8	3792
district	DC16	2016	Reddersburg Kopanong	5,001-10K	3	2246	5841	8389	6733	154	2.3	\N
district	DC16	2016	Reddersburg Kopanong	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Reitz Nketoana	Under 1.5K	1	505	594	594	594	\N	\N	\N
district	DC19	2016	Reitz Nketoana	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Reitz Nketoana	3,001-5K	1	183	3115	3115	3115	\N	\N	\N
district	DC19	2016	Reitz Nketoana	5,001-10K	4	1460	5926	8964	7589	-504	-6.6	5926
district	DC19	2016	Reitz Nketoana	10,001-20K	10	5154	10656	18797	14360	-419	-2.9	\N
district	DC19	2016	Reitz Nketoana	20,001-30K	4	844	21794	24000	22951	86	0.4	22981
district	DC19	2016	Reitz Nketoana	30,001-40K	2	96	31884	37037	34461	515	1.5	37037
district	DC19	2016	Reitz Nketoana	40,001-50K	1	219	46849	46849	46849	\N	\N	\N
district	DC19	2016	Reitz Nketoana	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Reitz Nketoana	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Reitz Nketoana	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Reitz Nketoana	200,001-300K	1	69	289855	289855	289855	\N	\N	\N
district	DC19	2016	Reitz Nketoana	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Reitz Nketoana	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Reitz Nketoana	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Reitz Nketoana	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	3,001-5K	5	3992	3511	4747	4169	-70	-1.7	4059
district	DC39	2016	Reivilo Thaung	5,001-10K	12	10295	5501	7127	6268	63	1	7127
district	DC39	2016	Reivilo Thaung	10,001-20K	1	428	11407	11407	11407	\N	\N	\N
district	DC39	2016	Reivilo Thaung	20,001-30K	2	449	25811	29155	27483	-1114	-4.1	\N
district	DC39	2016	Reivilo Thaung	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	100,001-150K	1	38	147368	147368	147368	\N	\N	\N
district	DC39	2016	Reivilo Thaung	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	500,001-800K	1	33	678788	678788	678788	\N	\N	\N
district	DC39	2016	Reivilo Thaung	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	3,001-5K	1	175	3182	3182	3182	\N	\N	\N
district	DC7	2016	Richmond	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	Under 1.5K	2	1004	476	712	594	-26	-4.4	\N
district	DC4	2016	Riversdal Hessequa	1,501-3K	1	2262	2378	2378	2378	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	5,001-10K	10	4587	5508	9836	7135	-205	-2.9	5869
district	DC4	2016	Riversdal Hessequa	10,001-20K	16	3206	10301	19130	14964	-302	-2	15667
district	DC4	2016	Riversdal Hessequa	20,001-30K	7	573	20779	29407	25523	-247	-1	27027
district	DC4	2016	Riversdal Hessequa	30,001-40K	6	1410	30888	39655	36397	22	0.1	37681
district	DC4	2016	Riversdal Hessequa	40,001-50K	5	697	43478	50000	44668	-172	-0.4	\N
district	DC4	2016	Riversdal Hessequa	50,001-100K	3	77	68750	90909	76834	2021	2.6	\N
district	DC4	2016	Riversdal Hessequa	100,001-150K	1	15	150000	150000	150000	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	200,001-300K	1	32	203125	203125	203125	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	300,001-500K	1	19	342105	342105	342105	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	5,001-10K	2	535	5019	9434	7227	-883	-12.2	\N
district	DC2	2016	Robertson Breede /Winelands	10,001-20K	1	160	19531	19531	19531	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	30,001-40K	2	89	34898	37500	36199	-1301	-3.6	\N
district	DC2	2016	Robertson Breede /Winelands	40,001-50K	1	383	49347	49347	49347	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	50,001-100K	1	24	71250	71250	71250	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	100,001-150K	1	20	108750	108750	108750	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	150,001-200K	1	13	167308	167308	167308	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	200,001-300K	3	90	234375	300000	273125	-5214	-1.9	\N
district	DC2	2016	Robertson Breede /Winelands	300,001-500K	1	43	326512	326512	326512	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	3,001-5K	1	1632	3983	3983	3983	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	5,001-10K	4	1861	7018	9943	8841	-357	-4	7018
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	10,001-20K	6	4285	10934	19274	13418	274	2	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	20,001-30K	2	886	24010	26600	25305	-259	-1	24010
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	30,001-40K	3	182	31373	38095	33762	554	1.6	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	40,001-50K	1	42	45595	45595	45595	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	50,001-100K	4	80	54545	71429	65799	1126	1.7	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	100,001-150K	1	335	119403	119403	119403	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	3,001-5K	3	1646	3974	4649	4288	90	2.1	\N
district	DC16	2016	Rouxville Mohokare	5,001-10K	5	4494	5004	9826	6708	-704	-10.5	\N
district	DC16	2016	Rouxville Mohokare	10,001-20K	1	821	10627	10627	10627	\N	\N	10627
district	DC16	2016	Rouxville Mohokare	20,001-30K	2	1112	25824	27027	25944	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	100,001-150K	1	26	115385	115385	115385	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	5,001-10K	15	6322	5263	9695	8050	-66	-0.8	7767
district	DC19	2016	Senekal Setsoto	10,001-20K	9	2681	10495	13953	11438	38	0.3	\N
district	DC19	2016	Senekal Setsoto	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	Under 1.5K	1	373	1482	1482	1482	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	5,001-10K	1	419	6177	6177	6177	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	Under 1.5K	1	322	1398	1398	1398	\N	\N	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	1,501-3K	1	74	1505	1505	1505	\N	\N	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	5,001-10K	1	592	7179	7179	7179	\N	\N	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	10,001-20K	8	1396	11118	19500	14431	344	2.4	15714
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	20,001-30K	11	1517	20305	28148	24041	41	0.2	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	30,001-40K	2	51	33333	40000	36667	3333	9.1	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	40,001-50K	4	105	41429	47619	45159	-318	-0.7	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	50,001-100K	20	842	51200	94118	71078	-910	-1.3	53889
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	100,001-150K	2	72	112903	146341	129622	-3715	-2.9	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	150,001-200K	4	80	163636	191463	176389	-2099	-1.2	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	200,001-300K	5	78	218750	285714	268616	-4891	-1.8	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	300,001-500K	1	39	346154	346154	346154	\N	\N	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	500,001-800K	1	13	538462	538462	538462	\N	\N	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	1,501-3K	3	3961	1822	2357	2143	43	2	2357
district	DC10	2016	Somerset-Oos Blue Crane	3,001-5K	2	2805	4653	4729	4691	25	0.5	4729
district	DC10	2016	Somerset-Oos Blue Crane	5,001-10K	4	3210	6087	8959	7049	-125	-1.8	6087
district	DC10	2016	Somerset-Oos Blue Crane	10,001-20K	1	1558	10610	10610	10610	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	20,001-30K	1	728	21915	21915	21915	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	50,001-100K	1	43	83721	83721	83721	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	100,001-150K	1	119	134454	134454	134454	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	200,001-300K	1	43	230651	230651	230651	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	Under 1.5K	1	64	469	469	469	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	30,001-40K	1	81	30864	30864	30864	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	50,001-100K	2	194	55556	78571	67063	-2557	-3.8	\N
district	DC27	2016	St Lucia Mtubatuba	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	50,001-100K	1	32	74813	74813	74813	\N	\N	\N
district	DC2	2016	Stellenbosch	100,001-150K	1	30	150000	150000	150000	\N	\N	\N
district	DC2	2016	Stellenbosch	150,001-200K	3	621	159600	198239	172480	1853	1.1	\N
district	DC2	2016	Stellenbosch	200,001-300K	2	160	248105	283019	265562	-11638	-4.4	\N
district	DC2	2016	Stellenbosch	300,001-500K	7	474	320225	483922	407146	-186	0	365909
district	DC2	2016	Stellenbosch	500,001-800K	7	333	520833	733945	630946	-16674	-2.6	\N
district	DC2	2016	Stellenbosch	800,001-1M	1	39	871205	871205	871205	\N	\N	\N
district	DC2	2016	Stellenbosch	Above 1M	2	82	1625000	3159091	2392045	255682	10.7	\N
district	DC14	2016	Steynsburg Gariep	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	1,501-3K	4	2659	2083	2920	2589	79	3.1	2762
district	DC14	2016	Steynsburg Gariep	3,001-5K	1	2465	3245	3245	3245	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	5,001-10K	1	396	9726	9726	9726	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	3,001-5K	3	2690	3416	4948	4353	95	2.2	4694
district	DC10	2016	Steytlerville Dr Beyers Naude	5,001-10K	2	4600	5118	6831	6467	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	5,001-10K	1	1127	5324	5324	5324	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	10,001-20K	4	706	10573	16949	13892	-332	-2.4	10573
district	DC12	2016	Stutterheim Amahlathi	20,001-30K	2	89	20806	26824	23815	-6018	\N	\N
district	DC12	2016	Stutterheim Amahlathi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	40,001-50K	1	16	50000	50000	50000	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	Under 1.5K	5	19901	750	1304	1118	-6	-0.5	\N
district	DC6	2016	Sutherland	1,501-3K	2	4178	2281	2788	2535	127	5	2788
district	DC6	2016	Sutherland	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Swellendam	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Swellendam	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Swellendam	3,001-5K	2	1564	3700	4797	4248	-137	-3.2	\N
district	DC3	2016	Swellendam	5,001-10K	3	4845	5488	7326	6172	85	1.4	\N
district	DC3	2016	Swellendam	10,001-20K	5	347	10723	17722	15102	-545	-3.6	12222
district	DC3	2016	Swellendam	20,001-30K	2	831	23109	29775	26442	-2222	-8.4	\N
district	DC3	2016	Swellendam	30,001-40K	1	313	36422	36422	36422	\N	\N	\N
district	DC3	2016	Swellendam	40,001-50K	1	373	41555	41555	41555	\N	\N	\N
district	DC3	2016	Swellendam	50,001-100K	5	1677	57000	84387	73487	1696	2.3	82143
district	DC3	2016	Swellendam	100,001-150K	2	93	124138	133915	129026	-978	-0.8	124138
district	DC3	2016	Swellendam	150,001-200K	2	147	166667	174603	170635	1323	0.8	\N
district	DC3	2016	Swellendam	200,001-300K	3	79	258621	280000	268934	-3483	-1.3	\N
district	DC3	2016	Swellendam	300,001-500K	2	66	333333	380476	356905	-5893	-1.7	\N
district	DC3	2016	Swellendam	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Swellendam	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Swellendam	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	1,501-3K	1	1394	2869	2869	2869	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	3,001-5K	4	5413	4251	5000	4517	33	0.7	\N
district	DC13	2016	Tarkastad Tsolwana	5,001-10K	2	6994	6364	8032	7198	556	7.7	\N
district	DC13	2016	Tarkastad Tsolwana	10,001-20K	1	16	17578	17578	17578	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	20,001-30K	1	20	25090	25090	25090	\N	\N	25090
district	DC13	2016	Tarkastad Tsolwana	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	50,001-100K	1	107	89400	89400	89400	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	1,501-3K	2	1754	2193	2865	2529	84	3.3	\N
municipality	MAN	2016	Thaba Nchu	3,001-5K	2	1116	3502	3987	3763	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	5,001-10K	2	371	5700	10000	7850	717	9.1	\N
municipality	MAN	2016	Thaba Nchu	10,001-20K	1	557	10592	10592	10592	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Thabazimbi	Under 1.5K	2	2078	522	1023	1016	\N	\N	\N
district	DC36	2016	Thabazimbi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Thabazimbi	3,001-5K	1	16	5000	5000	5000	\N	\N	\N
district	DC36	2016	Thabazimbi	5,001-10K	14	6816	5251	10000	7662	-128	-1.7	\N
district	DC36	2016	Thabazimbi	10,001-20K	18	11718	10089	18182	14805	-68	-0.5	14298
district	DC36	2016	Thabazimbi	20,001-30K	3	440	20690	26316	23960	-953	-4	\N
district	DC36	2016	Thabazimbi	30,001-40K	3	1023	30550	34091	32658	-326	-1	\N
district	DC36	2016	Thabazimbi	40,001-50K	1	140	50000	50000	50000	\N	\N	\N
district	DC36	2016	Thabazimbi	50,001-100K	10	1533	51429	93923	65923	-259	-0.4	\N
district	DC36	2016	Thabazimbi	100,001-150K	1	11	109091	109091	109091	\N	\N	\N
district	DC36	2016	Thabazimbi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Thabazimbi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Thabazimbi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Thabazimbi	500,001-800K	2	22	570000	766650	668325	65550	9.8	\N
district	DC36	2016	Thabazimbi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Thabazimbi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	Under 1.5K	2	787	1138	1225	1179	\N	\N	1179
district	DC18	2016	Theunissen Masilonyana	1,501-3K	1	171	1637	1637	1637	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	3,001-5K	1	292	3767	3767	3767	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	5,001-10K	1	345	6957	6957	6957	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	10,001-20K	7	2091	10091	16518	12889	211	1.6	15953
district	DC18	2016	Theunissen Masilonyana	20,001-30K	1	389	20051	20051	20051	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	40,001-50K	2	527	44444	49806	47125	-2681	-5.7	\N
district	DC18	2016	Theunissen Masilonyana	50,001-100K	2	349	61450	78375	65330	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	100,001-150K	1	65	128031	128031	128031	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	10,001-20K	1	291	11942	11942	11942	\N	\N	11942
district	DC2	2016	Tulbagh	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	40,001-50K	1	93	49462	49462	49462	\N	\N	\N
district	DC2	2016	Tulbagh	50,001-100K	2	69	61538	100000	71014	\N	\N	\N
district	DC2	2016	Tulbagh	100,001-150K	1	34	117647	117647	117647	\N	\N	\N
district	DC2	2016	Tulbagh	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	200,001-300K	1	14	204386	204386	204386	\N	\N	\N
district	DC2	2016	Tulbagh	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	3,001-5K	1	970	3866	3866	3866	\N	\N	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	5,001-10K	5	1777	5713	8333	6863	81	1.2	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	10,001-20K	7	1956	10577	15000	12741	-67	-0.5	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	30,001-40K	3	118	31579	35897	33098	236	0.7	\N
district	DC25	2016	Utrecht eMadlangeni	5,001-10K	9	6003	5240	9827	7741	-162	-2.1	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	40,001-50K	3	199	41667	50000	46267	833	1.8	50000
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	50,001-100K	6	129	60000	88000	68267	-2019	-3	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	100,001-150K	3	59	136364	140909	139271	512	0.4	140541
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	150,001-200K	1	34	179412	179412	179412	\N	\N	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	200,001-300K	1	16	253549	253549	253549	\N	\N	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	300,001-500K	3	160	323370	369673	342129	5274	1.5	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	500,001-800K	2	97	518516	651515	585016	-44333	-7.6	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Ulundi	Under 1.5K	1	10287	73	73	73	\N	\N	\N
district	DC26	2016	Ulundi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Ulundi	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Ulundi	5,001-10K	1	122	6749	6749	6749	\N	\N	\N
district	DC26	2016	Ulundi	10,001-20K	7	4918	10069	15779	12938	377	2.9	14858
district	DC26	2016	Ulundi	20,001-30K	1	22	22727	22727	22727	\N	\N	\N
district	DC26	2016	Ulundi	30,001-40K	1	111	39640	39640	39640	\N	\N	\N
district	DC26	2016	Ulundi	40,001-50K	2	73	45652	46895	46274	-414	-0.9	\N
district	DC26	2016	Ulundi	50,001-100K	2	461	50325	83999	67162	-8419	-12.5	\N
district	DC26	2016	Ulundi	100,001-150K	1	127	114173	114173	114173	\N	\N	\N
district	DC26	2016	Ulundi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Ulundi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Ulundi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Ulundi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Ulundi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Ulundi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Underberg KwaSani	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Underberg KwaSani	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Underberg KwaSani	3,001-5K	1	410	4878	4878	4878	\N	\N	\N
district	DC43	2016	Underberg KwaSani	5,001-10K	4	3833	6091	9535	7770	218	2.8	8464
district	DC43	2016	Underberg KwaSani	10,001-20K	7	2186	11549	19168	13631	-475	-3.5	12547
district	DC43	2016	Underberg KwaSani	20,001-30K	8	1118	21818	28302	24978	132	0.5	\N
district	DC43	2016	Underberg KwaSani	30,001-40K	4	1006	30612	39583	34708	63	0.2	\N
district	DC43	2016	Underberg KwaSani	40,001-50K	4	983	42683	47554	45774	-156	-0.3	47554
district	DC43	2016	Underberg KwaSani	50,001-100K	8	5134	53333	94078	72088	521	0.7	\N
district	DC43	2016	Underberg KwaSani	100,001-150K	8	297	101449	148696	122555	-1608	-1.3	104818
district	DC43	2016	Underberg KwaSani	150,001-200K	1	21	164286	164286	164286	\N	\N	\N
district	DC43	2016	Underberg KwaSani	200,001-300K	2	25	218182	264286	241234	23052	9.6	\N
district	DC43	2016	Underberg KwaSani	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Underberg KwaSani	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Underberg KwaSani	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Underberg KwaSani	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	Under 1.5K	1	1492	114	114	114	\N	\N	\N
district	DC44	2016	Uniondale	1,501-3K	1	2252	2798	2798	2798	\N	\N	2798
district	DC44	2016	Uniondale	3,001-5K	1	120	5000	5000	5000	\N	\N	5000
district	DC44	2016	Uniondale	5,001-10K	4	3688	6207	9627	7730	-148	-1.9	\N
district	DC44	2016	Uniondale	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	20,001-30K	2	1272	24296	26923	25610	-657	-2.6	\N
district	DC44	2016	Uniondale	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	40,001-50K	1	81	43210	43210	43210	\N	\N	\N
district	DC44	2016	Uniondale	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	150,001-200K	1	161	189145	189145	189145	\N	\N	\N
district	DC44	2016	Uniondale	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	3,001-5K	3	2028	3369	5000	4442	-408	-9.2	\N
district	DC35	2016	Usutu	5,001-10K	2	1820	8307	9918	9113	537	5.9	\N
district	DC35	2016	Usutu	10,001-20K	1	141	10638	10638	10638	\N	\N	\N
district	DC35	2016	Usutu	20,001-30K	1	949	24236	24236	24236	\N	\N	\N
district	DC35	2016	Usutu	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	Under 1.5K	1	389	1350	1350	1350	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	1,501-3K	1	22	2909	2909	2909	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	3,001-5K	8	3675	3213	4418	3725	51	1.4	\N
district	DC7	2016	Victoria-Wes Umbuntu	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	10,001-20K	12	7689	10112	16667	13107	142	1.1	13473
district	DC25	2016	Utrecht eMadlangeni	20,001-30K	3	1905	24798	30000	27076	-696	-2.6	\N
district	DC25	2016	Utrecht eMadlangeni	30,001-40K	1	225	33333	33333	33333	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	50,001-100K	2	46	59048	68000	63524	-1790	-2.8	\N
district	DC25	2016	Utrecht eMadlangeni	100,001-150K	1	20	125000	125000	125000	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	50,001-100K	2	266	60417	65769	63093	-1784	-2.8	\N
district	DC9	2016	Vaalharts Phokwane	100,001-150K	3	135	111111	145827	116372	3507	3	\N
district	DC9	2016	Vaalharts Phokwane	150,001-200K	2	78	192308	192308	192308	\N	0	\N
district	DC9	2016	Vaalharts Phokwane	200,001-300K	11	337	211077	288462	245068	1168	0.5	241176
district	DC9	2016	Vaalharts Phokwane	300,001-500K	11	405	302000	367647	331411	-518	-0.2	\N
district	DC9	2016	Vaalharts Phokwane	500,001-800K	2	39	540278	642857	591567	-17097	-2.9	\N
district	DC9	2016	Vaalharts Phokwane	800,001-1M	2	33	937500	941176	939394	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	Under 1.5K	7	18222	315	1012	561	48	8.5	1012
district	DC1	2016	Vanrynsdorp Matzikama	1,501-3K	2	822	2389	2799	2594	68	2.6	\N
district	DC1	2016	Vanrynsdorp Matzikama	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	5,001-10K	2	431	5207	9373	7290	833	11.4	\N
district	DC1	2016	Vanrynsdorp Matzikama	10,001-20K	4	1213	10135	19655	15454	183	1.2	\N
district	DC1	2016	Vanrynsdorp Matzikama	20,001-30K	1	247	25220	25220	25220	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	50,001-100K	1	118	50847	50847	50847	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	150,001-200K	2	37	158333	160268	159301	-645	-0.4	\N
district	DC1	2016	Vanrynsdorp Matzikama	200,001-300K	3	50	222727	291667	260354	-5602	-2.2	\N
district	DC1	2016	Vanrynsdorp Matzikama	300,001-500K	1	48	323958	323958	323958	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	1,501-3K	3	684	2604	2985	2793	-189	-6.8	\N
district	DC18	2016	Ventersburg Matjhabeng	3,001-5K	2	494	3096	3531	3314	436	13.1	\N
district	DC18	2016	Ventersburg Matjhabeng	5,001-10K	5	1319	6431	9857	8378	621	7.4	\N
district	DC18	2016	Ventersburg Matjhabeng	10,001-20K	10	1997	10601	17641	13128	-33	-0.3	\N
district	DC18	2016	Ventersburg Matjhabeng	20,001-30K	1	10	23008	23008	23008	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	100,001-150K	1	25	109856	109856	109856	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	1,501-3K	2	9951	2077	2694	2386	-77	-3.2	\N
district	DC7	2016	Victoria-Wes Umbuntu	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	5,001-10K	1	2034	6288	6288	6288	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	5,001-10K	2	298	8444	9811	9128	-684	-7.5	\N
district	DC20	2016	Viljoenskroon Moqhaka	10,001-20K	5	1343	10608	20000	15115	-306	-2	\N
district	DC20	2016	Viljoenskroon Moqhaka	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	50,001-100K	1	16	61250	61250	61250	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	150,001-200K	2	3803	159744	165524	164097	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	10,001-20K	1	302	15666	15666	15666	\N	\N	\N
municipality	DC40	2016	Vostershoop	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	Under 1.5K	1	472	9	9	9	\N	\N	\N
district	DC19	2016	Vrede Phumelela	1,501-3K	1	184	1928	1928	1928	\N	\N	\N
district	DC19	2016	Vrede Phumelela	3,001-5K	4	866	3457	3910	3568	\N	\N	\N
district	DC19	2016	Vrede Phumelela	5,001-10K	8	4561	5697	9934	8284	\N	0	\N
district	DC19	2016	Vrede Phumelela	10,001-20K	13	4574	11765	18872	14293	-13	-0.1	13904
district	DC19	2016	Vrede Phumelela	20,001-30K	2	4386	23051	27499	25275	-494	-2	\N
district	DC19	2016	Vrede Phumelela	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	5,001-10K	2	534	9000	9555	9277	-92	-1	\N
district	DC20	2016	Vredefort Ngwathe	10,001-20K	8	2145	10484	16304	14198	-575	-4	\N
district	DC20	2016	Vredefort Ngwathe	20,001-30K	1	31	24194	24194	24194	\N	\N	24194
district	DC20	2016	Vredefort Ngwathe	30,001-40K	2	258	32558	37791	35174	748	2.1	\N
district	DC20	2016	Vredefort Ngwathe	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	1,501-3K	2	1740	1730	2582	2156	-170	-7.9	\N
district	DC39	2016	Vryburg Naledi	3,001-5K	5	3967	3949	5000	4539	-70	-1.5	3949
district	DC39	2016	Vryburg Naledi	5,001-10K	18	17567	5141	9173	7200	-129	-1.8	7738
district	DC39	2016	Vryburg Naledi	10,001-20K	5	1430	11229	19767	14893	242	1.6	\N
district	DC39	2016	Vryburg Naledi	20,001-30K	2	366	24802	26809	25805	669	2.6	\N
district	DC39	2016	Vryburg Naledi	30,001-40K	1	21	38095	38095	38095	\N	\N	38095
district	DC39	2016	Vryburg Naledi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	100,001-150K	1	16	112500	112500	112500	\N	\N	\N
district	DC39	2016	Vryburg Naledi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	5,001-10K	1	1041	7205	7205	7205	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	20,001-30K	1	381	28871	28871	28871	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	1,501-3K	1	1047	2706	2706	2706	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	3,001-5K	6	3089	3094	3774	3442	34	1	3774
municipality	MAN	2016	Wepener Naledi	5,001-10K	2	460	7405	7723	7564	46	0.6	7723
municipality	MAN	2016	Wepener Naledi	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	5,001-10K	1	439	9886	9886	9886	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	10,001-20K	2	698	13310	19718	16514	1282	7.8	19718
district	DC18	2016	Wesselsbron Nala	20,001-30K	3	693	20213	25646	22625	-454	-2	\N
district	DC18	2016	Wesselsbron Nala	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	50,001-100K	1	257	53587	53587	53587	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	Under 1.5K	1	2110	1422	1422	1422	\N	\N	\N
district	DC10	2016	Willomore Baviaans	1,501-3K	3	7817	1700	2963	2420	1086	\N	\N
district	DC10	2016	Willomore Baviaans	3,001-5K	3	4226	3442	4224	3930	34	0.9	\N
district	DC10	2016	Willomore Baviaans	5,001-10K	4	4029	5287	7775	6473	-286	-4.4	5287
district	DC10	2016	Willomore Baviaans	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	5,001-10K	9	3735	5731	9890	7393	197	2.7	9890
district	DC18	2016	Winburg Masilonyana	10,001-20K	5	1603	11072	17771	13165	-176	-1.3	\N
district	DC18	2016	Winburg Masilonyana	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	Under 1.5K	1	17987	270	270	270	\N	\N	\N
district	DC14	2016	Wodehouse	1,501-3K	1	342	2016	2016	2016	\N	\N	\N
district	DC14	2016	Wodehouse	3,001-5K	6	3684	3750	4562	4047	91	2.3	\N
district	DC14	2016	Wodehouse	5,001-10K	8	4390	5154	7124	6271	-25	-0.4	5154
district	DC14	2016	Wodehouse	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	3,001-5K	2	546	4167	4938	4552	193	4.2	\N
district	DC40	2016	Wolmaransstad Maquassi	5,001-10K	7	3006	5902	9043	7978	\N	0	\N
district	DC40	2016	Wolmaransstad Maquassi	10,001-20K	7	1305	12346	19655	15825	-388	-2.5	\N
district	DC40	2016	Wolmaransstad Maquassi	20,001-30K	2	543	25532	25974	25753	-49	-0.2	\N
district	DC40	2016	Wolmaransstad Maquassi	30,001-40K	1	370	30270	30270	30270	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	40,001-50K	1	139	42647	42647	42647	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Worcester Breede Valley	Under 1.5K	2	7209	67	390	228	-40	-17.7	\N
district	DC2	2016	Worcester Breede Valley	1,501-3K	1	2431	1907	1907	1907	\N	\N	\N
district	DC2	2016	Worcester Breede Valley	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Worcester Breede Valley	5,001-10K	3	5325	9111	9881	9460	-45	-0.5	\N
district	DC2	2016	Worcester Breede Valley	10,001-20K	3	1154	10803	14074	12514	545	4.4	\N
district	DC2	2016	Worcester Breede Valley	20,001-30K	3	7000	24554	27516	25675	374	1.5	\N
district	DC2	2016	Worcester Breede Valley	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Worcester Breede Valley	40,001-50K	2	333	42623	44118	43370	-249	-0.6	\N
district	DC2	2016	Worcester Breede Valley	50,001-100K	2	100	58036	95000	76518	5281	6.9	\N
district	DC2	2016	Worcester Breede Valley	100,001-150K	5	535	103774	134913	110431	-1563	-1.4	106667
district	DC2	2016	Worcester Breede Valley	150,001-200K	1	65	192662	192662	192662	\N	\N	\N
district	DC2	2016	Worcester Breede Valley	200,001-300K	2	113	244828	290909	267868	-15361	-5.7	\N
district	DC2	2016	Worcester Breede Valley	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Worcester Breede Valley	500,001-800K	1	11	545455	545455	545455	\N	\N	\N
district	DC2	2016	Worcester Breede Valley	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Worcester Breede Valley	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	1,501-3K	1	1245	2249	2249	2249	\N	\N	\N
district	DC16	2016	Zastron Mohokare	3,001-5K	3	1688	3302	4303	3796	165	4.3	\N
district	DC16	2016	Zastron Mohokare	5,001-10K	3	969	5392	8582	6438	1062	16.5	\N
district	DC16	2016	Zastron Mohokare	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Zeerust Ramotshere	Under 1.5K	1	2194	296	296	296	\N	\N	\N
district	DC38	2016	Zeerust Ramotshere	1,501-3K	3	1958	2328	2406	2360	-15	-0.6	\N
district	DC38	2016	Zeerust Ramotshere	3,001-5K	7	786	3289	5000	4164	113	2.7	\N
district	DC38	2016	Zeerust Ramotshere	5,001-10K	21	11426	5670	9484	7621	126	1.7	\N
district	DC38	2016	Zeerust Ramotshere	10,001-20K	30	8941	10002	19643	14913	339	2.3	19298
district	DC38	2016	Zeerust Ramotshere	20,001-30K	19	3996	20357	29375	24085	-10	0	\N
district	DC38	2016	Zeerust Ramotshere	30,001-40K	7	326	31613	39216	36010	-186	-0.5	31613
district	DC38	2016	Zeerust Ramotshere	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Zeerust Ramotshere	50,001-100K	4	184	53846	80952	64116	1604	2.5	\N
district	DC38	2016	Zeerust Ramotshere	100,001-150K	3	53	102083	140824	115507	13424	11.6	\N
district	DC38	2016	Zeerust Ramotshere	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Zeerust Ramotshere	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Zeerust Ramotshere	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Zeerust Ramotshere	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Zeerust Ramotshere	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Zeerust Ramotshere	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	1,501-3K	1	2046	2796	2796	2796	\N	\N	\N
district	DC10	2016	Aberdeen	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Aberdeen	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	1,501-3K	1	3077	3000	3000	3000	\N	\N	\N
district	DC10	2016	Albany	3,001-5K	3	3145	3214	4530	3466	-101	-2.9	\N
district	DC10	2016	Albany	5,001-10K	7	3253	5210	9694	7137	35	0.5	\N
district	DC10	2016	Albany	10,001-20K	3	677	10926	15020	13279	-261	-2	\N
district	DC10	2016	Albany	20,001-30K	4	768	21076	29213	25037	910	3.6	\N
district	DC10	2016	Albany	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	50,001-100K	1	11	69091	69091	69091	\N	\N	\N
district	DC10	2016	Albany	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	150,001-200K	1	14	178571	178571	178571	\N	\N	\N
district	DC10	2016	Albany	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Albany	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	3,001-5K	1	970	3552	3552	3552	\N	\N	3552
district	DC10	2016	Alexandria Ndlambe	5,001-10K	3	2204	8041	9272	8746	-119	-1.4	8041
district	DC10	2016	Alexandria Ndlambe	10,001-20K	3	555	15522	16536	16020	89	0.6	16536
district	DC10	2016	Alexandria Ndlambe	20,001-30K	2	892	26962	29806	28384	-259	-0.9	26962
district	DC10	2016	Alexandria Ndlambe	30,001-40K	1	110	31318	31318	31318	\N	\N	31318
district	DC10	2016	Alexandria Ndlambe	40,001-50K	1	604	43046	43046	43046	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	300,001-500K	1	25	339394	339394	339394	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Alexandria Ndlambe	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	3,001-5K	1	779	3376	3376	3376	\N	\N	3376
district	DC14	2016	Aliwal-Noord Maletsiwai	5,001-10K	3	2045	5551	8002	6520	506	7.8	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	10,001-20K	2	1041	11688	18038	14863	907	6.1	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	20,001-30K	1	407	24570	24570	24570	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Aliwal-Noord Maletsiwai	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	1,501-3K	2	1348	2065	2801	2433	-82	-3.4	\N
district	DC14	2016	Barkly-Oos Senqu	3,001-5K	1	508	4921	4921	4921	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	5,001-10K	5	4281	5330	7311	6511	56	0.9	\N
district	DC14	2016	Barkly-Oos Senqu	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Barkly-Oos Senqu	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	5,001-10K	4	1129	5158	9524	8158	-3	0	\N
district	DC10	2016	Bathurst Ndlambe	10,001-20K	4	2221	11463	14670	12686	-157	-1.2	\N
district	DC10	2016	Bathurst Ndlambe	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	40,001-50K	2	104	41667	44944	43305	-1092	-2.5	\N
district	DC10	2016	Bathurst Ndlambe	50,001-100K	1	28	57143	57143	57143	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	100,001-150K	1	55	101818	101818	101818	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Bathurst Ndlambe	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	5,001-10K	1	3591	5038	5038	5038	\N	\N	\N
district	DC12	2016	Bedford Amathole	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	20,001-30K	1	2707	27704	27704	27704	\N	\N	\N
district	DC12	2016	Bedford Amathole	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	200,001-300K	1	52	250000	250000	250000	\N	\N	\N
district	DC12	2016	Bedford Amathole	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Bedford Amathole	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	3,001-5K	1	641	4680	4680	4680	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	5,001-10K	4	2390	6565	9843	8082	-139	-1.7	6565
district	DC12	2016	Cathcart Amahlathi	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	50,001-100K	1	22	56818	56818	56818	\N	\N	56818
district	DC12	2016	Cathcart Amahlathi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Cathcart Amahlathi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	1,501-3K	1	3897	1540	1540	1540	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	3,001-5K	4	10428	3347	4996	4360	72	1.6	\N
district	DC13	2016	Cradock Inxuba Yethemba	5,001-10K	3	5977	5645	8079	6776	-323	-4.8	\N
district	DC13	2016	Cradock Inxuba Yethemba	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	40,001-50K	1	559	40250	40250	40250	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	50,001-100K	2	508	59226	63380	61303	-519	-0.8	\N
district	DC13	2016	Cradock Inxuba Yethemba	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	150,001-200K	1	141	153901	153901	153901	\N	\N	153901
district	DC13	2016	Cradock Inxuba Yethemba	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Cradock Inxuba Yethemba	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	1,501-3K	1	136	1679	1679	1679	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	3,001-5K	3	1422	4235	4991	4658	-17	-0.4	\N
district	DC14	2016	Elliot Sakhiszwe	5,001-10K	2	1167	5609	8987	7298	3378	\N	\N
district	DC14	2016	Elliot Sakhiszwe	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	20,001-30K	2	531	22431	23485	22958	-150	-0.7	\N
district	DC14	2016	Elliot Sakhiszwe	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	40,001-50K	1	37	43135	43135	43135	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	50,001-100K	1	12	100000	100000	100000	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Elliot Sakhiszwe	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	1,501-3K	1	702	2114	2114	2114	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	5,001-10K	1	723	8240	8240	8240	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Fort Beaufort Raymond Mhlaba	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	Under 1.5K	1	1937	1033	1033	1033	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	1,501-3K	1	1937	1766	1766	1766	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	3,001-5K	2	5804	3238	3502	3370	-88	-2.6	\N
district	DC10	2016	Graaff-Reinet Camdeboo	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Graaff-Reinet Camdeboo	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Humansdorp Kouga	Under 1.5K	5	2184	541	1483	963	56	5.8	\N
district	DC10	2016	Humansdorp Kouga	1,501-3K	3	1287	1848	2994	2281	-143	-6.3	\N
district	DC10	2016	Humansdorp Kouga	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Humansdorp Kouga	5,001-10K	1	152	5461	5461	5461	\N	\N	\N
district	DC10	2016	Humansdorp Kouga	10,001-20K	6	2254	12389	18609	15622	313	2	\N
district	DC10	2016	Humansdorp Kouga	20,001-30K	1	124	28226	28226	28226	\N	\N	\N
district	DC10	2016	Humansdorp Kouga	30,001-40K	1	592	38851	38851	38851	\N	\N	38851
district	DC10	2016	Humansdorp Kouga	40,001-50K	2	190	44984	45298	45141	-157	-0.3	\N
district	DC10	2016	Humansdorp Kouga	50,001-100K	6	828	66667	100000	83689	1378	1.6	66667
district	DC10	2016	Humansdorp Kouga	100,001-150K	1	21	102381	102381	102381	\N	\N	\N
district	DC10	2016	Humansdorp Kouga	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Humansdorp Kouga	200,001-300K	1	21	280929	280929	280929	\N	\N	\N
district	DC10	2016	Humansdorp Kouga	300,001-500K	2	40	342777	361111	351944	-6111	-1.7	\N
district	DC10	2016	Humansdorp Kouga	500,001-800K	2	47	600000	791667	695833	-95833	-13.8	\N
district	DC10	2016	Humansdorp Kouga	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Humansdorp Kouga	Above 1M	1	12	1083333	1083333	1083333	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	1,501-3K	1	3927	2232	2232	2232	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	3,001-5K	1	2288	3059	3059	3059	\N	\N	3059
district	DC10	2016	Jansenville Ikwezi	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Jansenville Ikwezi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	Under 1.5K	1	499	752	752	752	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	1,501-3K	1	296	2196	2196	2196	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	5,001-10K	2	89	6238	8571	7405	778	10.5	\N
district	DC10	2016	Joubertina Kou-Kamma	10,001-20K	3	150	12766	16671	14442	-449	-3.1	\N
district	DC10	2016	Joubertina Kou-Kamma	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	30,001-40K	1	36	30556	30556	30556	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	40,001-50K	2	32	42895	50000	46447	-1776	-3.8	\N
district	DC10	2016	Joubertina Kou-Kamma	50,001-100K	1	12	70833	70833	70833	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	300,001-500K	1	95	320551	320551	320551	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Joubertina Kou-Kamma	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	Under 1.5K	2	508	532	966	749	-217	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	1,501-3K	1	2560	1841	1841	1841	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	5,001-10K	4	2547	5503	9820	6729	-161	-2.4	5503
municipality	BUF	2016	King Williams Town Baffalo City	10,001-20K	2	400	11957	13418	12687	-1462	-11.5	\N
municipality	BUF	2016	King Williams Town Baffalo City	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	300,001-500K	1	183	382514	382514	382514	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	King Williams Town Baffalo City	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	1,501-3K	1	243	2469	2469	2469	\N	\N	\N
district	DC12	2016	Komga Great Kei	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	5,001-10K	4	2819	7908	9924	8540	14	0.2	8239
district	DC12	2016	Komga Great Kei	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	20,001-30K	2	87	20270	26923	23597	-1331	-5.6	\N
district	DC12	2016	Komga Great Kei	30,001-40K	2	419	31328	32500	31914	117	0.4	32500
district	DC12	2016	Komga Great Kei	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Komga Great Kei	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	1,501-3K	6	3622	2571	2999	2805	4	0.1	2850
district	DC14	2016	Maclear Elundini	3,001-5K	1	755	3974	3974	3974	\N	\N	\N
district	DC14	2016	Maclear Elundini	5,001-10K	2	767	7042	9032	8037	-498	-6.2	\N
district	DC14	2016	Maclear Elundini	10,001-20K	3	1764	10073	17896	14157	-509	-3.6	\N
district	DC14	2016	Maclear Elundini	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Maclear Elundini	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	1,501-3K	4	8815	2553	2991	2763	28	1	2811
district	DC13	2016	Middelburg EC Inxuba Yethemba	3,001-5K	5	12282	3150	4281	3784	58	1.5	4125
district	DC13	2016	Middelburg EC Inxuba Yethemba	5,001-10K	1	1487	6027	6027	6027	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	1,501-3K	1	369	2439	2439	2439	\N	\N	2439
district	DC13	2016	Molteno Inkwanca	3,001-5K	1	2573	3003	3003	3003	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	5,001-10K	1	375	8035	8035	8035	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Molteno Inkwanca	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	Under 1.5K	2	1265	634	1343	988	-237	-23.9	634
district	DC15	2016	Mthatha King Sabata Dalindyebo	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	3,001-5K	1	1046	4589	4589	4589	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	10,001-20K	2	1013	13089	17256	15685	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	Oos-Londen Baffalo City	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	Oos-Londen Baffalo City	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	Oos-Londen Baffalo City	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	Oos-Londen Baffalo City	5,001-10K	2	269	7738	8108	7923	74	0.9	\N
municipality	BUF	2016	Oos-Londen Baffalo City	10,001-20K	6	467	11250	18182	14872	-178	-1.2	\N
municipality	BUF	2016	Oos-Londen Baffalo City	20,001-30K	3	229	24091	29739	26748	439	1.6	\N
municipality	BUF	2016	Oos-Londen Baffalo City	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	Oos-Londen Baffalo City	40,001-50K	2	87	43860	48000	45930	-1035	-2.3	\N
municipality	BUF	2016	Oos-Londen Baffalo City	50,001-100K	10	307	55882	90909	70249	2405	3.4	78309
municipality	BUF	2016	Oos-Londen Baffalo City	100,001-150K	4	90	109091	147619	128496	2335	1.8	130000
municipality	BUF	2016	Oos-Londen Baffalo City	150,001-200K	6	123	152778	200000	177487	-3727	-2.1	\N
municipality	BUF	2016	Oos-Londen Baffalo City	200,001-300K	1	48	250000	250000	250000	\N	\N	\N
municipality	BUF	2016	Oos-Londen Baffalo City	300,001-500K	2	43	332353	461538	396946	32296	8.1	\N
municipality	BUF	2016	Oos-Londen Baffalo City	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	BUF	2016	Oos-Londen Baffalo City	800,001-1M	1	15	836000	836000	836000	\N	\N	\N
municipality	BUF	2016	Oos-Londen Baffalo City	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	5,001-10K	5	8955	5006	6647	5327	-14	-0.3	5418
district	DC10	2016	Pearston Blue Crane	10,001-20K	1	483	15578	15578	15578	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	50,001-100K	1	103	58398	58398	58398	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Pearston Blue Crane	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	3,001-5K	1	172	4942	4942	4942	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	20,001-30K	1	34	25000	25000	25000	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	30,001-40K	1	32	31094	31094	31094	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	40,001-50K	1	43	50000	50000	50000	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	1,501-3K	1	1631	2739	2739	2739	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	5,001-10K	1	754	7560	7560	7560	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Queenstown Lukanji	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	1,501-3K	3	3961	1822	2357	2143	43	2	2357
district	DC10	2016	Somerset-Oos Blue Crane	3,001-5K	2	2805	4653	4729	4691	25	0.5	4729
district	DC10	2016	Somerset-Oos Blue Crane	5,001-10K	4	3210	6087	8959	7049	-125	-1.8	6087
district	DC10	2016	Somerset-Oos Blue Crane	10,001-20K	1	1558	10610	10610	10610	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	20,001-30K	1	728	21915	21915	21915	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	50,001-100K	1	43	83721	83721	83721	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	100,001-150K	1	119	134454	134454	134454	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	200,001-300K	1	43	230651	230651	230651	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Somerset-Oos Blue Crane	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	1,501-3K	4	2659	2083	2920	2589	79	3.1	2762
district	DC14	2016	Steynsburg Gariep	3,001-5K	1	2465	3245	3245	3245	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	5,001-10K	1	396	9726	9726	9726	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Steynsburg Gariep	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	3,001-5K	3	2690	3416	4948	4353	95	2.2	4694
district	DC10	2016	Steytlerville Dr Beyers Naude	5,001-10K	2	4600	5118	6831	6467	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	5,001-10K	1	1127	5324	5324	5324	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	10,001-20K	4	706	10573	16949	13892	-332	-2.4	10573
district	DC12	2016	Stutterheim Amahlathi	20,001-30K	2	89	20806	26824	23815	-6018	\N	\N
district	DC12	2016	Stutterheim Amahlathi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	40,001-50K	1	16	50000	50000	50000	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC12	2016	Stutterheim Amahlathi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	1,501-3K	1	1394	2869	2869	2869	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	3,001-5K	4	5413	4251	5000	4517	33	0.7	\N
district	DC13	2016	Tarkastad Tsolwana	5,001-10K	2	6994	6364	8032	7198	556	7.7	\N
district	DC13	2016	Tarkastad Tsolwana	10,001-20K	1	16	17578	17578	17578	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	20,001-30K	1	20	25090	25090	25090	\N	\N	25090
district	DC13	2016	Tarkastad Tsolwana	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	50,001-100K	1	107	89400	89400	89400	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC13	2016	Tarkastad Tsolwana	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	3,001-5K	1	970	3866	3866	3866	\N	\N	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	5,001-10K	5	1777	5713	8333	6863	81	1.2	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	10,001-20K	7	1956	10577	15000	12741	-67	-0.5	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	30,001-40K	3	118	31579	35897	33098	236	0.7	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	40,001-50K	3	199	41667	50000	46267	833	1.8	50000
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	50,001-100K	6	129	60000	88000	68267	-2019	-3	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	100,001-150K	3	59	136364	140909	139271	512	0.4	140541
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	150,001-200K	1	34	179412	179412	179412	\N	\N	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	200,001-300K	1	16	253549	253549	253549	\N	\N	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	300,001-500K	3	160	323370	369673	342129	5274	1.5	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	500,001-800K	2	97	518516	651515	585016	-44333	-7.6	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	Under 1.5K	1	1492	114	114	114	\N	\N	\N
district	DC44	2016	Uniondale	1,501-3K	1	2252	2798	2798	2798	\N	\N	2798
district	DC44	2016	Uniondale	3,001-5K	1	120	5000	5000	5000	\N	\N	5000
district	DC44	2016	Uniondale	5,001-10K	4	3688	6207	9627	7730	-148	-1.9	\N
district	DC44	2016	Uniondale	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	20,001-30K	2	1272	24296	26923	25610	-657	-2.6	\N
district	DC44	2016	Uniondale	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	40,001-50K	1	81	43210	43210	43210	\N	\N	\N
district	DC44	2016	Uniondale	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	150,001-200K	1	161	189145	189145	189145	\N	\N	\N
district	DC44	2016	Uniondale	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC44	2016	Uniondale	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	Under 1.5K	1	2110	1422	1422	1422	\N	\N	\N
district	DC10	2016	Willomore Baviaans	1,501-3K	3	7817	1700	2963	2420	1086	\N	\N
district	DC10	2016	Willomore Baviaans	3,001-5K	3	4226	3442	4224	3930	34	0.9	\N
district	DC10	2016	Willomore Baviaans	5,001-10K	4	4029	5287	7775	6473	-286	-4.4	5287
district	DC10	2016	Willomore Baviaans	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC10	2016	Willomore Baviaans	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	Under 1.5K	1	17987	270	270	270	\N	\N	\N
district	DC14	2016	Wodehouse	1,501-3K	1	342	2016	2016	2016	\N	\N	\N
district	DC14	2016	Wodehouse	3,001-5K	6	3684	3750	4562	4047	91	2.3	\N
district	DC14	2016	Wodehouse	5,001-10K	8	4390	5154	7124	6271	-25	-0.4	5154
district	DC14	2016	Wodehouse	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC14	2016	Wodehouse	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	Under 1.5K	1	737	543	543	543	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	5,001-10K	2	256	6927	9865	8396	-735	-8.7	6927
district	DC19	2016	Bethlehem Dihlabeng	10,001-20K	6	1876	10750	19108	14276	711	5	19108
district	DC19	2016	Bethlehem Dihlabeng	20,001-30K	10	3525	21001	27321	23459	-265	-1.1	\N
district	DC19	2016	Bethlehem Dihlabeng	30,001-40K	5	1375	30052	34154	32586	-205	-0.6	\N
district	DC19	2016	Bethlehem Dihlabeng	40,001-50K	3	335	42857	49635	47191	-773	-1.6	\N
district	DC19	2016	Bethlehem Dihlabeng	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	500,001-800K	1	12	583333	583333	583333	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Bethlehem Dihlabeng	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	5,001-10K	2	2880	5761	6366	6064	86	1.4	\N
district	DC16	2016	Bethulie	10,001-20K	1	357	10924	10924	10924	\N	\N	\N
district	DC16	2016	Bethulie	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Bethulie	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Bloemfontein Mangaung	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Bloemfontein Mangaung	1,501-3K	1	306	2121	2121	2121	\N	\N	\N
municipality	MAN	2016	Bloemfontein Mangaung	3,001-5K	7	5514	3061	5000	4152	-75	-1.8	3061
municipality	MAN	2016	Bloemfontein Mangaung	5,001-10K	10	5653	5007	9697	6592	90	1.4	\N
municipality	MAN	2016	Bloemfontein Mangaung	10,001-20K	14	6544	10323	17442	13219	358	2.7	17037
municipality	MAN	2016	Bloemfontein Mangaung	20,001-30K	7	1294	21483	28571	24427	270	1.1	\N
municipality	MAN	2016	Bloemfontein Mangaung	30,001-40K	3	274	32086	38462	34499	591	1.7	38462
municipality	MAN	2016	Bloemfontein Mangaung	40,001-50K	3	115	40476	48231	43662	-702	-1.6	42279
municipality	MAN	2016	Bloemfontein Mangaung	50,001-100K	5	287	62244	100000	86712	-497	-0.6	\N
municipality	MAN	2016	Bloemfontein Mangaung	100,001-150K	3	143	107294	132432	118004	-175	-0.1	114286
municipality	MAN	2016	Bloemfontein Mangaung	150,001-200K	2	37	166615	186364	176490	-9874	-5.6	\N
municipality	MAN	2016	Bloemfontein Mangaung	200,001-300K	2	83	220882	291407	256144	35263	13.8	\N
municipality	MAN	2016	Bloemfontein Mangaung	300,001-500K	1	12	375000	375000	375000	\N	\N	\N
municipality	MAN	2016	Bloemfontein Mangaung	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Bloemfontein Mangaung	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Bloemfontein Mangaung	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	Under 1.5K	1	563	888	888	888	\N	\N	\N
district	DC18	2016	Boshof Tokologo	1,501-3K	4	3806	1710	2818	2203	20	0.9	\N
district	DC18	2016	Boshof Tokologo	3,001-5K	12	7614	3500	4972	4224	17	0.4	4018
district	DC18	2016	Boshof Tokologo	5,001-10K	15	6814	5057	9884	5937	-26	-0.4	5680
district	DC18	2016	Boshof Tokologo	10,001-20K	2	499	11782	18874	15328	-3546	-23.1	\N
district	DC18	2016	Boshof Tokologo	20,001-30K	3	2399	23864	24477	24186	73	0.3	\N
district	DC18	2016	Boshof Tokologo	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	50,001-100K	1	21	72381	72381	72381	\N	\N	\N
district	DC18	2016	Boshof Tokologo	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Boshof Tokologo	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	3,001-5K	1	602	4007	4007	4007	\N	\N	\N
district	DC18	2016	Bothaville Nala	5,001-10K	7	2673	5003	9709	6713	-676	-10.1	\N
district	DC18	2016	Bothaville Nala	10,001-20K	10	3404	10261	19469	15202	-193	-1.3	10261
district	DC18	2016	Bothaville Nala	20,001-30K	4	640	22000	27771	25328	644	2.5	\N
district	DC18	2016	Bothaville Nala	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	40,001-50K	3	739	42180	44509	43035	-272	-0.6	\N
district	DC18	2016	Bothaville Nala	50,001-100K	6	1360	50026	62849	55492	-266	-0.5	\N
district	DC18	2016	Bothaville Nala	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bothaville Nala	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	5,001-10K	8	2803	5510	9726	8038	243	3	\N
district	DC18	2016	Brandfort Masilonyana	10,001-20K	5	1030	10258	16908	12094	-392	-3.2	10390
district	DC18	2016	Brandfort Masilonyana	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	40,001-50K	1	21	40476	40476	40476	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	50,001-100K	1	49	85714	85714	85714	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Brandfort Masilonyana	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	3,001-5K	1	1055	4455	4455	4455	\N	\N	4455
district	DC18	2016	Bultfontein Tswelopele	5,001-10K	4	959	6977	8780	7784	-231	-3	\N
district	DC18	2016	Bultfontein Tswelopele	10,001-20K	1	236	10169	10169	10169	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	20,001-30K	2	202	23585	27907	25746	-1081	-4.2	\N
district	DC18	2016	Bultfontein Tswelopele	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	40,001-50K	1	368	48479	48479	48479	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	50,001-100K	1	137	83212	83212	83212	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Bultfontein Tswelopele	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	1,501-3K	1	518	1931	1931	1931	\N	\N	\N
district	DC19	2016	Clocolan Setso	3,001-5K	1	183	3005	3005	3005	\N	\N	\N
district	DC19	2016	Clocolan Setso	5,001-10K	2	696	7005	7470	7238	-116	-1.6	\N
district	DC19	2016	Clocolan Setso	10,001-20K	9	1772	14583	19521	15317	-542	-3.5	\N
district	DC19	2016	Clocolan Setso	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Clocolan Setso	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	3,001-5K	4	3306	3214	4892	4459	555	12.4	\N
district	DC16	2016	Dewetsdorp Naledi	5,001-10K	1	149	5501	5501	5501	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Dewetsdorp Naledi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	1,501-3K	4	1937	2710	3000	2814	-59	-2.1	\N
district	DC16	2016	Edenburg Kopanong	3,001-5K	1	453	3250	3250	3250	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	5,001-10K	2	855	5699	6355	6027	328	5.4	\N
district	DC16	2016	Edenburg Kopanong	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Edenburg Kopanong	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	1,501-3K	2	776	2541	2804	2672	88	3.3	\N
district	DC16	2016	Fauresmith Kopanong	3,001-5K	6	6247	3218	4956	3790	118	3.1	\N
district	DC16	2016	Fauresmith Kopanong	5,001-10K	8	4618	5854	10001	7518	75	1	\N
district	DC16	2016	Fauresmith Kopanong	10,001-20K	1	343	11633	11633	11633	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	50,001-100K	1	117	59829	59829	59829	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Fauresmith Kopanong	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	5,001-10K	6	2356	5838	9986	8791	1166	13.3	\N
district	DC19	2016	Ficksburg Setso	10,001-20K	3	1405	11475	13673	12769	-181	-1.4	11475
district	DC19	2016	Ficksburg Setso	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	40,001-50K	1	80	41638	41638	41638	\N	\N	\N
district	DC19	2016	Ficksburg Setso	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ficksburg Setso	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	5,001-10K	1	405	8889	8889	8889	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	10,001-20K	5	643	13167	17442	14593	-124	-0.8	\N
district	DC19	2016	Fouriesburg Dikabeng	20,001-30K	1	550	23091	23091	23091	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	200,001-300K	1	88	215909	215909	215909	\N	\N	215909
district	DC19	2016	Fouriesburg Dikabeng	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Fouriesburg Dikabeng	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	5,001-10K	3	519	7888	10000	9296	-568	-6.1	\N
district	DC20	2016	Frankfort Mafube	10,001-20K	13	5380	10141	19966	15040	522	3.5	\N
district	DC20	2016	Frankfort Mafube	20,001-30K	5	1612	20022	28902	25849	-1	0	\N
district	DC20	2016	Frankfort Mafube	30,001-40K	1	517	38685	38685	38685	\N	\N	\N
district	DC20	2016	Frankfort Mafube	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Frankfort Mafube	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	3,001-5K	1	428	3207	3207	3207	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	5,001-10K	5	4895	7340	9286	8315	-76	-0.9	7340
district	DC19	2016	Harrismith Maluti-A-Phofung	10,001-20K	12	5877	10783	19919	14235	-111	-0.8	14935
district	DC19	2016	Harrismith Maluti-A-Phofung	20,001-30K	3	534	20354	26563	22846	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	30,001-40K	2	2277	33633	33992	33812	60	0.2	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	40,001-50K	1	19	44737	44737	44737	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	1,501-3K	1	349	2500	2500	2500	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	5,001-10K	5	2052	6707	9488	8024	-32	-0.4	\N
district	DC20	2016	Heilbron Ngwathe	10,001-20K	9	4093	10668	15217	12264	-55	-0.4	\N
district	DC20	2016	Heilbron Ngwathe	20,001-30K	3	2043	25042	28497	26846	-300	-1.1	25196
district	DC20	2016	Heilbron Ngwathe	30,001-40K	2	85	35506	40000	37753	-449	-1.2	35506
district	DC20	2016	Heilbron Ngwathe	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	50,001-100K	1	25	60000	60000	60000	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Heilbron Ngwathe	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	10,001-20K	2	726	13066	18254	15317	\N	\N	15317
district	DC18	2016	Hoopstad Tswelopele	20,001-30K	3	733	20979	28528	23643	-5327	-22.5	\N
district	DC18	2016	Hoopstad Tswelopele	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Hoopstad Tswelopele	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	1,501-3K	1	705	2837	2837	2837	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	3,001-5K	5	3382	3496	4557	3904	61	1.6	\N
district	DC16	2016	Jacobsdal Letsemeng	5,001-10K	5	2501	6358	8602	7057	-90	-1.3	\N
district	DC16	2016	Jacobsdal Letsemeng	10,001-20K	2	467	12498	16829	14663	4331	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Jacobsdal Letsemeng	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	5,001-10K	5	2247	6413	8884	8067	236	2.9	\N
district	DC20	2016	Koppies Ngwathe	10,001-20K	5	1166	10014	13969	12087	-63	-0.5	\N
district	DC20	2016	Koppies Ngwathe	20,001-30K	1	174	29483	29483	29483	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Koppies Ngwathe	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	5,001-10K	10	4381	6875	9986	8362	85	1	\N
district	DC20	2016	Kroonstad Moqhaka	10,001-20K	10	3537	10007	16205	13035	-227	-1.7	11111
district	DC20	2016	Kroonstad Moqhaka	20,001-30K	2	519	21333	27397	24365	-3032	-12.4	\N
district	DC20	2016	Kroonstad Moqhaka	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Kroonstad Moqhaka	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	Under 1.5K	2	714	98	168	133	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	3,001-5K	4	1430	3922	5000	4502	31	0.7	\N
district	DC19	2016	Ladybrand Mantsopa	5,001-10K	2	678	6453	9785	8119	-555	-6.8	\N
district	DC19	2016	Ladybrand Mantsopa	10,001-20K	3	1775	10174	18203	13041	-2007	-15.4	\N
district	DC19	2016	Ladybrand Mantsopa	20,001-30K	1	223	20179	20179	20179	\N	\N	20179
district	DC19	2016	Ladybrand Mantsopa	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Ladybrand Mantsopa	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	5,001-10K	18	7316	5556	9887	6877	-142	-2.1	\N
district	DC19	2016	Lindley Nketoana	10,001-20K	9	4742	11597	18962	14626	-324	-2.2	11921
district	DC19	2016	Lindley Nketoana	20,001-30K	4	1004	20645	29545	26367	-15	-0.1	\N
district	DC19	2016	Lindley Nketoana	30,001-40K	1	23	32609	32609	32609	\N	\N	\N
district	DC19	2016	Lindley Nketoana	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Lindley Nketoana	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	5,001-10K	7	3448	5670	10000	7895	-484	-6.1	\N
district	DC19	2016	Marquard Setso	10,001-20K	6	1379	10417	13750	11735	-174	-1.5	\N
district	DC19	2016	Marquard Setso	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Marquard Setso	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	10,001-20K	1	257	14195	14195	14195	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	40,001-50K	1	38	44474	44474	44474	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	50,001-100K	1	38	76316	76316	76316	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Odendaalsrus Matjhabeng	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Parys Ngwathe	Under 1.5K	1	115	410	410	410	\N	\N	\N
district	DC20	2016	Parys Ngwathe	1,501-3K	1	10	1670	1670	1670	\N	\N	\N
district	DC20	2016	Parys Ngwathe	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Parys Ngwathe	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Parys Ngwathe	10,001-20K	5	1743	13000	18000	16240	-61	-0.4	\N
district	DC20	2016	Parys Ngwathe	20,001-30K	1	72	20833	20833	20833	\N	\N	\N
district	DC20	2016	Parys Ngwathe	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Parys Ngwathe	40,001-50K	2	79	44444	46941	45693	-499	-1.1	\N
district	DC20	2016	Parys Ngwathe	50,001-100K	2	97	84416	100000	92208	-7792	-8.5	84416
district	DC20	2016	Parys Ngwathe	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Parys Ngwathe	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Parys Ngwathe	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Parys Ngwathe	300,001-500K	1	28	316350	316350	316350	\N	\N	\N
district	DC20	2016	Parys Ngwathe	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Parys Ngwathe	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Parys Ngwathe	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	3,001-5K	2	2971	4198	4944	4571	746	16.3	\N
district	DC16	2016	Philipolis Kopanong	5,001-10K	1	857	8539	8539	8539	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Philipolis Kopanong	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	3,001-5K	3	1831	3792	4669	4236	-119	-2.8	3792
district	DC16	2016	Reddersburg Kopanong	5,001-10K	3	2246	5841	8389	6733	154	2.3	\N
district	DC16	2016	Reddersburg Kopanong	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Reddersburg Kopanong	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Reitz Nketoana	Under 1.5K	1	505	594	594	594	\N	\N	\N
district	DC19	2016	Reitz Nketoana	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Reitz Nketoana	3,001-5K	1	183	3115	3115	3115	\N	\N	\N
district	DC19	2016	Reitz Nketoana	5,001-10K	4	1460	5926	8964	7589	-504	-6.6	5926
district	DC19	2016	Reitz Nketoana	10,001-20K	10	5154	10656	18797	14360	-419	-2.9	\N
district	DC19	2016	Reitz Nketoana	20,001-30K	4	844	21794	24000	22951	86	0.4	22981
district	DC19	2016	Reitz Nketoana	30,001-40K	2	96	31884	37037	34461	515	1.5	37037
district	DC19	2016	Reitz Nketoana	40,001-50K	1	219	46849	46849	46849	\N	\N	\N
district	DC19	2016	Reitz Nketoana	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Reitz Nketoana	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Reitz Nketoana	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Reitz Nketoana	200,001-300K	1	69	289855	289855	289855	\N	\N	\N
district	DC19	2016	Reitz Nketoana	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Reitz Nketoana	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Reitz Nketoana	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Reitz Nketoana	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	3,001-5K	3	1646	3974	4649	4288	90	2.1	\N
district	DC16	2016	Rouxville Mohokare	5,001-10K	5	4494	5004	9826	6708	-704	-10.5	\N
district	DC16	2016	Rouxville Mohokare	10,001-20K	1	821	10627	10627	10627	\N	\N	10627
district	DC16	2016	Rouxville Mohokare	20,001-30K	2	1112	25824	27027	25944	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	100,001-150K	1	26	115385	115385	115385	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Rouxville Mohokare	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	5,001-10K	15	6322	5263	9695	8050	-66	-0.8	7767
district	DC19	2016	Senekal Setsoto	10,001-20K	9	2681	10495	13953	11438	38	0.3	\N
district	DC19	2016	Senekal Setsoto	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Senekal Setsoto	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	Under 1.5K	1	373	1482	1482	1482	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	5,001-10K	1	419	6177	6177	6177	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Smithfield Mohkare	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	1,501-3K	2	1754	2193	2865	2529	84	3.3	\N
municipality	MAN	2016	Thaba Nchu	3,001-5K	2	1116	3502	3987	3763	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	5,001-10K	2	371	5700	10000	7850	717	9.1	\N
municipality	MAN	2016	Thaba Nchu	10,001-20K	1	557	10592	10592	10592	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Thaba Nchu	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	Under 1.5K	2	787	1138	1225	1179	\N	\N	1179
district	DC18	2016	Theunissen Masilonyana	1,501-3K	1	171	1637	1637	1637	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	3,001-5K	1	292	3767	3767	3767	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	5,001-10K	1	345	6957	6957	6957	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	10,001-20K	7	2091	10091	16518	12889	211	1.6	15953
district	DC18	2016	Theunissen Masilonyana	20,001-30K	1	389	20051	20051	20051	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	40,001-50K	2	527	44444	49806	47125	-2681	-5.7	\N
district	DC18	2016	Theunissen Masilonyana	50,001-100K	2	349	61450	78375	65330	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	100,001-150K	1	65	128031	128031	128031	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Theunissen Masilonyana	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	1,501-3K	3	684	2604	2985	2793	-189	-6.8	\N
district	DC18	2016	Ventersburg Matjhabeng	3,001-5K	2	494	3096	3531	3314	436	13.1	\N
district	DC18	2016	Ventersburg Matjhabeng	5,001-10K	5	1319	6431	9857	8378	621	7.4	\N
municipality	MAN	2016	Wepener Naledi	5,001-10K	2	460	7405	7723	7564	46	0.6	7723
district	DC18	2016	Ventersburg Matjhabeng	10,001-20K	10	1997	10601	17641	13128	-33	-0.3	\N
district	DC18	2016	Ventersburg Matjhabeng	20,001-30K	1	10	23008	23008	23008	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	100,001-150K	1	25	109856	109856	109856	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Ventersburg Matjhabeng	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	5,001-10K	2	298	8444	9811	9128	-684	-7.5	\N
district	DC20	2016	Viljoenskroon Moqhaka	10,001-20K	5	1343	10608	20000	15115	-306	-2	\N
district	DC20	2016	Viljoenskroon Moqhaka	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	50,001-100K	1	16	61250	61250	61250	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	150,001-200K	2	3803	159744	165524	164097	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Viljoenskroon Moqhaka	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	Under 1.5K	1	472	9	9	9	\N	\N	\N
district	DC19	2016	Vrede Phumelela	1,501-3K	1	184	1928	1928	1928	\N	\N	\N
district	DC19	2016	Vrede Phumelela	3,001-5K	4	866	3457	3910	3568	\N	\N	\N
district	DC19	2016	Vrede Phumelela	5,001-10K	8	4561	5697	9934	8284	\N	0	\N
district	DC19	2016	Vrede Phumelela	10,001-20K	13	4574	11765	18872	14293	-13	-0.1	13904
district	DC19	2016	Vrede Phumelela	20,001-30K	2	4386	23051	27499	25275	-494	-2	\N
district	DC19	2016	Vrede Phumelela	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC19	2016	Vrede Phumelela	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	5,001-10K	2	534	9000	9555	9277	-92	-1	\N
district	DC20	2016	Vredefort Ngwathe	10,001-20K	8	2145	10484	16304	14198	-575	-4	\N
district	DC20	2016	Vredefort Ngwathe	20,001-30K	1	31	24194	24194	24194	\N	\N	24194
district	DC20	2016	Vredefort Ngwathe	30,001-40K	2	258	32558	37791	35174	748	2.1	\N
district	DC20	2016	Vredefort Ngwathe	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC20	2016	Vredefort Ngwathe	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	20,001-30K	1	381	28871	28871	28871	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Welkom Matjhabeng	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	1,501-3K	1	1047	2706	2706	2706	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	3,001-5K	6	3089	3094	3774	3442	34	1	3774
municipality	MAN	2016	Wepener Naledi	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	MAN	2016	Wepener Naledi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	5,001-10K	1	439	9886	9886	9886	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	10,001-20K	2	698	13310	19718	16514	1282	7.8	19718
district	DC18	2016	Wesselsbron Nala	20,001-30K	3	693	20213	25646	22625	-454	-2	\N
district	DC18	2016	Wesselsbron Nala	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	50,001-100K	1	257	53587	53587	53587	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Wesselsbron Nala	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	5,001-10K	9	3735	5731	9890	7393	197	2.7	9890
district	DC18	2016	Winburg Masilonyana	10,001-20K	5	1603	11072	17771	13165	-176	-1.3	\N
district	DC18	2016	Winburg Masilonyana	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC18	2016	Winburg Masilonyana	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	1,501-3K	1	1245	2249	2249	2249	\N	\N	\N
district	DC16	2016	Zastron Mohokare	3,001-5K	3	1688	3302	4303	3796	165	4.3	\N
district	DC16	2016	Zastron Mohokare	5,001-10K	3	969	5392	8582	6438	1062	16.5	\N
district	DC16	2016	Zastron Mohokare	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC16	2016	Zastron Mohokare	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC48	2016	Carletonville Merafong	Under 1.5K	1	211	332	332	332	\N	\N	\N
district	DC48	2016	Carletonville Merafong	1,501-3K	1	27	1852	1852	1852	\N	\N	\N
district	DC48	2016	Carletonville Merafong	3,001-5K	1	293	3413	3413	3413	\N	\N	\N
district	DC48	2016	Carletonville Merafong	5,001-10K	16	7862	5750	10000	7901	31	0.4	\N
district	DC48	2016	Carletonville Merafong	10,001-20K	25	5149	10833	20000	13817	-109	-0.8	14286
district	DC48	2016	Carletonville Merafong	20,001-30K	11	627	20213	28864	24415	128	0.5	\N
district	DC48	2016	Carletonville Merafong	30,001-40K	12	913	30516	38636	34450	-122	-0.4	33333
district	DC48	2016	Carletonville Merafong	40,001-50K	8	1314	40541	48837	45594	-60	-0.1	46653
district	DC48	2016	Carletonville Merafong	50,001-100K	29	1042	51923	100000	71419	150	0.2	66688
district	DC48	2016	Carletonville Merafong	100,001-150K	9	136	103571	140000	121616	1014	0.8	\N
district	DC48	2016	Carletonville Merafong	150,001-200K	3	40	181818	193800	184668	5699	3.1	\N
district	DC48	2016	Carletonville Merafong	200,001-300K	4	160	208333	268657	231649	-2200	-0.9	208333
district	DC48	2016	Carletonville Merafong	300,001-500K	5	83	306923	491667	371103	-6547	-1.8	390000
district	DC48	2016	Carletonville Merafong	500,001-800K	1	12	791667	791667	791667	\N	\N	\N
district	DC48	2016	Carletonville Merafong	800,001-1M	1	20	940000	940000	940000	\N	\N	\N
district	DC48	2016	Carletonville Merafong	Above 1M	3	49	1885385	6546450	4776381	-432762	-9.1	\N
district	DC30	2016	Leandra Gonovan Mbeki	Under 1.5K	1	253	909	909	909	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	5,001-10K	2	382	5618	7059	6338	1441	22.7	\N
district	DC30	2016	Leandra Gonovan Mbeki	10,001-20K	25	6908	10277	18471	14056	39	0.3	\N
district	DC30	2016	Leandra Gonovan Mbeki	20,001-30K	9	1351	20115	27581	23962	56	0.2	\N
district	DC30	2016	Leandra Gonovan Mbeki	30,001-40K	4	1160	33818	39560	36861	580	1.6	\N
district	DC30	2016	Leandra Gonovan Mbeki	40,001-50K	2	648	43796	44880	44421	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	50,001-100K	5	139	58333	73600	62134	2434	3.9	\N
district	DC30	2016	Leandra Gonovan Mbeki	100,001-150K	2	158	125262	133333	129298	2018	1.6	\N
district	DC30	2016	Leandra Gonovan Mbeki	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	200,001-300K	1	20	259750	259750	259750	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Leandra Gonovan Mbeki	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	EKU	2016	Nigel Ekurhuleni	Under 1.5K	2	47	400	455	427	-9	-2.1	\N
municipality	EKU	2016	Nigel Ekurhuleni	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	EKU	2016	Nigel Ekurhuleni	3,001-5K	1	15	3333	3333	3333	\N	\N	\N
municipality	EKU	2016	Nigel Ekurhuleni	5,001-10K	4	620	5218	7042	6003	-68	-1.1	6000
municipality	EKU	2016	Nigel Ekurhuleni	10,001-20K	10	2285	11207	20000	16238	-112	-0.7	\N
municipality	EKU	2016	Nigel Ekurhuleni	20,001-30K	8	990	22222	28571	24693	-67	-0.3	22222
municipality	EKU	2016	Nigel Ekurhuleni	30,001-40K	6	359	30952	38889	34107	1311	3.8	\N
municipality	EKU	2016	Nigel Ekurhuleni	40,001-50K	3	517	42424	50000	46790	-738	-1.6	42424
municipality	EKU	2016	Nigel Ekurhuleni	50,001-100K	12	446	51220	95455	70058	1934	2.8	79545
municipality	EKU	2016	Nigel Ekurhuleni	100,001-150K	4	87	105882	142500	125119	4645	3.7	142500
municipality	EKU	2016	Nigel Ekurhuleni	150,001-200K	2	35	176923	200000	188462	7692	4.1	\N
municipality	EKU	2016	Nigel Ekurhuleni	200,001-300K	4	127	207692	250000	227244	-2885	-1.3	217949
municipality	EKU	2016	Nigel Ekurhuleni	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	EKU	2016	Nigel Ekurhuleni	500,001-800K	1	12	583333	583333	583333	\N	\N	\N
municipality	EKU	2016	Nigel Ekurhuleni	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	EKU	2016	Nigel Ekurhuleni	Above 1M	4	75	1227692	8858025	3413096	-573715	-16.8	2300000
municipality	TSH	2016	Pretoria Tshwane	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	TSH	2016	Pretoria Tshwane	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	TSH	2016	Pretoria Tshwane	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	TSH	2016	Pretoria Tshwane	5,001-10K	6	1680	6047	9545	7820	-261	-3.3	\N
municipality	TSH	2016	Pretoria Tshwane	10,001-20K	19	1858	11765	20000	14838	545	3.7	17872
municipality	TSH	2016	Pretoria Tshwane	20,001-30K	33	1936	20423	30000	25505	229	0.9	\N
municipality	TSH	2016	Pretoria Tshwane	30,001-40K	22	1230	30498	40000	35460	-267	-0.8	33046
municipality	TSH	2016	Pretoria Tshwane	40,001-50K	25	814	40625	50000	45315	87	0.2	45238
municipality	TSH	2016	Pretoria Tshwane	50,001-100K	61	1385	50909	100000	75815	1563	2.1	76102
municipality	TSH	2016	Pretoria Tshwane	100,001-150K	15	266	106667	150000	119719	1097	0.9	130152
municipality	TSH	2016	Pretoria Tshwane	150,001-200K	8	212	153846	200000	173636	-412	-0.2	\N
municipality	TSH	2016	Pretoria Tshwane	200,001-300K	10	311	202381	284615	238346	4639	1.9	233108
municipality	TSH	2016	Pretoria Tshwane	300,001-500K	11	287	302326	500000	357865	-3045	-0.9	333333
municipality	TSH	2016	Pretoria Tshwane	500,001-800K	5	95	526316	703477	600720	21831	3.6	\N
municipality	TSH	2016	Pretoria Tshwane	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	TSH	2016	Pretoria Tshwane	Above 1M	10	174	1032000	10504286	3381043	119416	3.5	\N
district	DC29	2016	Ballito KwaDukuza	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC29	2016	Ballito KwaDukuza	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC29	2016	Ballito KwaDukuza	3,001-5K	1	379	3846	3846	3846	\N	\N	\N
district	DC29	2016	Ballito KwaDukuza	5,001-10K	2	56	6750	10000	8375	-3250	\N	\N
district	DC29	2016	Ballito KwaDukuza	10,001-20K	3	220	10500	17647	13132	-800	-6.1	11250
district	DC29	2016	Ballito KwaDukuza	20,001-30K	5	752	23804	29412	27328	-258	-0.9	\N
district	DC29	2016	Ballito KwaDukuza	30,001-40K	2	180	30281	34459	32370	-696	-2.2	\N
district	DC29	2016	Ballito KwaDukuza	40,001-50K	6	659	42000	50000	46640	-411	-0.9	\N
district	DC29	2016	Ballito KwaDukuza	50,001-100K	10	740	58475	100000	76526	-1006	-1.3	80645
district	DC29	2016	Ballito KwaDukuza	100,001-150K	2	622	109375	117966	117524	\N	\N	117524
district	DC29	2016	Ballito KwaDukuza	150,001-200K	2	43	185185	200000	193798	\N	\N	\N
district	DC29	2016	Ballito KwaDukuza	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC29	2016	Ballito KwaDukuza	300,001-500K	1	13	461538	461538	461538	\N	\N	\N
district	DC29	2016	Ballito KwaDukuza	500,001-800K	2	294	587500	633333	610417	-15278	-2.5	\N
district	DC29	2016	Ballito KwaDukuza	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC29	2016	Ballito KwaDukuza	Above 1M	3	34	9025000	16145000	13264497	-1920335	-14.5	\N
district	DC24	2016	Helpmekaar uMzinyathi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	3,001-5K	1	116	3017	3017	3017	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	5,001-10K	3	2112	5252	7000	6034	521	8.6	\N
district	DC24	2016	Helpmekaar uMzinyathi	10,001-20K	2	824	10292	10456	10340	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC24	2016	Helpmekaar uMzinyathi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	10,001-20K	1	21	12381	12381	12381	\N	\N	\N
district	DC27	2016	Jozini Mkuze	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	30,001-40K	1	14	37294	37294	37294	\N	\N	\N
district	DC27	2016	Jozini Mkuze	40,001-50K	2	451	40962	43578	42270	-872	-2.1	\N
district	DC27	2016	Jozini Mkuze	50,001-100K	1	20	75000	75000	75000	\N	\N	\N
district	DC27	2016	Jozini Mkuze	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	Jozini Mkuze	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Kokstad	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Kokstad	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Kokstad	3,001-5K	1	646	4644	4644	4644	\N	\N	\N
district	DC43	2016	Kokstad	5,001-10K	1	490	8163	8163	8163	\N	\N	\N
district	DC43	2016	Kokstad	10,001-20K	7	7026	11851	18530	14952	-62	-0.4	12361
district	DC43	2016	Kokstad	20,001-30K	3	1545	20404	29499	25364	-551	-2.2	\N
district	DC43	2016	Kokstad	30,001-40K	1	76	36184	36184	36184	\N	\N	\N
district	DC43	2016	Kokstad	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Kokstad	50,001-100K	3	227	58824	96900	77329	-1017	-1.3	\N
district	DC43	2016	Kokstad	100,001-150K	1	18	102222	102222	102222	\N	\N	\N
district	DC43	2016	Kokstad	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Kokstad	200,001-300K	1	10	235000	235000	235000	\N	\N	\N
district	DC43	2016	Kokstad	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Kokstad	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Kokstad	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Kokstad	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	3,001-5K	3	1243	3675	4916	4544	744	16.4	\N
district	DC23	2016	Ladysmith Emnambithi	5,001-10K	10	7065	5801	8447	7032	-44	-0.6	\N
district	DC23	2016	Ladysmith Emnambithi	10,001-20K	5	3075	11180	15544	13457	522	3.9	\N
district	DC23	2016	Ladysmith Emnambithi	20,001-30K	2	122	20152	20513	20332	-361	-1.8	\N
district	DC23	2016	Ladysmith Emnambithi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	40,001-50K	1	133	43609	43609	43609	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	50,001-100K	2	87	52083	98718	75401	-11659	-15.5	\N
district	DC23	2016	Ladysmith Emnambithi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	200,001-300K	1	20	210000	210000	210000	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC23	2016	Ladysmith Emnambithi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	1,501-3K	1	1836	2042	2042	2042	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	5,001-10K	2	1885	5743	9553	6737	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	10,001-20K	2	2642	15625	17552	16588	-385	-2.3	\N
district	DC26	2016	Louwsburg Abaqulusi	20,001-30K	1	5900	28903	28903	28903	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	100,001-150K	4	389	102649	136074	113858	1174	1	106617
district	DC26	2016	Louwsburg Abaqulusi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Louwsburg Abaqulusi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Newcastle	Under 1.5K	1	2035	1400	1400	1400	\N	\N	\N
district	DC25	2016	Newcastle	1,501-3K	2	60	1523	2500	2011	-140	-6.9	\N
district	DC25	2016	Newcastle	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Newcastle	5,001-10K	7	2734	5702	9697	8417	-203	-2.4	\N
district	DC25	2016	Newcastle	10,001-20K	7	1745	11561	18024	14377	-133	-0.9	\N
district	DC25	2016	Newcastle	20,001-30K	3	587	20173	30000	24414	-1005	-4.1	20173
district	DC25	2016	Newcastle	30,001-40K	1	13	33846	33846	33846	\N	\N	\N
district	DC25	2016	Newcastle	40,001-50K	1	63	43651	43651	43651	\N	\N	\N
district	DC25	2016	Newcastle	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Newcastle	100,001-150K	1	33	121212	121212	121212	\N	\N	\N
district	DC25	2016	Newcastle	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Newcastle	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Newcastle	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Newcastle	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Newcastle	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Newcastle	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC22	2016	Pietermaritzburg Msunduzi	Under 1.5K	3	844	100	1092	596	-992	\N	100
district	DC22	2016	Pietermaritzburg Msunduzi	1,501-3K	1	253	2767	2767	2767	\N	\N	\N
district	DC22	2016	Pietermaritzburg Msunduzi	3,001-5K	1	206	3641	3641	3641	\N	\N	\N
district	DC22	2016	Pietermaritzburg Msunduzi	5,001-10K	4	2171	6836	9658	8141	-19	-0.2	\N
district	DC22	2016	Pietermaritzburg Msunduzi	10,001-20K	11	2207	10101	19841	13327	138	1	12292
district	DC22	2016	Pietermaritzburg Msunduzi	20,001-30K	12	1317	20253	30000	25263	-4	0	\N
district	DC22	2016	Pietermaritzburg Msunduzi	30,001-40K	6	1800	31707	37999	34768	-477	-1.4	\N
district	DC22	2016	Pietermaritzburg Msunduzi	40,001-50K	3	725	49878	50000	49959	-7	0	\N
district	DC22	2016	Pietermaritzburg Msunduzi	50,001-100K	28	8407	51786	95000	68041	103	0.2	66438
district	DC22	2016	Pietermaritzburg Msunduzi	100,001-150K	15	505	102381	150000	124260	-1889	-1.5	\N
district	DC22	2016	Pietermaritzburg Msunduzi	150,001-200K	8	257	157143	195093	172518	910	0.5	\N
district	DC22	2016	Pietermaritzburg Msunduzi	200,001-300K	12	286	220000	300000	257099	-500	-0.2	262069
district	DC22	2016	Pietermaritzburg Msunduzi	300,001-500K	6	217	333333	445485	381212	8157	2.1	\N
district	DC22	2016	Pietermaritzburg Msunduzi	500,001-800K	1	12	708333	708333	708333	\N	\N	708333
district	DC22	2016	Pietermaritzburg Msunduzi	800,001-1M	1	19	882000	882000	882000	\N	\N	\N
district	DC22	2016	Pietermaritzburg Msunduzi	Above 1M	2	24	2166000	17142857	9654429	-7488429	\N	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	1,501-3K	3	545	1956	2577	2270	205	9	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	5,001-10K	4	1059	6386	8647	7715	218	2.8	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	10,001-20K	5	248	10074	17895	14519	-242	-1.7	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	20,001-30K	3	1238	24390	30000	26580	305	1.1	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	40,001-50K	5	142	41000	50000	43457	-243	-0.6	43902
district	DC21	2016	Port Shepstone Ray Nkonyeni	50,001-100K	8	243	55556	90909	71408	2905	4.1	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	100,001-150K	3	99	103704	146774	113310	-6404	-5.7	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	150,001-200K	1	23	165859	165859	165859	\N	\N	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	200,001-300K	1	15	210000	210000	210000	\N	\N	210000
district	DC21	2016	Port Shepstone Ray Nkonyeni	300,001-500K	2	31	350000	419048	384524	-17262	-4.5	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	Under 1.5K	1	64	469	469	469	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	30,001-40K	1	81	30864	30864	30864	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	50,001-100K	2	194	55556	78571	67063	-2557	-3.8	\N
district	DC27	2016	St Lucia Mtubatuba	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC27	2016	St Lucia Mtubatuba	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Ulundi	Under 1.5K	1	10287	73	73	73	\N	\N	\N
district	DC26	2016	Ulundi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Ulundi	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Ulundi	5,001-10K	1	122	6749	6749	6749	\N	\N	\N
district	DC26	2016	Ulundi	10,001-20K	7	4918	10069	15779	12938	377	2.9	14858
district	DC26	2016	Ulundi	20,001-30K	1	22	22727	22727	22727	\N	\N	\N
district	DC26	2016	Ulundi	30,001-40K	1	111	39640	39640	39640	\N	\N	\N
district	DC26	2016	Ulundi	40,001-50K	2	73	45652	46895	46274	-414	-0.9	\N
district	DC26	2016	Ulundi	50,001-100K	2	461	50325	83999	67162	-8419	-12.5	\N
district	DC26	2016	Ulundi	100,001-150K	1	127	114173	114173	114173	\N	\N	\N
district	DC26	2016	Ulundi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Ulundi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Ulundi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Ulundi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Ulundi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Ulundi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Underberg KwaSani	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Underberg KwaSani	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Underberg KwaSani	3,001-5K	1	410	4878	4878	4878	\N	\N	\N
district	DC43	2016	Underberg KwaSani	5,001-10K	4	3833	6091	9535	7770	218	2.8	8464
district	DC43	2016	Underberg KwaSani	10,001-20K	7	2186	11549	19168	13631	-475	-3.5	12547
district	DC43	2016	Underberg KwaSani	20,001-30K	8	1118	21818	28302	24978	132	0.5	\N
district	DC43	2016	Underberg KwaSani	30,001-40K	4	1006	30612	39583	34708	63	0.2	\N
district	DC43	2016	Underberg KwaSani	40,001-50K	4	983	42683	47554	45774	-156	-0.3	47554
district	DC43	2016	Underberg KwaSani	50,001-100K	8	5134	53333	94078	72088	521	0.7	\N
district	DC43	2016	Underberg KwaSani	100,001-150K	8	297	101449	148696	122555	-1608	-1.3	104818
district	DC43	2016	Underberg KwaSani	150,001-200K	1	21	164286	164286	164286	\N	\N	\N
district	DC43	2016	Underberg KwaSani	200,001-300K	2	25	218182	264286	241234	23052	9.6	\N
district	DC43	2016	Underberg KwaSani	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Underberg KwaSani	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Underberg KwaSani	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC43	2016	Underberg KwaSani	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	Under 1.5K	1	389	1350	1350	1350	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	1,501-3K	1	22	2909	2909	2909	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	3,001-5K	8	3675	3213	4418	3725	51	1.4	\N
district	DC25	2016	Utrecht eMadlangeni	5,001-10K	9	6003	5240	9827	7741	-162	-2.1	\N
district	DC25	2016	Utrecht eMadlangeni	10,001-20K	12	7689	10112	16667	13107	142	1.1	13473
district	DC25	2016	Utrecht eMadlangeni	20,001-30K	3	1905	24798	30000	27076	-696	-2.6	\N
district	DC25	2016	Utrecht eMadlangeni	30,001-40K	1	225	33333	33333	33333	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	50,001-100K	2	46	59048	68000	63524	-1790	-2.8	\N
district	DC25	2016	Utrecht eMadlangeni	100,001-150K	1	20	125000	125000	125000	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC25	2016	Utrecht eMadlangeni	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	5,001-10K	1	1041	7205	7205	7205	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC26	2016	Vryheid Abaqulusi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Alldays Blouberg	Under 1.5K	1	117	117	117	117	\N	\N	\N
district	DC35	2016	Alldays Blouberg	1,501-3K	2	1548	2000	2933	2466	155	6.3	\N
district	DC35	2016	Alldays Blouberg	3,001-5K	8	9230	3046	4931	4167	-3	-0.1	4324
district	DC35	2016	Alldays Blouberg	5,001-10K	9	4652	5214	9225	7083	-119	-1.7	5214
district	DC35	2016	Alldays Blouberg	10,001-20K	3	1479	10320	18286	15293	-1914	-12.5	\N
district	DC35	2016	Alldays Blouberg	20,001-30K	2	816	20455	21795	21125	-1340	-6.3	\N
district	DC35	2016	Alldays Blouberg	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Alldays Blouberg	40,001-50K	3	86	41860	44286	43109	-281	-0.7	\N
district	DC35	2016	Alldays Blouberg	50,001-100K	2	59	65789	71429	68609	705	1	\N
district	DC35	2016	Alldays Blouberg	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Alldays Blouberg	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Alldays Blouberg	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Alldays Blouberg	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Alldays Blouberg	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Alldays Blouberg	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Alldays Blouberg	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC47	2016	Burgersfort Thubatse	Under 1.5K	2	4006	99	1000	549	180	\N	\N
district	DC47	2016	Burgersfort Thubatse	1,501-3K	1	831	1805	1805	1805	\N	\N	\N
district	DC47	2016	Burgersfort Thubatse	3,001-5K	3	1716	3050	4258	3741	102	2.7	\N
district	DC47	2016	Burgersfort Thubatse	5,001-10K	3	1708	6505	9148	7461	-324	-4.3	\N
district	DC47	2016	Burgersfort Thubatse	10,001-20K	6	3177	10360	17077	13910	506	3.6	\N
district	DC34	2016	Musina	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC47	2016	Burgersfort Thubatse	20,001-30K	4	1179	21359	25578	22918	-242	-1.1	21359
district	DC47	2016	Burgersfort Thubatse	30,001-40K	2	132	33043	39683	36363	-6639	-18.3	\N
district	DC47	2016	Burgersfort Thubatse	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC47	2016	Burgersfort Thubatse	50,001-100K	14	783	52381	90909	75077	607	0.8	83333
district	DC47	2016	Burgersfort Thubatse	100,001-150K	3	232	103448	137363	118366	-724	-0.6	\N
district	DC47	2016	Burgersfort Thubatse	150,001-200K	4	464	150299	190909	159953	1738	1.1	\N
district	DC47	2016	Burgersfort Thubatse	200,001-300K	2	149	225275	227418	226346	-1072	-0.5	\N
district	DC47	2016	Burgersfort Thubatse	300,001-500K	2	41	369565	399000	384283	4906	1.3	\N
district	DC47	2016	Burgersfort Thubatse	500,001-800K	1	374	690409	690409	690409	\N	\N	\N
district	DC47	2016	Burgersfort Thubatse	800,001-1M	1	58	948276	948276	948276	\N	\N	\N
district	DC47	2016	Burgersfort Thubatse	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	3,001-5K	5	1329	3333	4439	3984	-17	-0.4	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	5,001-10K	14	11435	5126	9944	7334	-172	-2.3	7345
district	DC34	2016	Dendron Makhado (Louis Trichardt)	10,001-20K	12	3378	10031	17763	13734	-362	-2.6	10732
district	DC34	2016	Dendron Makhado (Louis Trichardt)	20,001-30K	4	513	24762	26360	25883	132	0.5	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	30,001-40K	3	385	32914	37143	34786	-367	-1.1	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	40,001-50K	2	97	41071	43902	42487	1416	3.3	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	50,001-100K	15	604	72581	100000	86232	-357	-0.4	84615
district	DC34	2016	Dendron Makhado (Louis Trichardt)	100,001-150K	7	267	100719	150000	131727	-1034	-0.8	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	150,001-200K	4	80	160000	190000	176421	-131	-0.1	182609
district	DC34	2016	Dendron Makhado (Louis Trichardt)	200,001-300K	1	31	239032	239032	239032	\N	\N	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	300,001-500K	1	22	363636	363636	363636	\N	\N	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Dendron Makhado (Louis Trichardt)	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	1,501-3K	1	1087	1557	1557	1557	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	3,001-5K	3	1185	3509	4051	3791	520	13.7	\N
district	DC36	2016	Ellisras Lephalale	5,001-10K	10	8789	5309	9334	6842	-72	-1.1	6111
district	DC36	2016	Ellisras Lephalale	10,001-20K	11	5859	10078	16796	12949	-331	-2.6	13338
district	DC36	2016	Ellisras Lephalale	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	30,001-40K	1	338	32544	32544	32544	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	40,001-50K	1	23	43478	43478	43478	\N	\N	43478
district	DC36	2016	Ellisras Lephalale	50,001-100K	2	67	50213	52381	51297	1084	2.1	\N
district	DC36	2016	Ellisras Lephalale	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	300,001-500K	1	22	340909	340909	340909	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Ellisras Lephalale	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	1,501-3K	1	446	2993	2993	2993	\N	\N	\N
district	DC36	2016	Marken	3,001-5K	2	1279	3967	4233	4100	-33	-0.8	\N
district	DC36	2016	Marken	5,001-10K	10	10801	5882	9709	7546	89	1.2	8048
district	DC36	2016	Marken	10,001-20K	3	2485	10358	18328	13071	-255	-1.9	\N
district	DC36	2016	Marken	20,001-30K	6	2859	20761	26852	23977	-638	-2.7	\N
district	DC36	2016	Marken	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	50,001-100K	1	93	69892	69892	69892	\N	\N	\N
district	DC36	2016	Marken	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Marken	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	Under 1.5K	1	56	18	18	18	\N	\N	\N
district	DC34	2016	Musina	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	3,001-5K	1	264	3788	3788	3788	\N	\N	\N
district	DC34	2016	Musina	5,001-10K	1	21	5714	5714	5714	\N	\N	\N
district	DC34	2016	Musina	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	30,001-40K	1	258	31008	31008	31008	\N	\N	\N
district	DC34	2016	Musina	40,001-50K	1	73	43836	43836	43836	\N	\N	\N
district	DC34	2016	Musina	50,001-100K	1	100	56000	56000	56000	\N	\N	\N
district	DC34	2016	Musina	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC34	2016	Musina	Above 1M	1	157	2615732	2615732	2615732	\N	\N	\N
district	DC36	2016	Nylstroom Modimolle	Under 1.5K	2	418	810	1220	1015	-137	-13.5	\N
district	DC36	2016	Nylstroom Modimolle	1,501-3K	2	2104	2203	2395	2299	21	0.9	2395
district	DC36	2016	Nylstroom Modimolle	3,001-5K	2	418	4286	4412	4349	-21	-0.5	\N
district	DC36	2016	Nylstroom Modimolle	5,001-10K	14	7802	5507	9719	7220	-247	-3.4	\N
district	DC36	2016	Nylstroom Modimolle	10,001-20K	32	9044	10325	20000	15150	29	0.2	18135
district	DC36	2016	Nylstroom Modimolle	20,001-30K	24	6799	20086	29688	24060	-46	-0.2	24059
district	DC36	2016	Nylstroom Modimolle	30,001-40K	11	1178	31183	40000	35778	-209	-0.6	\N
district	DC36	2016	Nylstroom Modimolle	40,001-50K	15	470	40952	50000	45817	468	1	\N
district	DC36	2016	Nylstroom Modimolle	50,001-100K	29	682	50476	100000	70869	1292	1.8	79014
district	DC36	2016	Nylstroom Modimolle	100,001-150K	7	118	109857	141667	122165	-2880	-2.4	\N
district	DC36	2016	Nylstroom Modimolle	150,001-200K	1	11	163636	163636	163636	\N	\N	\N
district	DC36	2016	Nylstroom Modimolle	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Nylstroom Modimolle	300,001-500K	1	17	335294	335294	335294	\N	\N	\N
district	DC36	2016	Nylstroom Modimolle	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Nylstroom Modimolle	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Nylstroom Modimolle	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	20,001-30K	1	21	20048	20048	20048	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	50,001-100K	3	63	64286	100000	84921	8883	10.5	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	100,001-150K	1	21	117000	117000	117000	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	3,001-5K	1	1632	3983	3983	3983	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	5,001-10K	4	1861	7018	9943	8841	-357	-4	7018
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	10,001-20K	6	4285	10934	19274	13418	274	2	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	20,001-30K	2	886	24010	26600	25305	-259	-1	24010
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	30,001-40K	3	182	31373	38095	33762	554	1.6	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	40,001-50K	1	42	45595	45595	45595	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	50,001-100K	4	80	54545	71429	65799	1126	1.7	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	100,001-150K	1	335	119403	119403	119403	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	Under 1.5K	1	322	1398	1398	1398	\N	\N	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	1,501-3K	1	74	1505	1505	1505	\N	\N	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	5,001-10K	1	592	7179	7179	7179	\N	\N	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	10,001-20K	8	1396	11118	19500	14431	344	2.4	15714
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	20,001-30K	11	1517	20305	28148	24041	41	0.2	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	30,001-40K	2	51	33333	40000	36667	3333	9.1	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	40,001-50K	4	105	41429	47619	45159	-318	-0.7	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	50,001-100K	20	842	51200	94118	71078	-910	-1.3	53889
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	100,001-150K	2	72	112903	146341	129622	-3715	-2.9	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	150,001-200K	4	80	163636	191463	176389	-2099	-1.2	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	200,001-300K	5	78	218750	285714	268616	-4891	-1.8	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	300,001-500K	1	39	346154	346154	346154	\N	\N	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	500,001-800K	1	13	538462	538462	538462	\N	\N	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Thabazimbi	Under 1.5K	2	2078	522	1023	1016	\N	\N	\N
district	DC36	2016	Thabazimbi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Thabazimbi	3,001-5K	1	16	5000	5000	5000	\N	\N	\N
district	DC36	2016	Thabazimbi	5,001-10K	14	6816	5251	10000	7662	-128	-1.7	\N
district	DC36	2016	Thabazimbi	10,001-20K	18	11718	10089	18182	14805	-68	-0.5	14298
district	DC36	2016	Thabazimbi	20,001-30K	3	440	20690	26316	23960	-953	-4	\N
district	DC36	2016	Thabazimbi	30,001-40K	3	1023	30550	34091	32658	-326	-1	\N
district	DC36	2016	Thabazimbi	40,001-50K	1	140	50000	50000	50000	\N	\N	\N
district	DC36	2016	Thabazimbi	50,001-100K	10	1533	51429	93923	65923	-259	-0.4	\N
district	DC36	2016	Thabazimbi	100,001-150K	1	11	109091	109091	109091	\N	\N	\N
district	DC36	2016	Thabazimbi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Thabazimbi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Thabazimbi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Thabazimbi	500,001-800K	2	22	570000	766650	668325	65550	9.8	\N
district	DC36	2016	Thabazimbi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC36	2016	Thabazimbi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	3,001-5K	3	2028	3369	5000	4442	-408	-9.2	\N
district	DC35	2016	Usutu	5,001-10K	2	1820	8307	9918	9113	537	5.9	\N
district	DC35	2016	Usutu	10,001-20K	1	141	10638	10638	10638	\N	\N	\N
district	DC35	2016	Usutu	20,001-30K	1	949	24236	24236	24236	\N	\N	\N
district	DC35	2016	Usutu	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC35	2016	Usutu	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	50,001-100K	1	475	50400	50400	50400	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Acornhoek Bushbuckridge	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Amsterdam Mkhondo	Under 1.5K	1	99	1485	1485	1485	\N	\N	\N
district	DC30	2016	Amsterdam Mkhondo	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Amsterdam Mkhondo	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Amsterdam Mkhondo	5,001-10K	4	1604	7092	9677	8781	-133	-1.5	\N
district	DC30	2016	Amsterdam Mkhondo	10,001-20K	14	7571	10074	19474	14108	90	0.6	16106
district	DC30	2016	Amsterdam Mkhondo	20,001-30K	2	2838	20819	21739	21279	115	0.5	\N
district	DC30	2016	Amsterdam Mkhondo	30,001-40K	4	1700	30027	32942	31329	266	0.8	32942
district	DC30	2016	Amsterdam Mkhondo	40,001-50K	3	81	44444	50000	46296	529	1.1	\N
district	DC30	2016	Amsterdam Mkhondo	50,001-100K	3	66	61364	95455	86364	-3636	-4.2	\N
district	DC30	2016	Amsterdam Mkhondo	100,001-150K	7	382	104167	149194	123773	3068	2.5	126214
district	DC30	2016	Amsterdam Mkhondo	150,001-200K	2	44	154545	200000	177273	22727	12.8	\N
district	DC30	2016	Amsterdam Mkhondo	200,001-300K	3	51	275397	300000	284800	7287	2.6	\N
district	DC30	2016	Amsterdam Mkhondo	300,001-500K	2	25	400000	492000	446000	-46000	-10.3	\N
district	DC30	2016	Amsterdam Mkhondo	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Amsterdam Mkhondo	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Amsterdam Mkhondo	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Bethal Gonovan Mbeki	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Bethal Gonovan Mbeki	1,501-3K	1	396	2071	2071	2071	\N	\N	\N
district	DC30	2016	Bethal Gonovan Mbeki	3,001-5K	3	840	4329	4878	4627	-172	-3.7	\N
district	DC30	2016	Bethal Gonovan Mbeki	5,001-10K	12	2935	6870	9468	8395	153	1.8	\N
district	DC30	2016	Bethal Gonovan Mbeki	10,001-20K	22	8216	10009	19200	13898	58	0.4	17572
district	DC30	2016	Bethal Gonovan Mbeki	20,001-30K	16	3390	20127	29762	25109	385	1.5	28846
district	DC30	2016	Bethal Gonovan Mbeki	30,001-40K	11	3790	30385	39962	35274	644	1.8	\N
district	DC30	2016	Bethal Gonovan Mbeki	40,001-50K	11	2397	42028	49626	44382	-481	-1.1	42105
district	DC30	2016	Bethal Gonovan Mbeki	50,001-100K	2	98	75031	92593	83812	5854	7	\N
district	DC30	2016	Bethal Gonovan Mbeki	100,001-150K	2	201	130682	131285	130983	-60	0	130682
district	DC30	2016	Bethal Gonovan Mbeki	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Bethal Gonovan Mbeki	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Bethal Gonovan Mbeki	300,001-500K	1	23	303339	303339	303339	\N	\N	\N
district	DC30	2016	Bethal Gonovan Mbeki	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Bethal Gonovan Mbeki	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC30	2016	Bethal Gonovan Mbeki	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	1,501-3K	1	291	2577	2577	2577	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	5,001-10K	6	975	5650	10000	8145	485	6	10000
district	DC32	2016	Komatipoort Nkomazi	10,001-20K	4	1048	14019	20000	17498	110	0.6	\N
district	DC32	2016	Komatipoort Nkomazi	20,001-30K	1	184	21196	21196	21196	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	30,001-40K	1	157	32484	32484	32484	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	50,001-100K	5	4690	50209	76923	66751	-1148	-1.7	\N
district	DC32	2016	Komatipoort Nkomazi	100,001-150K	6	473	112500	139738	123686	-224	-0.2	\N
district	DC32	2016	Komatipoort Nkomazi	150,001-200K	6	366	150754	176471	160989	2277	1.4	\N
district	DC32	2016	Komatipoort Nkomazi	200,001-300K	2	57	203704	245000	224352	-20648	-9.2	\N
district	DC32	2016	Komatipoort Nkomazi	300,001-500K	2	103	307692	350649	329171	42957	13.1	\N
district	DC32	2016	Komatipoort Nkomazi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Komatipoort Nkomazi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	Under 1.5K	2	706	\N	79	2	\N	\N	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	1,501-3K	4	614	1871	2903	2410	67	2.8	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	3,001-5K	8	1808	3299	5000	4233	13	0.3	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	5,001-10K	24	10042	5102	10000	8628	-2	0	7646
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	10,001-20K	24	4768	11200	19663	14709	116	0.8	15625
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	20,001-30K	16	9937	22313	29557	26285	251	1	28571
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	30,001-40K	11	1308	32333	39783	36526	377	1	37725
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	40,001-50K	5	805	40434	50000	44534	753	1.7	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	50,001-100K	16	1791	53864	93940	71096	42	0.1	61471
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	100,001-150K	14	1609	105038	147619	126772	-103	-0.1	131016
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	150,001-200K	4	204	156250	191304	167862	-8806	-5.2	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	200,001-300K	5	443	223881	285714	249606	2148	0.9	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	300,001-500K	2	316	334603	385246	359924	-16881	-4.7	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	500,001-800K	1	11	519545	519545	519545	\N	\N	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Nelspruit Mbombela	Under 1.5K	1	1000	1200	1200	1200	\N	\N	\N
district	DC32	2016	Nelspruit Mbombela	1,501-3K	3	502	2336	2564	2472	38	1.5	2564
district	DC32	2016	Nelspruit Mbombela	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Nelspruit Mbombela	5,001-10K	20	9908	5126	9926	8207	-89	-1.1	9857
district	DC32	2016	Nelspruit Mbombela	10,001-20K	20	5289	10526	20000	14546	141	1	15152
district	DC32	2016	Nelspruit Mbombela	20,001-30K	10	817	20400	30000	25976	-306	-1.2	21739
district	DC32	2016	Nelspruit Mbombela	30,001-40K	6	618	30303	39138	35060	260	0.7	34250
district	DC32	2016	Nelspruit Mbombela	40,001-50K	9	889	40580	50000	45164	-127	-0.3	49206
district	DC32	2016	Nelspruit Mbombela	50,001-100K	14	508	58140	100000	79353	1184	1.5	76190
district	DC32	2016	Nelspruit Mbombela	100,001-150K	5	133	109524	145161	124705	2415	1.9	\N
district	DC32	2016	Nelspruit Mbombela	150,001-200K	6	142	171429	195238	179679	2894	1.6	195238
district	DC32	2016	Nelspruit Mbombela	200,001-300K	3	76	214286	272727	245671	-29221	-11.9	\N
district	DC32	2016	Nelspruit Mbombela	300,001-500K	4	177	328947	383333	357132	-1917	-0.5	380952
district	DC32	2016	Nelspruit Mbombela	500,001-800K	2	34	500952	552462	526707	25755	4.9	\N
district	DC32	2016	Nelspruit Mbombela	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC32	2016	Nelspruit Mbombela	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	Under 1.5K	1	2017	992	992	992	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	1,501-3K	2	1822	2326	2875	2601	91	3.5	\N
district	DC9	2016	Barkley-Wes Dikgatlong	3,001-5K	3	4205	3607	4463	3939	-72	-1.8	\N
district	DC9	2016	Barkley-Wes Dikgatlong	5,001-10K	7	7520	5297	7779	6322	-103	-1.6	\N
district	DC9	2016	Barkley-Wes Dikgatlong	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Barkley-Wes Dikgatlong	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	Under 1.5K	5	25207	124	1403	942	-12	-1.3	\N
district	DC7	2016	Britstown	1,501-3K	9	40869	1625	2204	1934	24	1.2	\N
district	DC7	2016	Britstown	3,001-5K	1	829	4101	4101	4101	\N	\N	\N
district	DC7	2016	Britstown	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Britstown	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	Under 1.5K	11	29400	364	1300	863	-27	-3.1	\N
district	DC6	2016	Calvinia Hantam	1,501-3K	5	12700	1750	2871	2312	-113	-4.9	\N
district	DC6	2016	Calvinia Hantam	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Calvinia Hantam	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	Under 1.5K	1	2030	133	133	133	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	1,501-3K	8	36575	1667	2466	2313	15	0.7	\N
district	DC7	2016	Carnavon Kareeberg	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Carnavon Kareeberg	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	Under 1.5K	2	7734	776	893	835	29	3.5	\N
district	DC7	2016	Colesberg Umsombomvu	1,501-3K	6	16558	1731	2933	2367	105	4.4	2649
district	DC7	2016	Colesberg Umsombomvu	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	5,001-10K	1	3275	5115	5115	5115	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Colesberg Umsombomvu	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	3,001-5K	1	707	4243	4243	4243	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	100,001-150K	1	57	120000	120000	120000	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	150,001-200K	3	139	152174	184783	170535	-28495	-16.7	\N
district	DC7	2016	Douglas Siyancuma	200,001-300K	1	39	256410	256410	256410	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Douglas Siyancuma	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	Under 1.5K	4	19598	735	1337	1020	-12	-1.1	1008
district	DC6	2016	Fraserburg Karoo Hoogland	1,501-3K	3	6461	1619	2487	2089	42	2	\N
district	DC6	2016	Fraserburg Karoo Hoogland	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Fraserburg Karoo Hoogland	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Gordonia	Under 1.5K	8	33314	6	1005	598	-88	-14.7	\N
district	DC6	2016	Gordonia	1,501-3K	14	64579	1792	2750	2282	-54	-2.4	1792
district	DC6	2016	Gordonia	3,001-5K	4	13469	3135	3998	3452	-14	-0.4	\N
district	DC6	2016	Gordonia	5,001-10K	1	359	5014	5014	5014	\N	\N	\N
district	DC6	2016	Gordonia	10,001-20K	1	23	10409	10409	10409	\N	\N	\N
district	DC6	2016	Gordonia	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Gordonia	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Gordonia	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Gordonia	50,001-100K	1	14	85714	85714	85714	\N	\N	\N
district	DC6	2016	Gordonia	100,001-150K	1	22	113636	113636	113636	\N	\N	\N
district	DC6	2016	Gordonia	150,001-200K	1	16	156250	156250	156250	\N	\N	\N
district	DC6	2016	Gordonia	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Gordonia	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Gordonia	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Gordonia	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Gordonia	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	1,501-3K	2	5401	2440	2983	2629	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	3,001-5K	1	857	3991	3991	3991	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	5,001-10K	1	2218	5937	5937	5937	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hanover Emthanjeni	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	1,501-3K	3	9105	2484	2800	2607	35	1.4	\N
district	DC7	2016	Hopetown Thembelihle	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	5,001-10K	1	491	9165	9165	9165	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	20,001-30K	1	491	21413	21413	21413	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	100,001-150K	1	423	103546	103546	103546	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	150,001-200K	2	892	184799	188688	186743	1296	0.7	\N
district	DC7	2016	Hopetown Thembelihle	200,001-300K	1	278	260288	260288	260288	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Hopetown Thembelihle	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	Under 1.5K	14	97346	2	1222	766	58	7.6	\N
district	DC8	2016	Kenhardt Kai !Garib	1,501-3K	2	8154	1508	2005	1757	-248	-14.1	\N
district	DC8	2016	Kenhardt Kai !Garib	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	5,001-10K	1	852	9002	9002	9002	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	10,001-20K	1	44	19205	19205	19205	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	20,001-30K	1	10	30000	30000	30000	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	50,001-100K	1	12	95833	95833	95833	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	100,001-150K	1	27	102963	102963	102963	\N	\N	102963
district	DC8	2016	Kenhardt Kai !Garib	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	200,001-300K	2	45	222727	267647	245187	-22460	-9.2	\N
district	DC8	2016	Kenhardt Kai !Garib	300,001-500K	1	12	325000	325000	325000	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC8	2016	Kenhardt Kai !Garib	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	Under 1.5K	1	4323	1450	1450	1450	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	1,501-3K	11	25692	1800	3000	2556	36	1.4	2673
district	DC7	2016	Prieska Siyathemba	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	3,001-5K	14	30246	3500	4831	3876	1	0	\N
district	DC9	2016	Kimberley / HAY Frances Baard	5,001-10K	6	2886	5333	10000	8315	-201	-2.4	\N
district	DC9	2016	Kimberley / HAY Frances Baard	10,001-20K	3	917	12657	14322	13302	379	2.9	14322
district	DC9	2016	Kimberley / HAY Frances Baard	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	50,001-100K	5	477	51282	80519	62155	-2315	-3.7	51282
district	DC9	2016	Kimberley / HAY Frances Baard	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	150,001-200K	1	29	163971	163971	163971	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	200,001-300K	1	86	290698	290698	290698	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Kimberley / HAY Frances Baard	Above 1M	1	46	1086957	1086957	1086957	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	Under 1.5K	3	2250	132	1264	621	35	5.6	\N
district	DC45	2016	Kuruman Ga-Segonyana	1,501-3K	10	31409	1723	2762	2198	-26	-1.2	\N
district	DC45	2016	Kuruman Ga-Segonyana	3,001-5K	6	12386	3400	4764	4044	-51	-1.3	\N
district	DC45	2016	Kuruman Ga-Segonyana	5,001-10K	11	8637	5142	7980	6327	56	0.9	6770
district	DC45	2016	Kuruman Ga-Segonyana	10,001-20K	1	712	10534	10534	10534	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	50,001-100K	1	60	54000	54000	54000	\N	\N	54000
district	DC45	2016	Kuruman Ga-Segonyana	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	200,001-300K	1	300	266667	266667	266667	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC45	2016	Kuruman Ga-Segonyana	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	Under 1.5K	13	46362	80	1202	497	-15	-3	284
district	DC6	2016	Namakwa	1,501-3K	3	12989	1824	2318	2076	15	0.7	\N
district	DC6	2016	Namakwa	3,001-5K	1	322	3540	3540	3540	\N	\N	\N
district	DC6	2016	Namakwa	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	10,001-20K	1	38	18421	18421	18421	\N	\N	\N
district	DC6	2016	Namakwa	20,001-30K	1	39	28205	28205	28205	\N	\N	\N
district	DC6	2016	Namakwa	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	50,001-100K	1	24	54167	54167	54167	\N	\N	\N
district	DC6	2016	Namakwa	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Namakwa	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	Under 1.5K	3	7676	186	1178	648	-132	-20.4	\N
district	DC7	2016	Phillipstown Renosterberg	1,501-3K	1	3431	2477	2477	2477	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	10,001-20K	2	1251	10004	12249	11127	374	3.4	\N
district	DC7	2016	Phillipstown Renosterberg	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Phillipstown Renosterberg	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	Under 1.5K	1	1875	1000	1000	1000	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	1,501-3K	4	16382	1524	2396	1838	-121	-6.6	\N
district	DC7	2016	Prieska Siyathemba	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Prieska Siyathemba	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	3,001-5K	1	175	3182	3182	3182	\N	\N	\N
district	DC7	2016	Richmond	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Richmond	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	Under 1.5K	5	19901	750	1304	1118	-6	-0.5	\N
district	DC6	2016	Sutherland	1,501-3K	2	4178	2281	2788	2535	127	5	2788
district	DC6	2016	Sutherland	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC6	2016	Sutherland	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	50,001-100K	2	266	60417	65769	63093	-1784	-2.8	\N
district	DC9	2016	Vaalharts Phokwane	100,001-150K	3	135	111111	145827	116372	3507	3	\N
district	DC9	2016	Vaalharts Phokwane	150,001-200K	2	78	192308	192308	192308	\N	0	\N
district	DC9	2016	Vaalharts Phokwane	200,001-300K	11	337	211077	288462	245068	1168	0.5	241176
district	DC9	2016	Vaalharts Phokwane	300,001-500K	11	405	302000	367647	331411	-518	-0.2	\N
district	DC9	2016	Vaalharts Phokwane	500,001-800K	2	39	540278	642857	591567	-17097	-2.9	\N
district	DC9	2016	Vaalharts Phokwane	800,001-1M	2	33	937500	941176	939394	\N	\N	\N
district	DC9	2016	Vaalharts Phokwane	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	1,501-3K	2	9951	2077	2694	2386	-77	-3.2	\N
district	DC7	2016	Victoria-Wes Umbuntu	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	5,001-10K	1	2034	6288	6288	6288	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC7	2016	Victoria-Wes Umbuntu	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	1,501-3K	2	675	1509	2813	2161	1303	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	3,001-5K	9	2589	3049	5000	4088	117	2.9	4000
district	DC39	2016	Bloemhof Lekwa-Tecma	5,001-10K	13	7342	5528	9813	7045	-63	-0.9	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	10,001-20K	8	3352	10283	17967	12426	-282	-2.3	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	20,001-30K	4	88	22727	29545	26355	539	2	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	30,001-40K	3	85	35714	38372	37043	532	1.4	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	40,001-50K	2	37	44118	45000	44559	-441	-1	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	50,001-100K	1	116	90517	90517	90517	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bloemhof Lekwa-Tecma	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	3,001-5K	4	10752	3306	4998	4269	226	5.3	\N
district	DC39	2016	Bray Kagisano-Molopo	5,001-10K	4	4467	5251	7976	6301	150	2.4	\N
district	DC39	2016	Bray Kagisano-Molopo	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Bray Kagisano-Molopo	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	1,501-3K	1	277	1805	1805	1805	\N	\N	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	3,001-5K	5	2224	3856	4705	4263	-91	-2.1	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	5,001-10K	17	6818	5072	10000	7522	-37	-0.5	8913
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	10,001-20K	24	6046	10005	20000	13999	-279	-2	13480
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	20,001-30K	9	3310	21543	26293	23602	-106	-0.4	23558
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	30,001-40K	4	145	32353	36000	34958	-167	-0.5	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	40,001-50K	5	82	42857	50000	45769	-824	-1.8	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	50,001-100K	4	71	51538	82353	61381	-2752	-4.5	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	100,001-150K	1	27	101111	101111	101111	\N	\N	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	150,001-200K	2	33	156522	175000	165761	-6159	-3.7	156522
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	300,001-500K	1	23	400000	400000	400000	\N	\N	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	1,501-3K	1	514	2200	2200	2200	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	3,001-5K	2	371	4222	4458	4340	-30	-0.7	\N
district	DC38	2016	Delareyville Tswaing	5,001-10K	19	8247	5063	9615	8333	83	1	\N
district	DC38	2016	Delareyville Tswaing	10,001-20K	37	11029	10206	19556	12535	55	0.4	11016
district	DC38	2016	Delareyville Tswaing	20,001-30K	3	694	22027	25641	23269	496	2.1	\N
district	DC38	2016	Delareyville Tswaing	30,001-40K	2	43	36364	38095	37229	247	0.7	\N
district	DC38	2016	Delareyville Tswaing	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Delareyville Tswaing	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	5,001-10K	6	5257	5846	10000	7946	194	2.4	10000
district	DC38	2016	Derdepoort	10,001-20K	4	2710	10304	15067	12550	220	1.8	12351
district	DC38	2016	Derdepoort	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	50,001-100K	1	168	89286	89286	89286	\N	\N	\N
district	DC38	2016	Derdepoort	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Derdepoort	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	3,001-5K	1	2730	4500	4500	4500	\N	\N	\N
municipality	DC40	2016	Ewbank	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Ewbank	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Mahikeng	Under 1.5K	1	1486	20	20	20	\N	\N	\N
district	DC38	2016	Mahikeng	1,501-3K	1	428	2921	2921	2921	\N	\N	2921
district	DC38	2016	Mahikeng	3,001-5K	1	2182	3277	3277	3277	\N	\N	\N
district	DC38	2016	Mahikeng	5,001-10K	6	3443	5031	9378	6748	199	2.9	\N
district	DC38	2016	Mahikeng	10,001-20K	3	1510	10905	18750	13694	87	0.6	\N
district	DC38	2016	Mahikeng	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Mahikeng	30,001-40K	1	18	36111	36111	36111	\N	\N	\N
district	DC38	2016	Mahikeng	40,001-50K	1	11	40909	40909	40909	\N	\N	\N
district	DC38	2016	Mahikeng	50,001-100K	1	17	76471	76471	76471	\N	\N	\N
district	DC38	2016	Mahikeng	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Mahikeng	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Mahikeng	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Mahikeng	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Mahikeng	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Mahikeng	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Mahikeng	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	Under 1.5K	2	46	652	1304	978	163	16.7	1304
district	DC37	2016	Marikana (Rustenburg) Bonjala	1,501-3K	2	198	2344	2794	2569	450	17.5	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	3,001-5K	7	3155	3250	4461	3755	-102	-2.7	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	5,001-10K	11	1861	6053	10000	8179	-70	-0.9	6452
district	DC37	2016	Marikana (Rustenburg) Bonjala	10,001-20K	26	3816	10200	19847	16290	-132	-0.8	14372
district	DC37	2016	Marikana (Rustenburg) Bonjala	20,001-30K	28	1788	20123	30000	24583	-149	-0.6	25977
district	DC37	2016	Marikana (Rustenburg) Bonjala	30,001-40K	29	2030	30515	40000	34483	-196	-0.6	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	40,001-50K	23	1641	41176	50000	45404	215	0.5	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	50,001-100K	51	3329	51207	100000	69359	520	0.7	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	100,001-150K	29	746	102273	150000	125148	1669	1.3	118367
district	DC37	2016	Marikana (Rustenburg) Bonjala	150,001-200K	10	181	153846	194444	171567	1495	0.9	185294
district	DC37	2016	Marikana (Rustenburg) Bonjala	200,001-300K	6	108	213333	280952	255788	4862	1.9	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	300,001-500K	2	172	320215	435185	392406	\N	\N	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	500,001-800K	4	86	556777	630000	583092	-4004	-0.7	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	800,001-1M	3	60	821667	1000000	929803	609	0.1	\N
district	DC37	2016	Marikana (Rustenburg) Bonjala	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	5,001-10K	4	7191	5008	5453	5287	116	2.2	\N
district	DC39	2016	Moloporivier Bophirima	10,001-20K	2	1545	13908	14465	14321	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Moloporivier Bophirima	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	3,001-5K	5	3992	3511	4747	4169	-70	-1.7	4059
district	DC39	2016	Reivilo Thaung	5,001-10K	12	10295	5501	7127	6268	63	1	7127
district	DC39	2016	Reivilo Thaung	10,001-20K	1	428	11407	11407	11407	\N	\N	\N
district	DC39	2016	Reivilo Thaung	20,001-30K	2	449	25811	29155	27483	-1114	-4.1	\N
district	DC39	2016	Reivilo Thaung	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	100,001-150K	1	38	147368	147368	147368	\N	\N	\N
district	DC39	2016	Reivilo Thaung	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	500,001-800K	1	33	678788	678788	678788	\N	\N	\N
district	DC39	2016	Reivilo Thaung	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Reivilo Thaung	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	10,001-20K	1	302	15666	15666	15666	\N	\N	\N
municipality	DC40	2016	Vostershoop	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	DC40	2016	Vostershoop	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	1,501-3K	2	1740	1730	2582	2156	-170	-7.9	\N
district	DC39	2016	Vryburg Naledi	3,001-5K	5	3967	3949	5000	4539	-70	-1.5	3949
district	DC39	2016	Vryburg Naledi	5,001-10K	18	17567	5141	9173	7200	-129	-1.8	7738
district	DC39	2016	Vryburg Naledi	10,001-20K	5	1430	11229	19767	14893	242	1.6	\N
district	DC39	2016	Vryburg Naledi	20,001-30K	2	366	24802	26809	25805	669	2.6	\N
district	DC39	2016	Vryburg Naledi	30,001-40K	1	21	38095	38095	38095	\N	\N	38095
district	DC39	2016	Vryburg Naledi	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	100,001-150K	1	16	112500	112500	112500	\N	\N	\N
district	DC39	2016	Vryburg Naledi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC39	2016	Vryburg Naledi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	3,001-5K	2	546	4167	4938	4552	193	4.2	\N
district	DC40	2016	Wolmaransstad Maquassi	5,001-10K	7	3006	5902	9043	7978	\N	0	\N
district	DC40	2016	Wolmaransstad Maquassi	10,001-20K	7	1305	12346	19655	15825	-388	-2.5	\N
district	DC40	2016	Wolmaransstad Maquassi	20,001-30K	2	543	25532	25974	25753	-49	-0.2	\N
district	DC40	2016	Wolmaransstad Maquassi	30,001-40K	1	370	30270	30270	30270	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	40,001-50K	1	139	42647	42647	42647	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC40	2016	Wolmaransstad Maquassi	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Zeerust Ramotshere	Under 1.5K	1	2194	296	296	296	\N	\N	\N
district	DC38	2016	Zeerust Ramotshere	1,501-3K	3	1958	2328	2406	2360	-15	-0.6	\N
district	DC38	2016	Zeerust Ramotshere	3,001-5K	7	786	3289	5000	4164	113	2.7	\N
district	DC38	2016	Zeerust Ramotshere	5,001-10K	21	11426	5670	9484	7621	126	1.7	\N
district	DC38	2016	Zeerust Ramotshere	10,001-20K	30	8941	10002	19643	14913	339	2.3	19298
district	DC38	2016	Zeerust Ramotshere	20,001-30K	19	3996	20357	29375	24085	-10	0	\N
district	DC38	2016	Zeerust Ramotshere	30,001-40K	7	326	31613	39216	36010	-186	-0.5	31613
district	DC38	2016	Zeerust Ramotshere	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Zeerust Ramotshere	50,001-100K	4	184	53846	80952	64116	1604	2.5	\N
district	DC38	2016	Zeerust Ramotshere	100,001-150K	3	53	102083	140824	115507	13424	11.6	\N
district	DC38	2016	Zeerust Ramotshere	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Zeerust Ramotshere	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Zeerust Ramotshere	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Zeerust Ramotshere	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Zeerust Ramotshere	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC38	2016	Zeerust Ramotshere	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	1,501-3K	1	545	3001	3001	3001	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	3,001-5K	1	2333	3772	3772	3772	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	5,001-10K	1	384	6848	6848	6848	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Albertinia HesseQua	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	Under 1.5K	2	4080	1100	1244	1172	24	2	\N
district	DC5	2016	Beaufort-Wes	1,501-3K	5	11222	1608	2640	2169	71	3.3	\N
district	DC5	2016	Beaufort-Wes	3,001-5K	2	9919	3023	3187	3105	-41	-1.3	\N
district	DC5	2016	Beaufort-Wes	5,001-10K	1	269	9015	9015	9015	\N	\N	\N
district	DC5	2016	Beaufort-Wes	10,001-20K	1	478	14221	14221	14221	\N	\N	\N
district	DC5	2016	Beaufort-Wes	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Beaufort-Wes	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	3,001-5K	6	629	3277	3838	3423	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	5,001-10K	1	146	9932	9932	9932	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	10,001-20K	2	754	10574	13043	11809	-1235	-10.5	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	20,001-30K	1	37	29663	29663	29663	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	50,001-100K	4	736	56452	86093	72131	636	0.9	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	100,001-150K	3	138	105376	140974	118536	-1817	-1.5	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Bredasdorp Cape Aqulhas	Above 1M	1	10	1250000	1250000	1250000	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	5,001-10K	1	12	8333	8333	8333	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	10,001-20K	3	287	17148	20000	18130	-422	-2.3	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	20,001-30K	4	1082	20888	27613	22891	457	2	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	30,001-40K	1	173	37572	37572	37572	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	50,001-100K	15	2842	50070	100000	78587	-1978	-2.5	67616
district	DC3	2016	Caledon (Overberg) Theewaterskloof	100,001-150K	4	333	120000	142017	134179	1615	1.2	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	150,001-200K	2	133	186667	194215	190441	944	0.5	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	200,001-300K	1	22	227273	227273	227273	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	300,001-500K	1	58	374353	374353	374353	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	500,001-800K	4	116	515098	595833	555592	-9318	-1.7	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Caledon (Overberg) Theewaterskloof	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	Under 1.5K	1	757	830	830	830	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	5,001-10K	5	1599	5052	8851	6247	-298	-4.8	\N
district	DC4	2016	Calitzdorp Kannaland	10,001-20K	2	43	13571	19000	16286	-1086	-6.7	\N
district	DC4	2016	Calitzdorp Kannaland	20,001-30K	1	480	25625	25625	25625	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	40,001-50K	1	289	47059	47059	47059	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	50,001-100K	2	61	82609	100000	91304	-17391	-19	\N
district	DC4	2016	Calitzdorp Kannaland	100,001-150K	2	57	142857	144828	143860	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Calitzdorp Kannaland	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	3,001-5K	1	351	3989	3989	3989	\N	\N	\N
municipality	CPT	2016	Cape Town	5,001-10K	1	2328	9880	9880	9880	\N	\N	\N
municipality	CPT	2016	Cape Town	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	20,001-30K	1	383	21279	21279	21279	\N	\N	\N
municipality	CPT	2016	Cape Town	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	50,001-100K	3	89	52632	78043	62904	-5303	-8.4	\N
municipality	CPT	2016	Cape Town	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	150,001-200K	1	21	152381	152381	152381	\N	\N	\N
municipality	CPT	2016	Cape Town	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
municipality	CPT	2016	Cape Town	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	Under 1.5K	4	17911	530	1234	828	11	1.4	\N
district	DC2	2016	Ceres Witzenberg	1,501-3K	4	14438	1547	2350	1863	61	3.3	\N
district	DC2	2016	Ceres Witzenberg	3,001-5K	1	1212	3795	3795	3795	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	5,001-10K	2	3658	6270	9174	7722	415	5.4	\N
district	DC2	2016	Ceres Witzenberg	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	20,001-30K	2	353	25714	26494	26104	130	0.5	\N
district	DC2	2016	Ceres Witzenberg	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	40,001-50K	1	229	41485	41485	41485	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	100,001-150K	2	120	116223	134615	125419	-1839	-1.5	116223
district	DC2	2016	Ceres Witzenberg	150,001-200K	1	140	200000	200000	200000	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Ceres Witzenberg	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	Under 1.5K	4	2271	391	1030	872	-37	-4.3	\N
district	DC1	2016	Clanwilliam Cederberg	1,501-3K	6	7460	2162	2804	2485	-8	-0.3	2297
district	DC1	2016	Clanwilliam Cederberg	3,001-5K	2	1799	3325	4717	3899	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	5,001-10K	4	1548	5328	6643	6004	72	1.2	\N
district	DC1	2016	Clanwilliam Cederberg	10,001-20K	2	1113	10338	12732	11535	-2394	-20.8	\N
district	DC1	2016	Clanwilliam Cederberg	20,001-30K	1	1576	20431	20431	20431	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	50,001-100K	4	242	76000	95455	86874	-3292	-3.8	\N
district	DC1	2016	Clanwilliam Cederberg	100,001-150K	1	53	122642	122642	122642	\N	\N	122642
district	DC1	2016	Clanwilliam Cederberg	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Clanwilliam Cederberg	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	George	Under 1.5K	1	694	1009	1009	1009	\N	\N	\N
district	DC4	2016	George	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	George	3,001-5K	1	61	4508	4508	4508	\N	\N	\N
district	DC4	2016	George	5,001-10K	3	295	6190	6540	6427	32	0.5	\N
district	DC4	2016	George	10,001-20K	2	520	15472	19444	17458	662	3.8	\N
district	DC4	2016	George	20,001-30K	2	216	27869	29032	28704	\N	\N	28704
district	DC4	2016	George	30,001-40K	3	99	32000	37755	35905	189	0.5	\N
district	DC4	2016	George	40,001-50K	2	454	46154	49760	47957	902	1.9	\N
district	DC4	2016	George	50,001-100K	5	567	52239	76190	68559	39	0.1	\N
district	DC4	2016	George	100,001-150K	4	158	105584	137931	119353	-18947	-15.9	\N
district	DC4	2016	George	150,001-200K	2	142	169355	171556	170455	-734	-0.4	\N
district	DC4	2016	George	200,001-300K	1	24	250000	250000	250000	\N	\N	\N
district	DC4	2016	George	300,001-500K	1	35	331429	331429	331429	\N	\N	\N
district	DC4	2016	George	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	George	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	George	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Knysna	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Knysna	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Knysna	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Knysna	5,001-10K	1	276	9417	9417	9417	\N	\N	\N
district	DC4	2016	Knysna	10,001-20K	1	2106	15332	15332	15332	\N	\N	\N
district	DC4	2016	Knysna	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Knysna	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Knysna	40,001-50K	1	223	49327	49327	49327	\N	\N	\N
district	DC4	2016	Knysna	50,001-100K	5	678	58182	88235	71971	-2722	-3.8	\N
district	DC4	2016	Knysna	100,001-150K	6	144	110345	140000	121701	-1196	-1	\N
district	DC4	2016	Knysna	150,001-200K	1	55	176182	176182	176182	\N	\N	\N
district	DC4	2016	Knysna	200,001-300K	1	25	300000	300000	300000	\N	\N	\N
district	DC4	2016	Knysna	300,001-500K	1	21	392857	392857	392857	\N	\N	\N
district	DC4	2016	Knysna	500,001-800K	1	11	545455	545455	545455	\N	\N	\N
district	DC4	2016	Knysna	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Knysna	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	Under 1.5K	3	4236	98	1499	666	8	1.2	\N
district	DC4	2016	Ladismith Kannaland	1,501-3K	3	2703	1617	2959	2452	467	19	\N
district	DC4	2016	Ladismith Kannaland	3,001-5K	2	230	3787	3812	3799	-13	-0.3	\N
district	DC4	2016	Ladismith Kannaland	5,001-10K	5	777	5134	7317	6112	206	3.4	\N
district	DC4	2016	Ladismith Kannaland	10,001-20K	4	236	12692	18636	15006	340	2.3	\N
district	DC4	2016	Ladismith Kannaland	20,001-30K	2	69	20588	24286	22437	-3697	-16.5	\N
district	DC4	2016	Ladismith Kannaland	30,001-40K	1	58	32759	32759	32759	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	50,001-100K	2	32	66667	67857	67262	-298	-0.4	\N
district	DC4	2016	Ladismith Kannaland	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	150,001-200K	1	18	165156	165156	165156	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Ladismith Kannaland	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	Under 1.5K	1	1679	536	536	536	\N	\N	\N
district	DC5	2016	Laingsburg	1,501-3K	2	1858	1855	2423	2139	-113	-5.3	\N
district	DC5	2016	Laingsburg	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Laingsburg	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	Under 1.5K	1	171	30	30	30	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	1,501-3K	3	3340	2287	2472	2349	21	0.9	\N
district	DC1	2016	Malmesbury Swartland	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	5,001-10K	1	1174	7836	7836	7836	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	10,001-20K	4	3280	10514	17209	13166	-597	-4.5	\N
district	DC1	2016	Malmesbury Swartland	20,001-30K	3	1459	20698	23256	22465	171	0.8	\N
district	DC1	2016	Malmesbury Swartland	30,001-40K	2	1026	32787	39739	38499	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	40,001-50K	4	1177	40115	48780	45898	743	1.6	\N
district	DC1	2016	Malmesbury Swartland	50,001-100K	7	1544	51422	100000	65249	-3596	-5.5	\N
district	DC1	2016	Malmesbury Swartland	100,001-150K	2	235	119084	122143	120614	-3059	-2.5	\N
district	DC1	2016	Malmesbury Swartland	150,001-200K	1	629	170588	170588	170588	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	200,001-300K	2	139	236889	269321	253105	8108	3.2	\N
district	DC1	2016	Malmesbury Swartland	300,001-500K	1	10	475000	475000	475000	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Malmesbury Swartland	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Montagu Langeberg	Under 1.5K	2	662	191	421	306	38	12.6	\N
district	DC2	2016	Montagu Langeberg	1,501-3K	1	472	2701	2701	2701	\N	\N	\N
district	DC2	2016	Montagu Langeberg	3,001-5K	2	651	4137	4808	4472	-224	-5	4137
district	DC2	2016	Montagu Langeberg	5,001-10K	5	3766	6005	10001	7777	-204	-2.6	6532
district	DC2	2016	Montagu Langeberg	10,001-20K	7	1361	12082	20000	15393	46	0.3	\N
district	DC2	2016	Montagu Langeberg	20,001-30K	1	231	21645	21645	21645	\N	\N	\N
district	DC2	2016	Montagu Langeberg	30,001-40K	1	40	35000	35000	35000	\N	\N	\N
district	DC2	2016	Montagu Langeberg	40,001-50K	1	50	45600	45600	45600	\N	\N	\N
district	DC2	2016	Montagu Langeberg	50,001-100K	4	125	59524	65217	63183	295	0.5	\N
district	DC2	2016	Montagu Langeberg	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Montagu Langeberg	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Montagu Langeberg	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Montagu Langeberg	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Montagu Langeberg	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Montagu Langeberg	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Montagu Langeberg	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	5,001-10K	1	193	5907	5907	5907	\N	\N	\N
district	DC4	2016	Mosselbaai	10,001-20K	3	276	16414	19420	17119	-59	-0.3	16855
district	DC4	2016	Mosselbaai	20,001-30K	3	714	21495	23522	22798	184	0.8	\N
district	DC4	2016	Mosselbaai	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	40,001-50K	6	867	43333	50000	47784	-560	-1.2	\N
district	DC4	2016	Mosselbaai	50,001-100K	8	191	65625	100000	86158	-706	-0.8	\N
district	DC4	2016	Mosselbaai	100,001-150K	4	112	108621	135556	121062	947	0.8	135556
district	DC4	2016	Mosselbaai	150,001-200K	3	74	175000	184884	181022	1018	0.6	\N
district	DC4	2016	Mosselbaai	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Mosselbaai	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	1,501-3K	1	3919	2348	2348	2348	\N	\N	\N
district	DC5	2016	Murraysburg	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	20,001-30K	1	509	29470	29470	29470	\N	\N	\N
district	DC5	2016	Murraysburg	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Murraysburg	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Oudtshoorn	Under 1.5K	5	10794	138	1045	589	-53	-9	138
district	DC4	2016	Oudtshoorn	1,501-3K	2	258	2222	2684	2453	231	9.4	\N
district	DC4	2016	Oudtshoorn	3,001-5K	1	119	3361	3361	3361	\N	\N	\N
district	DC4	2016	Oudtshoorn	5,001-10K	2	953	5734	6303	6018	-142	-2.4	\N
district	DC4	2016	Oudtshoorn	10,001-20K	6	2702	11111	18817	15491	194	1.3	\N
district	DC4	2016	Oudtshoorn	20,001-30K	7	986	21429	27322	24496	-62	-0.3	\N
district	DC4	2016	Oudtshoorn	30,001-40K	3	276	31034	38716	35852	945	2.6	\N
district	DC4	2016	Oudtshoorn	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Oudtshoorn	50,001-100K	4	295	57222	89744	72252	-1476	-2	\N
district	DC4	2016	Oudtshoorn	100,001-150K	2	142	120588	128000	124294	3706	3	\N
district	DC4	2016	Oudtshoorn	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Oudtshoorn	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Oudtshoorn	300,001-500K	1	67	414126	414126	414126	\N	\N	\N
district	DC4	2016	Oudtshoorn	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Oudtshoorn	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Oudtshoorn	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	10,001-20K	1	60	19167	19167	19167	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	30,001-40K	1	74	37838	37838	37838	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	40,001-50K	1	70	44429	44429	44429	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	50,001-100K	3	349	61951	76271	68846	-1724	-2.5	\N
district	DC2	2016	Paarl/Wel Drakenstein	100,001-150K	1	45	121111	121111	121111	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	150,001-200K	3	134	171000	193548	184261	-96	-0.1	\N
district	DC2	2016	Paarl/Wel Drakenstein	200,001-300K	4	742	205882	291328	237744	-3644	-1.5	\N
district	DC2	2016	Paarl/Wel Drakenstein	300,001-500K	6	225	339320	376923	354260	-3464	-1	\N
district	DC2	2016	Paarl/Wel Drakenstein	500,001-800K	4	85	593750	701786	658850	28624	4.3	\N
district	DC2	2016	Paarl/Wel Drakenstein	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Paarl/Wel Drakenstein	Above 1M	2	23	1625000	1818182	1721591	38636	2.2	1818182
district	DC1	2016	Piketberg Bergriver	Under 1.5K	1	39	629	629	629	\N	\N	629
district	DC1	2016	Piketberg Bergriver	1,501-3K	2	661	1948	2290	2119	-68	-3.2	\N
district	DC1	2016	Piketberg Bergriver	3,001-5K	4	2134	3109	4647	3742	-51	-1.4	\N
district	DC1	2016	Piketberg Bergriver	5,001-10K	5	7636	5658	9975	7350	287	3.9	9975
district	DC1	2016	Piketberg Bergriver	10,001-20K	9	4590	10020	20000	12751	249	2	\N
district	DC1	2016	Piketberg Bergriver	20,001-30K	4	1079	21027	29124	23785	909	3.8	\N
district	DC1	2016	Piketberg Bergriver	30,001-40K	1	81	32716	32716	32716	\N	\N	\N
district	DC1	2016	Piketberg Bergriver	40,001-50K	1	121	41322	41322	41322	\N	\N	\N
district	DC1	2016	Piketberg Bergriver	50,001-100K	1	144	55556	55556	55556	\N	\N	\N
district	DC1	2016	Piketberg Bergriver	100,001-150K	2	67	120000	128070	124035	8070	6.5	\N
district	DC1	2016	Piketberg Bergriver	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Piketberg Bergriver	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Piketberg Bergriver	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Piketberg Bergriver	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Piketberg Bergriver	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Piketberg Bergriver	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	Under 1.5K	3	11304	812	1283	1008	-105	-10.4	\N
district	DC5	2016	Prins Albert	1,501-3K	6	12092	1587	2852	1936	-4	-0.2	\N
district	DC5	2016	Prins Albert	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	5,001-10K	1	51	9804	9804	9804	\N	\N	\N
district	DC5	2016	Prins Albert	10,001-20K	1	131	12794	12794	12794	\N	\N	\N
district	DC5	2016	Prins Albert	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	50,001-100K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	200,001-300K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC5	2016	Prins Albert	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	Under 1.5K	2	1004	476	712	594	-26	-4.4	\N
district	DC4	2016	Riversdal Hessequa	1,501-3K	1	2262	2378	2378	2378	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	5,001-10K	10	4587	5508	9836	7135	-205	-2.9	5869
district	DC4	2016	Riversdal Hessequa	10,001-20K	16	3206	10301	19130	14964	-302	-2	15667
district	DC4	2016	Riversdal Hessequa	20,001-30K	7	573	20779	29407	25523	-247	-1	27027
district	DC4	2016	Riversdal Hessequa	30,001-40K	6	1410	30888	39655	36397	22	0.1	37681
district	DC4	2016	Riversdal Hessequa	40,001-50K	5	697	43478	50000	44668	-172	-0.4	\N
district	DC4	2016	Riversdal Hessequa	50,001-100K	3	77	68750	90909	76834	2021	2.6	\N
district	DC4	2016	Riversdal Hessequa	100,001-150K	1	15	150000	150000	150000	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	200,001-300K	1	32	203125	203125	203125	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	300,001-500K	1	19	342105	342105	342105	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC4	2016	Riversdal Hessequa	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	5,001-10K	2	535	5019	9434	7227	-883	-12.2	\N
district	DC2	2016	Robertson Breede /Winelands	10,001-20K	1	160	19531	19531	19531	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	30,001-40K	2	89	34898	37500	36199	-1301	-3.6	\N
district	DC2	2016	Robertson Breede /Winelands	40,001-50K	1	383	49347	49347	49347	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	50,001-100K	1	24	71250	71250	71250	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	100,001-150K	1	20	108750	108750	108750	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	150,001-200K	1	13	167308	167308	167308	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	200,001-300K	3	90	234375	300000	273125	-5214	-1.9	\N
district	DC2	2016	Robertson Breede /Winelands	300,001-500K	1	43	326512	326512	326512	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Robertson Breede /Winelands	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	10,001-20K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Stellenbosch	50,001-100K	1	32	74813	74813	74813	\N	\N	\N
district	DC2	2016	Stellenbosch	100,001-150K	1	30	150000	150000	150000	\N	\N	\N
district	DC2	2016	Stellenbosch	150,001-200K	3	621	159600	198239	172480	1853	1.1	\N
district	DC2	2016	Stellenbosch	200,001-300K	2	160	248105	283019	265562	-11638	-4.4	\N
district	DC2	2016	Stellenbosch	300,001-500K	7	474	320225	483922	407146	-186	0	365909
district	DC2	2016	Stellenbosch	500,001-800K	7	333	520833	733945	630946	-16674	-2.6	\N
district	DC2	2016	Stellenbosch	800,001-1M	1	39	871205	871205	871205	\N	\N	\N
district	DC2	2016	Stellenbosch	Above 1M	2	82	1625000	3159091	2392045	255682	10.7	\N
district	DC3	2016	Swellendam	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Swellendam	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Swellendam	3,001-5K	2	1564	3700	4797	4248	-137	-3.2	\N
district	DC3	2016	Swellendam	5,001-10K	3	4845	5488	7326	6172	85	1.4	\N
district	DC3	2016	Swellendam	10,001-20K	5	347	10723	17722	15102	-545	-3.6	12222
district	DC3	2016	Swellendam	20,001-30K	2	831	23109	29775	26442	-2222	-8.4	\N
district	DC3	2016	Swellendam	30,001-40K	1	313	36422	36422	36422	\N	\N	\N
district	DC3	2016	Swellendam	40,001-50K	1	373	41555	41555	41555	\N	\N	\N
district	DC3	2016	Swellendam	50,001-100K	5	1677	57000	84387	73487	1696	2.3	82143
district	DC3	2016	Swellendam	100,001-150K	2	93	124138	133915	129026	-978	-0.8	124138
district	DC3	2016	Swellendam	150,001-200K	2	147	166667	174603	170635	1323	0.8	\N
district	DC3	2016	Swellendam	200,001-300K	3	79	258621	280000	268934	-3483	-1.3	\N
district	DC3	2016	Swellendam	300,001-500K	2	66	333333	380476	356905	-5893	-1.7	\N
district	DC3	2016	Swellendam	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Swellendam	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC3	2016	Swellendam	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	Under 1.5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	1,501-3K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	5,001-10K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	10,001-20K	1	291	11942	11942	11942	\N	\N	11942
district	DC2	2016	Tulbagh	20,001-30K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	40,001-50K	1	93	49462	49462	49462	\N	\N	\N
district	DC2	2016	Tulbagh	50,001-100K	2	69	61538	100000	71014	\N	\N	\N
district	DC2	2016	Tulbagh	100,001-150K	1	34	117647	117647	117647	\N	\N	\N
district	DC2	2016	Tulbagh	150,001-200K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	200,001-300K	1	14	204386	204386	204386	\N	\N	\N
district	DC2	2016	Tulbagh	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Tulbagh	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	Under 1.5K	7	18222	315	1012	561	48	8.5	1012
district	DC1	2016	Vanrynsdorp Matzikama	1,501-3K	2	822	2389	2799	2594	68	2.6	\N
district	DC1	2016	Vanrynsdorp Matzikama	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	5,001-10K	2	431	5207	9373	7290	833	11.4	\N
district	DC1	2016	Vanrynsdorp Matzikama	10,001-20K	4	1213	10135	19655	15454	183	1.2	\N
district	DC1	2016	Vanrynsdorp Matzikama	20,001-30K	1	247	25220	25220	25220	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	40,001-50K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	50,001-100K	1	118	50847	50847	50847	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	100,001-150K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	150,001-200K	2	37	158333	160268	159301	-645	-0.4	\N
district	DC1	2016	Vanrynsdorp Matzikama	200,001-300K	3	50	222727	291667	260354	-5602	-2.2	\N
district	DC1	2016	Vanrynsdorp Matzikama	300,001-500K	1	48	323958	323958	323958	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	500,001-800K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC1	2016	Vanrynsdorp Matzikama	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Worcester Breede Valley	Under 1.5K	2	7209	67	390	228	-40	-17.7	\N
district	DC2	2016	Worcester Breede Valley	1,501-3K	1	2431	1907	1907	1907	\N	\N	\N
district	DC2	2016	Worcester Breede Valley	3,001-5K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Worcester Breede Valley	5,001-10K	3	5325	9111	9881	9460	-45	-0.5	\N
district	DC2	2016	Worcester Breede Valley	10,001-20K	3	1154	10803	14074	12514	545	4.4	\N
district	DC2	2016	Worcester Breede Valley	20,001-30K	3	7000	24554	27516	25675	374	1.5	\N
district	DC2	2016	Worcester Breede Valley	30,001-40K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Worcester Breede Valley	40,001-50K	2	333	42623	44118	43370	-249	-0.6	\N
district	DC2	2016	Worcester Breede Valley	50,001-100K	2	100	58036	95000	76518	5281	6.9	\N
district	DC2	2016	Worcester Breede Valley	100,001-150K	5	535	103774	134913	110431	-1563	-1.4	106667
district	DC2	2016	Worcester Breede Valley	150,001-200K	1	65	192662	192662	192662	\N	\N	\N
district	DC2	2016	Worcester Breede Valley	200,001-300K	2	113	244828	290909	267868	-15361	-5.7	\N
district	DC2	2016	Worcester Breede Valley	300,001-500K	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Worcester Breede Valley	500,001-800K	1	11	545455	545455	545455	\N	\N	\N
district	DC2	2016	Worcester Breede Valley	800,001-1M	\N	\N	\N	\N	\N	\N	\N	\N
district	DC2	2016	Worcester Breede Valley	Above 1M	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- PostgreSQL database dump complete
--
