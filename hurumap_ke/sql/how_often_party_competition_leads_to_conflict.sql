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

ALTER TABLE IF EXISTS ONLY public.how_often_party_competition_leads_to_conflict DROP CONSTRAINT IF EXISTS pk_how_often_party_competition_leads_to_conflict;
DROP TABLE IF EXISTS public.how_often_party_competition_leads_to_conflict;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: how_often_party_competition_leads_to_conflict; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.how_often_party_competition_leads_to_conflict (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    how_often_party_competition_leads_to_conflict character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: how_often_party_competition_leads_to_conflict; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.how_often_party_competition_leads_to_conflict (geo_level, geo_code, geo_version, how_often_party_competition_leads_to_conflict, total) FROM stdin;
county	30	2009	Always	12
county	36	2009	Always	16
county	39	2009	Always	18
county	40	2009	Always	13
county	28	2009	Always	6
county	14	2009	Always	5
county	7	2009	Always	2
county	43	2009	Always	27
county	11	2009	Always	3
county	34	2009	Always	21
county	37	2009	Always	31
county	35	2009	Always	8
county	22	2009	Always	39
county	3	2009	Always	18
county	20	2009	Always	21
county	45	2009	Always	28
county	42	2009	Always	21
county	15	2009	Always	6
county	2	2009	Always	10
county	31	2009	Always	11
county	5	2009	Always	1
county	16	2009	Always	16
county	17	2009	Always	6
county	9	2009	Always	1
county	10	2009	Always	3
county	12	2009	Always	1
county	44	2009	Always	12
county	1	2009	Always	15
county	21	2009	Always	21
county	47	2009	Always	38
county	32	2009	Always	42
county	29	2009	Always	21
county	33	2009	Always	13
county	46	2009	Always	10
county	18	2009	Always	16
county	19	2009	Always	20
county	25	2009	Always	1
county	41	2009	Always	4
county	6	2009	Always	1
county	13	2009	Always	4
county	26	2009	Always	12
county	23	2009	Always	11
county	27	2009	Always	11
county	38	2009	Always	5
county	8	2009	Always	1
county	24	2009	Always	9
county	30	2009	Don�t know	1
county	39	2009	Don�t know	3
county	40	2009	Don�t know	2
county	28	2009	Don�t know	1
county	14	2009	Don�t know	1
county	7	2009	Don�t know	9
county	11	2009	Don�t know	1
county	37	2009	Don�t know	6
county	22	2009	Don�t know	1
county	3	2009	Don�t know	2
county	45	2009	Don�t know	1
county	42	2009	Don�t know	1
county	31	2009	Don�t know	3
county	16	2009	Don�t know	1
county	17	2009	Don�t know	5
county	9	2009	Don�t know	10
county	10	2009	Don�t know	1
county	12	2009	Don�t know	3
county	44	2009	Don�t know	1
county	1	2009	Don�t know	1
county	21	2009	Don�t know	1
county	47	2009	Don�t know	14
county	33	2009	Don�t know	1
county	25	2009	Don�t know	1
county	41	2009	Don�t know	2
county	6	2009	Don�t know	1
county	4	2009	Don�t know	4
county	13	2009	Don�t know	2
county	26	2009	Don�t know	1
county	23	2009	Don�t know	5
county	38	2009	Don�t know	1
county	8	2009	Don�t know	14
county	30	2009	Never	1
county	36	2009	Never	5
county	39	2009	Never	25
county	40	2009	Never	7
county	28	2009	Never	6
county	14	2009	Never	7
county	34	2009	Never	2
county	37	2009	Never	23
county	35	2009	Never	6
county	22	2009	Never	5
county	20	2009	Never	2
county	45	2009	Never	4
county	42	2009	Never	1
county	15	2009	Never	5
county	2	2009	Never	2
county	16	2009	Never	8
county	9	2009	Never	2
county	10	2009	Never	2
county	12	2009	Never	17
county	44	2009	Never	1
county	21	2009	Never	8
county	47	2009	Never	8
county	32	2009	Never	6
county	29	2009	Never	5
county	33	2009	Never	2
county	46	2009	Never	1
county	19	2009	Never	1
county	25	2009	Never	1
county	41	2009	Never	4
county	6	2009	Never	1
county	13	2009	Never	3
county	26	2009	Never	11
county	23	2009	Never	10
county	27	2009	Never	8
county	38	2009	Never	9
county	24	2009	Never	3
county	30	2009	Often	10
county	36	2009	Often	21
county	39	2009	Often	21
county	40	2009	Often	13
county	28	2009	Often	2
county	14	2009	Often	21
county	7	2009	Often	20
county	43	2009	Often	26
county	11	2009	Often	3
county	34	2009	Often	16
county	37	2009	Often	24
county	35	2009	Often	24
county	22	2009	Often	53
county	3	2009	Often	39
county	20	2009	Often	11
county	45	2009	Often	29
county	42	2009	Often	31
county	15	2009	Often	34
county	2	2009	Often	26
county	31	2009	Often	9
county	5	2009	Often	6
county	16	2009	Often	36
county	17	2009	Often	34
county	9	2009	Often	28
county	10	2009	Often	8
county	12	2009	Often	43
county	44	2009	Often	24
county	1	2009	Often	55
county	21	2009	Often	21
county	47	2009	Often	137
county	32	2009	Often	44
county	29	2009	Often	15
county	33	2009	Often	21
county	46	2009	Often	18
county	18	2009	Often	19
county	19	2009	Often	18
county	25	2009	Often	2
county	41	2009	Often	30
county	6	2009	Often	7
county	4	2009	Often	4
county	13	2009	Often	12
county	26	2009	Often	15
county	23	2009	Often	9
county	27	2009	Often	17
county	38	2009	Often	13
county	8	2009	Often	14
county	24	2009	Often	8
county	30	2009	Rarely	8
county	36	2009	Rarely	6
county	39	2009	Rarely	13
county	40	2009	Rarely	5
county	28	2009	Rarely	1
county	14	2009	Rarely	6
county	7	2009	Rarely	1
county	43	2009	Rarely	3
county	11	2009	Rarely	1
county	34	2009	Rarely	9
county	37	2009	Rarely	12
county	35	2009	Rarely	2
county	22	2009	Rarely	22
county	3	2009	Rarely	5
county	20	2009	Rarely	6
county	45	2009	Rarely	10
county	42	2009	Rarely	2
county	15	2009	Rarely	11
county	2	2009	Rarely	2
county	31	2009	Rarely	1
county	5	2009	Rarely	1
county	16	2009	Rarely	11
county	17	2009	Rarely	11
county	9	2009	Rarely	7
county	10	2009	Rarely	2
county	12	2009	Rarely	21
county	44	2009	Rarely	10
county	1	2009	Rarely	1
county	21	2009	Rarely	13
county	47	2009	Rarely	51
county	32	2009	Rarely	12
county	29	2009	Rarely	7
county	33	2009	Rarely	11
county	46	2009	Rarely	11
county	18	2009	Rarely	5
county	19	2009	Rarely	9
county	25	2009	Rarely	3
county	41	2009	Rarely	8
county	6	2009	Rarely	6
county	13	2009	Rarely	3
county	26	2009	Rarely	9
county	23	2009	Rarely	13
county	27	2009	Rarely	20
county	38	2009	Rarely	4
county	8	2009	Rarely	3
county	24	2009	Rarely	4
\.


--
-- Name: how_often_party_competition_leads_to_conflict pk_how_often_party_competition_leads_to_conflict; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_party_competition_leads_to_conflict
    ADD CONSTRAINT pk_how_often_party_competition_leads_to_conflict PRIMARY KEY (geo_level, geo_code, geo_version, how_often_party_competition_leads_to_conflict);


--
-- PostgreSQL database dump complete
--

