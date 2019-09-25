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

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_dp2018 DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_dp2018;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_dp2018;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_dp2018; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_dp2018 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_dp2018; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_dp2018 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
county	30	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	36	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	40	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	28	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	34	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	37	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	35	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	42	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	31	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	16	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	18	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	19	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	41	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	6	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	13	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	27	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	24	2009	Compensation for User Fee Foregone	2018/2019	117000000
county	7	2009	Compensation for User Fee Foregone	2018/2019	150000000
county	11	2009	Compensation for User Fee Foregone	2018/2019	150000000
county	5	2009	Compensation for User Fee Foregone	2018/2019	150000000
county	9	2009	Compensation for User Fee Foregone	2018/2019	150000000
county	10	2009	Compensation for User Fee Foregone	2018/2019	150000000
county	4	2009	Compensation for User Fee Foregone	2018/2019	150000000
county	8	2009	Compensation for User Fee Foregone	2018/2019	150000000
country	KE	2009	Compensation for User Fee Foregone	2018/2019	3039000001
county	28	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	14	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	22	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	20	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	5	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	12	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	1	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	21	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	46	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	18	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	19	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	6	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	13	2009	Grants to Level5 Hospitals	2018/2019	50000000
county	47	2009	Grants to Level5 Hospitals	2018/2019	54429184
county	41	2009	Grants to Level5 Hospitals	2018/2019	56758154
county	35	2009	Grants to Level5 Hospitals	2018/2019	61507974
county	34	2009	Grants to Level5 Hospitals	2018/2019	62478710
county	11	2009	Grants to Level5 Hospitals	2018/2019	66229830
county	31	2009	Grants to Level5 Hospitals	2018/2019	67077728
county	42	2009	Grants to Level5 Hospitals	2018/2019	67364355
county	38	2009	Grants to Level5 Hospitals	2018/2019	73956778
county	45	2009	Grants to Level5 Hospitals	2018/2019	74159514
county	30	2009	Grants to Level5 Hospitals	2018/2019	78899347
county	27	2009	Grants to Level5 Hospitals	2018/2019	81893450
county	43	2009	Grants to Level5 Hospitals	2018/2019	85820342
county	36	2009	Grants to Level5 Hospitals	2018/2019	86405581
county	40	2009	Grants to Level5 Hospitals	2018/2019	86622298
county	32	2009	Grants to Level5 Hospitals	2018/2019	95036357
county	16	2009	Grants to Level5 Hospitals	2018/2019	95401875
county	25	2009	Grants to Level5 Hospitals	2018/2019	97143610
county	29	2009	Grants to Level5 Hospitals	2018/2019	97229498
county	2	2009	Grants to Level5 Hospitals	2018/2019	98175267
county	39	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	7	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	37	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	3	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	15	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	17	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	9	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	10	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	44	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	33	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	4	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	26	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	23	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	8	2009	Grants to Level5 Hospitals	2018/2019	100000000
county	24	2009	Grants to Level5 Hospitals	2018/2019	100000000
country	KE	2009	Grants to Level5 Hospitals	2018/2019	3636589847
county	5	2009	Leasing of Medical Equipment	2018/2019	33793559
county	13	2009	Leasing of Medical Equipment	2018/2019	38536081
county	28	2009	Leasing of Medical Equipment	2018/2019	38552919
county	11	2009	Leasing of Medical Equipment	2018/2019	38668826
county	6	2009	Leasing of Medical Equipment	2018/2019	39327939
county	25	2009	Leasing of Medical Equipment	2018/2019	39330852
county	14	2009	Leasing of Medical Equipment	2018/2019	40595727
county	20	2009	Leasing of Medical Equipment	2018/2019	41078830
county	31	2009	Leasing of Medical Equipment	2018/2019	41121027
county	38	2009	Leasing of Medical Equipment	2018/2019	41604116
county	46	2009	Leasing of Medical Equipment	2018/2019	42383765
county	24	2009	Leasing of Medical Equipment	2018/2019	42917546
county	18	2009	Leasing of Medical Equipment	2018/2019	43069316
county	30	2009	Leasing of Medical Equipment	2018/2019	43729455
county	19	2009	Leasing of Medical Equipment	2018/2019	43740998
county	4	2009	Leasing of Medical Equipment	2018/2019	44003842
county	35	2009	Leasing of Medical Equipment	2018/2019	44538343
county	29	2009	Leasing of Medical Equipment	2018/2019	44551044
county	36	2009	Leasing of Medical Equipment	2018/2019	44888193
county	34	2009	Leasing of Medical Equipment	2018/2019	45860424
county	41	2009	Leasing of Medical Equipment	2018/2019	46076429
county	26	2009	Leasing of Medical Equipment	2018/2019	46456661
county	27	2009	Leasing of Medical Equipment	2018/2019	46739163
county	40	2009	Leasing of Medical Equipment	2018/2019	47393422
county	7	2009	Leasing of Medical Equipment	2018/2019	47755752
county	21	2009	Leasing of Medical Equipment	2018/2019	48244593
county	10	2009	Leasing of Medical Equipment	2018/2019	48985872
county	33	2009	Leasing of Medical Equipment	2018/2019	49037031
county	43	2009	Leasing of Medical Equipment	2018/2019	49500526
county	44	2009	Leasing of Medical Equipment	2018/2019	49609593
county	42	2009	Leasing of Medical Equipment	2018/2019	49642674
county	2	2009	Leasing of Medical Equipment	2018/2019	50747782
county	17	2009	Leasing of Medical Equipment	2018/2019	50750604
county	1	2009	Leasing of Medical Equipment	2018/2019	53333725
county	8	2009	Leasing of Medical Equipment	2018/2019	53401112
county	16	2009	Leasing of Medical Equipment	2018/2019	53423784
county	45	2009	Leasing of Medical Equipment	2018/2019	53938093
county	12	2009	Leasing of Medical Equipment	2018/2019	53939835
county	15	2009	Leasing of Medical Equipment	2018/2019	57462594
county	39	2009	Leasing of Medical Equipment	2018/2019	58329310
county	9	2009	Leasing of Medical Equipment	2018/2019	58673488
county	32	2009	Leasing of Medical Equipment	2018/2019	60282958
county	22	2009	Leasing of Medical Equipment	2018/2019	60455156
county	3	2009	Leasing of Medical Equipment	2018/2019	61148106
county	37	2009	Leasing of Medical Equipment	2018/2019	63508831
county	23	2009	Leasing of Medical Equipment	2018/2019	65446016
county	47	2009	Leasing of Medical Equipment	2018/2019	83424144
country	KE	2009	Leasing of Medical Equipment	2018/2019	2300000000
county	5	2009	Rehabilitation of Village Polytechnics	2018/2019	8302500
county	28	2009	Rehabilitation of Village Polytechnics	2018/2019	12150000
county	13	2009	Rehabilitation of Village Polytechnics	2018/2019	12352500
county	11	2009	Rehabilitation of Village Polytechnics	2018/2019	12656250
county	25	2009	Rehabilitation of Village Polytechnics	2018/2019	12757500
county	6	2009	Rehabilitation of Village Polytechnics	2018/2019	13061250
county	14	2009	Rehabilitation of Village Polytechnics	2018/2019	13770001
county	20	2009	Rehabilitation of Village Polytechnics	2018/2019	14782500
county	38	2009	Rehabilitation of Village Polytechnics	2018/2019	14782500
county	31	2009	Rehabilitation of Village Polytechnics	2018/2019	15086250
county	46	2009	Rehabilitation of Village Polytechnics	2018/2019	15491250
county	24	2009	Rehabilitation of Village Polytechnics	2018/2019	15896250
county	18	2009	Rehabilitation of Village Polytechnics	2018/2019	15997500
county	19	2009	Rehabilitation of Village Polytechnics	2018/2019	16605000
county	30	2009	Rehabilitation of Village Polytechnics	2018/2019	16706250
county	29	2009	Rehabilitation of Village Polytechnics	2018/2019	17111250
county	35	2009	Rehabilitation of Village Polytechnics	2018/2019	17516250
county	36	2009	Rehabilitation of Village Polytechnics	2018/2019	17617500
county	4	2009	Rehabilitation of Village Polytechnics	2018/2019	17921250
county	41	2009	Rehabilitation of Village Polytechnics	2018/2019	18528750
county	26	2009	Rehabilitation of Village Polytechnics	2018/2019	18933750
county	27	2009	Rehabilitation of Village Polytechnics	2018/2019	19136250
county	34	2009	Rehabilitation of Village Polytechnics	2018/2019	19338750
county	40	2009	Rehabilitation of Village Polytechnics	2018/2019	19541250
county	21	2009	Rehabilitation of Village Polytechnics	2018/2019	20756250
county	44	2009	Rehabilitation of Village Polytechnics	2018/2019	21667500
county	43	2009	Rehabilitation of Village Polytechnics	2018/2019	21870000
county	33	2009	Rehabilitation of Village Polytechnics	2018/2019	21870000
county	42	2009	Rehabilitation of Village Polytechnics	2018/2019	21971250
county	10	2009	Rehabilitation of Village Polytechnics	2018/2019	22072500
county	7	2009	Rehabilitation of Village Polytechnics	2018/2019	22325625
county	17	2009	Rehabilitation of Village Polytechnics	2018/2019	22882500
county	2	2009	Rehabilitation of Village Polytechnics	2018/2019	24300000
county	16	2009	Rehabilitation of Village Polytechnics	2018/2019	24806251
county	45	2009	Rehabilitation of Village Polytechnics	2018/2019	24907500
county	12	2009	Rehabilitation of Village Polytechnics	2018/2019	25818750
county	8	2009	Rehabilitation of Village Polytechnics	2018/2019	27286875
county	1	2009	Rehabilitation of Village Polytechnics	2018/2019	27337500
county	15	2009	Rehabilitation of Village Polytechnics	2018/2019	29008125
county	39	2009	Rehabilitation of Village Polytechnics	2018/2019	29362500
county	32	2009	Rehabilitation of Village Polytechnics	2018/2019	31083750
county	22	2009	Rehabilitation of Village Polytechnics	2018/2019	32400000
county	9	2009	Rehabilitation of Village Polytechnics	2018/2019	32653125
county	37	2009	Rehabilitation of Village Polytechnics	2018/2019	33311250
county	3	2009	Rehabilitation of Village Polytechnics	2018/2019	33361875
county	23	2009	Rehabilitation of Village Polytechnics	2018/2019	33766875
county	47	2009	Rehabilitation of Village Polytechnics	2018/2019	51637500
country	KE	2009	Rehabilitation of Village Polytechnics	2018/2019	1012500000
county	2	2009	Road Maintenance Fuel Levy	2018/2019	50000000
county	31	2009	Road Maintenance Fuel Levy	2018/2019	50000000
county	5	2009	Road Maintenance Fuel Levy	2018/2019	50000000
county	10	2009	Road Maintenance Fuel Levy	2018/2019	50000000
county	25	2009	Road Maintenance Fuel Levy	2018/2019	50000000
county	41	2009	Road Maintenance Fuel Levy	2018/2019	50000000
county	6	2009	Road Maintenance Fuel Levy	2018/2019	50000000
county	13	2009	Road Maintenance Fuel Levy	2018/2019	50000000
county	30	2009	Road Maintenance Fuel Levy	2018/2019	52360500
county	21	2009	Road Maintenance Fuel Levy	2018/2019	62437600
county	20	2009	Road Maintenance Fuel Levy	2018/2019	71302200
county	24	2009	Road Maintenance Fuel Levy	2018/2019	73392300
county	33	2009	Road Maintenance Fuel Levy	2018/2019	74905300
county	28	2009	Road Maintenance Fuel Levy	2018/2019	89802100
county	11	2009	Road Maintenance Fuel Levy	2018/2019	93968100
county	23	2009	Road Maintenance Fuel Levy	2018/2019	95023200
county	40	2009	Road Maintenance Fuel Levy	2018/2019	101071500
county	46	2009	Road Maintenance Fuel Levy	2018/2019	114705300
county	12	2009	Road Maintenance Fuel Levy	2018/2019	116890200
county	43	2009	Road Maintenance Fuel Levy	2018/2019	119361500
county	14	2009	Road Maintenance Fuel Levy	2018/2019	119892100
county	18	2009	Road Maintenance Fuel Levy	2018/2019	135543400
county	45	2009	Road Maintenance Fuel Levy	2018/2019	164053800
county	8	2009	Road Maintenance Fuel Levy	2018/2019	165643500
county	36	2009	Road Maintenance Fuel Levy	2018/2019	168334800
county	29	2009	Road Maintenance Fuel Levy	2018/2019	177231700
county	15	2009	Road Maintenance Fuel Levy	2018/2019	232374200
county	7	2009	Road Maintenance Fuel Levy	2018/2019	233506000
county	19	2009	Road Maintenance Fuel Levy	2018/2019	236639100
county	38	2009	Road Maintenance Fuel Levy	2018/2019	250950700
county	35	2009	Road Maintenance Fuel Levy	2018/2019	256299000
county	34	2009	Road Maintenance Fuel Levy	2018/2019	265950300
county	26	2009	Road Maintenance Fuel Levy	2018/2019	299106900
county	39	2009	Road Maintenance Fuel Levy	2018/2019	300977100
county	3	2009	Road Maintenance Fuel Levy	2018/2019	330534500
county	37	2009	Road Maintenance Fuel Levy	2018/2019	389118800
county	4	2009	Road Maintenance Fuel Levy	2018/2019	500000001
county	44	2009	Road Maintenance Fuel Levy	2018/2019	518367800
county	27	2009	Road Maintenance Fuel Levy	2018/2019	630147800
county	42	2009	Road Maintenance Fuel Levy	2018/2019	773573300
county	16	2009	Road Maintenance Fuel Levy	2018/2019	1018320500
county	32	2009	Road Maintenance Fuel Levy	2018/2019	1084843300
county	17	2009	Road Maintenance Fuel Levy	2018/2019	1362616001
county	9	2009	Road Maintenance Fuel Levy	2018/2019	1758195001
county	22	2009	Road Maintenance Fuel Levy	2018/2019	1885993000
country	KE	2009	Road Maintenance Fuel Levy	2018/2019	11464702500
county	33	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435
county	39	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	14	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	43	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	22	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	3	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	20	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	45	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	15	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	2	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	17	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	12	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	44	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	21	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	32	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	29	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	46	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	25	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	26	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	23	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
county	38	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	140435163
country	KE	2009	Supplement for construction of county headquarters from Development Partners	2018/2019	2949138423
\.


--
-- Name: breakdown_condition_fund_dp2018 pk_breakdown_condition_fund_dp2018; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_dp2018
    ADD CONSTRAINT pk_breakdown_condition_fund_dp2018 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--

