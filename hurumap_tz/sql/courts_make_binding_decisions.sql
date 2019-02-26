--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.courts_make_binding_decisions DROP CONSTRAINT IF EXISTS pk_courts_make_binding_decisions;
DROP TABLE IF EXISTS public.courts_make_binding_decisions;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: courts_make_binding_decisions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.courts_make_binding_decisions (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    courts_make_binding_decisions character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: courts_make_binding_decisions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.courts_make_binding_decisions (geo_level, geo_code, geo_version, courts_make_binding_decisions, total) FROM stdin;
region	1	2009	Agree	56
region	1	2009	Disagree	23
region	1	2009	Don't Know	2
region	1	2009	Neither Agree Nor Disagree	4
region	1	2009	Strongly Agree	24
region	1	2009	Strongly Disagree	10
region	2	2009	Agree	169
region	2	2009	Disagree	32
region	2	2009	Don't Know	4
region	2	2009	Neither Agree Nor Disagree	18
region	2	2009	Strongly Agree	32
region	2	2009	Strongly Disagree	18
region	3	2009	Agree	58
region	3	2009	Disagree	5
region	3	2009	Don't Know	1
region	3	2009	Neither Agree Nor Disagree	3
region	3	2009	Strongly Agree	29
region	4	2009	Agree	50
region	4	2009	Disagree	7
region	4	2009	Don't Know	1
region	4	2009	Strongly Agree	11
region	4	2009	Strongly Disagree	2
region	5	2009	Agree	28
region	5	2009	Disagree	11
region	5	2009	Don't Know	3
region	5	2009	Strongly Agree	6
region	6	2009	Agree	45
region	6	2009	Disagree	15
region	6	2009	Neither Agree Nor Disagree	3
region	6	2009	Strongly Agree	6
region	6	2009	Strongly Disagree	3
region	7	2009	Agree	36
region	7	2009	Disagree	1
region	7	2009	Strongly Agree	19
region	8	2009	Agree	27
region	8	2009	Don't Know	1
region	8	2009	Strongly Agree	8
region	8	2009	Strongly Disagree	4
region	9	2009	Agree	22
region	9	2009	Strongly Agree	2
region	10	2009	Agree	64
region	10	2009	Disagree	13
region	10	2009	Don't Know	4
region	10	2009	Neither Agree Nor Disagree	3
region	10	2009	Strongly Agree	9
region	10	2009	Strongly Disagree	3
region	11	2009	Agree	35
region	11	2009	Disagree	14
region	11	2009	Strongly Agree	30
region	11	2009	Strongly Disagree	9
region	12	2009	Agree	6
region	12	2009	Strongly Agree	2
region	13	2009	Agree	18
region	13	2009	Strongly Agree	4
region	13	2009	Strongly Disagree	2
region	14	2009	Agree	34
region	14	2009	Disagree	1
region	14	2009	Neither Agree Nor Disagree	2
region	14	2009	Strongly Agree	1
region	14	2009	Strongly Disagree	10
region	15	2009	Agree	27
region	15	2009	Disagree	4
region	15	2009	Don't Know	1
region	15	2009	Neither Agree Nor Disagree	10
region	15	2009	Strongly Agree	18
region	15	2009	Strongly Disagree	4
region	16	2009	Agree	49
region	16	2009	Disagree	8
region	16	2009	Neither Agree Nor Disagree	1
region	16	2009	Strongly Agree	19
region	16	2009	Strongly Disagree	3
region	17	2009	Agree	53
region	17	2009	Disagree	2
region	17	2009	Don't Know	1
region	17	2009	Strongly Agree	8
region	30	2009	Agree	79
region	30	2009	Disagree	2
region	30	2009	Strongly Agree	30
region	30	2009	Strongly Disagree	1
region	18	2009	Agree	58
region	18	2009	Disagree	11
region	18	2009	Don't Know	4
region	18	2009	Neither Agree Nor Disagree	4
region	18	2009	Strongly Agree	43
region	19	2009	Agree	53
region	19	2009	Disagree	3
region	19	2009	Neither Agree Nor Disagree	2
region	19	2009	Strongly Agree	9
region	19	2009	Strongly Disagree	4
region	20	2009	Agree	75
region	20	2009	Disagree	15
region	20	2009	Don't Know	1
region	20	2009	Neither Agree Nor Disagree	2
region	20	2009	Strongly Agree	24
region	20	2009	Strongly Disagree	7
region	21	2009	Agree	21
region	21	2009	Disagree	5
region	21	2009	Don't Know	1
region	21	2009	Neither Agree Nor Disagree	1
region	21	2009	Strongly Agree	8
region	21	2009	Strongly Disagree	4
region	22	2009	Agree	37
region	22	2009	Disagree	19
region	22	2009	Neither Agree Nor Disagree	9
region	22	2009	Strongly Agree	5
region	22	2009	Strongly Disagree	2
region	23	2009	Agree	28
region	23	2009	Don't Know	4
region	23	2009	Neither Agree Nor Disagree	3
region	23	2009	Strongly Agree	4
region	24	2009	Agree	50
region	24	2009	Disagree	4
region	24	2009	Don't Know	2
region	24	2009	Neither Agree Nor Disagree	2
region	24	2009	Strongly Agree	9
region	24	2009	Strongly Disagree	5
region	25	2009	Agree	54
region	25	2009	Disagree	10
region	25	2009	Neither Agree Nor Disagree	4
region	25	2009	Strongly Agree	3
region	25	2009	Strongly Disagree	1
region	26	2009	Agree	48
region	26	2009	Disagree	6
region	26	2009	Don't Know	1
region	26	2009	Neither Agree Nor Disagree	2
region	26	2009	Strongly Agree	6
region	26	2009	Strongly Disagree	1
region	27	2009	Agree	38
region	27	2009	Disagree	23
region	27	2009	Neither Agree Nor Disagree	3
region	31	2009	Agree	51
region	31	2009	Disagree	1
region	31	2009	Don't Know	2
region	31	2009	Neither Agree Nor Disagree	2
region	31	2009	Strongly Agree	13
region	31	2009	Strongly Disagree	3
region	29	2009	Agree	55
region	29	2009	Disagree	2
region	29	2009	Don't Know	3
region	29	2009	Neither Agree Nor Disagree	6
region	29	2009	Strongly Agree	36
region	29	2009	Strongly Disagree	2
region	28	2009	Agree	27
region	28	2009	Disagree	5
region	28	2009	Don't Know	3
region	28	2009	Neither Agree Nor Disagree	23
region	28	2009	Strongly Agree	23
region	28	2009	Strongly Disagree	7
country	TZ	2009	Neither Agree Nor Disagree	107
country	TZ	2009	Disagree	242
country	TZ	2009	Strongly Agree	441
country	TZ	2009	Agree	1451
country	TZ	2009	Strongly Disagree	105
country	TZ	2009	Don't Know	39
\.


--
-- Name: courts_make_binding_decisions pk_courts_make_binding_decisions; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.courts_make_binding_decisions
    ADD CONSTRAINT pk_courts_make_binding_decisions PRIMARY KEY (geo_level, geo_code, geo_version, courts_make_binding_decisions);


--
-- PostgreSQL database dump complete
--

