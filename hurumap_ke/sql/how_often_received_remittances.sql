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

ALTER TABLE IF EXISTS ONLY public.how_often_received_remittances DROP CONSTRAINT IF EXISTS pk_how_often_received_remittances;
DROP TABLE IF EXISTS public.how_often_received_remittances;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: how_often_received_remittances; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.how_often_received_remittances (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    how_often_received_remittances character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: how_often_received_remittances; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.how_often_received_remittances (geo_level, geo_code, geo_version, how_often_received_remittances, total) FROM stdin;
county	36	2009	At least every 3 months	1
county	40	2009	At least every 3 months	1
county	14	2009	At least every 3 months	5
county	43	2009	At least every 3 months	2
county	11	2009	At least every 3 months	2
county	37	2009	At least every 3 months	2
county	35	2009	At least every 3 months	1
county	22	2009	At least every 3 months	2
county	3	2009	At least every 3 months	1
county	20	2009	At least every 3 months	1
county	42	2009	At least every 3 months	1
county	15	2009	At least every 3 months	2
county	2	2009	At least every 3 months	1
county	31	2009	At least every 3 months	1
county	16	2009	At least every 3 months	8
county	12	2009	At least every 3 months	6
county	44	2009	At least every 3 months	1
county	1	2009	At least every 3 months	5
county	47	2009	At least every 3 months	8
county	32	2009	At least every 3 months	2
county	29	2009	At least every 3 months	2
county	46	2009	At least every 3 months	1
county	19	2009	At least every 3 months	1
county	25	2009	At least every 3 months	1
county	13	2009	At least every 3 months	3
county	26	2009	At least every 3 months	2
county	27	2009	At least every 3 months	1
county	24	2009	At least every 3 months	1
county	30	2009	At least every 6 months	1
county	37	2009	At least every 6 months	2
county	3	2009	At least every 6 months	1
county	15	2009	At least every 6 months	6
county	31	2009	At least every 6 months	1
county	16	2009	At least every 6 months	3
county	9	2009	At least every 6 months	1
county	12	2009	At least every 6 months	5
county	1	2009	At least every 6 months	2
county	47	2009	At least every 6 months	7
county	32	2009	At least every 6 months	2
county	29	2009	At least every 6 months	1
county	18	2009	At least every 6 months	1
county	6	2009	At least every 6 months	1
county	13	2009	At least every 6 months	1
county	24	2009	At least every 6 months	1
county	30	2009	At least once a month	1
county	14	2009	At least once a month	1
county	7	2009	At least once a month	3
county	43	2009	At least once a month	1
county	11	2009	At least once a month	1
county	34	2009	At least once a month	2
county	37	2009	At least once a month	4
county	22	2009	At least once a month	6
county	20	2009	At least once a month	1
county	45	2009	At least once a month	1
county	15	2009	At least once a month	2
county	2	2009	At least once a month	2
county	16	2009	At least once a month	2
county	17	2009	At least once a month	3
county	9	2009	At least once a month	1
county	12	2009	At least once a month	4
county	44	2009	At least once a month	2
county	1	2009	At least once a month	1
county	21	2009	At least once a month	2
county	47	2009	At least once a month	13
county	32	2009	At least once a month	4
county	29	2009	At least once a month	3
county	33	2009	At least once a month	1
county	13	2009	At least once a month	3
county	26	2009	At least once a month	2
county	23	2009	At least once a month	1
county	27	2009	At least once a month	3
county	24	2009	At least once a month	2
county	39	2009	At least once a year	4
county	40	2009	At least once a year	2
county	14	2009	At least once a year	1
county	7	2009	At least once a year	1
county	34	2009	At least once a year	1
county	37	2009	At least once a year	5
county	35	2009	At least once a year	2
county	22	2009	At least once a year	2
county	45	2009	At least once a year	1
county	15	2009	At least once a year	2
county	16	2009	At least once a year	2
county	17	2009	At least once a year	2
county	12	2009	At least once a year	4
county	1	2009	At least once a year	1
county	21	2009	At least once a year	1
county	47	2009	At least once a year	10
county	32	2009	At least once a year	4
county	29	2009	At least once a year	2
county	18	2009	At least once a year	2
county	41	2009	At least once a year	1
county	26	2009	At least once a year	1
county	8	2009	At least once a year	1
county	39	2009	Don't know	1
county	40	2009	Don't know	1
county	14	2009	Don't know	1
county	34	2009	Don't know	4
county	47	2009	Don't know	3
county	23	2009	Don't know	1
county	8	2009	Don't know	2
county	30	2009	Less than once a year	2
county	36	2009	Less than once a year	1
county	39	2009	Less than once a year	3
county	14	2009	Less than once a year	1
county	7	2009	Less than once a year	1
county	34	2009	Less than once a year	2
county	37	2009	Less than once a year	2
county	35	2009	Less than once a year	1
county	22	2009	Less than once a year	2
county	3	2009	Less than once a year	1
county	20	2009	Less than once a year	1
county	45	2009	Less than once a year	2
county	42	2009	Less than once a year	1
county	2	2009	Less than once a year	1
county	17	2009	Less than once a year	4
county	44	2009	Less than once a year	2
county	1	2009	Less than once a year	4
county	47	2009	Less than once a year	4
county	32	2009	Less than once a year	2
county	33	2009	Less than once a year	1
county	18	2009	Less than once a year	1
county	6	2009	Less than once a year	2
county	13	2009	Less than once a year	1
county	23	2009	Less than once a year	1
county	27	2009	Less than once a year	2
county	30	2009	Never	28
county	36	2009	Never	46
county	39	2009	Never	72
county	40	2009	Never	36
county	28	2009	Never	16
county	14	2009	Never	31
county	7	2009	Never	27
county	43	2009	Never	53
county	11	2009	Never	5
county	34	2009	Never	39
county	37	2009	Never	81
county	35	2009	Never	36
county	22	2009	Never	108
county	3	2009	Never	61
county	20	2009	Never	37
county	45	2009	Never	68
county	42	2009	Never	54
county	15	2009	Never	44
county	2	2009	Never	36
county	31	2009	Never	22
county	5	2009	Never	8
county	16	2009	Never	57
county	17	2009	Never	47
county	9	2009	Never	46
county	10	2009	Never	16
county	12	2009	Never	66
county	44	2009	Never	43
county	1	2009	Never	59
county	21	2009	Never	61
county	47	2009	Never	203
county	32	2009	Never	90
county	29	2009	Never	40
county	33	2009	Never	46
county	46	2009	Never	39
county	18	2009	Never	36
county	19	2009	Never	47
county	25	2009	Never	7
county	41	2009	Never	47
county	6	2009	Never	13
county	4	2009	Never	8
county	13	2009	Never	16
county	26	2009	Never	43
county	23	2009	Never	45
county	27	2009	Never	50
county	38	2009	Never	32
county	8	2009	Never	29
county	24	2009	Never	20
\.


--
-- Name: how_often_received_remittances pk_how_often_received_remittances; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_received_remittances
    ADD CONSTRAINT pk_how_often_received_remittances PRIMARY KEY (geo_level, geo_code, geo_version, how_often_received_remittances);


--
-- PostgreSQL database dump complete
--

