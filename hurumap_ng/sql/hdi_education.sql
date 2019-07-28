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

ALTER TABLE IF EXISTS ONLY public.hdi_education DROP CONSTRAINT IF EXISTS hdi_education_pkey;
DROP TABLE IF EXISTS public.hdi_education;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: hdi_education; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hdi_education (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: hdi_education; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.hdi_education (geo_level, geo_code, geo_version, year, total) FROM stdin;
state	1	2016	2013	0.9477
state	1	2016	2016	0.8808
state	2	2016	2013	0.7672
state	2	2016	2016	0.6606
state	3	2016	2013	0.9477
state	3	2016	2016	0.9053
state	4	2016	2013	0.9682
state	4	2016	2016	0.921
state	5	2016	2013	0.5142
state	5	2016	2016	0.4145
state	6	2016	2013	0.9663
state	6	2016	2016	0.9259
state	7	2016	2013	0.8558
state	7	2016	2016	0.8061
state	8	2016	2013	0.4819
state	8	2016	2016	0.5871
state	9	2016	2013	0.9814
state	9	2016	2016	0.8574
state	10	2016	2013	0.9695
state	10	2016	2016	0.9058
state	11	2016	2013	0.8009
state	11	2016	2016	0.7628
state	12	2016	2013	0.9598
state	12	2016	2016	0.8486
state	13	2016	2013	0.9414
state	13	2016	2016	0.8944
state	14	2016	2013	0.9339
state	14	2016	2016	0.8936
state	15	2016	2013	0.9218
state	15	2016	2016	0.8152
state	16	2016	2013	0.5467
state	16	2016	2016	0.4923
state	17	2016	2013	0.9511
state	17	2016	2016	0.9159
state	18	2016	2013	0.4304
state	18	2016	2016	0.4311
state	19	2016	2013	0.8553
state	19	2016	2016	0.6416
state	20	2016	2013	0.595
state	20	2016	2016	0.4957
state	21	2016	2013	0.5419
state	21	2016	2016	0.4395
state	22	2016	2013	0.4472
state	22	2016	2016	0.3955
state	23	2016	2013	0.9071
state	23	2016	2016	0.8572
state	24	2016	2013	0.8334
state	24	2016	2016	0.6967
state	25	2016	2013	1.0365
state	25	2016	2016	1.0069
state	26	2016	2013	0.8415
state	26	2016	2016	0.7861
state	27	2016	2013	0.6869
state	27	2016	2016	0.5596
country	NG	2016	2013	0.8139
country	NG	2016	2016	0.7966
state	28	2016	2013	0.9331
state	28	2016	2016	0.7797
state	29	2016	2013	0.9102
state	29	2016	2016	0.8709
state	30	2016	2013	0.926
state	30	2016	2016	0.8551
state	31	2016	2013	0.8523
state	31	2016	2016	0.683
state	32	2016	2013	0.8895
state	32	2016	2016	0.7659
state	33	2016	2013	1.0334
state	33	2016	2016	0.9215
state	34	2016	2013	0.507
state	34	2016	2016	0.3336
state	35	2016	2013	0.7646
state	35	2016	2016	0.7551
state	36	2016	2013	0.3703
state	36	2016	2016	0.3295
state	37	2016	2013	0.605
state	37	2016	2016	0.4238
\.


--
-- Name: hdi_education hdi_education_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hdi_education
    ADD CONSTRAINT hdi_education_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
