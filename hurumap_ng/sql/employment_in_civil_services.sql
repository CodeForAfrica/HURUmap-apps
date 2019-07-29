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

ALTER TABLE IF EXISTS ONLY public.employment_in_civil_services DROP CONSTRAINT IF EXISTS employment_in_civil_services_pkey;
DROP TABLE IF EXISTS public.employment_in_civil_services;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: employment_in_civil_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.employment_in_civil_services (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    level character varying(10) NOT NULL,
    gender character varying(10) NOT NULL,
    total integer
);


--
-- Data for Name: employment_in_civil_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.employment_in_civil_services (geo_level, geo_code, geo_version, level, gender, total) FROM stdin;
state	1	2016	Junior	Female	2274
state	1	2016	Junior	Male	3043
state	1	2016	Senior	Female	2302
state	1	2016	Senior	Male	2946
state	2	2016	Junior	Female	2253
state	2	2016	Junior	Male	8642
state	2	2016	Senior	Female	6434
state	2	2016	Senior	Male	14055
state	3	2016	Junior	Female	0
state	3	2016	Junior	Male	0
state	3	2016	Senior	Female	0
state	3	2016	Senior	Male	0
state	4	2016	Junior	Female	838
state	4	2016	Junior	Male	733
state	4	2016	Senior	Female	1980
state	4	2016	Senior	Male	2488
state	5	2016	Junior	Female	0
state	5	2016	Junior	Male	0
state	5	2016	Senior	Female	4022
state	5	2016	Senior	Male	16745
state	6	2016	Junior	Female	3722
state	6	2016	Junior	Male	3193
state	6	2016	Senior	Female	7370
state	6	2016	Senior	Male	8952
state	7	2016	Junior	Female	0
state	7	2016	Junior	Male	0
state	7	2016	Senior	Female	0
state	7	2016	Senior	Male	0
state	8	2016	Junior	Female	3
state	8	2016	Junior	Male	19
state	8	2016	Senior	Female	14
state	8	2016	Senior	Male	32
state	9	2016	Junior	Female	0
state	9	2016	Junior	Male	0
state	9	2016	Senior	Female	0
state	9	2016	Senior	Male	0
state	10	2016	Junior	Female	0
state	10	2016	Junior	Male	0
state	10	2016	Senior	Female	0
state	10	2016	Senior	Male	0
state	11	2016	Junior	Female	871
state	11	2016	Junior	Male	977
state	11	2016	Senior	Female	841
state	11	2016	Senior	Male	1662
state	12	2016	Junior	Female	0
state	12	2016	Junior	Male	0
state	12	2016	Senior	Female	0
state	12	2016	Senior	Male	0
state	13	2016	Junior	Female	4556
state	13	2016	Junior	Male	5001
state	13	2016	Senior	Female	2567
state	13	2016	Senior	Male	3375
state	14	2016	Junior	Female	8220
state	14	2016	Junior	Male	6470
state	14	2016	Senior	Female	5724
state	14	2016	Senior	Male	4883
state	16	2016	Junior	Female	0
state	16	2016	Junior	Male	0
state	16	2016	Senior	Female	0
state	16	2016	Senior	Male	0
state	17	2016	Junior	Female	845
state	17	2016	Junior	Male	1165
state	17	2016	Senior	Female	1520
state	17	2016	Senior	Male	1171
state	18	2016	Junior	Female	0
state	18	2016	Junior	Male	0
state	18	2016	Senior	Female	0
state	18	2016	Senior	Male	0
state	19	2016	Junior	Female	1
state	19	2016	Junior	Male	12
state	19	2016	Senior	Female	32
state	19	2016	Senior	Male	32
state	20	2016	Junior	Female	0
state	20	2016	Junior	Male	0
state	20	2016	Senior	Female	0
state	20	2016	Senior	Male	0
state	21	2016	Junior	Female	0
state	21	2016	Junior	Male	0
state	21	2016	Senior	Female	0
state	21	2016	Senior	Male	0
state	22	2016	Junior	Female	39
state	22	2016	Junior	Male	1
state	22	2016	Senior	Female	77
state	22	2016	Senior	Male	12
state	23	2016	Junior	Female	0
state	23	2016	Junior	Male	0
state	23	2016	Senior	Female	0
state	23	2016	Senior	Male	0
state	24	2016	Junior	Female	470
state	24	2016	Junior	Male	501
state	24	2016	Senior	Female	1823
state	24	2016	Senior	Male	2690
state	25	2016	Junior	Female	264
state	25	2016	Junior	Male	596
state	25	2016	Senior	Female	430
state	25	2016	Senior	Male	494
state	26	2016	Junior	Female	5675
state	26	2016	Junior	Male	7624
state	26	2016	Senior	Female	4000
state	26	2016	Senior	Male	1225
state	27	2016	Junior	Female	9692
state	27	2016	Junior	Male	3691
state	27	2016	Senior	Female	11989
state	27	2016	Senior	Male	5343
country	NG	2016	Junior	Female	56889
country	NG	2016	Junior	Male	63698
country	NG	2016	Senior	Female	75892
country	NG	2016	Senior	Male	93190
state	28	2016	Junior	Female	13063
state	28	2016	Junior	Male	11467
state	28	2016	Senior	Female	19928
state	28	2016	Senior	Male	13524
state	29	2016	Junior	Female	0
state	29	2016	Junior	Male	0
state	29	2016	Senior	Female	0
state	29	2016	Senior	Male	0
state	30	2016	Junior	Female	19
state	30	2016	Junior	Male	23
state	30	2016	Senior	Female	10
state	30	2016	Senior	Male	10
state	31	2016	Junior	Female	9
state	31	2016	Junior	Male	12
state	31	2016	Senior	Female	12
state	31	2016	Senior	Male	14
state	32	2016	Junior	Female	1100
state	32	2016	Junior	Male	1400
state	32	2016	Senior	Female	400
state	32	2016	Senior	Male	500
state	33	2016	Junior	Female	622
state	33	2016	Junior	Male	1236
state	33	2016	Senior	Female	1596
state	33	2016	Senior	Male	2883
state	34	2016	Junior	Female	1
state	34	2016	Junior	Male	44
state	34	2016	Senior	Female	4
state	34	2016	Senior	Male	16
state	35	2016	Junior	Female	1
state	35	2016	Junior	Male	44
state	35	2016	Senior	Female	20
state	35	2016	Senior	Male	37
state	36	2016	Junior	Female	2351
state	36	2016	Junior	Male	7804
state	36	2016	Senior	Female	2797
state	36	2016	Senior	Male	10101
state	37	2016	Junior	Female	0
state	37	2016	Junior	Male	0
state	37	2016	Senior	Female	0
state	37	2016	Senior	Male	0
\.


--
-- Name: employment_in_civil_services employment_in_civil_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employment_in_civil_services
    ADD CONSTRAINT employment_in_civil_services_pkey PRIMARY KEY (geo_level, geo_code, geo_version, level, gender);


--
-- PostgreSQL database dump complete
--
