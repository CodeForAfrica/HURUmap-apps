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
province	WC	2009	Rented	10161
province	WC	2009	Owned; but not yet paid off to bank/financial institution	0
province	WC	2009	Rented from other (incl municipality and social housing institutions)	0
province	WC	2009	Owned; but not yet paid off to private lender	0
province	WC	2009	Owned and fully paid off	6150
province	WC	2009	Occupied rent-free	10128
province	WC	2009	Other	0
province	WC	2009	Do not know	0
country	ZA	2009	Rented	114113
country	ZA	2009	Owned; but not yet paid off to bank/financial institution	31641
country	ZA	2009	Rented from other (incl municipality and social housing institutions)	0
country	ZA	2009	Owned; but not yet paid off to private lender	6153
country	ZA	2009	Owned and fully paid off	62502
country	ZA	2009	Occupied rent-free	204899
country	ZA	2009	Other	5711
country	ZA	2009	Do not know	4067
province	NC	2009	Rented	13422
province	NC	2009	Owned; but not yet paid off to bank/financial institution	4422
province	NC	2009	Rented from other (incl municipality and social housing institutions)	0
province	NC	2009	Owned; but not yet paid off to private lender	0
province	NC	2009	Owned and fully paid off	3605
province	NC	2009	Occupied rent-free	8660
province	NC	2009	Other	0
province	NC	2009	Do not know	0
province	NW	2009	Rented	780
province	NW	2009	Owned; but not yet paid off to bank/financial institution	9507
province	NW	2009	Rented from other (incl municipality and social housing institutions)	0
province	NW	2009	Owned; but not yet paid off to private lender	0
province	NW	2009	Owned and fully paid off	0
province	NW	2009	Occupied rent-free	8513
province	NW	2009	Other	0
province	NW	2009	Do not know	0
province	MP	2009	Rented	13685
province	MP	2009	Owned; but not yet paid off to bank/financial institution	3890
province	MP	2009	Rented from other (incl municipality and social housing institutions)	0
province	MP	2009	Owned; but not yet paid off to private lender	0
province	MP	2009	Owned and fully paid off	3712
province	MP	2009	Occupied rent-free	33127
province	MP	2009	Other	499
province	MP	2009	Do not know	0
province	LIM	2009	Rented	10879
province	LIM	2009	Owned; but not yet paid off to bank/financial institution	10541
province	LIM	2009	Rented from other (incl municipality and social housing institutions)	0
province	LIM	2009	Owned; but not yet paid off to private lender	0
province	LIM	2009	Owned and fully paid off	1156
province	LIM	2009	Occupied rent-free	17557
province	LIM	2009	Other	771
province	LIM	2009	Do not know	0
province	KZN	2009	Rented	21379
province	KZN	2009	Owned; but not yet paid off to bank/financial institution	1568
province	KZN	2009	Rented from other (incl municipality and social housing institutions)	0
province	KZN	2009	Owned; but not yet paid off to private lender	0
province	KZN	2009	Owned and fully paid off	13515
province	KZN	2009	Occupied rent-free	36720
province	KZN	2009	Other	1257
province	KZN	2009	Do not know	4067
province	GT	2009	Rented	41401
province	GT	2009	Owned; but not yet paid off to bank/financial institution	1713
province	GT	2009	Rented from other (incl municipality and social housing institutions)	0
province	GT	2009	Owned; but not yet paid off to private lender	0
province	GT	2009	Owned and fully paid off	22079
province	GT	2009	Occupied rent-free	74777
province	GT	2009	Other	1877
province	GT	2009	Do not know	0
province	FS	2009	Rented	994
province	FS	2009	Owned; but not yet paid off to bank/financial institution	0
province	FS	2009	Rented from other (incl municipality and social housing institutions)	0
province	FS	2009	Owned; but not yet paid off to private lender	0
province	FS	2009	Owned and fully paid off	4202
province	FS	2009	Occupied rent-free	0
province	FS	2009	Other	0
province	FS	2009	Do not know	0
province	EC	2009	Rented	1412
province	EC	2009	Owned; but not yet paid off to bank/financial institution	0
province	EC	2009	Rented from other (incl municipality and social housing institutions)	0
province	EC	2009	Owned; but not yet paid off to private lender	6153
province	EC	2009	Owned and fully paid off	8083
province	EC	2009	Occupied rent-free	15417
province	EC	2009	Other	1307
province	EC	2009	Do not know	0
\.


--
-- Name: workers_hostel_ownership pk_workers_hostel_ownership; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_ownership
    ADD CONSTRAINT pk_workers_hostel_ownership PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_ownership);


--
-- PostgreSQL database dump complete
--
