--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = pesayetu, public, pg_catalog;

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_ng2018 DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_ng2018;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_ng2018;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_ng2018; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_ng2018 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_ng2018; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_ng2018 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
county	25	2009	Rehabilitation of Village Polytechnics	2018/2019	20905000
county	11	2009	Rehabilitation of Village Polytechnics	2018/2019	21235000
county	8	2009	Rehabilitation of Village Polytechnics	2018/2019	21295000
county	4	2009	Rehabilitation of Village Polytechnics	2018/2019	24490000
county	23	2009	Rehabilitation of Village Polytechnics	2018/2019	25285000
county	10	2009	Rehabilitation of Village Polytechnics	2018/2019	26275000
county	31	2009	Rehabilitation of Village Polytechnics	2018/2019	28525000
county	19	2009	Rehabilitation of Village Polytechnics	2018/2019	28795000
county	24	2009	Rehabilitation of Village Polytechnics	2018/2019	28885000
county	33	2009	Rehabilitation of Village Polytechnics	2018/2019	30820000
county	5	2009	Rehabilitation of Village Polytechnics	2018/2019	31210000
county	9	2009	Rehabilitation of Village Polytechnics	2018/2019	31240000
county	17	2009	Rehabilitation of Village Polytechnics	2018/2019	31570000
county	44	2009	Rehabilitation of Village Polytechnics	2018/2019	31750000
county	27	2009	Rehabilitation of Village Polytechnics	2018/2019	33250000
county	47	2009	Rehabilitation of Village Polytechnics	2018/2019	34570000
county	7	2009	Rehabilitation of Village Polytechnics	2018/2019	35335000
county	30	2009	Rehabilitation of Village Polytechnics	2018/2019	35605000
county	29	2009	Rehabilitation of Village Polytechnics	2018/2019	37255000
county	14	2009	Rehabilitation of Village Polytechnics	2018/2019	37900000
county	41	2009	Rehabilitation of Village Polytechnics	2018/2019	38500000
county	18	2009	Rehabilitation of Village Polytechnics	2018/2019	39700000
county	1	2009	Rehabilitation of Village Polytechnics	2018/2019	39895000
county	13	2009	Rehabilitation of Village Polytechnics	2018/2019	40090000
county	34	2009	Rehabilitation of Village Polytechnics	2018/2019	40345000
county	35	2009	Rehabilitation of Village Polytechnics	2018/2019	41005000
county	42	2009	Rehabilitation of Village Polytechnics	2018/2019	41650000
county	28	2009	Rehabilitation of Village Polytechnics	2018/2019	41800000
county	2	2009	Rehabilitation of Village Polytechnics	2018/2019	41860000
county	43	2009	Rehabilitation of Village Polytechnics	2018/2019	46675000
county	32	2009	Rehabilitation of Village Polytechnics	2018/2019	47800000
county	36	2009	Rehabilitation of Village Polytechnics	2018/2019	47875000
county	6	2009	Rehabilitation of Village Polytechnics	2018/2019	49675000
county	20	2009	Rehabilitation of Village Polytechnics	2018/2019	52210000
county	46	2009	Rehabilitation of Village Polytechnics	2018/2019	52915000
county	3	2009	Rehabilitation of Village Polytechnics	2018/2019	53035000
county	26	2009	Rehabilitation of Village Polytechnics	2018/2019	53710000
county	16	2009	Rehabilitation of Village Polytechnics	2018/2019	54295000
county	38	2009	Rehabilitation of Village Polytechnics	2018/2019	55000000
county	15	2009	Rehabilitation of Village Polytechnics	2018/2019	58465000
county	40	2009	Rehabilitation of Village Polytechnics	2018/2019	61960000
county	39	2009	Rehabilitation of Village Polytechnics	2018/2019	65500000
county	21	2009	Rehabilitation of Village Polytechnics	2018/2019	65710000
county	12	2009	Rehabilitation of Village Polytechnics	2018/2019	66025000
county	22	2009	Rehabilitation of Village Polytechnics	2018/2019	68110000
county	37	2009	Rehabilitation of Village Polytechnics	2018/2019	69910000
county	45	2009	Rehabilitation of Village Polytechnics	2018/2019	70090000
county	5	2009	Road Maintenance Fuel Levy	2018/2019	93421016
county	13	2009	Road Maintenance Fuel Levy	2018/2019	95901220
county	28	2009	Road Maintenance Fuel Levy	2018/2019	99208158
county	11	2009	Road Maintenance Fuel Levy	2018/2019	103341832
county	6	2009	Road Maintenance Fuel Levy	2018/2019	106648770
county	20	2009	Road Maintenance Fuel Levy	2018/2019	108302240
county	31	2009	Road Maintenance Fuel Levy	2018/2019	109128974
county	25	2009	Road Maintenance Fuel Levy	2018/2019	116569586
county	14	2009	Road Maintenance Fuel Levy	2018/2019	117396321
county	38	2009	Road Maintenance Fuel Levy	2018/2019	117396321
county	46	2009	Road Maintenance Fuel Levy	2018/2019	125663667
county	18	2009	Road Maintenance Fuel Levy	2018/2019	129797341
county	24	2009	Road Maintenance Fuel Levy	2018/2019	129797341
county	19	2009	Road Maintenance Fuel Levy	2018/2019	132277544
county	30	2009	Road Maintenance Fuel Levy	2018/2019	133931014
county	29	2009	Road Maintenance Fuel Levy	2018/2019	141371626
county	4	2009	Road Maintenance Fuel Levy	2018/2019	146332034
county	26	2009	Road Maintenance Fuel Levy	2018/2019	147985503
county	35	2009	Road Maintenance Fuel Levy	2018/2019	150465707
county	36	2009	Road Maintenance Fuel Levy	2018/2019	156252849
county	27	2009	Road Maintenance Fuel Levy	2018/2019	156252849
county	40	2009	Road Maintenance Fuel Levy	2018/2019	157079584
county	34	2009	Road Maintenance Fuel Levy	2018/2019	157906319
county	41	2009	Road Maintenance Fuel Levy	2018/2019	158733053
county	21	2009	Road Maintenance Fuel Levy	2018/2019	164520196
county	33	2009	Road Maintenance Fuel Levy	2018/2019	167827135
county	43	2009	Road Maintenance Fuel Levy	2018/2019	176094481
county	44	2009	Road Maintenance Fuel Levy	2018/2019	176921216
county	42	2009	Road Maintenance Fuel Levy	2018/2019	181881624
county	7	2009	Road Maintenance Fuel Levy	2018/2019	182708358
county	10	2009	Road Maintenance Fuel Levy	2018/2019	184361828
county	17	2009	Road Maintenance Fuel Levy	2018/2019	187668766
county	2	2009	Road Maintenance Fuel Levy	2018/2019	198416317
county	30	2009	Leasing of Medical Equipment	2018/2019	200000000
county	36	2009	Leasing of Medical Equipment	2018/2019	200000000
county	39	2009	Leasing of Medical Equipment	2018/2019	200000000
county	40	2009	Leasing of Medical Equipment	2018/2019	200000000
county	28	2009	Leasing of Medical Equipment	2018/2019	200000000
county	14	2009	Leasing of Medical Equipment	2018/2019	200000000
county	7	2009	Leasing of Medical Equipment	2018/2019	200000000
county	43	2009	Leasing of Medical Equipment	2018/2019	200000000
county	11	2009	Leasing of Medical Equipment	2018/2019	200000000
county	34	2009	Leasing of Medical Equipment	2018/2019	200000000
county	37	2009	Leasing of Medical Equipment	2018/2019	200000000
county	35	2009	Leasing of Medical Equipment	2018/2019	200000000
county	22	2009	Leasing of Medical Equipment	2018/2019	200000000
county	3	2009	Leasing of Medical Equipment	2018/2019	200000000
county	20	2009	Leasing of Medical Equipment	2018/2019	200000000
county	45	2009	Leasing of Medical Equipment	2018/2019	200000000
county	42	2009	Leasing of Medical Equipment	2018/2019	200000000
county	15	2009	Leasing of Medical Equipment	2018/2019	200000000
county	2	2009	Leasing of Medical Equipment	2018/2019	200000000
county	31	2009	Leasing of Medical Equipment	2018/2019	200000000
county	5	2009	Leasing of Medical Equipment	2018/2019	200000000
county	16	2009	Leasing of Medical Equipment	2018/2019	200000000
county	17	2009	Leasing of Medical Equipment	2018/2019	200000000
county	9	2009	Leasing of Medical Equipment	2018/2019	200000000
county	10	2009	Leasing of Medical Equipment	2018/2019	200000000
county	12	2009	Leasing of Medical Equipment	2018/2019	200000000
county	44	2009	Leasing of Medical Equipment	2018/2019	200000000
county	1	2009	Leasing of Medical Equipment	2018/2019	200000000
county	21	2009	Leasing of Medical Equipment	2018/2019	200000000
county	47	2009	Leasing of Medical Equipment	2018/2019	200000000
county	32	2009	Leasing of Medical Equipment	2018/2019	200000000
county	29	2009	Leasing of Medical Equipment	2018/2019	200000000
county	33	2009	Leasing of Medical Equipment	2018/2019	200000000
county	46	2009	Leasing of Medical Equipment	2018/2019	200000000
county	18	2009	Leasing of Medical Equipment	2018/2019	200000000
county	19	2009	Leasing of Medical Equipment	2018/2019	200000000
county	25	2009	Leasing of Medical Equipment	2018/2019	200000000
county	41	2009	Leasing of Medical Equipment	2018/2019	200000000
county	6	2009	Leasing of Medical Equipment	2018/2019	200000000
county	4	2009	Leasing of Medical Equipment	2018/2019	200000000
county	13	2009	Leasing of Medical Equipment	2018/2019	200000000
county	26	2009	Leasing of Medical Equipment	2018/2019	200000000
county	23	2009	Leasing of Medical Equipment	2018/2019	200000000
county	27	2009	Leasing of Medical Equipment	2018/2019	200000000
county	38	2009	Leasing of Medical Equipment	2018/2019	200000000
county	8	2009	Leasing of Medical Equipment	2018/2019	200000000
county	24	2009	Leasing of Medical Equipment	2018/2019	200000000
county	45	2009	Road Maintenance Fuel Levy	2018/2019	203376725
county	12	2009	Road Maintenance Fuel Levy	2018/2019	210817337
county	1	2009	Road Maintenance Fuel Levy	2018/2019	216604479
county	16	2009	Road Maintenance Fuel Levy	2018/2019	219084683
county	8	2009	Road Maintenance Fuel Levy	2018/2019	223218356
county	15	2009	Road Maintenance Fuel Levy	2018/2019	229832234
county	39	2009	Road Maintenance Fuel Levy	2018/2019	235619376
county	22	2009	Road Maintenance Fuel Levy	2018/2019	246366927
county	32	2009	Road Maintenance Fuel Levy	2018/2019	248847131
county	9	2009	Road Maintenance Fuel Levy	2018/2019	267035293
county	37	2009	Road Maintenance Fuel Levy	2018/2019	271995701
county	23	2009	Road Maintenance Fuel Levy	2018/2019	283569986
county	3	2009	Road Maintenance Fuel Levy	2018/2019	285223455
county	47	2009	Road Maintenance Fuel Levy	2018/2019	415847530
country	KE	2009	Rehabilitation of Village Polytechnics	2018/2019	2000000000
country	KE	2009	Road Maintenance Fuel Levy	2018/2019	8269000000
country	KE	2009	Leasing of Medical Equipment	2018/2019	9400000000
\.


--
-- Name: breakdown_condition_fund_ng2018 pk_breakdown_condition_fund_ng2018; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_ng2018
    ADD CONSTRAINT pk_breakdown_condition_fund_ng2018 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

