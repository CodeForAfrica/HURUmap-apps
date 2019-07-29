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

ALTER TABLE IF EXISTS ONLY public.senior_secondary_school_enrollment DROP CONSTRAINT IF EXISTS senior_secondary_school_enrollment_pkey;
DROP TABLE IF EXISTS public.senior_secondary_school_enrollment;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: senior_secondary_school_enrollment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.senior_secondary_school_enrollment (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    gender character varying(12) NOT NULL,
    year character varying(12) NOT NULL,
    total integer
);


--
-- Data for Name: senior_secondary_school_enrollment; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.senior_secondary_school_enrollment (geo_level, geo_code, geo_version, gender, year, total) FROM stdin;
country	NG	2016	Female	2015	2281418
country	NG	2016	Male	2015	2629526
country	NG	2016	Female	2016	2058117
country	NG	2016	Male	2016	2417192
state	1	2016	Female	2015	21263
state	1	2016	Male	2015	20768
state	1	2016	Female	2016	15917
state	1	2016	Male	2016	12580
state	2	2016	Female	2015	34300
state	2	2016	Male	2015	44636
state	2	2016	Female	2016	34999
state	2	2016	Male	2016	45546
state	3	2016	Female	2015	155368
state	3	2016	Male	2015	154729
state	3	2016	Female	2016	79775
state	3	2016	Male	2016	130116
state	4	2016	Female	2015	29939
state	4	2016	Male	2015	27000
state	4	2016	Female	2016	31606
state	4	2016	Male	2016	27167
state	5	2016	Female	2015	40402
state	5	2016	Male	2015	65721
state	5	2016	Female	2016	47416
state	5	2016	Male	2016	75130
state	6	2016	Female	2015	21597
state	6	2016	Male	2015	24259
state	6	2016	Female	2016	15462
state	6	2016	Male	2016	16986
state	7	2016	Female	2015	188753
state	7	2016	Male	2015	245468
state	7	2016	Female	2016	44421
state	7	2016	Male	2016	53788
state	8	2016	Female	2016	28810
state	8	2016	Male	2016	39726
state	9	2016	Female	2015	69579
state	9	2016	Male	2015	67092
state	9	2016	Female	2016	25244
state	9	2016	Male	2016	25953
state	10	2016	Female	2015	52281
state	10	2016	Male	2015	54200
state	10	2016	Female	2016	61847
state	10	2016	Male	2016	62726
state	11	2016	Female	2015	34886
state	11	2016	Male	2015	31190
state	11	2016	Female	2016	40304
state	11	2016	Male	2016	35808
state	12	2016	Female	2015	48385
state	12	2016	Male	2015	48550
state	12	2016	Female	2016	62744
state	12	2016	Male	2016	59787
state	13	2016	Female	2015	27891
state	13	2016	Male	2015	28283
state	13	2016	Female	2016	25006
state	13	2016	Male	2016	25179
state	14	2016	Female	2015	66113
state	14	2016	Male	2015	53120
state	14	2016	Female	2016	60996
state	14	2016	Male	2016	48796
state	15	2016	Female	2015	36105
state	15	2016	Male	2015	31858
state	15	2016	Female	2016	29672
state	15	2016	Male	2016	27966
state	16	2016	Female	2015	24994
state	16	2016	Male	2015	38742
state	16	2016	Female	2016	27155
state	16	2016	Male	2016	38081
state	17	2016	Female	2015	245488
state	17	2016	Male	2015	232477
state	17	2016	Female	2016	205016
state	17	2016	Male	2016	179880
state	18	2016	Female	2015	25864
state	18	2016	Male	2015	52722
state	18	2016	Female	2016	31371
state	18	2016	Male	2016	55006
state	19	2016	Female	2015	61788
state	19	2016	Male	2015	74464
state	19	2016	Female	2016	76358
state	19	2016	Male	2016	89908
state	20	2016	Female	2015	120731
state	20	2016	Male	2015	177467
state	20	2016	Female	2016	111502
state	20	2016	Male	2016	161304
state	21	2016	Female	2015	52279
state	21	2016	Male	2015	103954
state	21	2016	Female	2016	62457
state	21	2016	Male	2016	106949
state	22	2016	Female	2016	23125
state	22	2016	Male	2016	55369
state	23	2016	Female	2015	35601
state	23	2016	Male	2015	40681
state	23	2016	Female	2016	26917
state	23	2016	Male	2016	29454
state	24	2016	Female	2015	47019
state	24	2016	Male	2015	52519
state	24	2016	Female	2016	48695
state	24	2016	Male	2016	54752
state	25	2016	Female	2015	191285
state	25	2016	Male	2015	183671
state	25	2016	Female	2016	185379
state	25	2016	Male	2016	175485
state	26	2016	Female	2015	37640
state	26	2016	Male	2015	50454
state	26	2016	Female	2016	37813
state	26	2016	Male	2016	49305
state	27	2016	Female	2015	63101
state	27	2016	Male	2015	91850
state	27	2016	Female	2016	69493
state	27	2016	Male	2016	93565
state	28	2016	Female	2015	125979
state	28	2016	Male	2015	125064
state	28	2016	Female	2016	119309
state	28	2016	Male	2016	113185
state	29	2016	Female	2015	71899
state	29	2016	Male	2015	75259
state	29	2016	Female	2016	53841
state	29	2016	Male	2016	53854
state	30	2016	Female	2015	68605
state	30	2016	Male	2015	70065
state	30	2016	Female	2016	40974
state	30	2016	Male	2016	44190
state	31	2016	Female	2015	147412
state	31	2016	Male	2015	140755
state	31	2016	Female	2016	123603
state	31	2016	Male	2016	119528
state	32	2016	Female	2015	47524
state	32	2016	Male	2015	55501
state	32	2016	Female	2016	38930
state	32	2016	Male	2016	44582
state	33	2016	Female	2016	62424
state	33	2016	Male	2016	51085
state	34	2016	Female	2015	20610
state	34	2016	Male	2015	39411
state	34	2016	Female	2016	27848
state	34	2016	Male	2016	50240
state	35	2016	Female	2015	20717
state	35	2016	Male	2015	26588
state	35	2016	Female	2016	21955
state	35	2016	Male	2016	29375
state	36	2016	Female	2015	26373
state	36	2016	Male	2015	49469
state	36	2016	Female	2016	15063
state	36	2016	Male	2016	28517
state	37	2016	Female	2015	19647
state	37	2016	Male	2015	51539
state	37	2016	Female	2016	44670
state	37	2016	Male	2016	106324
\.


--
-- Name: senior_secondary_school_enrollment senior_secondary_school_enrollment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.senior_secondary_school_enrollment
    ADD CONSTRAINT senior_secondary_school_enrollment_pkey PRIMARY KEY (geo_level, geo_code, geo_version, gender, year);


--
-- PostgreSQL database dump complete
--
