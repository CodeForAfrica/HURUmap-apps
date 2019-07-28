--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.number_of_officials DROP CONSTRAINT IF EXISTS number_of_officials_pkey;
DROP TABLE IF EXISTS public.number_of_officials;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: number_of_officials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.number_of_officials (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    position character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: number_of_officials; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.number_of_officials (geo_level, geo_code, geo_version, position, total) FROM stdin;
state	1	2016	Constables	151
state	1	2016	Corporals	1998
state	1	2016	Inspectors	874
state	1	2016	Sergeants	845
state	2	2016	Constables	998
state	2	2016	Corporals	6969
state	2	2016	Inspectors	2273
state	2	2016	Sergeants	2916
state	3	2016	Constables	155
state	3	2016	Corporals	5842
state	3	2016	Inspectors	2584
state	3	2016	Sergeants	1843
state	4	2016	Constables	274
state	4	2016	Corporals	1243
state	4	2016	Inspectors	337
state	4	2016	Sergeants	312
state	5	2016	Constables	476
state	5	2016	Corporals	908
state	5	2016	Inspectors	375
state	5	2016	Sergeants	691
state	6	2016	Constables	129
state	6	2016	Corporals	932
state	6	2016	Inspectors	670
state	6	2016	Sergeants	525
state	7	2016	Constables	1191
state	7	2016	Corporals	11130
state	7	2016	Inspectors	2969
state	7	2016	Sergeants	4937
state	8	2016	Constables	597
state	8	2016	Corporals	4119
state	8	2016	Inspectors	1387
state	8	2016	Sergeants	2187
state	9	2016	Constables	780
state	9	2016	Corporals	6806
state	9	2016	Inspectors	2286
state	9	2016	Sergeants	2479
state	10	2016	Constables	389
state	10	2016	Corporals	4118
state	10	2016	Inspectors	1552
state	10	2016	Sergeants	1635
state	11	2016	Constables	285
state	11	2016	Corporals	1361
state	11	2016	Inspectors	680
state	11	2016	Sergeants	381
state	12	2016	Constables	438
state	12	2016	Corporals	6901
state	12	2016	Inspectors	3099
state	12	2016	Sergeants	2965
state	13	2016	Constables	341
state	13	2016	Corporals	2999
state	13	2016	Inspectors	628
state	13	2016	Sergeants	1267
state	14	2016	Constables	299
state	14	2016	Corporals	2709
state	14	2016	Inspectors	1422
state	14	2016	Sergeants	1320
state	15	2016	Constables	83
state	15	2016	Corporals	451
state	15	2016	Inspectors	327
state	15	2016	Sergeants	427
state	16	2016	Constables	835
state	16	2016	Corporals	4098
state	16	2016	Inspectors	1066
state	16	2016	Sergeants	1417
state	17	2016	Constables	378
state	17	2016	Corporals	3043
state	17	2016	Inspectors	1679
state	17	2016	Sergeants	1457
state	18	2016	Constables	571
state	18	2016	Corporals	1820
state	18	2016	Inspectors	557
state	18	2016	Sergeants	800
state	19	2016	Constables	1513
state	19	2016	Corporals	7913
state	19	2016	Inspectors	2630
state	19	2016	Sergeants	5099
state	20	2016	Constables	601
state	20	2016	Corporals	3305
state	20	2016	Inspectors	914
state	20	2016	Sergeants	1721
state	21	2016	Constables	586
state	21	2016	Corporals	2816
state	21	2016	Inspectors	1675
state	21	2016	Sergeants	1349
state	22	2016	Constables	81
state	22	2016	Corporals	2075
state	22	2016	Inspectors	1222
state	22	2016	Sergeants	842
state	23	2016	Constables	1005
state	23	2016	Corporals	7808
state	23	2016	Inspectors	3275
state	23	2016	Sergeants	3489
state	24	2016	Constables	498
state	24	2016	Corporals	3074
state	24	2016	Inspectors	1049
state	24	2016	Sergeants	1232
state	25	2016	Constables	258
state	25	2016	Corporals	2195
state	25	2016	Inspectors	1137
state	25	2016	Sergeants	1200
state	26	2016	Constables	896
state	26	2016	Corporals	3322
state	26	2016	Inspectors	865
state	26	2016	Sergeants	1331
state	27	2016	Constables	935
state	27	2016	Corporals	3132
state	27	2016	Inspectors	1510
state	27	2016	Sergeants	1598
country	NG	2016	Constables	19043
country	NG	2016	Corporals	128656
country	NG	2016	Inspectors	49026
country	NG	2016	Sergeants	62681
state	28	2016	Constables	238
state	28	2016	Corporals	1321
state	28	2016	Inspectors	1391
state	28	2016	Sergeants	1312
state	29	2016	Constables	385
state	29	2016	Corporals	5089
state	29	2016	Inspectors	1764
state	29	2016	Sergeants	2239
state	30	2016	Constables	415
state	30	2016	Corporals	3722
state	30	2016	Inspectors	968
state	30	2016	Sergeants	2009
state	31	2016	Constables	345
state	31	2016	Corporals	2176
state	31	2016	Inspectors	692
state	31	2016	Sergeants	930
state	32	2016	Constables	724
state	32	2016	Corporals	2014
state	32	2016	Inspectors	1541
state	32	2016	Sergeants	1331
state	33	2016	Constables	169
state	33	2016	Corporals	3751
state	33	2016	Inspectors	1729
state	33	2016	Sergeants	907
state	34	2016	Constables	752
state	34	2016	Corporals	1280
state	34	2016	Inspectors	350
state	34	2016	Sergeants	563
state	35	2016	Constables	547
state	35	2016	Corporals	3026
state	35	2016	Inspectors	688
state	35	2016	Sergeants	1158
state	36	2016	Constables	309
state	36	2016	Corporals	1337
state	36	2016	Inspectors	348
state	36	2016	Sergeants	5346
state	37	2016	Constables	416
state	37	2016	Corporals	1853
state	37	2016	Inspectors	513
state	37	2016	Sergeants	621
\.


--
-- Name: number_of_officials number_of_officials_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.number_of_officials
    ADD CONSTRAINT number_of_officials_pkey PRIMARY KEY (geo_level, geo_code, geo_version, position);


--
-- PostgreSQL database dump complete
--
