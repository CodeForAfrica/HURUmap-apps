--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 11:00:33 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 223 (class 1259 OID 17872)
-- Name: maintypeoffloormaterial; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE maintypeoffloormaterial (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of floor material" character varying(128) NOT NULL,
    total integer NOT NULL
);


ALTER TABLE maintypeoffloormaterial OWNER TO hurumap_ke;

--
-- TOC entry 3177 (class 0 OID 17872)
-- Dependencies: 223
-- Data for Name: maintypeoffloormaterial; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY maintypeoffloormaterial (geo_level, geo_code, "main type of floor material", total) FROM stdin;
county	30	cement	110426
county	30	earth	1856
county	30	other	80603
county	30	tiles	27425
county	30	wood	332
county	36	cement	174294
county	36	earth	954
county	36	other	131613
county	36	tiles	41125
county	36	wood	405
county	39	cement	270601
county	39	earth	789
county	39	other	214459
county	39	tiles	53831
county	39	wood	1000
county	40	cement	154080
county	40	earth	527
county	40	other	115342
county	40	tiles	37401
county	40	wood	587
county	28	cement	77538
county	28	earth	734
county	28	other	59498
county	28	tiles	16756
county	28	wood	170
county	14	cement	131198
county	14	earth	648
county	14	other	76432
county	14	tiles	53256
county	14	wood	698
county	7	cement	98270
county	7	earth	594
county	7	other	78385
county	7	tiles	18419
county	7	wood	381
county	43	cement	206108
county	43	earth	663
county	43	other	154017
county	43	tiles	50331
county	43	wood	641
county	11	cement	31305
county	11	earth	126
county	11	other	21911
county	11	tiles	9047
county	11	wood	169
county	34	cement	173063
county	34	earth	538
county	34	other	66945
county	34	tiles	99118
county	34	wood	6210
county	37	cement	355375
county	37	earth	1612
county	37	other	285209
county	37	tiles	66150
county	37	wood	1204
county	35	cement	127225
county	35	earth	1005
county	35	other	77342
county	35	tiles	48287
county	35	wood	474
county	22	cement	481787
county	22	earth	2120
county	22	other	113189
county	22	tiles	355536
county	22	wood	10567
county	3	cement	197851
county	3	earth	515
county	3	other	129139
county	3	tiles	65473
county	3	wood	2288
county	20	cement	153981
county	20	earth	735
county	20	other	92239
county	20	tiles	60133
county	20	wood	680
county	45	cement	269454
county	45	earth	1379
county	45	other	208278
county	45	tiles	57974
county	45	wood	993
county	42	cement	226137
county	42	earth	932
county	42	other	125046
county	42	tiles	95973
county	42	wood	3612
county	15	cement	205412
county	15	earth	656
county	15	other	136153
county	15	tiles	67124
county	15	wood	1182
county	2	cement	121691
county	2	earth	211
county	2	other	85386
county	2	tiles	35161
county	2	wood	803
county	31	cement	103081
county	31	earth	1033
county	31	other	67685
county	31	tiles	33491
county	31	wood	651
county	5	cement	22013
county	5	earth	73
county	5	other	13705
county	5	tiles	8143
county	5	wood	65
county	16	cement	264342
county	16	earth	500
county	16	other	105122
county	16	tiles	154263
county	16	wood	4275
county	17	cement	186280
county	17	earth	404
county	17	other	99572
county	17	tiles	85016
county	17	wood	1148
county	9	cement	125471
county	9	earth	629
county	9	other	115087
county	9	tiles	9280
county	9	wood	152
county	10	cement	56711
county	10	earth	153
county	10	other	46871
county	10	tiles	9292
county	10	wood	143
county	12	cement	380505
county	12	earth	7188
county	12	other	226948
county	12	tiles	143636
county	12	wood	1691
county	44	cement	179970
county	44	earth	832
county	44	other	129541
county	44	tiles	48681
county	44	wood	697
county	1	cement	257254
county	1	earth	637
county	1	other	36368
county	1	tiles	207480
county	1	wood	12235
county	21	cement	242332
county	21	earth	1109
county	21	other	145502
county	21	tiles	94140
county	21	wood	1321
county	47	cement	983115
county	47	earth	19169
county	47	other	87228
county	47	tiles	809278
county	47	wood	66147
county	32	cement	409097
county	32	earth	3457
county	32	other	191454
county	32	tiles	208216
county	32	wood	5045
county	29	cement	152889
county	29	earth	699
county	29	other	105529
county	29	tiles	45787
county	29	wood	619
county	33	cement	169067
county	33	earth	1040
county	33	other	142236
county	33	tiles	24696
county	33	wood	419
county	46	cement	106065
county	46	earth	552
county	46	other	80843
county	46	tiles	24221
county	46	wood	361
county	18	cement	142493
county	18	earth	2218
county	18	other	98033
county	18	tiles	40989
county	18	wood	450
county	19	cement	201353
county	19	earth	3254
county	19	other	113669
county	19	tiles	83057
county	19	wood	1068
county	25	cement	47231
county	25	earth	165
county	25	other	39058
county	25	tiles	7821
county	25	wood	86
county	41	cement	198664
county	41	earth	734
county	41	other	139196
county	41	tiles	57585
county	41	wood	793
county	6	cement	70039
county	6	earth	200
county	6	other	38782
county	6	tiles	30485
county	6	wood	451
county	4	cement	47274
county	4	earth	138
county	4	other	41604
county	4	tiles	5366
county	4	wood	87
county	13	cement	27389
county	13	earth	195
county	13	other	22520
county	13	tiles	4590
county	13	wood	55
county	26	cement	169632
county	26	earth	814
county	26	other	123709
county	26	tiles	43706
county	26	wood	895
county	23	cement	122935
county	23	earth	1125
county	23	other	113145
county	23	tiles	8007
county	23	wood	205
county	27	cement	201616
county	27	earth	1561
county	27	other	102615
county	27	tiles	93401
county	27	wood	3501
county	38	cement	123241
county	38	earth	551
county	38	other	97630
county	38	tiles	24377
county	38	wood	468
county	8	cement	88493
county	8	earth	214
county	8	other	80979
county	8	tiles	6899
county	8	wood	131
county	24	cement	93749
county	24	earth	524
county	24	other	81304
county	24	tiles	11578
county	24	wood	137
country	KE	cement	8738097
country	KE	earth	65762
country	KE	other	4937121
country	KE	tiles	3582001
country	KE	wood	135692
\.


--
-- TOC entry 3062 (class 2606 OID 18015)
-- Name: maintypeoffloormaterial maintypeoffloormaterial_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY maintypeoffloormaterial
    ADD CONSTRAINT maintypeoffloormaterial_pkey PRIMARY KEY (geo_level, geo_code, "main type of floor material");


-- Completed on 2017-07-31 11:00:50 EAT

--
-- PostgreSQL database dump complete
--

