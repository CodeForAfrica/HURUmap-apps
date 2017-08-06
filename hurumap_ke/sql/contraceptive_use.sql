--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-07-31 10:54:17 EAT

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
-- TOC entry 198 (class 1259 OID 17794)
-- Name: contraceptive_use; Type: TABLE; Schema: public; Owner: hurumap_ke
--

CREATE TABLE contraceptive_use (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    contraceptive_use character varying(128) NOT NULL,
    total double precision NOT NULL
);


ALTER TABLE contraceptive_use OWNER TO hurumap_ke;

--
-- TOC entry 3177 (class 0 OID 17794)
-- Dependencies: 198
-- Data for Name: contraceptive_use; Type: TABLE DATA; Schema: public; Owner: hurumap_ke
--

COPY contraceptive_use (geo_level, geo_code, contraceptive_use, total) FROM stdin;
county	1	modern	43.6000000000000014
county	1	traditional	11.4000000000000004
county	2	modern	38.2000000000000028
county	2	traditional	3.29999999999999982
county	3	modern	32.7999999999999972
county	3	traditional	1.30000000000000004
county	4	modern	20.5
county	4	traditional	8.19999999999999929
county	5	modern	39.5
county	5	traditional	2.60000000000000009
county	6	modern	61.2999999999999972
county	6	traditional	6.59999999999999964
county	7	modern	5.5
county	7	traditional	0
county	8	modern	2.29999999999999982
county	8	traditional	0
county	9	modern	1.89999999999999991
county	9	traditional	0
county	10	modern	10.9000000000000004
county	10	traditional	0.800000000000000044
county	11	modern	26.3000000000000007
county	11	traditional	0.699999999999999956
county	12	modern	73.2000000000000028
county	12	traditional	5
county	13	modern	67.2000000000000028
county	13	traditional	6.79999999999999982
county	14	modern	67.2000000000000028
county	14	traditional	3.39999999999999991
county	15	modern	55.1000000000000014
county	15	traditional	2.20000000000000018
county	16	modern	67.5
county	16	traditional	8.30000000000000071
county	17	modern	65
county	17	traditional	15.3000000000000007
county	18	modern	60.3999999999999986
county	18	traditional	5.20000000000000018
county	19	modern	67.0999999999999943
county	19	traditional	6
county	20	modern	75.5999999999999943
county	20	traditional	5.40000000000000036
county	21	modern	63.3999999999999986
county	21	traditional	5.5
county	22	modern	67.7999999999999972
county	22	traditional	6.29999999999999982
county	23	modern	10.0999999999999996
county	23	traditional	0.299999999999999989
county	24	modern	13.3000000000000007
county	24	traditional	0.900000000000000022
county	25	modern	20
county	25	traditional	2.70000000000000018
county	26	modern	56.3999999999999986
county	26	traditional	7.5
county	27	modern	56
county	27	traditional	6.59999999999999964
county	28	modern	43.6000000000000014
county	28	traditional	11.5999999999999996
county	29	modern	59.2000000000000028
county	29	traditional	5.40000000000000036
county	30	modern	33.1000000000000014
county	30	traditional	8.30000000000000071
county	31	modern	51.2999999999999972
county	31	traditional	7.79999999999999982
county	32	modern	53.5
county	32	traditional	3.20000000000000018
county	33	modern	38.1000000000000014
county	33	traditional	9.69999999999999929
county	34	modern	45.2000000000000028
county	34	traditional	9.30000000000000071
county	35	modern	56.8999999999999986
county	35	traditional	6.09999999999999964
county	36	modern	50.3999999999999986
county	36	traditional	4.40000000000000036
county	37	modern	60.2999999999999972
county	37	traditional	1.69999999999999996
county	38	modern	56.6000000000000014
county	38	traditional	2.89999999999999991
county	39	modern	53.8999999999999986
county	39	traditional	1.60000000000000009
county	40	modern	56.5
county	40	traditional	0.900000000000000022
county	41	modern	51
county	41	traditional	4
county	42	modern	59.2999999999999972
county	42	traditional	3.10000000000000009
county	43	modern	45.5
county	43	traditional	1.19999999999999996
county	44	modern	43.8999999999999986
county	44	traditional	0.699999999999999956
county	45	modern	62.7999999999999972
county	45	traditional	3.39999999999999991
county	46	modern	64.2000000000000028
county	46	traditional	3.70000000000000018
county	47	modern	58.2999999999999972
county	47	traditional	4.40000000000000036
country	KE	modern	53.2000000000000028
country	KE	traditional	4.79999999999999982
county	1	not using	45
county	2	not using	58.5
county	3	not using	65.9000000000000057
county	4	not using	71.2999999999999972
county	5	not using	57.7999999999999972
county	6	not using	32
county	7	not using	94.5
county	8	not using	97.7000000000000028
county	9	not using	98.0999999999999943
county	10	not using	88.2999999999999972
county	11	not using	73
county	12	not using	21.8000000000000007
county	13	not using	26
county	14	not using	29.3999999999999986
county	15	not using	42.7000000000000028
county	16	not using	24.1000000000000014
county	17	not using	19.6999999999999993
county	18	not using	34.3999999999999986
county	19	not using	26.8999999999999986
county	20	not using	19
county	21	not using	31.1000000000000014
county	22	not using	26
county	23	not using	89.5999999999999943
county	24	not using	85.7999999999999972
county	25	not using	77.2999999999999972
county	26	not using	36.1000000000000014
county	27	not using	37.3999999999999986
county	28	not using	44.7999999999999972
county	29	not using	35.5
county	30	not using	58.6000000000000014
county	31	not using	40.8999999999999986
county	32	not using	43.2000000000000028
county	33	not using	52.2000000000000028
county	34	not using	45.5
county	35	not using	37.1000000000000014
county	36	not using	45.2000000000000028
county	37	not using	37.8999999999999986
county	38	not using	40.5
county	39	not using	44.5
county	40	not using	42.5
county	41	not using	45
county	42	not using	37.6000000000000014
county	43	not using	53.2999999999999972
county	44	not using	55.3999999999999986
county	45	not using	33.8999999999999986
county	46	not using	32.1000000000000014
county	47	not using	37.3999999999999986
country	KE	not using	42
\.


--
-- TOC entry 3062 (class 2606 OID 17969)
-- Name: contraceptive_use contraceptive_use_pkey; Type: CONSTRAINT; Schema: public; Owner: hurumap_ke
--

ALTER TABLE ONLY contraceptive_use
    ADD CONSTRAINT contraceptive_use_pkey PRIMARY KEY (geo_level, geo_code, contraceptive_use, total);


-- Completed on 2017-07-31 10:54:36 EAT

--
-- PostgreSQL database dump complete
--

