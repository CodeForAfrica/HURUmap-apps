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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_ownership DROP CONSTRAINT IF EXISTS pk_workers_hostel_ownership;
DROP TABLE IF EXISTS public.workers_hostel_ownership;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_ownership; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_ownership (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_ownership character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_ownership; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_ownership (geo_level, geo_code, geo_version, workers_hostel_ownership, total) FROM stdin;
level1	ZA_1_008	2009	Rented	10161
level1	ZA_1_008	2009	Owned; but not yet paid off to bank/financial institution	0
level1	ZA_1_008	2009	Rented from other (incl municipality and social housing institutions)	0
level1	ZA_1_008	2009	Owned; but not yet paid off to private lender	0
level1	ZA_1_008	2009	Owned and fully paid off	6150
level1	ZA_1_008	2009	Occupied rent-free	10128
level1	ZA_1_008	2009	Other	0
level1	ZA_1_008	2009	Do not know	0
country	ZA	2009	Rented	114113
country	ZA	2009	Owned; but not yet paid off to bank/financial institution	31641
country	ZA	2009	Rented from other (incl municipality and social housing institutions)	0
country	ZA	2009	Owned; but not yet paid off to private lender	6153
country	ZA	2009	Owned and fully paid off	62502
country	ZA	2009	Occupied rent-free	204899
country	ZA	2009	Other	5711
country	ZA	2009	Do not know	4067
level1	ZA_1_006	2009	Rented	13422
level1	ZA_1_006	2009	Owned; but not yet paid off to bank/financial institution	4422
level1	ZA_1_006	2009	Rented from other (incl municipality and social housing institutions)	0
level1	ZA_1_006	2009	Owned; but not yet paid off to private lender	0
level1	ZA_1_006	2009	Owned and fully paid off	3605
level1	ZA_1_006	2009	Occupied rent-free	8660
level1	ZA_1_006	2009	Other	0
level1	ZA_1_006	2009	Do not know	0
level1	ZA_1_007	2009	Rented	780
level1	ZA_1_007	2009	Owned; but not yet paid off to bank/financial institution	9507
level1	ZA_1_007	2009	Rented from other (incl municipality and social housing institutions)	0
level1	ZA_1_007	2009	Owned; but not yet paid off to private lender	0
level1	ZA_1_007	2009	Owned and fully paid off	0
level1	ZA_1_007	2009	Occupied rent-free	8513
level1	ZA_1_007	2009	Other	0
level1	ZA_1_007	2009	Do not know	0
level1	ZA_1_004	2009	Rented	13685
level1	ZA_1_004	2009	Owned; but not yet paid off to bank/financial institution	3890
level1	ZA_1_004	2009	Rented from other (incl municipality and social housing institutions)	0
level1	ZA_1_004	2009	Owned; but not yet paid off to private lender	0
level1	ZA_1_004	2009	Owned and fully paid off	3712
level1	ZA_1_004	2009	Occupied rent-free	33127
level1	ZA_1_004	2009	Other	499
level1	ZA_1_004	2009	Do not know	0
level1	ZA_1_005	2009	Rented	10879
level1	ZA_1_005	2009	Owned; but not yet paid off to bank/financial institution	10541
level1	ZA_1_005	2009	Rented from other (incl municipality and social housing institutions)	0
level1	ZA_1_005	2009	Owned; but not yet paid off to private lender	0
level1	ZA_1_005	2009	Owned and fully paid off	1156
level1	ZA_1_005	2009	Occupied rent-free	17557
level1	ZA_1_005	2009	Other	771
level1	ZA_1_005	2009	Do not know	0
level1	ZA_1_001	2009	Rented	21379
level1	ZA_1_001	2009	Owned; but not yet paid off to bank/financial institution	1568
level1	ZA_1_001	2009	Rented from other (incl municipality and social housing institutions)	0
level1	ZA_1_001	2009	Owned; but not yet paid off to private lender	0
level1	ZA_1_001	2009	Owned and fully paid off	13515
level1	ZA_1_001	2009	Occupied rent-free	36720
level1	ZA_1_001	2009	Other	1257
level1	ZA_1_001	2009	Do not know	4067
level1	ZA_1_009	2009	Rented	41401
level1	ZA_1_009	2009	Owned; but not yet paid off to bank/financial institution	1713
level1	ZA_1_009	2009	Rented from other (incl municipality and social housing institutions)	0
level1	ZA_1_009	2009	Owned; but not yet paid off to private lender	0
level1	ZA_1_009	2009	Owned and fully paid off	22079
level1	ZA_1_009	2009	Occupied rent-free	74777
level1	ZA_1_009	2009	Other	1877
level1	ZA_1_009	2009	Do not know	0
level1	ZA_1_002	2009	Rented	994
level1	ZA_1_002	2009	Owned; but not yet paid off to bank/financial institution	0
level1	ZA_1_002	2009	Rented from other (incl municipality and social housing institutions)	0
level1	ZA_1_002	2009	Owned; but not yet paid off to private lender	0
level1	ZA_1_002	2009	Owned and fully paid off	4202
level1	ZA_1_002	2009	Occupied rent-free	0
level1	ZA_1_002	2009	Other	0
level1	ZA_1_002	2009	Do not know	0
level1	ZA_1_003	2009	Rented	1412
level1	ZA_1_003	2009	Owned; but not yet paid off to bank/financial institution	0
level1	ZA_1_003	2009	Rented from other (incl municipality and social housing institutions)	0
level1	ZA_1_003	2009	Owned; but not yet paid off to private lender	6153
level1	ZA_1_003	2009	Owned and fully paid off	8083
level1	ZA_1_003	2009	Occupied rent-free	15417
level1	ZA_1_003	2009	Other	1307
level1	ZA_1_003	2009	Do not know	0
\.


--
-- Name: workers_hostel_ownership pk_workers_hostel_ownership; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_ownership
    ADD CONSTRAINT pk_workers_hostel_ownership PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_ownership);


--
-- PostgreSQL database dump complete
--
