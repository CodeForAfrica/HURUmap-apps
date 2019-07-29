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

ALTER TABLE IF EXISTS ONLY public.compiled_indeces DROP CONSTRAINT IF EXISTS compiled_indeces_pkey;
DROP TABLE IF EXISTS public.compiled_indeces;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: compiled_indeces; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.compiled_indeces (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    compiled_indeces character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: compiled_indeces; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.compiled_indeces (geo_level, geo_code, geo_version, compiled_indeces, total) FROM stdin;
state	1	2016	EDU INDEX	0.8808
state	1	2016	GNI Index	0.3543
state	1	2016	HDI Value	0.5406
state	1	2016	IHDI	0.3904
state	1	2016	Life EXp Index	0.5063
state	2	2016	EDU INDEX	0.6606
state	2	2016	GNI Index	0.3275
state	2	2016	HDI Value	0.4286
state	2	2016	IHDI	0.28
state	2	2016	Life EXp Index	0.3639
state	3	2016	EDU INDEX	0.9053
state	3	2016	GNI Index	0.4045
state	3	2016	HDI Value	0.5642
state	3	2016	IHDI	0.4102
state	3	2016	Life EXp Index	0.4905
state	4	2016	EDU INDEX	0.921
state	4	2016	GNI Index	0.2559
state	4	2016	HDI Value	0.4709
state	4	2016	IHDI	0.3406
state	4	2016	Life EXp Index	0.443
state	5	2016	EDU INDEX	0.4145
state	5	2016	GNI Index	0.2071
state	5	2016	HDI Value	0.3238
state	5	2016	IHDI	0.163
state	5	2016	Life EXp Index	0.3956
state	6	2016	EDU INDEX	0.9259
state	6	2016	GNI Index	0.4693
state	6	2016	HDI Value	0.5909
state	6	2016	IHDI	0.4313
state	6	2016	Life EXp Index	0.4747
state	7	2016	EDU INDEX	0.8061
state	7	2016	GNI Index	0.2871
state	7	2016	HDI Value	0.4624
state	7	2016	IHDI	0.3237
state	7	2016	Life EXp Index	0.4272
state	8	2016	EDU INDEX	0.5871
state	8	2016	GNI Index	0.1646
state	8	2016	HDI Value	0.3276
state	8	2016	IHDI	0.2023
state	8	2016	Life EXp Index	0.3639
state	9	2016	EDU INDEX	0.8574
state	9	2016	GNI Index	0.3626
state	9	2016	HDI Value	0.551
state	9	2016	IHDI	0.3963
state	9	2016	Life EXp Index	0.538
state	10	2016	EDU INDEX	0.9058
state	10	2016	GNI Index	0.4144
state	10	2016	HDI Value	0.5564
state	10	2016	IHDI	0.4037
state	10	2016	Life EXp Index	0.4589
state	11	2016	EDU INDEX	0.7628
state	11	2016	GNI Index	0.2425
state	11	2016	HDI Value	0.4343
state	11	2016	IHDI	0.2984
state	11	2016	Life EXp Index	0.443
state	12	2016	EDU INDEX	0.8486
state	12	2016	GNI Index	0.3695
state	12	2016	HDI Value	0.5299
state	12	2016	IHDI	0.3784
state	12	2016	Life EXp Index	0.4747
state	13	2016	EDU INDEX	0.8944
state	13	2016	GNI Index	0.3777
state	13	2016	HDI Value	0.5608
state	13	2016	IHDI	0.4068
state	13	2016	Life EXp Index	0.5222
state	14	2016	EDU INDEX	0.8936
state	14	2016	GNI Index	0.3489
state	14	2016	HDI Value	0.5405
state	14	2016	IHDI	0.3915
state	14	2016	Life EXp Index	0.5063
state	15	2016	EDU INDEX	0.8152
state	15	2016	GNI Index	0.6025
state	15	2016	HDI Value	0.6289
state	15	2016	IHDI	0.4472
state	15	2016	Life EXp Index	0.5063
state	16	2016	EDU INDEX	0.4923
state	16	2016	GNI Index	0.2957
state	16	2016	HDI Value	0.401
state	16	2016	IHDI	0.2276
state	16	2016	Life EXp Index	0.443
state	17	2016	EDU INDEX	0.9159
state	17	2016	GNI Index	0.291
state	17	2016	HDI Value	0.5182
state	17	2016	IHDI	0.3772
state	17	2016	Life EXp Index	0.5222
state	18	2016	EDU INDEX	0.4311
state	18	2016	GNI Index	0.2525
state	18	2016	HDI Value	0.3596
state	18	2016	IHDI	0.1921
state	18	2016	Life EXp Index	0.4272
state	19	2016	EDU INDEX	0.6416
state	19	2016	GNI Index	0.2604
state	19	2016	HDI Value	0.4043
state	19	2016	IHDI	0.2621
state	19	2016	Life EXp Index	0.3956
state	20	2016	EDU INDEX	0.4957
state	20	2016	GNI Index	0.2189
state	20	2016	HDI Value	0.3592
state	20	2016	IHDI	0.2094
state	20	2016	Life EXp Index	0.4272
state	21	2016	EDU INDEX	0.4395
state	21	2016	GNI Index	0.1381
state	21	2016	HDI Value	0.3031
state	21	2016	IHDI	0.1624
state	21	2016	Life EXp Index	0.4589
state	22	2016	EDU INDEX	0.3955
state	22	2016	GNI Index	0.2774
state	22	2016	HDI Value	0.3815
state	22	2016	IHDI	0.1843
state	22	2016	Life EXp Index	0.5063
state	23	2016	EDU INDEX	0.8572
state	23	2016	GNI Index	0.26
state	23	2016	HDI Value	0.4509
state	23	2016	IHDI	0.3197
state	23	2016	Life EXp Index	0.4114
state	24	2016	EDU INDEX	0.6967
state	24	2016	GNI Index	0.3787
state	24	2016	HDI Value	0.5112
state	24	2016	IHDI	0.3448
state	24	2016	Life EXp Index	0.5063
state	25	2016	EDU INDEX	1.0069
state	25	2016	GNI Index	0.5986
state	25	2016	HDI Value	0.6515
state	25	2016	IHDI	0.4852
state	25	2016	Life EXp Index	0.4589
state	26	2016	EDU INDEX	0.7861
state	26	2016	GNI Index	0.3478
state	26	2016	HDI Value	0.5063
state	26	2016	IHDI	0.3533
state	26	2016	Life EXp Index	0.4747
state	27	2016	EDU INDEX	0.5596
state	27	2016	GNI Index	0.2393
state	27	2016	HDI Value	0.3991
state	27	2016	IHDI	0.2492
state	27	2016	Life EXp Index	0.4747
country	NG	2016	EDU INDEX	0.797
country	NG	2016	GNI Index	0.3659
country	NG	2016	HDI Value	0.511
country	NG	2016	IHDI	0.359
country	NG	2016	Life EXp Index	0.4589
state	28	2016	EDU INDEX	0.7797
state	28	2016	GNI Index	0.4072
state	28	2016	HDI Value	0.5493
state	28	2016	IHDI	0.3854
state	28	2016	Life EXp Index	0.5222
state	29	2016	EDU INDEX	0.8709
state	29	2016	GNI Index	0.2839
state	29	2016	HDI Value	0.5002
state	29	2016	IHDI	0.3593
state	29	2016	Life EXp Index	0.5063
state	30	2016	EDU INDEX	0.8551
state	30	2016	GNI Index	0.3105
state	30	2016	HDI Value	0.5123
state	30	2016	IHDI	0.3667
state	30	2016	Life EXp Index	0.5063
state	31	2016	EDU INDEX	0.683
state	31	2016	GNI Index	0.2544
state	31	2016	HDI Value	0.4401
state	31	2016	IHDI	0.2942
state	31	2016	Life EXp Index	0.4905
state	32	2016	EDU INDEX	0.7659
state	32	2016	GNI Index	0.3149
state	32	2016	HDI Value	0.4629
state	32	2016	IHDI	0.3191
state	32	2016	Life EXp Index	0.4114
state	33	2016	EDU INDEX	0.9215
state	33	2016	GNI Index	0.4049
state	33	2016	HDI Value	0.5422
state	33	2016	IHDI	0.3939
state	33	2016	Life EXp Index	0.4272
state	34	2016	EDU INDEX	0.3336
state	34	2016	GNI Index	0.1555
state	34	2016	HDI Value	0.291
state	34	2016	IHDI	0.0855
state	34	2016	Life EXp Index	0.4747
state	35	2016	EDU INDEX	0.7551
state	35	2016	GNI Index	0.3044
state	35	2016	HDI Value	0.4613
state	35	2016	IHDI	0.3166
state	35	2016	Life EXp Index	0.4272
state	36	2016	EDU INDEX	0.3295
state	36	2016	GNI Index	0.274
state	36	2016	HDI Value	0.3249
state	36	2016	IHDI	0.1213
state	36	2016	Life EXp Index	0.3797
state	37	2016	EDU INDEX	0.4238
state	37	2016	GNI Index	0.1939
state	37	2016	HDI Value	0.3392
state	37	2016	IHDI	0.176
state	37	2016	Life EXp Index	0.4747
\.


--
-- Name: compiled_indeces compiled_indeces_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.compiled_indeces
    ADD CONSTRAINT compiled_indeces_pkey PRIMARY KEY (geo_level, geo_code, geo_version, compiled_indeces);


--
-- PostgreSQL database dump complete
--
