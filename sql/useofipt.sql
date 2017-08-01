--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 11:03:45 EAT

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
-- TOC entry 234 (class 1259 OID 17909)
-- Name: useofipt; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE useofipt (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "use of ipt" character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE useofipt OWNER TO hurumap_ke;

--
-- TOC entry 3177 (class 0 OID 17909)
-- Dependencies: 234
-- Data for Name: useofipt; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY useofipt (geo_level, geo_code, "use of ipt", total) FROM stdin;
county	1	1 or more	67.2999999999999972
county	1	2 or more	46.3999999999999986
county	1	3 or more	24.8999999999999986
county	2	1 or more	91.7999999999999972
county	2	2 or more	79.0999999999999943
county	2	3 or more	51.8999999999999986
county	3	1 or more	65.2000000000000028
county	3	2 or more	41.7999999999999972
county	3	3 or more	28.5
county	4	1 or more	77
county	4	2 or more	41.6000000000000014
county	4	3 or more	21.3999999999999986
county	5	1 or more	81
county	5	2 or more	60
county	5	3 or more	35.7000000000000028
county	6	1 or more	75
county	6	2 or more	55.1000000000000014
county	6	3 or more	31.8999999999999986
county	7	1 or more	2.70000000000000018
county	7	2 or more	1
county	7	3 or more	0.800000000000000044
county	8	1 or more	4.40000000000000036
county	8	2 or more	2
county	8	3 or more	0.5
county	9	1 or more	11.3000000000000007
county	9	2 or more	4.29999999999999982
county	9	3 or more	3
county	10	1 or more	1.5
county	10	2 or more	1.19999999999999996
county	10	3 or more	0.599999999999999978
county	11	1 or more	48.2000000000000028
county	11	2 or more	3.29999999999999982
county	11	3 or more	1.30000000000000004
county	12	1 or more	19.1000000000000014
county	12	2 or more	3.79999999999999982
county	12	3 or more	0
county	13	1 or more	25.8999999999999986
county	13	2 or more	10.3000000000000007
county	13	3 or more	7.09999999999999964
county	14	1 or more	15
county	14	2 or more	1.10000000000000009
county	14	3 or more	0
county	15	1 or more	42.2000000000000028
county	15	2 or more	25.8000000000000007
county	15	3 or more	16
county	16	1 or more	16.5
county	16	2 or more	8.30000000000000071
county	16	3 or more	2.5
county	17	1 or more	26.5
county	17	2 or more	10.0999999999999996
county	17	3 or more	7.40000000000000036
county	18	1 or more	7.29999999999999982
county	18	2 or more	3
county	18	3 or more	2.20000000000000018
county	19	1 or more	5.20000000000000018
county	19	2 or more	3.20000000000000018
county	19	3 or more	1.89999999999999991
county	20	1 or more	10.1999999999999993
county	20	2 or more	8.40000000000000036
county	20	3 or more	3.70000000000000018
county	21	1 or more	14.4000000000000004
county	21	2 or more	4.79999999999999982
county	21	3 or more	1.89999999999999991
county	22	1 or more	24.5
county	22	2 or more	4.40000000000000036
county	22	3 or more	2.60000000000000009
county	23	1 or more	52.3999999999999986
county	23	2 or more	22.6999999999999993
county	23	3 or more	13
county	24	1 or more	3.10000000000000009
county	24	2 or more	3
county	24	3 or more	2.89999999999999991
county	25	1 or more	6.29999999999999982
county	25	2 or more	2.89999999999999991
county	25	3 or more	2.79999999999999982
county	26	1 or more	11
county	26	2 or more	3.70000000000000018
county	26	3 or more	3.20000000000000018
county	27	1 or more	7.79999999999999982
county	27	2 or more	7
county	27	3 or more	6.40000000000000036
county	28	1 or more	15.1999999999999993
county	28	2 or more	4.29999999999999982
county	28	3 or more	1.80000000000000004
county	29	1 or more	11.3000000000000007
county	29	2 or more	3.39999999999999991
county	29	3 or more	1.89999999999999991
county	30	1 or more	21.1999999999999993
county	30	2 or more	9.90000000000000036
county	30	3 or more	6.70000000000000018
county	31	1 or more	19.3999999999999986
county	31	2 or more	7
county	31	3 or more	1.60000000000000009
county	32	1 or more	19.1999999999999993
county	32	2 or more	9.30000000000000071
county	32	3 or more	4.20000000000000018
county	33	1 or more	6.59999999999999964
county	33	2 or more	1.39999999999999991
county	33	3 or more	0.599999999999999978
county	34	1 or more	20.6000000000000014
county	34	2 or more	12.3000000000000007
county	34	3 or more	8.5
county	35	1 or more	7.5
county	35	2 or more	4.40000000000000036
county	35	3 or more	3.39999999999999991
county	36	1 or more	7.5
county	36	2 or more	5.20000000000000018
county	36	3 or more	4.79999999999999982
county	37	1 or more	36.2000000000000028
county	37	2 or more	28.1000000000000014
county	37	3 or more	20.1000000000000014
county	38	1 or more	72.9000000000000057
county	38	2 or more	47.1000000000000014
county	38	3 or more	20.5
county	39	1 or more	57.5
county	39	2 or more	39.6000000000000014
county	39	3 or more	27.6999999999999993
county	40	1 or more	60.8999999999999986
county	40	2 or more	47.8999999999999986
county	40	3 or more	36.1000000000000014
county	41	1 or more	58.1000000000000014
county	41	2 or more	23.3999999999999986
county	41	3 or more	15
county	42	1 or more	58.2000000000000028
county	42	2 or more	26.8999999999999986
county	42	3 or more	5.90000000000000036
county	43	1 or more	38.3999999999999986
county	43	2 or more	22.8000000000000007
county	43	3 or more	12.3000000000000007
county	44	1 or more	51
county	44	2 or more	26.1000000000000014
county	44	3 or more	12.9000000000000004
county	45	1 or more	25.5
county	45	2 or more	11.3000000000000007
county	45	3 or more	3.70000000000000018
county	46	1 or more	21.8999999999999986
county	46	2 or more	18.1000000000000014
county	46	3 or more	7
county	47	1 or more	6.29999999999999982
county	47	2 or more	1.30000000000000004
county	47	3 or more	0.800000000000000044
country	KE	1 or more	29.6000000000000014
country	KE	2 or more	16.8999999999999986
country	KE	3 or more	10.0999999999999996
\.


--
-- TOC entry 3062 (class 2606 OID 18037)
-- Name: useofipt useofipt_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY useofipt
    ADD CONSTRAINT useofipt_pkey PRIMARY KEY (geo_level, geo_code, "use of ipt");


-- Completed on 2017-07-31 11:04:02 EAT

--
-- PostgreSQL database dump complete
--

