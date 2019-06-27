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

ALTER TABLE IF EXISTS ONLY public.hiv_patients DROP CONSTRAINT IF EXISTS hiv_patients_pkey;
DROP TABLE IF EXISTS public.hiv_patients;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: hiv_patients; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hiv_patients (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    gender character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: hiv_patients; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.hiv_patients (geo_level, geo_code, geo_version, year, gender, total) FROM stdin;
country	NG	2016	Male	2015	1501820
country	NG	2016	Male	2016	1500879
country	NG	2016	Female	2015	1671220
country	NG	2016	Female	2016	1699219
state	1	2016	Male	2015	24040
state	1	2016	Male	2016	23659
state	1	2016	Female	2015	33430
state	1	2016	Female	2016	33344
state	2	2016	Male	2015	22182
state	2	2016	Male	2016	21435
state	2	2016	Female	2015	28402
state	2	2016	Female	2016	33344
state	3	2016	Male	2015	108442
state	3	2016	Male	2016	111777
state	3	2016	Female	2015	110852
state	3	2016	Female	2016	115251
state	4	2016	Male	2015	16967
state	4	2016	Male	2016	17598
state	4	2016	Female	2015	24006
state	4	2016	Female	2016	25051
state	5	2016	Male	2015	30389
state	5	2016	Male	2016	29426
state	5	2016	Female	2015	20827
state	5	2016	Female	2016	20717
state	6	2016	Male	2015	28516
state	6	2016	Male	2016	27929
state	6	2016	Female	2015	38026
state	6	2016	Female	2016	37483
state	7	2016	Male	2015	82335
state	7	2016	Male	2016	82776
state	7	2016	Female	2015	100936
state	7	2016	Female	2016	102403
state	8	2016	Male	2015	26915
state	8	2016	Male	2016	26500
state	8	2016	Female	2015	33274
state	8	2016	Female	2016	32910
state	9	2016	Male	2015	40822
state	9	2016	Male	2016	40727
state	9	2016	Female	2015	35121
state	9	2016	Female	2016	36056
state	10	2016	Male	2015	13399
state	10	2016	Male	2016	13459
state	10	2016	Female	2015	19426
state	10	2016	Female	2016	19759
state	11	2016	Male	2015	25222
state	11	2016	Male	2016	25673
state	11	2016	Female	2015	22410
state	11	2016	Female	2016	22954
state	12	2016	Male	2015	90583
state	12	2016	Male	2016	92045
state	12	2016	Female	2015	47929
state	12	2016	Female	2016	49540
state	13	2016	Male	2015	2086
state	13	2016	Male	2016	2173
state	13	2016	Female	2015	2695
state	13	2016	Female	2016	2852
state	14	2016	Male	2015	14679
state	14	2016	Male	2016	15112
state	14	2016	Female	2015	18778
state	14	2016	Female	2016	19451
state	15	2016	Male	2015	6502
state	15	2016	Male	2016	6334
state	15	2016	Female	2015	8421
state	15	2016	Female	2016	8314
state	16	2016	Male	2015	42635
state	16	2016	Male	2016	42507
state	16	2016	Female	2015	58385
state	16	2016	Female	2016	60239
state	17	2016	Male	2015	18482
state	17	2016	Male	2016	18573
state	17	2016	Female	2015	36404
state	17	2016	Female	2016	36380
state	18	2016	Male	2015	31870
state	18	2016	Male	2016	34265
state	18	2016	Female	2015	74202
state	18	2016	Female	2016	79894
state	19	2016	Male	2015	47181
state	19	2016	Male	2016	47264
state	19	2016	Female	2015	20120
state	19	2016	Female	2016	20395
state	20	2016	Male	2015	86976
state	20	2016	Male	2016	82303
state	20	2016	Female	2015	81868
state	20	2016	Female	2016	79462
state	21	2016	Male	2015	64733
state	21	2016	Male	2016	62461
state	21	2016	Female	2015	40915
state	21	2016	Female	2016	40737
state	22	2016	Male	2015	32706
state	22	2016	Male	2016	29919
state	22	2016	Female	2015	15260
state	22	2016	Female	2016	14930
state	23	2016	Male	2015	11142
state	23	2016	Male	2016	10692
state	23	2016	Female	2015	13249
state	23	2016	Female	2016	12899
state	24	2016	Male	2015	24140
state	24	2016	Male	2016	22789
state	24	2016	Female	2015	25024
state	24	2016	Female	2016	24955
state	25	2016	Male	2015	15099
state	25	2016	Male	2016	15439
state	25	2016	Female	2015	16041
state	25	2016	Female	2016	16541
state	26	2016	Male	2015	80194
state	26	2016	Male	2016	84242
state	26	2016	Female	2015	119052
state	26	2016	Female	2016	125226
state	27	2016	Male	2015	39539
state	27	2016	Male	2016	41132
state	27	2016	Female	2015	64329
state	27	2016	Female	2016	67189
state	28	2016	Male	2015	24909
state	28	2016	Male	2016	24040
state	28	2016	Female	2015	43726
state	28	2016	Female	2016	42960
state	29	2016	Male	2015	58788
state	29	2016	Male	2016	57282
state	29	2016	Female	2015	25728
state	29	2016	Female	2016	25940
state	30	2016	Male	2015	43357
state	30	2016	Male	2016	42868
state	30	2016	Female	2015	39717
state	30	2016	Female	2016	39823
state	31	2016	Male	2015	26940
state	31	2016	Male	2016	27221
state	31	2016	Female	2015	35263
state	31	2016	Female	2016	35873
state	32	2016	Male	2015	91284
state	32	2016	Male	2016	92335
state	32	2016	Female	2015	118373
state	32	2016	Female	2016	120265
state	33	2016	Male	2015	27857
state	33	2016	Male	2016	28560
state	33	2016	Female	2015	37733
state	33	2016	Female	2016	38904
state	34	2016	Male	2015	48905
state	34	2016	Male	2016	49258
state	34	2016	Female	2015	65775
state	34	2016	Female	2016	66722
state	35	2016	Male	2015	57683
state	35	2016	Male	2016	56592
state	35	2016	Female	2015	74682
state	35	2016	Female	2016	73397
state	36	2016	Male	2015	68273
state	36	2016	Male	2016	69707
state	36	2016	Female	2015	87802
state	36	2016	Female	2016	90796
state	37	2016	Male	2015	26048
state	37	2016	Male	2016	24807
state	37	2016	Female	2015	33039
state	37	2016	Female	2016	31619
\.


--
-- Name: hiv_patients hiv_patients_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hiv_patients
    ADD CONSTRAINT hiv_patients_pkey PRIMARY KEY (geo_level, geo_code, geo_version, gender, year);


--
-- PostgreSQL database dump complete
--
