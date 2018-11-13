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

ALTER TABLE IF EXISTS ONLY public.political_opposition_is_viable_alternative DROP CONSTRAINT IF EXISTS pk_political_opposition_is_viable_alternative;
DROP TABLE IF EXISTS public.political_opposition_is_viable_alternative;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: political_opposition_is_viable_alternative; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.political_opposition_is_viable_alternative (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    political_opposition_is_viable_alternative character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: political_opposition_is_viable_alternative; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.political_opposition_is_viable_alternative (geo_level, geo_code, geo_version, political_opposition_is_viable_alternative, total) FROM stdin;
county	30	2009	Agree	2
county	36	2009	Agree	15
county	39	2009	Agree	13
county	40	2009	Agree	8
county	28	2009	Agree	2
county	14	2009	Agree	1
county	7	2009	Agree	4
county	43	2009	Agree	10
county	11	2009	Agree	1
county	34	2009	Agree	3
county	37	2009	Agree	26
county	35	2009	Agree	3
county	22	2009	Agree	26
county	3	2009	Agree	24
county	20	2009	Agree	8
county	45	2009	Agree	14
county	42	2009	Agree	15
county	15	2009	Agree	2
county	2	2009	Agree	10
county	31	2009	Agree	9
county	5	2009	Agree	2
county	16	2009	Agree	6
county	17	2009	Agree	14
county	9	2009	Agree	7
county	10	2009	Agree	4
county	12	2009	Agree	4
county	44	2009	Agree	15
county	1	2009	Agree	24
county	21	2009	Agree	9
county	47	2009	Agree	54
county	32	2009	Agree	19
county	29	2009	Agree	5
county	33	2009	Agree	9
county	46	2009	Agree	8
county	18	2009	Agree	11
county	19	2009	Agree	8
county	41	2009	Agree	11
county	6	2009	Agree	6
county	4	2009	Agree	1
county	13	2009	Agree	2
county	26	2009	Agree	5
county	23	2009	Agree	13
county	27	2009	Agree	2
county	38	2009	Agree	9
county	8	2009	Agree	3
county	24	2009	Agree	4
county	30	2009	Disagree	7
county	36	2009	Disagree	15
county	39	2009	Disagree	38
county	40	2009	Disagree	14
county	28	2009	Disagree	3
county	14	2009	Disagree	16
county	7	2009	Disagree	13
county	43	2009	Disagree	7
county	11	2009	Disagree	2
county	34	2009	Disagree	9
county	37	2009	Disagree	37
county	35	2009	Disagree	12
county	22	2009	Disagree	36
county	3	2009	Disagree	3
county	20	2009	Disagree	8
county	45	2009	Disagree	12
county	42	2009	Disagree	5
county	15	2009	Disagree	25
county	2	2009	Disagree	1
county	31	2009	Disagree	3
county	5	2009	Disagree	3
county	16	2009	Disagree	23
county	17	2009	Disagree	5
county	9	2009	Disagree	14
county	10	2009	Disagree	4
county	12	2009	Disagree	33
county	44	2009	Disagree	3
county	1	2009	Disagree	3
county	21	2009	Disagree	16
county	47	2009	Disagree	47
county	32	2009	Disagree	28
county	29	2009	Disagree	12
county	33	2009	Disagree	14
county	46	2009	Disagree	4
county	18	2009	Disagree	10
county	19	2009	Disagree	16
county	25	2009	Disagree	2
county	41	2009	Disagree	2
county	4	2009	Disagree	1
county	13	2009	Disagree	7
county	26	2009	Disagree	20
county	23	2009	Disagree	14
county	27	2009	Disagree	20
county	38	2009	Disagree	8
county	8	2009	Disagree	11
county	24	2009	Disagree	13
county	30	2009	Don�t Know	1
county	36	2009	Don�t Know	1
county	39	2009	Don�t Know	1
county	40	2009	Don�t Know	1
county	28	2009	Don�t Know	3
county	14	2009	Don�t Know	5
county	7	2009	Don�t Know	6
county	11	2009	Don�t Know	3
county	37	2009	Don�t Know	3
county	35	2009	Don�t Know	2
county	22	2009	Don�t Know	3
county	3	2009	Don�t Know	15
county	45	2009	Don�t Know	1
county	15	2009	Don�t Know	6
county	2	2009	Don�t Know	7
county	31	2009	Don�t Know	5
county	5	2009	Don�t Know	2
county	16	2009	Don�t Know	3
county	17	2009	Don�t Know	8
county	9	2009	Don�t Know	7
county	10	2009	Don�t Know	5
county	12	2009	Don�t Know	6
county	1	2009	Don�t Know	12
county	21	2009	Don�t Know	1
county	47	2009	Don�t Know	14
county	32	2009	Don�t Know	10
county	29	2009	Don�t Know	1
county	33	2009	Don�t Know	7
county	25	2009	Don�t Know	2
county	41	2009	Don�t Know	1
county	6	2009	Don�t Know	1
county	4	2009	Don�t Know	4
county	26	2009	Don�t Know	3
county	23	2009	Don�t Know	6
county	27	2009	Don�t Know	4
county	38	2009	Don�t Know	1
county	8	2009	Don�t Know	10
county	1	2009	Missing	1
county	47	2009	Missing	1
county	30	2009	Neither Agree Nor Disagree	5
county	36	2009	Neither Agree Nor Disagree	1
county	39	2009	Neither Agree Nor Disagree	8
county	40	2009	Neither Agree Nor Disagree	4
county	28	2009	Neither Agree Nor Disagree	2
county	14	2009	Neither Agree Nor Disagree	5
county	7	2009	Neither Agree Nor Disagree	1
county	43	2009	Neither Agree Nor Disagree	11
county	11	2009	Neither Agree Nor Disagree	1
county	34	2009	Neither Agree Nor Disagree	10
county	37	2009	Neither Agree Nor Disagree	13
county	22	2009	Neither Agree Nor Disagree	5
county	3	2009	Neither Agree Nor Disagree	8
county	20	2009	Neither Agree Nor Disagree	3
county	45	2009	Neither Agree Nor Disagree	10
county	42	2009	Neither Agree Nor Disagree	10
county	15	2009	Neither Agree Nor Disagree	13
county	2	2009	Neither Agree Nor Disagree	4
county	31	2009	Neither Agree Nor Disagree	2
county	16	2009	Neither Agree Nor Disagree	19
county	9	2009	Neither Agree Nor Disagree	1
county	10	2009	Neither Agree Nor Disagree	1
county	12	2009	Neither Agree Nor Disagree	19
county	44	2009	Neither Agree Nor Disagree	6
county	1	2009	Neither Agree Nor Disagree	5
county	21	2009	Neither Agree Nor Disagree	1
county	47	2009	Neither Agree Nor Disagree	32
county	32	2009	Neither Agree Nor Disagree	5
county	29	2009	Neither Agree Nor Disagree	6
county	33	2009	Neither Agree Nor Disagree	7
county	46	2009	Neither Agree Nor Disagree	5
county	18	2009	Neither Agree Nor Disagree	2
county	19	2009	Neither Agree Nor Disagree	2
county	25	2009	Neither Agree Nor Disagree	1
county	41	2009	Neither Agree Nor Disagree	14
county	13	2009	Neither Agree Nor Disagree	8
county	26	2009	Neither Agree Nor Disagree	7
county	23	2009	Neither Agree Nor Disagree	5
county	27	2009	Neither Agree Nor Disagree	3
county	38	2009	Neither Agree Nor Disagree	4
county	24	2009	Neither Agree Nor Disagree	1
county	36	2009	Strongly Agree	11
county	39	2009	Strongly Agree	13
county	40	2009	Strongly Agree	7
county	14	2009	Strongly Agree	2
county	43	2009	Strongly Agree	23
county	11	2009	Strongly Agree	1
county	34	2009	Strongly Agree	5
county	37	2009	Strongly Agree	10
county	35	2009	Strongly Agree	19
county	22	2009	Strongly Agree	12
county	3	2009	Strongly Agree	14
county	20	2009	Strongly Agree	2
county	45	2009	Strongly Agree	22
county	42	2009	Strongly Agree	22
county	15	2009	Strongly Agree	4
county	2	2009	Strongly Agree	17
county	31	2009	Strongly Agree	1
county	16	2009	Strongly Agree	11
county	17	2009	Strongly Agree	21
county	9	2009	Strongly Agree	7
county	10	2009	Strongly Agree	1
county	12	2009	Strongly Agree	3
county	44	2009	Strongly Agree	15
county	1	2009	Strongly Agree	26
county	21	2009	Strongly Agree	4
county	47	2009	Strongly Agree	45
county	32	2009	Strongly Agree	18
county	29	2009	Strongly Agree	2
county	33	2009	Strongly Agree	6
county	46	2009	Strongly Agree	17
county	18	2009	Strongly Agree	3
county	19	2009	Strongly Agree	3
county	41	2009	Strongly Agree	17
county	6	2009	Strongly Agree	7
county	13	2009	Strongly Agree	1
county	26	2009	Strongly Agree	4
county	23	2009	Strongly Agree	6
county	27	2009	Strongly Agree	4
county	38	2009	Strongly Agree	6
county	8	2009	Strongly Agree	2
county	24	2009	Strongly Agree	1
county	30	2009	Strongly Disagree	17
county	36	2009	Strongly Disagree	5
county	39	2009	Strongly Disagree	7
county	40	2009	Strongly Disagree	6
county	28	2009	Strongly Disagree	6
county	14	2009	Strongly Disagree	11
county	7	2009	Strongly Disagree	8
county	43	2009	Strongly Disagree	5
county	34	2009	Strongly Disagree	21
county	37	2009	Strongly Disagree	7
county	35	2009	Strongly Disagree	4
county	22	2009	Strongly Disagree	38
county	20	2009	Strongly Disagree	19
county	45	2009	Strongly Disagree	13
county	42	2009	Strongly Disagree	4
county	15	2009	Strongly Disagree	6
county	2	2009	Strongly Disagree	1
county	31	2009	Strongly Disagree	4
county	5	2009	Strongly Disagree	1
county	16	2009	Strongly Disagree	10
county	17	2009	Strongly Disagree	8
county	9	2009	Strongly Disagree	12
county	10	2009	Strongly Disagree	1
county	12	2009	Strongly Disagree	20
county	44	2009	Strongly Disagree	9
county	1	2009	Strongly Disagree	1
county	21	2009	Strongly Disagree	33
county	47	2009	Strongly Disagree	55
county	32	2009	Strongly Disagree	24
county	29	2009	Strongly Disagree	22
county	33	2009	Strongly Disagree	5
county	46	2009	Strongly Disagree	6
county	18	2009	Strongly Disagree	14
county	19	2009	Strongly Disagree	19
county	25	2009	Strongly Disagree	3
county	41	2009	Strongly Disagree	3
county	6	2009	Strongly Disagree	2
county	4	2009	Strongly Disagree	2
county	13	2009	Strongly Disagree	6
county	26	2009	Strongly Disagree	9
county	23	2009	Strongly Disagree	4
county	27	2009	Strongly Disagree	23
county	38	2009	Strongly Disagree	4
county	8	2009	Strongly Disagree	6
county	24	2009	Strongly Disagree	5
\.


--
-- Name: political_opposition_is_viable_alternative pk_political_opposition_is_viable_alternative; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.political_opposition_is_viable_alternative
    ADD CONSTRAINT pk_political_opposition_is_viable_alternative PRIMARY KEY (geo_level, geo_code, geo_version, political_opposition_is_viable_alternative);


--
-- PostgreSQL database dump complete
--

