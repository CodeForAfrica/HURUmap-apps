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
1	state	2016	2013	0.9477
1	state	2016	2016	0.8808
2	state	2016	2013	0.7672
2	state	2016	2016	0.6606
3	state	2016	2013	0.9477
3	state	2016	2016	0.9053
4	state	2016	2013	0.9682
4	state	2016	2016	0.921
5	state	2016	2013	0.5142
5	state	2016	2016	0.4145
6	state	2016	2013	0.9663
6	state	2016	2016	0.9259
7	state	2016	2013	0.8558
7	state	2016	2016	0.8061
8	state	2016	2013	0.4819
8	state	2016	2016	0.5871
9	state	2016	2013	0.9814
9	state	2016	2016	0.8574
10	state	2016	2013	0.9695
10	state	2016	2016	0.9058
11	state	2016	2013	0.8009
11	state	2016	2016	0.7628
12	state	2016	2013	0.9598
12	state	2016	2016	0.8486
13	state	2016	2013	0.9414
13	state	2016	2016	0.8944
14	state	2016	2013	0.9339
14	state	2016	2016	0.8936
15	state	2016	2013	0.9218
15	state	2016	2016	0.8152
16	state	2016	2013	0.5467
16	state	2016	2016	0.4923
17	state	2016	2013	0.9511
17	state	2016	2016	0.9159
18	state	2016	2013	0.4304
18	state	2016	2016	0.4311
19	state	2016	2013	0.8553
19	state	2016	2016	0.6416
20	state	2016	2013	0.595
20	state	2016	2016	0.4957
21	state	2016	2013	0.5419
21	state	2016	2016	0.4395
22	state	2016	2013	0.4472
22	state	2016	2016	0.3955
23	state	2016	2013	0.9071
23	state	2016	2016	0.8572
24	state	2016	2013	0.8334
24	state	2016	2016	0.6967
25	state	2016	2013	1.0365
25	state	2016	2016	1.0069
26	state	2016	2013	0.8415
26	state	2016	2016	0.7861
27	state	2016	2013	0.6869
27	state	2016	2016	0.5596
NG	country	2016	2013	0.8139
NG	country	2016	2016	0.7966
28	state	2016	2013	0.9331
28	state	2016	2016	0.7797
29	state	2016	2013	0.9102
29	state	2016	2016	0.8709
30	state	2016	2013	0.926
30	state	2016	2016	0.8551
31	state	2016	2013	0.8523
31	state	2016	2016	0.683
32	state	2016	2013	0.8895
32	state	2016	2016	0.7659
33	state	2016	2013	1.0334
33	state	2016	2016	0.9215
34	state	2016	2013	0.507
34	state	2016	2016	0.3336
35	state	2016	2013	0.7646
35	state	2016	2016	0.7551
36	state	2016	2013	0.3703
36	state	2016	2016	0.3295
37	state	2016	2013	0.605
37	state	2016	2016	0.4238
\.


--
-- Name: hdi_education hdi_education_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hdi_education
    ADD CONSTRAINT hdi_education_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--
