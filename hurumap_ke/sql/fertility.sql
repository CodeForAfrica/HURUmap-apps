--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 10:56:32 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 208 (class 1259 OID 17828)
-- Name: fertility; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE fertility (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    fertility character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE fertility OWNER TO hurumap_ke;

--
-- TOC entry 3177 (class 0 OID 17828)
-- Dependencies: 208
-- Data for Name: fertility; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY fertility (geo_level, geo_code, fertility, total) FROM stdin;
country	KE	rate	3.89999999999999991
country	KE	pregnant	6.29999999999999982
country	KE	mean	5
county	2	rate	4.70000000000000018
county	2	pregnant	7.5
county	2	mean	5.79999999999999982
county	3	rate	5.09999999999999964
county	3	pregnant	7.09999999999999964
county	3	mean	6.40000000000000036
county	4	rate	5.79999999999999982
county	4	pregnant	10.1999999999999993
county	4	mean	7.40000000000000036
county	5	rate	4.29999999999999982
county	5	pregnant	5.59999999999999964
county	5	mean	5
county	6	rate	3.20000000000000018
county	6	pregnant	3.70000000000000018
county	6	mean	4.29999999999999982
county	7	rate	6.09999999999999964
county	7	pregnant	11.6999999999999993
county	7	mean	6.79999999999999982
county	8	rate	7.79999999999999982
county	8	pregnant	13.5999999999999996
county	8	mean	7.90000000000000036
county	9	rate	5.20000000000000018
county	9	pregnant	10.5999999999999996
county	9	mean	6.40000000000000036
county	10	rate	5
county	10	pregnant	12.6999999999999993
county	10	mean	6
county	11	rate	4.90000000000000036
county	11	pregnant	6.20000000000000018
county	11	mean	6.09999999999999964
county	12	rate	3.10000000000000009
county	12	pregnant	4.79999999999999982
county	12	mean	4.29999999999999982
county	13	rate	3.39999999999999991
county	13	pregnant	4.40000000000000036
county	13	mean	4.29999999999999982
county	14	rate	3.10000000000000009
county	14	pregnant	4.5
county	14	mean	4.09999999999999964
county	15	rate	3.89999999999999991
county	15	pregnant	4.09999999999999964
county	15	mean	5.29999999999999982
county	16	rate	3.39999999999999991
county	16	pregnant	3.89999999999999991
county	16	mean	4.29999999999999982
county	18	rate	3.5
county	18	pregnant	6
county	18	mean	4.79999999999999982
county	19	rate	2.70000000000000018
county	19	pregnant	4.79999999999999982
county	19	mean	3.29999999999999982
county	20	rate	2.29999999999999982
county	20	pregnant	4.09999999999999964
county	20	mean	3.39999999999999991
county	21	rate	3
county	21	pregnant	4.29999999999999982
county	21	mean	3.89999999999999991
county	22	rate	2.70000000000000018
county	22	pregnant	5
county	22	mean	3.60000000000000009
county	23	rate	6.90000000000000036
county	23	pregnant	10.5999999999999996
county	23	mean	6.40000000000000036
county	24	rate	7.20000000000000018
county	24	pregnant	10.6999999999999993
county	24	mean	6.40000000000000036
county	25	rate	6.29999999999999982
county	25	pregnant	11.5999999999999996
county	25	mean	6.5
county	26	rate	5.20000000000000018
county	26	pregnant	6.29999999999999982
county	26	mean	6.59999999999999964
county	27	rate	3.60000000000000009
county	27	pregnant	8.40000000000000036
county	27	mean	5.29999999999999982
county	28	rate	4.09999999999999964
county	28	pregnant	5.90000000000000036
county	28	mean	5.79999999999999982
county	29	rate	4
county	29	pregnant	4.79999999999999982
county	29	mean	6.09999999999999964
county	30	rate	4.79999999999999982
county	30	pregnant	7.79999999999999982
county	30	mean	6.20000000000000018
county	31	rate	3.70000000000000018
county	31	pregnant	7.90000000000000036
county	31	mean	4.90000000000000036
county	32	rate	3.70000000000000018
county	32	pregnant	5.29999999999999982
county	32	mean	4.70000000000000018
county	33	rate	6
county	33	pregnant	10.1999999999999993
county	33	mean	6.70000000000000018
county	35	rate	4
county	35	pregnant	5.70000000000000018
county	35	mean	5
county	36	rate	4.29999999999999982
county	36	pregnant	5.5
county	36	mean	5.70000000000000018
county	37	rate	4.40000000000000036
county	37	pregnant	7.29999999999999982
county	37	mean	5.40000000000000036
county	38	rate	4.5
county	38	pregnant	6.20000000000000018
county	38	mean	5.29999999999999982
county	39	rate	5
county	39	pregnant	6.20000000000000018
county	39	mean	6.90000000000000036
county	40	rate	4.70000000000000018
county	40	pregnant	6.79999999999999982
county	40	mean	6.5
county	41	rate	4.20000000000000018
county	41	pregnant	5.90000000000000036
county	41	mean	5.90000000000000036
county	42	rate	3.60000000000000009
county	42	pregnant	5.29999999999999982
county	42	mean	5.59999999999999964
county	43	rate	5.20000000000000018
county	43	pregnant	6.40000000000000036
county	43	mean	6.20000000000000018
county	44	rate	5.29999999999999982
county	44	pregnant	9
county	44	mean	7
county	45	rate	3.70000000000000018
county	45	pregnant	5
county	45	mean	5.09999999999999964
county	46	rate	3.5
county	46	pregnant	3.20000000000000018
county	46	mean	4.70000000000000018
county	47	rate	2.70000000000000018
county	47	pregnant	6.79999999999999982
county	47	mean	3.10000000000000009
county	17	rate	3.29999999999999982
county	17	pregnant	4
county	17	mean	5.5
county	1	rate	3.20000000000000018
county	1	pregnant	5.40000000000000036
county	1	mean	4.09999999999999964
county	34	rate	4.5
county	34	pregnant	7.70000000000000018
county	34	mean	4.29999999999999982
\.


--
-- TOC entry 3062 (class 2606 OID 17985)
-- Name: fertility fertility_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY fertility
    ADD CONSTRAINT fertility_pkey PRIMARY KEY (geo_level, geo_code, fertility);


-- Completed on 2017-07-31 10:56:48 EAT

--
-- PostgreSQL database dump complete
--

