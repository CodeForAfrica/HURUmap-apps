--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 10:57:38 EAT

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
-- TOC entry 212 (class 1259 OID 17840)
-- Name: heightforage; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE heightforage (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "height for age" character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE heightforage OWNER TO hurumap_ke;

--
-- TOC entry 3177 (class 0 OID 17840)
-- Dependencies: 212
-- Data for Name: heightforage; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY heightforage (geo_level, geo_code, "height for age", total) FROM stdin;
county	1	below -3	7.09999999999999964
county	1	below -2	21.1000000000000014
county	1	mean Z-score	-1
county	2	below -3	10.5
county	2	below -2	29.6999999999999993
county	2	mean Z-score	-1.39999999999999991
county	3	below -3	13.5999999999999996
county	3	below -2	39.1000000000000014
county	3	mean Z-score	-1.5
county	4	below -3	9.40000000000000036
county	4	below -2	28.1000000000000014
county	4	mean Z-score	-1.39999999999999991
county	5	below -3	7.09999999999999964
county	5	below -2	29.1999999999999993
county	5	mean Z-score	-1.19999999999999996
county	6	below -3	5.79999999999999982
county	6	below -2	23.8000000000000007
county	6	mean Z-score	-0.900000000000000022
county	7	below -3	5.90000000000000036
county	7	below -2	15.5999999999999996
county	7	mean Z-score	-0.699999999999999956
county	8	below -3	10.3000000000000007
county	8	below -2	26.3999999999999986
county	8	mean Z-score	-1
county	9	below -3	19
county	9	below -2	36.1000000000000014
county	9	mean Z-score	-1.30000000000000004
county	10	below -3	10.6999999999999993
county	10	below -2	26.5
county	10	mean Z-score	-1.19999999999999996
county	11	below -3	5.09999999999999964
county	11	below -2	19.1000000000000014
county	11	mean Z-score	-0.699999999999999956
county	12	below -3	6.20000000000000018
county	12	below -2	25.1999999999999993
county	12	mean Z-score	-1.10000000000000009
county	13	below -3	7.59999999999999964
county	13	below -2	32.8999999999999986
county	13	mean Z-score	-1.39999999999999991
county	14	below -3	6.5
county	14	below -2	26.8000000000000007
county	14	mean Z-score	-1.30000000000000004
county	15	below -3	12.6999999999999993
county	15	below -2	45.7999999999999972
county	15	mean Z-score	-1.69999999999999996
county	16	below -3	7.09999999999999964
county	16	below -2	26.5
county	16	mean Z-score	-1.10000000000000009
county	17	below -3	7.79999999999999982
county	17	below -2	25.1000000000000014
county	17	mean Z-score	-1.30000000000000004
county	18	below -3	8.09999999999999964
county	18	below -2	29.3999999999999986
county	18	mean Z-score	-1.30000000000000004
county	19	below -3	5.59999999999999964
county	19	below -2	15.0999999999999996
county	19	mean Z-score	-0.900000000000000022
county	20	below -3	3.70000000000000018
county	20	below -2	17.1999999999999993
county	20	mean Z-score	-0.900000000000000022
county	21	below -3	4.79999999999999982
county	21	below -2	19.3000000000000007
county	21	mean Z-score	-1
county	22	below -3	3.79999999999999982
county	22	below -2	15.6999999999999993
county	22	mean Z-score	-0.699999999999999956
county	23	below -3	7.09999999999999964
county	23	below -2	23.8999999999999986
county	23	mean Z-score	-1.10000000000000009
county	24	below -3	19
county	24	below -2	45.8999999999999986
county	24	mean Z-score	-1.80000000000000004
county	25	below -3	9.80000000000000071
county	25	below -2	30.1000000000000014
county	25	mean Z-score	-1.30000000000000004
county	26	below -3	10.6999999999999993
county	26	below -2	29.1999999999999993
county	26	mean Z-score	-1.30000000000000004
county	27	below -3	11.0999999999999996
county	27	below -2	31.1999999999999993
county	27	mean Z-score	-1.30000000000000004
county	28	below -3	7.29999999999999982
county	28	below -2	29.8999999999999986
county	28	mean Z-score	-1.39999999999999991
county	29	below -3	8.30000000000000071
county	29	below -2	29.8999999999999986
county	29	mean Z-score	-1.30000000000000004
county	30	below -3	8.40000000000000036
county	30	below -2	29.5
county	30	mean Z-score	-1.39999999999999991
county	31	below -3	7.40000000000000036
county	31	below -2	26.8999999999999986
county	31	mean Z-score	-1.30000000000000004
county	32	below -3	7.20000000000000018
county	32	below -2	27.6000000000000014
county	32	mean Z-score	-1.19999999999999996
county	33	below -3	8.69999999999999929
county	33	below -2	32.8999999999999986
county	33	mean Z-score	-1.39999999999999991
county	34	below -3	7.09999999999999964
county	34	below -2	18.1999999999999993
county	34	mean Z-score	-0.699999999999999956
county	35	below -3	10.5
county	35	below -2	28.6999999999999993
county	35	mean Z-score	-1.30000000000000004
county	36	below -3	10.6999999999999993
county	36	below -2	35.5
county	36	mean Z-score	-1.60000000000000009
county	37	below -3	12.3000000000000007
county	37	below -2	28.3999999999999986
county	37	mean Z-score	-1.30000000000000004
county	38	below -3	6
county	38	below -2	23.5
county	38	mean Z-score	-1.10000000000000009
county	39	below -3	6.40000000000000036
county	39	below -2	24.3999999999999986
county	39	mean Z-score	-1.10000000000000009
county	40	below -3	5.40000000000000036
county	40	below -2	22
county	40	mean Z-score	-1.10000000000000009
county	41	below -3	7.09999999999999964
county	41	below -2	24.6999999999999993
county	41	mean Z-score	-1.10000000000000009
county	42	below -3	6.90000000000000036
county	42	below -2	18
county	42	mean Z-score	-0.699999999999999956
county	43	below -3	4.20000000000000018
county	43	below -2	18.6999999999999993
county	43	mean Z-score	-0.699999999999999956
county	44	below -3	10.0999999999999996
county	44	below -2	26.3999999999999986
county	44	mean Z-score	-1.10000000000000009
county	45	below -3	9.30000000000000071
county	45	below -2	25.5
county	45	mean Z-score	-1.30000000000000004
county	46	below -3	10.0999999999999996
county	46	below -2	25.5
county	46	mean Z-score	-1.10000000000000009
county	47	below -3	3.89999999999999991
county	47	below -2	17.1999999999999993
county	47	mean Z-score	-0.699999999999999956
country	KE	below -3	8.09999999999999964
country	KE	below -2	26
country	KE	mean Z-score	-1.10000000000000009
\.


--
-- TOC entry 3062 (class 2606 OID 17993)
-- Name: heightforage heightforage_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY heightforage
    ADD CONSTRAINT heightforage_pkey PRIMARY KEY (geo_level, geo_code, "height for age");


-- Completed on 2017-07-31 10:57:56 EAT

--
-- PostgreSQL database dump complete
--

