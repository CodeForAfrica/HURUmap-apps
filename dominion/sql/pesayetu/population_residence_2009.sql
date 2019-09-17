--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY pesayetu.population_residence_2009 DROP CONSTRAINT IF EXISTS pk_population_residence_2009;
DROP TABLE IF EXISTS pesayetu.population_residence_2009;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: population_residence_2009; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.population_residence_2009 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "population_residence_2009" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: population_residence_2009; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.population_residence_2009 (geo_level, geo_code, geo_version, "population_residence_2009", total) FROM stdin;
county	30	2009	urban	61551
county	36	2009	urban	132255
county	39	2009	urban	298696
county	40	2009	urban	122190
county	28	2009	urban	53186
county	14	2009	urban	82921
county	7	2009	urban	146668
county	43	2009	urban	138051
county	11	2009	urban	62374
county	34	2009	urban	284862
county	37	2009	urban	252611
country	KE	2009	urban	12487375
county	35	2009	urban	228318
county	22	2009	urban	1017476
county	3	2009	urban	285482
county	20	2009	urban	83404
county	45	2009	urban	271719
county	42	2009	urban	507720
county	15	2009	urban	139909
county	2	2009	urban	117676
county	31	2009	urban	99117
county	5	2009	urban	20238
county	16	2009	urban	571355
county	17	2009	urban	104297
county	9	2009	urban	185568
county	10	2009	urban	64009
county	12	2009	urban	190497
county	44	2009	urban	311512
county	1	2009	urban	939370
county	21	2009	urban	145202
county	47	2009	urban	3138369
county	32	2009	urban	735025
county	29	2009	urban	102281
county	33	2009	urban	58494
county	46	2009	urban	68303
county	18	2009	urban	110518
county	19	2009	urban	169617
county	25	2009	urban	38664
county	41	2009	urban	90627
county	6	2009	urban	64289
county	4	2009	urban	36065
county	13	2009	urban	8535
county	26	2009	urban	167420
county	23	2009	urban	121719
county	27	2009	urban	345559
county	38	2009	urban	174105
county	8	2009	urban	96855
county	24	2009	urban	42696
county	30	2009	rural	494010
county	36	2009	rural	759580
county	39	2009	rural	1076367
county	40	2009	rural	621756
county	28	2009	rural	316812
county	14	2009	rural	433291
county	7	2009	rural	476392
county	43	2009	rural	825743
county	11	2009	rural	80920
county	34	2009	rural	402450
county	37	2009	rural	1408040
country	KE	2009	rural	26122722
county	35	2009	rural	362372
county	22	2009	rural	656309
county	3	2009	rural	824253
county	20	2009	rural	444650
county	45	2009	rural	991840
county	42	2009	rural	461189
county	15	2009	rural	872800
county	2	2009	rural	532255
county	31	2009	rural	300110
county	5	2009	rural	81301
county	16	2009	rural	527229
county	17	2009	rural	780230
county	9	2009	rural	840188
county	10	2009	rural	227157
county	12	2009	rural	1401036
county	44	2009	rural	605658
county	1	2009	rural	0
county	21	2009	rural	746876
county	47	2009	rural	0
county	32	2009	rural	868300
county	29	2009	rural	650684
county	33	2009	rural	792426
county	46	2009	rural	418672
county	18	2009	rural	485750
county	19	2009	rural	523941
county	25	2009	rural	185283
county	41	2009	rural	751677
county	6	2009	rural	220368
county	4	2009	rural	204010
county	13	2009	rural	121563
county	26	2009	rural	651337
county	23	2009	rural	733680
county	27	2009	rural	548620
county	38	2009	rural	380517
county	8	2009	rural	565086
county	24	2009	rural	469994
\.


--
-- Name: population_residence_2009 pk_population_residence_2009; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.population_residence_2009
    ADD CONSTRAINT pk_population_residence_2009 PRIMARY KEY (geo_level, geo_code, geo_version, "population_residence_2009");


--
-- PostgreSQL database dump complete
--

