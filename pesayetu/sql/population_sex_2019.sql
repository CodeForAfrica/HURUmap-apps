--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.population_sex_2019 DROP CONSTRAINT IF EXISTS pk_population_sex_2019;
DROP TABLE IF EXISTS public.population_sex_2019;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: population_sex_2019; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.population_sex_2019 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    sex character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: population_sex_2019; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.population_sex_2019 (geo_level, geo_code, geo_version, sex, total) FROM stdin;
county	1	2009	Female	598046
county	1	2009	Intersex	30
county	1	2009	Male	610257
county	2	2009	Female	441681
county	2	2009	Intersex	18
county	2	2009	Male	425121
county	3	2009	Female	749673
county	3	2009	Intersex	25
county	3	2009	Male	704089
county	4	2009	Female	157391
county	4	2009	Intersex	2
county	4	2009	Male	158550
county	5	2009	Female	67813
county	5	2009	Intersex	4
county	5	2009	Male	76103
county	6	2009	Female	167327
county	6	2009	Intersex	7
county	6	2009	Male	173337
county	7	2009	Female	382344
county	7	2009	Intersex	34
county	7	2009	Male	458975
county	8	2009	Female	365840
county	8	2009	Intersex	49
county	8	2009	Male	415374
county	9	2009	Female	432444
county	9	2009	Intersex	37
county	9	2009	Male	434976
county	10	2009	Female	216219
county	10	2009	Intersex	18
county	10	2009	Male	243548
county	11	2009	Female	128483
county	11	2009	Intersex	9
county	11	2009	Male	139510
county	12	2009	Female	777975
county	12	2009	Intersex	41
county	12	2009	Male	767698
county	13	2009	Female	199406
county	13	2009	Intersex	7
county	13	2009	Male	193764
county	14	2009	Female	304367
county	14	2009	Intersex	24
county	14	2009	Male	304208
county	15	2009	Female	587151
county	15	2009	Intersex	33
county	15	2009	Male	549003
county	16	2009	Female	711191
county	16	2009	Intersex	34
county	16	2009	Male	710707
county	17	2009	Female	497942
county	17	2009	Intersex	20
county	17	2009	Male	489691
county	18	2009	Female	323247
county	18	2009	Intersex	20
county	18	2009	Male	315022
county	19	2009	Female	384845
county	19	2009	Intersex	31
county	19	2009	Male	374288
county	20	2009	Female	308369
county	20	2009	Intersex	31
county	20	2009	Male	302011
county	21	2009	Female	532669
county	21	2009	Intersex	31
county	21	2009	Male	523940
county	22	2009	Female	1230454
county	22	2009	Intersex	135
county	22	2009	Male	1187146
county	23	2009	Female	448868
county	23	2009	Intersex	21
county	23	2009	Male	478087
county	24	2009	Female	314213
county	24	2009	Intersex	15
county	24	2009	Male	307013
county	25	2009	Female	153546
county	25	2009	Intersex	7
county	25	2009	Male	156774
county	26	2009	Female	501206
county	26	2009	Intersex	28
county	26	2009	Male	489107
county	27	2009	Female	582889
county	27	2009	Intersex	28
county	27	2009	Male	580269
county	28	2009	Female	227151
county	28	2009	Intersex	12
county	28	2009	Male	227317
county	29	2009	Female	444430
county	29	2009	Intersex	22
county	29	2009	Male	441259
county	30	2009	Female	330428
county	30	2009	Intersex	13
county	30	2009	Male	336322
county	31	2009	Female	259102
county	31	2009	Intersex	18
county	31	2009	Male	259440
county	32	2009	Female	1084835
county	32	2009	Intersex	95
county	32	2009	Male	1077272
county	33	2009	Female	578805
county	33	2009	Intersex	26
county	33	2009	Male	579042
county	34	2009	Female	560704
county	34	2009	Intersex	38
county	34	2009	Male	557098
county	35	2009	Female	451008
county	35	2009	Intersex	28
county	35	2009	Male	450741
county	36	2009	Female	441379
county	36	2009	Intersex	23
county	36	2009	Male	434287
county	37	2009	Female	970406
county	37	2009	Intersex	40
county	37	2009	Male	897133
county	38	2009	Female	306323
county	38	2009	Intersex	12
county	38	2009	Male	283678
county	39	2009	Female	858389
county	39	2009	Intersex	35
county	39	2009	Male	812146
county	40	2009	Female	467401
county	40	2009	Intersex	28
county	40	2009	Male	426252
county	41	2009	Female	521496
county	41	2009	Intersex	18
county	41	2009	Male	471669
county	42	2009	Female	594609
county	42	2009	Intersex	23
county	42	2009	Male	560942
county	43	2009	Female	592367
county	43	2009	Intersex	23
county	43	2009	Male	539560
county	44	2009	Female	580214
county	44	2009	Intersex	35
county	44	2009	Male	536187
county	45	2009	Female	661038
county	45	2009	Intersex	38
county	45	2009	Male	605784
county	46	2009	Female	314656
county	46	2009	Intersex	13
county	46	2009	Male	290907
county	47	2009	Female	2204376
county	47	2009	Intersex	245
county	47	2009	Male	2192452
country	KE	2009	Female	24014716
country	KE	2009	Intersex	1524
country	KE	2009	Male	23548056
\.


--
-- Name: population_sex_2019 pk_population_sex_2019; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.population_sex_2019
    ADD CONSTRAINT pk_population_sex_2019 PRIMARY KEY (geo_level, geo_code, geo_version, sex);


--
-- PostgreSQL database dump complete
--

