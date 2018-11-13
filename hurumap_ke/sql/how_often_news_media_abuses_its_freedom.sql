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

ALTER TABLE IF EXISTS ONLY public.how_often_news_media_abuses_its_freedom DROP CONSTRAINT IF EXISTS pk_how_often_news_media_abuses_its_freedom;
DROP TABLE IF EXISTS public.how_often_news_media_abuses_its_freedom;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: how_often_news_media_abuses_its_freedom; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.how_often_news_media_abuses_its_freedom (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    how_often_news_media_abuses_its_freedom character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: how_often_news_media_abuses_its_freedom; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.how_often_news_media_abuses_its_freedom (geo_level, geo_code, geo_version, how_often_news_media_abuses_its_freedom, total) FROM stdin;
county	30	2009	Always	1
county	36	2009	Always	1
county	39	2009	Always	11
county	40	2009	Always	6
county	14	2009	Always	1
county	43	2009	Always	3
county	37	2009	Always	15
county	35	2009	Always	1
county	22	2009	Always	10
county	3	2009	Always	9
county	20	2009	Always	5
county	45	2009	Always	4
county	42	2009	Always	2
county	15	2009	Always	3
county	2	2009	Always	5
county	12	2009	Always	2
county	44	2009	Always	1
county	1	2009	Always	6
county	21	2009	Always	6
county	47	2009	Always	9
county	32	2009	Always	2
county	29	2009	Always	6
county	33	2009	Always	3
county	46	2009	Always	4
county	18	2009	Always	4
county	19	2009	Always	6
county	41	2009	Always	1
county	13	2009	Always	3
county	26	2009	Always	6
county	27	2009	Always	5
county	38	2009	Always	2
county	8	2009	Always	1
county	30	2009	Don�t know	4
county	36	2009	Don�t know	3
county	39	2009	Don�t know	8
county	40	2009	Don�t know	2
county	28	2009	Don�t know	4
county	14	2009	Don�t know	8
county	7	2009	Don�t know	15
county	43	2009	Don�t know	2
county	11	2009	Don�t know	4
county	34	2009	Don�t know	9
county	37	2009	Don�t know	5
county	35	2009	Don�t know	2
county	22	2009	Don�t know	3
county	3	2009	Don�t know	8
county	45	2009	Don�t know	1
county	42	2009	Don�t know	4
county	15	2009	Don�t know	15
county	2	2009	Don�t know	3
county	31	2009	Don�t know	4
county	16	2009	Don�t know	16
county	17	2009	Don�t know	7
county	9	2009	Don�t know	15
county	10	2009	Don�t know	7
county	12	2009	Don�t know	16
county	44	2009	Don�t know	2
county	1	2009	Don�t know	6
county	21	2009	Don�t know	4
county	47	2009	Don�t know	21
county	32	2009	Don�t know	4
county	29	2009	Don�t know	5
county	33	2009	Don�t know	2
county	25	2009	Don�t know	6
county	41	2009	Don�t know	6
county	6	2009	Don�t know	2
county	4	2009	Don�t know	4
county	13	2009	Don�t know	3
county	26	2009	Don�t know	3
county	23	2009	Don�t know	22
county	27	2009	Don�t know	6
county	38	2009	Don�t know	3
county	8	2009	Don�t know	18
county	24	2009	Don�t know	9
county	30	2009	Never	5
county	36	2009	Never	12
county	39	2009	Never	34
county	40	2009	Never	16
county	28	2009	Never	5
county	14	2009	Never	5
county	43	2009	Never	27
county	34	2009	Never	9
county	37	2009	Never	34
county	35	2009	Never	13
county	22	2009	Never	15
county	3	2009	Never	3
county	20	2009	Never	4
county	45	2009	Never	28
county	42	2009	Never	20
county	15	2009	Never	11
county	2	2009	Never	3
county	31	2009	Never	7
county	5	2009	Never	1
county	16	2009	Never	13
county	17	2009	Never	12
county	9	2009	Never	9
county	10	2009	Never	3
county	12	2009	Never	20
county	44	2009	Never	19
county	1	2009	Never	5
county	21	2009	Never	8
county	47	2009	Never	38
county	32	2009	Never	34
county	29	2009	Never	12
county	33	2009	Never	4
county	46	2009	Never	17
county	18	2009	Never	4
county	19	2009	Never	5
county	25	2009	Never	2
county	41	2009	Never	14
county	6	2009	Never	2
county	4	2009	Never	2
county	13	2009	Never	4
county	26	2009	Never	19
county	23	2009	Never	12
county	27	2009	Never	11
county	38	2009	Never	12
county	8	2009	Never	3
county	24	2009	Never	5
county	30	2009	Often	7
county	36	2009	Often	8
county	39	2009	Often	7
county	40	2009	Often	7
county	28	2009	Often	1
county	14	2009	Often	4
county	7	2009	Often	1
county	43	2009	Often	2
county	34	2009	Often	4
county	37	2009	Often	18
county	35	2009	Often	5
county	22	2009	Often	40
county	3	2009	Often	8
county	20	2009	Often	18
county	45	2009	Often	10
county	42	2009	Often	4
county	15	2009	Often	6
county	2	2009	Often	11
county	31	2009	Often	1
county	5	2009	Often	1
county	16	2009	Often	8
county	17	2009	Often	10
county	9	2009	Often	7
county	12	2009	Often	10
county	44	2009	Often	9
county	1	2009	Often	6
county	21	2009	Often	21
county	47	2009	Often	52
county	32	2009	Often	18
county	29	2009	Often	5
county	33	2009	Often	21
county	46	2009	Often	6
county	18	2009	Often	13
county	19	2009	Often	19
county	41	2009	Often	5
county	6	2009	Often	1
county	13	2009	Often	2
county	26	2009	Often	4
county	23	2009	Often	5
county	27	2009	Often	8
county	38	2009	Often	3
county	8	2009	Often	2
county	24	2009	Often	1
county	30	2009	Rarely	15
county	36	2009	Rarely	24
county	39	2009	Rarely	20
county	40	2009	Rarely	9
county	28	2009	Rarely	6
county	14	2009	Rarely	22
county	7	2009	Rarely	16
county	43	2009	Rarely	22
county	11	2009	Rarely	4
county	34	2009	Rarely	26
county	37	2009	Rarely	24
county	35	2009	Rarely	19
county	22	2009	Rarely	52
county	3	2009	Rarely	36
county	20	2009	Rarely	13
county	45	2009	Rarely	29
county	42	2009	Rarely	26
county	15	2009	Rarely	21
county	2	2009	Rarely	18
county	31	2009	Rarely	12
county	5	2009	Rarely	6
county	16	2009	Rarely	35
county	17	2009	Rarely	27
county	9	2009	Rarely	17
county	10	2009	Rarely	6
county	12	2009	Rarely	37
county	44	2009	Rarely	17
county	1	2009	Rarely	49
county	21	2009	Rarely	25
county	47	2009	Rarely	128
county	32	2009	Rarely	46
county	29	2009	Rarely	20
county	33	2009	Rarely	18
county	46	2009	Rarely	13
county	18	2009	Rarely	19
county	19	2009	Rarely	18
county	41	2009	Rarely	22
county	6	2009	Rarely	11
county	4	2009	Rarely	2
county	13	2009	Rarely	12
county	26	2009	Rarely	16
county	23	2009	Rarely	9
county	27	2009	Rarely	26
county	38	2009	Rarely	12
county	8	2009	Rarely	8
county	24	2009	Rarely	9
\.


--
-- Name: how_often_news_media_abuses_its_freedom pk_how_often_news_media_abuses_its_freedom; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_news_media_abuses_its_freedom
    ADD CONSTRAINT pk_how_often_news_media_abuses_its_freedom PRIMARY KEY (geo_level, geo_code, geo_version, how_often_news_media_abuses_its_freedom);


--
-- PostgreSQL database dump complete
--

