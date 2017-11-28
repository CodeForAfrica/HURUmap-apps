--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

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
-- Name: conditional_fund; Type: TABLE; Schema: public; Owner: pesayetu
--

CREATE TABLE conditional_fund (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    conditional_fund character varying(128) NOT NULL,
    total double precision
);


ALTER TABLE conditional_fund OWNER TO pesayetu;

--
-- Data for Name: conditional_fund; Type: TABLE DATA; Schema: public; Owner: pesayetu
--

COPY conditional_fund (geo_level, geo_code, geo_version, conditional_fund, total) FROM stdin;
county	30	2009	World Bank Loan	17224300
county	30	2009	DANIDA Grant	25970000
county	30	2009	Other Conditional Allocations	0
county	36	2009	World Bank Loan	0
county	36	2009	DANIDA Grant	14950000
county	36	2009	Other Conditional Allocations	0
county	39	2009	World Bank Loan	0
county	39	2009	DANIDA Grant	14750000
county	39	2009	Other Conditional Allocations	182000000
county	40	2009	World Bank Loan	0
county	40	2009	DANIDA Grant	12990000
county	40	2009	Other Conditional Allocations	33250000
county	28	2009	World Bank Loan	20179116
county	28	2009	DANIDA Grant	20800000
county	28	2009	Other Conditional Allocations	0
county	14	2009	World Bank Loan	0
county	14	2009	DANIDA Grant	13750000
county	14	2009	Other Conditional Allocations	100000000
county	7	2009	World Bank Loan	15088268
county	7	2009	DANIDA Grant	17940000
county	7	2009	Other Conditional Allocations	0
county	43	2009	World Bank Loan	0
county	43	2009	DANIDA Grant	24770000
county	43	2009	Other Conditional Allocations	0
county	11	2009	World Bank Loan	8728052
county	11	2009	DANIDA Grant	7970000
county	11	2009	Other Conditional Allocations	0
county	34	2009	World Bank Loan	31643654
county	34	2009	DANIDA Grant	17890000
county	34	2009	Other Conditional Allocations	40000000
county	37	2009	World Bank Loan	0
county	37	2009	DANIDA Grant	23500000
county	37	2009	Other Conditional Allocations	255000000
county	35	2009	World Bank Loan	0
county	35	2009	DANIDA Grant	22600000
county	35	2009	Other Conditional Allocations	0
county	22	2009	World Bank Loan	0
county	22	2009	DANIDA Grant	19200000
county	22	2009	Other Conditional Allocations	537000000
county	3	2009	World Bank Loan	66776764
county	3	2009	DANIDA Grant	15530000
county	3	2009	Other Conditional Allocations	0
county	20	2009	World Bank Loan	0
county	20	2009	DANIDA Grant	12770000
county	20	2009	Other Conditional Allocations	324000000
county	45	2009	World Bank Loan	0
county	45	2009	DANIDA Grant	22950000
county	45	2009	Other Conditional Allocations	0
county	42	2009	World Bank Loan	0
county	42	2009	DANIDA Grant	16580000
county	42	2009	Other Conditional Allocations	48000000
county	15	2009	World Bank Loan	46995266
county	15	2009	DANIDA Grant	36990000
county	15	2009	Other Conditional Allocations	0
county	2	2009	World Bank Loan	45759322
county	2	2009	DANIDA Grant	13620000
county	2	2009	Other Conditional Allocations	0
county	31	2009	World Bank Loan	18845096
county	31	2009	DANIDA Grant	11530000
county	31	2009	Other Conditional Allocations	206000000
county	5	2009	World Bank Loan	7132526
county	5	2009	DANIDA Grant	7640000
county	5	2009	Other Conditional Allocations	0
county	16	2009	World Bank Loan	0
county	16	2009	DANIDA Grant	26700000
county	16	2009	Other Conditional Allocations	180000000
county	17	2009	World Bank Loan	0
county	17	2009	DANIDA Grant	24130000
county	17	2009	Other Conditional Allocations	220000000
county	9	2009	World Bank Loan	13686168
county	9	2009	DANIDA Grant	14620000
county	9	2009	Other Conditional Allocations	0
county	10	2009	World Bank Loan	10086676
county	10	2009	DANIDA Grant	15350000
county	10	2009	Other Conditional Allocations	0
county	12	2009	World Bank Loan	0
county	12	2009	DANIDA Grant	20590000
county	12	2009	Other Conditional Allocations	200000000
county	44	2009	World Bank Loan	67012156
county	44	2009	DANIDA Grant	20440000
county	44	2009	Other Conditional Allocations	0
county	1	2009	World Bank Loan	0
county	1	2009	DANIDA Grant	6300000
county	1	2009	Other Conditional Allocations	16000000
county	21	2009	World Bank Loan	0
county	21	2009	DANIDA Grant	24810000
county	21	2009	Other Conditional Allocations	100000000
county	47	2009	World Bank Loan	0
county	47	2009	DANIDA Grant	27800000
county	47	2009	Other Conditional Allocations	6200000000
county	32	2009	World Bank Loan	0
county	32	2009	DANIDA Grant	25260000
county	32	2009	Other Conditional Allocations	0
county	29	2009	World Bank Loan	0
county	29	2009	DANIDA Grant	18310000
county	29	2009	Other Conditional Allocations	0
county	33	2009	World Bank Loan	38137350
county	33	2009	DANIDA Grant	17890000
county	33	2009	Other Conditional Allocations	0
county	46	2009	World Bank Loan	0
county	46	2009	DANIDA Grant	23920000
county	46	2009	Other Conditional Allocations	0
county	18	2009	World Bank Loan	0
county	18	2009	DANIDA Grant	18860000
county	18	2009	Other Conditional Allocations	73000000
county	19	2009	World Bank Loan	0
county	19	2009	DANIDA Grant	22930000
county	19	2009	Other Conditional Allocations	160000000
county	25	2009	World Bank Loan	8669898
county	25	2009	DANIDA Grant	10990000
county	25	2009	Other Conditional Allocations	0
county	41	2009	World Bank Loan	0
county	41	2009	DANIDA Grant	27530000
county	41	2009	Other Conditional Allocations	91500000
county	6	2009	World Bank Loan	17242898
county	6	2009	DANIDA Grant	14810000
county	6	2009	Other Conditional Allocations	0
county	4	2009	World Bank Loan	8481988
county	4	2009	DANIDA Grant	9290000
county	4	2009	Other Conditional Allocations	0
county	13	2009	World Bank Loan	13899808
county	13	2009	DANIDA Grant	12330000
county	13	2009	Other Conditional Allocations	300000000
county	26	2009	World Bank Loan	0
county	26	2009	DANIDA Grant	11330000
county	26	2009	Other Conditional Allocations	0
county	23	2009	World Bank Loan	20486700
county	23	2009	DANIDA Grant	12070000
county	23	2009	Other Conditional Allocations	0
county	27	2009	World Bank Loan	0
county	27	2009	DANIDA Grant	17320000
county	27	2009	Other Conditional Allocations	0
county	38	2009	World Bank Loan	0
county	38	2009	DANIDA Grant	14170000
county	38	2009	Other Conditional Allocations	52500000
county	8	2009	World Bank Loan	16369300
county	8	2009	DANIDA Grant	20090000
county	8	2009	Other Conditional Allocations	0
county	24	2009	World Bank Loan	15799898
county	24	2009	DANIDA Grant	12180000
county	24	2009	Other Conditional Allocations	0
\.


--
-- Name: conditional_fund pk_conditional_fund; Type: CONSTRAINT; Schema: public; Owner: pesayetu
--

ALTER TABLE ONLY conditional_fund
    ADD CONSTRAINT pk_conditional_fund PRIMARY KEY (geo_level, geo_code, geo_version, conditional_fund);


--
-- PostgreSQL database dump complete
--

