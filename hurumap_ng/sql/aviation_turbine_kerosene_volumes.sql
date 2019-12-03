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

DROP TABLE IF EXISTS public.aviation_turbine_kerosene_volumes;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: aviation_turbine_kerosene_volumes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.aviation_turbine_kerosene_volumes (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    quarter character varying(128) NOT NULL,
    year character varying(16),
    total double precision
);


--
-- Data for Name: aviation_turbine_kerosene_volumes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.aviation_turbine_kerosene_volumes (geo_level, geo_code, geo_version, quarter, year, total) FROM stdin;
country	NG	2016	Q1	2018	150.807697
country	NG	2016	Q2	2018	176.983226
country	NG	2016	Q3	2018	189.208961
country	NG	2016	Q4	2018	256.730275
country	NG	2016	Q1	2019	218.87785
country	NG	2016	Q2	2019	176.104234
state	1	2016	Q1	2018	0
state	1	2016	Q2	2018	0
state	1	2016	Q3	2018	0
state	1	2016	Q4	2018	0.049993
state	1	2016	Q1	2019	0.125
state	1	2016	Q2	2019	0
state	2	2016	Q1	2018	0.081
state	2	2016	Q2	2018	0.34104
state	2	2016	Q3	2018	0.373
state	2	2016	Q4	2018	0.085
state	2	2016	Q1	2019	0.168
state	2	2016	Q2	2019	0.045
state	3	2016	Q1	2018	0.033
state	3	2016	Q2	2018	0.18
state	3	2016	Q3	2018	3.565458
state	3	2016	Q4	2018	1.027053
state	3	2016	Q1	2019	0.76742
state	3	2016	Q2	2019	0.13
state	4	2016	Q1	2018	0
state	4	2016	Q2	2018	0.045
state	4	2016	Q3	2018	0.08
state	4	2016	Q4	2018	0.629973
state	4	2016	Q1	2019	0.7035
state	4	2016	Q2	2019	0.045
state	5	2016	Q1	2018	0
state	5	2016	Q2	2018	0.16
state	5	2016	Q3	2018	0.09
state	5	2016	Q4	2018	0
state	5	2016	Q1	2019	0
state	5	2016	Q2	2019	0
state	6	2016	Q1	2018	0
state	6	2016	Q2	2018	0
state	6	2016	Q3	2018	0
state	6	2016	Q4	2018	0
state	6	2016	Q1	2019	0
state	6	2016	Q2	2019	0
state	7	2016	Q1	2018	0.2
state	7	2016	Q2	2018	0.12
state	7	2016	Q3	2018	0.145038
state	7	2016	Q4	2018	0.08
state	7	2016	Q1	2019	0.845
state	7	2016	Q2	2019	0
state	8	2016	Q1	2018	0.903
state	8	2016	Q2	2018	0.645
state	8	2016	Q3	2018	0.805
state	8	2016	Q4	2018	0.378991
state	8	2016	Q1	2019	0.22
state	8	2016	Q2	2019	0
state	9	2016	Q1	2018	0.3
state	9	2016	Q2	2018	0.531
state	9	2016	Q3	2018	0.566
state	9	2016	Q4	2018	0.447993
state	9	2016	Q1	2019	0.35
state	9	2016	Q2	2019	0.525
state	10	2016	Q1	2018	0.161
state	10	2016	Q2	2018	0.496001
state	10	2016	Q3	2018	0.597045
state	10	2016	Q4	2018	0.301992
state	10	2016	Q1	2019	0.134
state	10	2016	Q2	2019	0.257981
state	11	2016	Q1	2018	0
state	11	2016	Q2	2018	0
state	11	2016	Q3	2018	0
state	11	2016	Q4	2018	0
state	11	2016	Q1	2019	0.05
state	11	2016	Q2	2019	0
state	12	2016	Q1	2018	0.128
state	12	2016	Q2	2018	0.04
state	12	2016	Q3	2018	0.303998
state	12	2016	Q4	2018	0.120996
state	12	2016	Q1	2019	0.045
state	12	2016	Q2	2019	0.113
state	13	2016	Q1	2018	0
state	13	2016	Q2	2018	0
state	13	2016	Q3	2018	0.26
state	13	2016	Q4	2018	0
state	13	2016	Q1	2019	0.194
state	13	2016	Q2	2019	0
state	14	2016	Q1	2018	0.34
state	14	2016	Q2	2018	0.959
state	14	2016	Q3	2018	1.257
state	14	2016	Q4	2018	2.86249
state	14	2016	Q1	2019	0.978
state	14	2016	Q2	2019	0.719
state	15	2016	Q1	2018	11.997857
state	15	2016	Q2	2018	26.847616
state	15	2016	Q3	2018	30.538669
state	15	2016	Q4	2018	30.996892
state	15	2016	Q1	2019	0
state	15	2016	Q2	2019	21.079068
state	16	2016	Q1	2018	0
state	16	2016	Q2	2018	0
state	16	2016	Q3	2018	0
state	16	2016	Q4	2018	0
state	16	2016	Q1	2019	0.305
state	16	2016	Q2	2019	0.068
state	17	2016	Q1	2018	0.08
state	17	2016	Q2	2018	0.13
state	17	2016	Q3	2018	0.8385
state	17	2016	Q4	2018	0.613964
state	17	2016	Q1	2019	0
state	17	2016	Q2	2019	0.37
state	18	2016	Q1	2018	0
state	18	2016	Q2	2018	0
state	18	2016	Q3	2018	0
state	18	2016	Q4	2018	0
state	18	2016	Q1	2019	1
state	18	2016	Q2	2019	0
state	19	2016	Q1	2018	0.66
state	19	2016	Q2	2018	0.876
state	19	2016	Q3	2018	0.955
state	19	2016	Q4	2018	1.840999
state	19	2016	Q1	2019	4.956908
state	19	2016	Q2	2019	0.383
state	20	2016	Q1	2018	2.377853
state	20	2016	Q2	2018	5.147907
state	20	2016	Q3	2018	11.835884
state	20	2016	Q4	2018	5.206455
state	20	2016	Q1	2019	0.045
state	20	2016	Q2	2019	8.436078
state	21	2016	Q1	2018	0
state	21	2016	Q2	2018	0.069
state	21	2016	Q3	2018	0.045
state	21	2016	Q4	2018	0.045
state	21	2016	Q1	2019	0
state	21	2016	Q2	2019	0.125
state	22	2016	Q1	2018	0
state	22	2016	Q2	2018	0
state	22	2016	Q3	2018	0
state	22	2016	Q4	2018	0
state	22	2016	Q1	2019	0.133
state	22	2016	Q2	2019	0
state	23	2016	Q1	2018	0
state	23	2016	Q2	2018	0
state	23	2016	Q3	2018	0.04
state	23	2016	Q4	2018	0.033
state	23	2016	Q1	2019	0.589
state	23	2016	Q2	2019	0
state	24	2016	Q1	2018	0.02
state	24	2016	Q2	2018	0
state	24	2016	Q3	2018	0.099
state	24	2016	Q4	2018	0.135
state	24	2016	Q1	2019	173.764192
state	24	2016	Q2	2019	0.05
state	25	2016	Q1	2018	129.533046
state	25	2016	Q2	2018	134.554508
state	25	2016	Q3	2018	127.941156
state	25	2016	Q4	2018	204.304687
state	25	2016	Q1	2019	0.078
state	25	2016	Q2	2019	140.852406
state	26	2016	Q1	2018	0
state	26	2016	Q2	2018	0
state	26	2016	Q3	2018	0
state	26	2016	Q4	2018	0
state	26	2016	Q1	2019	0.443
state	26	2016	Q2	2019	0
state	27	2016	Q1	2018	0.035
state	27	2016	Q2	2018	0
state	27	2016	Q3	2018	0.045
state	27	2016	Q4	2018	0.16
state	27	2016	Q1	2019	2.285498
state	27	2016	Q2	2019	0
state	28	2016	Q1	2018	0.64075
state	28	2016	Q2	2018	0.2892
state	28	2016	Q3	2018	1.2495
state	28	2016	Q4	2018	1.234992
state	28	2016	Q1	2019	0.201
state	28	2016	Q2	2019	0.3905
state	29	2016	Q1	2018	0.099
state	29	2016	Q2	2018	0
state	29	2016	Q3	2018	0.099
state	29	2016	Q4	2018	0.165
state	29	2016	Q1	2019	0.493
state	29	2016	Q2	2019	0.022
state	30	2016	Q1	2018	0
state	30	2016	Q2	2018	0.218
state	30	2016	Q3	2018	0.222
state	30	2016	Q4	2018	0.362
state	30	2016	Q1	2019	0.693001
state	30	2016	Q2	2019	0
state	31	2016	Q1	2018	0.06
state	31	2016	Q2	2018	0.139
state	31	2016	Q3	2018	0.928
state	31	2016	Q4	2018	0.680999
state	31	2016	Q1	2019	0.325
state	31	2016	Q2	2019	0
state	32	2016	Q1	2018	0
state	32	2016	Q2	2018	0
state	32	2016	Q3	2018	0.21044
state	32	2016	Q4	2018	0.32798
state	32	2016	Q1	2019	5.773942
state	32	2016	Q2	2019	0.08
state	33	2016	Q1	2018	3.158191
state	33	2016	Q2	2018	5.068954
state	33	2016	Q3	2018	5.510273
state	33	2016	Q4	2018	4.335825
state	33	2016	Q1	2019	0.342
state	33	2016	Q2	2019	2.345201
state	34	2016	Q1	2018	0
state	34	2016	Q2	2018	0.126
state	34	2016	Q3	2018	0.609
state	34	2016	Q4	2018	0.221001
state	34	2016	Q1	2019	0
state	34	2016	Q2	2019	0.068
state	35	2016	Q1	2018	0
state	35	2016	Q2	2018	0
state	35	2016	Q3	2018	0
state	35	2016	Q4	2018	0
state	35	2016	Q1	2019	0
state	35	2016	Q2	2019	0
state	36	2016	Q1	2018	0
state	36	2016	Q2	2018	0
state	36	2016	Q3	2018	0
state	36	2016	Q4	2018	0
state	36	2016	Q1	2019	0.066
state	36	2016	Q2	2019	0
state	37	2016	Q1	2018	0
state	37	2016	Q2	2018	0
state	37	2016	Q3	2018	0
state	37	2016	Q4	2018	0.082
state	37	2016	Q1	2019	22.804389
state	37	2016	Q2	2019	0
\.


--
-- Name: aviation_turbine_kerosene_volumes aviation_turbine_kerosene_volumes_pkey; type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.aviation_turbine_kerosene_volumes
    ADD CONSTRAINT aviation_turbine_kerosene_volumes_pkey PRIMARY KEY (geo_level, geo_code, geo_version, quarter, year);


--
-- PostgreSQL database dump complete
--
