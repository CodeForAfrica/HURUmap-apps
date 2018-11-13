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

ALTER TABLE IF EXISTS ONLY public.religion_of_respondent DROP CONSTRAINT IF EXISTS pk_religion_of_respondent;
DROP TABLE IF EXISTS public.religion_of_respondent;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: religion_of_respondent; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.religion_of_respondent (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    religion_of_respondent character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: religion_of_respondent; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.religion_of_respondent (geo_level, geo_code, geo_version, religion_of_respondent, total) FROM stdin;
county	3	2009	African Inland Church	3
county	17	2009	African Inland Church	6
county	1	2009	African Inland Church	1
county	30	2009	Anglican	14
county	36	2009	Anglican	5
county	39	2009	Anglican	2
county	40	2009	Anglican	9
county	28	2009	Anglican	4
county	14	2009	Anglican	5
county	43	2009	Anglican	2
county	34	2009	Anglican	6
county	37	2009	Anglican	12
county	35	2009	Anglican	4
county	22	2009	Anglican	16
county	3	2009	Anglican	2
county	20	2009	Anglican	4
county	42	2009	Anglican	8
county	15	2009	Anglican	6
county	2	2009	Anglican	5
county	31	2009	Anglican	2
county	16	2009	Anglican	1
county	17	2009	Anglican	1
county	12	2009	Anglican	5
county	1	2009	Anglican	4
county	21	2009	Anglican	9
county	47	2009	Anglican	33
county	32	2009	Anglican	10
county	29	2009	Anglican	13
county	33	2009	Anglican	2
county	25	2009	Anglican	1
county	41	2009	Anglican	12
county	6	2009	Anglican	1
county	13	2009	Anglican	3
county	26	2009	Anglican	2
county	23	2009	Anglican	3
county	27	2009	Anglican	16
county	38	2009	Anglican	4
county	24	2009	Anglican	3
county	32	2009	Atheist	1
county	36	2009	Baptist	1
county	39	2009	Baptist	2
county	34	2009	Baptist	1
county	37	2009	Baptist	1
county	22	2009	Baptist	1
county	3	2009	Baptist	4
county	42	2009	Baptist	2
county	2	2009	Baptist	3
county	16	2009	Baptist	1
county	17	2009	Baptist	1
county	12	2009	Baptist	1
county	1	2009	Baptist	3
county	47	2009	Baptist	6
county	32	2009	Baptist	1
county	19	2009	Baptist	1
county	13	2009	Baptist	1
county	26	2009	Baptist	1
county	27	2009	Baptist	2
county	36	2009	Christian only	17
county	39	2009	Christian only	6
county	14	2009	Christian only	10
county	43	2009	Christian only	2
county	34	2009	Christian only	2
county	37	2009	Christian only	1
county	35	2009	Christian only	14
county	22	2009	Christian only	35
county	3	2009	Christian only	17
county	20	2009	Christian only	8
county	15	2009	Christian only	21
county	2	2009	Christian only	7
county	31	2009	Christian only	4
county	5	2009	Christian only	1
county	16	2009	Christian only	24
county	17	2009	Christian only	11
county	10	2009	Christian only	3
county	12	2009	Christian only	34
county	44	2009	Christian only	2
county	1	2009	Christian only	12
county	21	2009	Christian only	25
county	47	2009	Christian only	48
county	32	2009	Christian only	34
county	33	2009	Christian only	22
county	18	2009	Christian only	19
county	19	2009	Christian only	11
county	6	2009	Christian only	6
county	13	2009	Christian only	9
county	26	2009	Christian only	5
county	23	2009	Christian only	1
county	36	2009	Church of Christ	1
county	39	2009	Church of Christ	1
county	40	2009	Church of Christ	1
county	43	2009	Church of Christ	3
county	37	2009	Church of Christ	3
county	45	2009	Church of Christ	3
county	42	2009	Church of Christ	2
county	47	2009	Church of Christ	2
county	41	2009	Church of Christ	1
county	26	2009	Church of Christ	1
county	27	2009	Church of Christ	2
county	38	2009	Church of Christ	3
county	37	2009	Coptic	1
county	35	2009	Coptic	1
county	22	2009	Coptic	1
county	44	2009	Coptic	1
county	1	2009	Don't know	1
county	47	2009	Don't know	1
county	37	2009	Dutch Reformed	1
county	30	2009	Evangelical	5
county	36	2009	Evangelical	1
county	39	2009	Evangelical	10
county	40	2009	Evangelical	4
county	14	2009	Evangelical	1
county	43	2009	Evangelical	6
county	34	2009	Evangelical	2
county	37	2009	Evangelical	11
county	22	2009	Evangelical	2
county	20	2009	Evangelical	3
county	45	2009	Evangelical	2
county	42	2009	Evangelical	4
county	15	2009	Evangelical	1
county	16	2009	Evangelical	2
county	12	2009	Evangelical	1
county	44	2009	Evangelical	3
county	21	2009	Evangelical	5
county	47	2009	Evangelical	6
county	32	2009	Evangelical	3
county	29	2009	Evangelical	7
county	33	2009	Evangelical	3
county	46	2009	Evangelical	2
county	18	2009	Evangelical	3
county	19	2009	Evangelical	1
county	41	2009	Evangelical	2
county	13	2009	Evangelical	1
county	26	2009	Evangelical	3
county	23	2009	Evangelical	5
county	27	2009	Evangelical	7
county	38	2009	Evangelical	1
county	47	2009	Hindu	2
county	30	2009	Independent	4
county	36	2009	Independent	5
county	39	2009	Independent	4
county	28	2009	Independent	1
county	14	2009	Independent	2
county	43	2009	Independent	5
county	34	2009	Independent	1
county	37	2009	Independent	7
county	35	2009	Independent	5
county	22	2009	Independent	8
county	20	2009	Independent	2
county	45	2009	Independent	4
county	42	2009	Independent	12
county	15	2009	Independent	10
county	2	2009	Independent	2
county	16	2009	Independent	11
county	17	2009	Independent	9
county	12	2009	Independent	2
county	44	2009	Independent	8
county	1	2009	Independent	1
county	21	2009	Independent	2
county	47	2009	Independent	9
county	32	2009	Independent	6
county	33	2009	Independent	3
county	46	2009	Independent	3
county	18	2009	Independent	2
county	19	2009	Independent	5
county	41	2009	Independent	9
county	26	2009	Independent	1
county	27	2009	Independent	2
county	38	2009	Independent	2
county	22	2009	Ismaeli	1
county	24	2009	Ismaeli	1
county	43	2009	Jehovah's Witness	1
county	37	2009	Jehovah's Witness	1
county	3	2009	Jehovah's Witness	3
county	16	2009	Jehovah's Witness	2
county	17	2009	Jehovah's Witness	1
county	12	2009	Jehovah's Witness	1
county	47	2009	Jehovah's Witness	1
county	32	2009	Jehovah's Witness	1
county	46	2009	Jehovah's Witness	1
county	41	2009	Jehovah's Witness	1
county	26	2009	Jehovah's Witness	1
county	23	2009	Jehovah's Witness	1
county	38	2009	Jehovah's Witness	1
county	40	2009	Lutheran	1
county	34	2009	Lutheran	1
county	3	2009	Lutheran	1
county	45	2009	Lutheran	1
county	16	2009	Lutheran	1
county	27	2009	Lutheran	2
county	38	2009	Lutheran	1
county	24	2009	Lutheran	2
county	39	2009	Methodist	1
county	14	2009	Methodist	3
county	34	2009	Methodist	1
county	42	2009	Methodist	1
county	12	2009	Methodist	9
county	1	2009	Methodist	1
county	47	2009	Methodist	4
county	32	2009	Methodist	1
county	41	2009	Methodist	1
county	13	2009	Methodist	3
county	38	2009	Methodist	2
county	47	2009	Missing	1
county	39	2009	Muslim only	1
county	7	2009	Muslim only	24
county	11	2009	Muslim only	8
county	34	2009	Muslim only	2
county	37	2009	Muslim only	5
county	3	2009	Muslim only	12
county	45	2009	Muslim only	1
county	15	2009	Muslim only	1
county	2	2009	Muslim only	8
county	31	2009	Muslim only	4
county	9	2009	Muslim only	37
county	10	2009	Muslim only	12
county	1	2009	Muslim only	19
county	47	2009	Muslim only	11
county	32	2009	Muslim only	3
county	4	2009	Muslim only	8
county	27	2009	Muslim only	1
county	8	2009	Muslim only	19
county	24	2009	Muslim only	2
county	14	2009	None	1
county	34	2009	None	4
county	37	2009	None	1
county	22	2009	None	3
county	20	2009	None	1
county	17	2009	None	1
county	12	2009	None	2
county	1	2009	None	3
county	21	2009	None	1
county	47	2009	None	2
county	32	2009	None	3
county	33	2009	None	1
county	46	2009	None	1
county	18	2009	None	1
county	41	2009	None	1
county	6	2009	None	1
county	13	2009	None	1
county	27	2009	None	1
county	24	2009	None	1
county	39	2009	Orthodox	1
county	40	2009	Orthodox	1
county	14	2009	Orthodox	1
county	37	2009	Orthodox	1
county	22	2009	Orthodox	1
county	45	2009	Orthodox	1
county	15	2009	Orthodox	1
county	47	2009	Orthodox	1
county	41	2009	Orthodox	1
county	40	2009	Other	2
county	35	2009	Other	1
county	3	2009	Other	7
county	15	2009	Other	3
county	31	2009	Other	2
county	5	2009	Other	7
county	16	2009	Other	1
county	17	2009	Other	11
county	1	2009	Other	2
county	47	2009	Other	5
county	32	2009	Other	10
county	19	2009	Other	1
county	6	2009	Other	3
county	26	2009	Other	2
county	38	2009	Other	3
county	30	2009	Pentecostal	2
county	36	2009	Pentecostal	8
county	39	2009	Pentecostal	26
county	40	2009	Pentecostal	4
county	14	2009	Pentecostal	4
county	43	2009	Pentecostal	6
county	34	2009	Pentecostal	10
county	37	2009	Pentecostal	30
county	35	2009	Pentecostal	1
county	22	2009	Pentecostal	6
county	3	2009	Pentecostal	8
county	20	2009	Pentecostal	5
county	45	2009	Pentecostal	11
county	42	2009	Pentecostal	12
county	2	2009	Pentecostal	6
county	31	2009	Pentecostal	1
county	16	2009	Pentecostal	8
county	17	2009	Pentecostal	1
county	10	2009	Pentecostal	1
county	12	2009	Pentecostal	9
county	44	2009	Pentecostal	9
county	1	2009	Pentecostal	10
county	21	2009	Pentecostal	7
county	47	2009	Pentecostal	29
county	32	2009	Pentecostal	2
county	29	2009	Pentecostal	9
county	33	2009	Pentecostal	6
county	46	2009	Pentecostal	8
county	18	2009	Pentecostal	3
county	19	2009	Pentecostal	6
county	41	2009	Pentecostal	11
county	13	2009	Pentecostal	3
county	26	2009	Pentecostal	17
county	23	2009	Pentecostal	17
county	27	2009	Pentecostal	9
county	38	2009	Pentecostal	13
county	8	2009	Pentecostal	1
county	24	2009	Pentecostal	1
county	14	2009	Presbyterian	4
county	34	2009	Presbyterian	3
county	37	2009	Presbyterian	1
county	22	2009	Presbyterian	9
county	20	2009	Presbyterian	3
county	15	2009	Presbyterian	1
county	2	2009	Presbyterian	1
county	16	2009	Presbyterian	2
county	12	2009	Presbyterian	4
county	21	2009	Presbyterian	1
county	47	2009	Presbyterian	8
county	32	2009	Presbyterian	3
county	18	2009	Presbyterian	2
county	19	2009	Presbyterian	6
county	13	2009	Presbyterian	1
county	26	2009	Presbyterian	1
county	39	2009	Quaker / Friends	10
county	37	2009	Quaker / Friends	5
county	42	2009	Quaker / Friends	1
county	12	2009	Quaker / Friends	1
county	47	2009	Quaker / Friends	1
county	29	2009	Quaker / Friends	2
county	26	2009	Quaker / Friends	1
county	36	2009	Refused	1
county	14	2009	Refused	1
county	22	2009	Refused	3
county	20	2009	Refused	2
county	12	2009	Refused	2
county	1	2009	Refused	1
county	19	2009	Refused	2
county	30	2009	Roman Catholic	7
county	36	2009	Roman Catholic	6
county	39	2009	Roman Catholic	15
county	40	2009	Roman Catholic	16
county	28	2009	Roman Catholic	11
county	14	2009	Roman Catholic	8
county	43	2009	Roman Catholic	14
county	34	2009	Roman Catholic	14
county	37	2009	Roman Catholic	14
county	35	2009	Roman Catholic	6
county	22	2009	Roman Catholic	31
county	3	2009	Roman Catholic	4
county	20	2009	Roman Catholic	11
county	45	2009	Roman Catholic	15
county	42	2009	Roman Catholic	8
county	15	2009	Roman Catholic	12
county	2	2009	Roman Catholic	4
county	31	2009	Roman Catholic	9
county	16	2009	Roman Catholic	19
county	17	2009	Roman Catholic	14
county	12	2009	Roman Catholic	14
county	44	2009	Roman Catholic	15
county	1	2009	Roman Catholic	11
county	21	2009	Roman Catholic	14
county	47	2009	Roman Catholic	68
county	32	2009	Roman Catholic	20
county	29	2009	Roman Catholic	12
county	33	2009	Roman Catholic	8
county	46	2009	Roman Catholic	11
county	18	2009	Roman Catholic	9
county	19	2009	Roman Catholic	15
county	25	2009	Roman Catholic	7
county	41	2009	Roman Catholic	8
county	6	2009	Roman Catholic	5
county	13	2009	Roman Catholic	1
county	26	2009	Roman Catholic	9
county	23	2009	Roman Catholic	21
county	27	2009	Roman Catholic	8
county	8	2009	Roman Catholic	1
county	24	2009	Roman Catholic	14
county	36	2009	Seventh Day Adventist	3
county	39	2009	Seventh Day Adventist	1
county	40	2009	Seventh Day Adventist	2
county	43	2009	Seventh Day Adventist	16
county	34	2009	Seventh Day Adventist	1
county	37	2009	Seventh Day Adventist	1
county	35	2009	Seventh Day Adventist	8
county	22	2009	Seventh Day Adventist	2
county	3	2009	Seventh Day Adventist	1
county	20	2009	Seventh Day Adventist	1
county	45	2009	Seventh Day Adventist	34
county	42	2009	Seventh Day Adventist	5
county	31	2009	Seventh Day Adventist	1
county	44	2009	Seventh Day Adventist	10
county	1	2009	Seventh Day Adventist	1
county	47	2009	Seventh Day Adventist	6
county	32	2009	Seventh Day Adventist	6
county	29	2009	Seventh Day Adventist	5
county	33	2009	Seventh Day Adventist	3
county	46	2009	Seventh Day Adventist	14
county	18	2009	Seventh Day Adventist	1
county	41	2009	Seventh Day Adventist	1
county	13	2009	Seventh Day Adventist	1
county	26	2009	Seventh Day Adventist	4
county	27	2009	Seventh Day Adventist	5
county	22	2009	Shia	1
county	2	2009	Shia	1
county	7	2009	Sunni only	8
county	3	2009	Sunni only	2
county	2	2009	Sunni only	3
county	9	2009	Sunni only	11
county	1	2009	Sunni only	2
county	47	2009	Sunni only	4
county	27	2009	Sunni only	1
county	8	2009	Sunni only	11
county	31	2009	Traditional / ethnic religion	1
county	43	2009	Zionist Christian Church	1
county	42	2009	Zionist Christian Church	1
county	38	2009	Zionist Christian Church	2
\.


--
-- Name: religion_of_respondent pk_religion_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.religion_of_respondent
    ADD CONSTRAINT pk_religion_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, religion_of_respondent);


--
-- PostgreSQL database dump complete
--

