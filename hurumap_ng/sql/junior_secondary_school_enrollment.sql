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

ALTER TABLE IF EXISTS ONLY public.junior_secondary_school_enrollment DROP CONSTRAINT IF EXISTS junior_secondary_school_enrollment_pkey;
DROP TABLE IF EXISTS public.junior_secondary_school_enrollment;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: junior_secondary_school_enrollment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.junior_secondary_school_enrollment (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    gender character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: junior_secondary_school_enrollment; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.junior_secondary_school_enrollment (geo_level, geo_code, geo_version, gender, year, total) FROM stdin;
country	NG	2016	Female	2015	2920182
country	NG	2016	Male	2015	3260109
country	NG	2016	Female	2016	2786332
country	NG	2016	Male	2016	3181810
state	1	2016	Female	2015	35347
state	1	2016	Male	2015	31755
state	1	2016	Female	2016	19633
state	1	2016	Male	2016	15709
state	2	2016	Female	2015	46664
state	2	2016	Male	2015	55127
state	2	2016	Female	2016	47614
state	2	2016	Male	2016	56286
state	3	2016	Female	2015	190263
state	3	2016	Male	2015	177488
state	3	2016	Female	2016	92432
state	3	2016	Male	2016	88500
state	4	2016	Female	2015	68637
state	4	2016	Male	2015	61269
state	4	2016	Female	2016	48548
state	4	2016	Male	2016	46064
state	5	2016	Female	2015	70142
state	5	2016	Male	2015	99089
state	5	2016	Female	2016	82239
state	5	2016	Male	2016	112110
state	6	2016	Female	2015	20674
state	6	2016	Male	2015	21514
state	6	2016	Female	2016	17472
state	6	2016	Male	2016	17879
state	7	2016	Female	2015	183168
state	7	2016	Male	2015	234728
state	7	2016	Female	2016	71648
state	7	2016	Male	2016	83618
state	8	2016	Female	2016	55018
state	8	2016	Male	2016	66238
state	9	2016	Female	2015	88609
state	9	2016	Male	2015	87120
state	9	2016	Female	2016	31237
state	9	2016	Male	2016	33075
state	10	2016	Female	2015	110994
state	10	2016	Male	2015	108651
state	10	2016	Female	2016	75388
state	10	2016	Male	2016	79740
state	11	2016	Female	2015	40427
state	11	2016	Male	2015	36570
state	11	2016	Female	2016	50741
state	11	2016	Male	2016	45849
state	12	2016	Female	2015	86814
state	12	2016	Male	2015	85949
state	12	2016	Female	2016	71370
state	12	2016	Male	2016	71213
state	13	2016	Female	2015	28972
state	13	2016	Male	2015	29017
state	13	2016	Female	2016	29604
state	13	2016	Male	2016	29073
state	14	2016	Female	2015	70857
state	14	2016	Male	2015	59619
state	14	2016	Female	2016	66259
state	14	2016	Male	2016	55548
state	15	2016	Female	2015	71190
state	15	2016	Male	2015	68217
state	15	2016	Female	2016	46122
state	15	2016	Male	2016	45205
state	16	2016	Female	2015	38853
state	16	2016	Male	2015	49097
state	16	2016	Female	2016	41000
state	16	2016	Male	2016	51228
state	17	2016	Female	2015	238163
state	17	2016	Male	2015	237404
state	17	2016	Female	2016	208780
state	17	2016	Male	2016	208537
state	18	2016	Female	2015	44392
state	18	2016	Male	2015	63443
state	18	2016	Female	2016	59849
state	18	2016	Male	2016	85958
state	19	2016	Female	2015	44514
state	19	2016	Male	2015	47493
state	19	2016	Female	2016	138047
state	19	2016	Male	2016	167595
state	20	2016	Female	2015	194125
state	20	2016	Male	2015	242369
state	20	2016	Female	2016	199237
state	20	2016	Male	2016	242398
state	21	2016	Female	2015	102746
state	21	2016	Male	2015	144755
state	21	2016	Female	2016	111514
state	21	2016	Male	2016	154668
state	22	2016	Female	2015	46882
state	22	2016	Male	2015	99032
state	22	2016	Female	2016	47804
state	22	2016	Male	2016	95598
state	23	2016	Female	2015	42549
state	23	2016	Male	2015	44101
state	23	2016	Female	2016	31933
state	23	2016	Male	2016	33520
state	24	2016	Female	2015	16842
state	24	2016	Male	2015	17896
state	24	2016	Female	2016	63188
state	24	2016	Male	2016	65939
state	25	2016	Female	2015	238263
state	25	2016	Male	2015	223337
state	25	2016	Female	2016	239663
state	25	2016	Male	2016	232384
state	26	2016	Female	2015	38687
state	26	2016	Male	2015	48968
state	26	2016	Female	2016	46433
state	26	2016	Male	2016	53689
state	27	2016	Female	2015	71654
state	27	2016	Male	2015	107474
state	27	2016	Female	2016	93121
state	27	2016	Male	2016	124255
state	28	2016	Female	2015	146109
state	28	2016	Male	2015	146721
state	28	2016	Female	2016	133614
state	28	2016	Male	2016	135093
state	29	2016	Female	2015	105718
state	29	2016	Male	2015	110753
state	29	2016	Female	2016	60632
state	29	2016	Male	2016	59274
state	30	2016	Female	2015	13281
state	30	2016	Male	2015	12398
state	30	2016	Female	2016	62490
state	30	2016	Male	2016	63876
state	31	2016	Female	2015	165096
state	31	2016	Male	2015	166199
state	31	2016	Female	2016	148830
state	31	2016	Male	2016	146750
state	32	2016	Female	2015	54771
state	32	2016	Male	2015	61491
state	32	2016	Female	2016	47848
state	32	2016	Male	2016	52347
state	33	2016	Female	2015	78108
state	33	2016	Male	2015	72143
state	33	2016	Female	2016	59692
state	33	2016	Male	2016	55633
state	34	2016	Female	2015	32337
state	34	2016	Male	2015	58732
state	34	2016	Female	2016	71132
state	34	2016	Male	2016	128906
state	35	2016	Female	2015	31007
state	35	2016	Male	2015	40638
state	35	2016	Female	2016	49218
state	35	2016	Male	2016	67371
state	36	2016	Female	2015	29227
state	36	2016	Male	2015	46716
state	36	2016	Female	2016	32009
state	36	2016	Male	2016	42643
state	37	2016	Female	2015	34100
state	37	2016	Male	2015	62836
state	37	2016	Female	2016	34973
state	37	2016	Male	2016	68041
\.


--
-- Name: junior_secondary_school_enrollment junior_secondary_school_enrollment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.junior_secondary_school_enrollment
    ADD CONSTRAINT junior_secondary_school_enrollment_pkey PRIMARY KEY (geo_level, geo_code, geo_version, gender, year);


--
-- PostgreSQL database dump complete
--
