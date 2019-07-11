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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_handwashing_facility DROP CONSTRAINT IF EXISTS pk_workers_hostel_handwashing_facility;
DROP TABLE IF EXISTS public.workers_hostel_handwashing_facility;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_handwashing_facility; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_handwashing_facility (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_handwashing_facility character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_handwashing_facility; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_handwashing_facility (geo_level, geo_code, geo_version, workers_hostel_handwashing_facility, total) FROM stdin;
province	ZA_1_008	2009	Yes	21032
province	ZA_1_008	2009	No	5406
province	ZA_1_008	2009	Do not know	0
province	ZA_1_008	2009	Not applicable	0
province	ZA_1_008	2009	Unspecified	0
province	ZA_1_003	2009	Yes	29497
province	ZA_1_003	2009	No	2875
province	ZA_1_003	2009	Do not know	0
province	ZA_1_003	2009	Not applicable	0
province	ZA_1_003	2009	Unspecified	0
province	ZA_1_006	2009	Yes	24972
province	ZA_1_006	2009	No	4820
province	ZA_1_006	2009	Do not know	0
province	ZA_1_006	2009	Not applicable	317
province	ZA_1_006	2009	Unspecified	0
province	ZA_1_002	2009	Yes	2481
province	ZA_1_002	2009	No	2715
province	ZA_1_002	2009	Do not know	0
province	ZA_1_002	2009	Not applicable	0
province	ZA_1_002	2009	Unspecified	0
province	ZA_1_001	2009	Yes	45773
province	ZA_1_001	2009	No	25950
province	ZA_1_001	2009	Do not know	0
province	ZA_1_001	2009	Not applicable	0
province	ZA_1_001	2009	Unspecified	6783
province	ZA_1_007	2009	Yes	4052
province	ZA_1_007	2009	No	14749
province	ZA_1_007	2009	Do not know	0
province	ZA_1_007	2009	Not applicable	0
province	ZA_1_007	2009	Unspecified	0
province	ZA_1_009	2009	Yes	109009
province	ZA_1_009	2009	No	32838
province	ZA_1_009	2009	Do not know	0
province	ZA_1_009	2009	Not applicable	0
province	ZA_1_009	2009	Unspecified	0
province	ZA_1_004	2009	Yes	38225
province	ZA_1_004	2009	No	15035
province	ZA_1_004	2009	Do not know	0
province	ZA_1_004	2009	Not applicable	1653
province	ZA_1_004	2009	Unspecified	0
province	ZA_1_005	2009	Yes	12032
province	ZA_1_005	2009	No	24525
province	ZA_1_005	2009	Do not know	0
province	ZA_1_005	2009	Not applicable	4346
province	ZA_1_005	2009	Unspecified	0
country	ZA	2009	Yes	287073
country	ZA	2009	No	128913
country	ZA	2009	Do not know	0
country	ZA	2009	Not applicable	6316
country	ZA	2009	Unspecified	6783
\.


--
-- Name: workers_hostel_handwashing_facility pk_workers_hostel_handwashing_facility; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_handwashing_facility
    ADD CONSTRAINT pk_workers_hostel_handwashing_facility PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_handwashing_facility);


--
-- PostgreSQL database dump complete
--
