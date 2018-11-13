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

ALTER TABLE IF EXISTS ONLY public.leaders_serve_interests_of_people_or_their_own DROP CONSTRAINT IF EXISTS pk_leaders_serve_interests_of_people_or_their_own;
DROP TABLE IF EXISTS public.leaders_serve_interests_of_people_or_their_own;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: leaders_serve_interests_of_people_or_their_own; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.leaders_serve_interests_of_people_or_their_own (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    leaders_serve_interests_of_people_or_their_own character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: leaders_serve_interests_of_people_or_their_own; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.leaders_serve_interests_of_people_or_their_own (geo_level, geo_code, geo_version, leaders_serve_interests_of_people_or_their_own, total) FROM stdin;
county	37	2009	Don't know	1
county	2	2009	Don't know	1
county	17	2009	Don't know	1
county	9	2009	Don't know	2
county	12	2009	Don't know	1
county	21	2009	Don't know	2
county	47	2009	Don't know	5
county	46	2009	Don't know	1
county	41	2009	Don't know	1
county	23	2009	Don't know	1
county	27	2009	Don't know	1
county	30	2009	More to serve the people - agree	5
county	36	2009	More to serve the people - agree	2
county	39	2009	More to serve the people - agree	22
county	40	2009	More to serve the people - agree	4
county	28	2009	More to serve the people - agree	4
county	14	2009	More to serve the people - agree	8
county	7	2009	More to serve the people - agree	2
county	43	2009	More to serve the people - agree	6
county	11	2009	More to serve the people - agree	2
county	34	2009	More to serve the people - agree	5
county	37	2009	More to serve the people - agree	15
county	35	2009	More to serve the people - agree	2
county	22	2009	More to serve the people - agree	7
county	3	2009	More to serve the people - agree	1
county	20	2009	More to serve the people - agree	2
county	45	2009	More to serve the people - agree	3
county	42	2009	More to serve the people - agree	1
county	15	2009	More to serve the people - agree	12
county	2	2009	More to serve the people - agree	5
county	31	2009	More to serve the people - agree	1
county	5	2009	More to serve the people - agree	2
county	16	2009	More to serve the people - agree	11
county	17	2009	More to serve the people - agree	2
county	9	2009	More to serve the people - agree	4
county	10	2009	More to serve the people - agree	4
county	12	2009	More to serve the people - agree	19
county	44	2009	More to serve the people - agree	7
county	1	2009	More to serve the people - agree	2
county	21	2009	More to serve the people - agree	10
county	47	2009	More to serve the people - agree	13
county	32	2009	More to serve the people - agree	4
county	29	2009	More to serve the people - agree	6
county	33	2009	More to serve the people - agree	3
county	46	2009	More to serve the people - agree	2
county	18	2009	More to serve the people - agree	3
county	19	2009	More to serve the people - agree	7
county	25	2009	More to serve the people - agree	1
county	6	2009	More to serve the people - agree	1
county	13	2009	More to serve the people - agree	7
county	26	2009	More to serve the people - agree	10
county	23	2009	More to serve the people - agree	3
county	27	2009	More to serve the people - agree	3
county	38	2009	More to serve the people - agree	4
county	8	2009	More to serve the people - agree	3
county	24	2009	More to serve the people - agree	5
county	30	2009	More to serve the people - strongly agree	1
county	36	2009	More to serve the people - strongly agree	7
county	39	2009	More to serve the people - strongly agree	9
county	40	2009	More to serve the people - strongly agree	4
county	28	2009	More to serve the people - strongly agree	1
county	7	2009	More to serve the people - strongly agree	2
county	34	2009	More to serve the people - strongly agree	1
county	37	2009	More to serve the people - strongly agree	4
county	22	2009	More to serve the people - strongly agree	6
county	20	2009	More to serve the people - strongly agree	3
county	45	2009	More to serve the people - strongly agree	2
county	42	2009	More to serve the people - strongly agree	1
county	15	2009	More to serve the people - strongly agree	1
county	31	2009	More to serve the people - strongly agree	2
county	16	2009	More to serve the people - strongly agree	4
county	17	2009	More to serve the people - strongly agree	1
county	9	2009	More to serve the people - strongly agree	8
county	12	2009	More to serve the people - strongly agree	2
county	44	2009	More to serve the people - strongly agree	1
county	1	2009	More to serve the people - strongly agree	1
county	21	2009	More to serve the people - strongly agree	4
county	47	2009	More to serve the people - strongly agree	19
county	32	2009	More to serve the people - strongly agree	8
county	33	2009	More to serve the people - strongly agree	3
county	46	2009	More to serve the people - strongly agree	2
county	18	2009	More to serve the people - strongly agree	3
county	19	2009	More to serve the people - strongly agree	2
county	41	2009	More to serve the people - strongly agree	1
county	6	2009	More to serve the people - strongly agree	1
county	4	2009	More to serve the people - strongly agree	1
county	26	2009	More to serve the people - strongly agree	3
county	23	2009	More to serve the people - strongly agree	2
county	38	2009	More to serve the people - strongly agree	1
county	8	2009	More to serve the people - strongly agree	3
county	24	2009	More to serve the people - strongly agree	1
county	30	2009	More to serve their own political ambitions - agree	15
county	36	2009	More to serve their own political ambitions - agree	9
county	39	2009	More to serve their own political ambitions - agree	4
county	40	2009	More to serve their own political ambitions - agree	3
county	28	2009	More to serve their own political ambitions - agree	6
county	14	2009	More to serve their own political ambitions - agree	14
county	7	2009	More to serve their own political ambitions - agree	9
county	43	2009	More to serve their own political ambitions - agree	17
county	34	2009	More to serve their own political ambitions - agree	31
county	37	2009	More to serve their own political ambitions - agree	8
county	35	2009	More to serve their own political ambitions - agree	11
county	22	2009	More to serve their own political ambitions - agree	35
county	3	2009	More to serve their own political ambitions - agree	15
county	20	2009	More to serve their own political ambitions - agree	5
county	45	2009	More to serve their own political ambitions - agree	9
county	42	2009	More to serve their own political ambitions - agree	19
county	15	2009	More to serve their own political ambitions - agree	11
county	2	2009	More to serve their own political ambitions - agree	6
county	31	2009	More to serve their own political ambitions - agree	3
county	5	2009	More to serve their own political ambitions - agree	2
county	16	2009	More to serve their own political ambitions - agree	25
county	17	2009	More to serve their own political ambitions - agree	12
county	9	2009	More to serve their own political ambitions - agree	22
county	10	2009	More to serve their own political ambitions - agree	2
county	12	2009	More to serve their own political ambitions - agree	26
county	44	2009	More to serve their own political ambitions - agree	13
county	1	2009	More to serve their own political ambitions - agree	9
county	21	2009	More to serve their own political ambitions - agree	5
county	47	2009	More to serve their own political ambitions - agree	85
county	32	2009	More to serve their own political ambitions - agree	20
county	29	2009	More to serve their own political ambitions - agree	20
county	33	2009	More to serve their own political ambitions - agree	15
county	46	2009	More to serve their own political ambitions - agree	4
county	18	2009	More to serve their own political ambitions - agree	6
county	19	2009	More to serve their own political ambitions - agree	14
county	25	2009	More to serve their own political ambitions - agree	3
county	41	2009	More to serve their own political ambitions - agree	15
county	6	2009	More to serve their own political ambitions - agree	2
county	4	2009	More to serve their own political ambitions - agree	2
county	13	2009	More to serve their own political ambitions - agree	4
county	26	2009	More to serve their own political ambitions - agree	8
county	23	2009	More to serve their own political ambitions - agree	23
county	27	2009	More to serve their own political ambitions - agree	27
county	38	2009	More to serve their own political ambitions - agree	2
county	8	2009	More to serve their own political ambitions - agree	13
county	24	2009	More to serve their own political ambitions - agree	7
county	30	2009	More to serve their own political ambitions - strongly agree	10
county	36	2009	More to serve their own political ambitions - strongly agree	30
county	39	2009	More to serve their own political ambitions - strongly agree	42
county	40	2009	More to serve their own political ambitions - strongly agree	24
county	28	2009	More to serve their own political ambitions - strongly agree	5
county	14	2009	More to serve their own political ambitions - strongly agree	15
county	7	2009	More to serve their own political ambitions - strongly agree	18
county	43	2009	More to serve their own political ambitions - strongly agree	30
county	11	2009	More to serve their own political ambitions - strongly agree	6
county	34	2009	More to serve their own political ambitions - strongly agree	8
county	37	2009	More to serve their own political ambitions - strongly agree	61
county	35	2009	More to serve their own political ambitions - strongly agree	27
county	22	2009	More to serve their own political ambitions - strongly agree	71
county	3	2009	More to serve their own political ambitions - strongly agree	44
county	20	2009	More to serve their own political ambitions - strongly agree	30
county	45	2009	More to serve their own political ambitions - strongly agree	55
county	42	2009	More to serve their own political ambitions - strongly agree	33
county	15	2009	More to serve their own political ambitions - strongly agree	23
county	2	2009	More to serve their own political ambitions - strongly agree	27
county	31	2009	More to serve their own political ambitions - strongly agree	17
county	5	2009	More to serve their own political ambitions - strongly agree	4
county	16	2009	More to serve their own political ambitions - strongly agree	27
county	17	2009	More to serve their own political ambitions - strongly agree	38
county	9	2009	More to serve their own political ambitions - strongly agree	12
county	10	2009	More to serve their own political ambitions - strongly agree	9
county	12	2009	More to serve their own political ambitions - strongly agree	25
county	44	2009	More to serve their own political ambitions - strongly agree	26
county	1	2009	More to serve their own political ambitions - strongly agree	56
county	21	2009	More to serve their own political ambitions - strongly agree	40
county	47	2009	More to serve their own political ambitions - strongly agree	116
county	32	2009	More to serve their own political ambitions - strongly agree	69
county	29	2009	More to serve their own political ambitions - strongly agree	18
county	33	2009	More to serve their own political ambitions - strongly agree	24
county	46	2009	More to serve their own political ambitions - strongly agree	30
county	18	2009	More to serve their own political ambitions - strongly agree	28
county	19	2009	More to serve their own political ambitions - strongly agree	22
county	25	2009	More to serve their own political ambitions - strongly agree	4
county	41	2009	More to serve their own political ambitions - strongly agree	29
county	6	2009	More to serve their own political ambitions - strongly agree	10
county	4	2009	More to serve their own political ambitions - strongly agree	5
county	13	2009	More to serve their own political ambitions - strongly agree	9
county	26	2009	More to serve their own political ambitions - strongly agree	24
county	23	2009	More to serve their own political ambitions - strongly agree	16
county	27	2009	More to serve their own political ambitions - strongly agree	21
county	38	2009	More to serve their own political ambitions - strongly agree	24
county	8	2009	More to serve their own political ambitions - strongly agree	13
county	24	2009	More to serve their own political ambitions - strongly agree	11
county	30	2009	Neither agree nor disagree	1
county	39	2009	Neither agree nor disagree	3
county	40	2009	Neither agree nor disagree	5
county	14	2009	Neither agree nor disagree	3
county	7	2009	Neither agree nor disagree	1
county	43	2009	Neither agree nor disagree	3
county	34	2009	Neither agree nor disagree	3
county	37	2009	Neither agree nor disagree	7
county	22	2009	Neither agree nor disagree	1
county	3	2009	Neither agree nor disagree	4
county	45	2009	Neither agree nor disagree	3
county	42	2009	Neither agree nor disagree	2
county	15	2009	Neither agree nor disagree	9
county	2	2009	Neither agree nor disagree	1
county	31	2009	Neither agree nor disagree	1
county	16	2009	Neither agree nor disagree	5
county	17	2009	Neither agree nor disagree	2
county	10	2009	Neither agree nor disagree	1
county	12	2009	Neither agree nor disagree	12
county	44	2009	Neither agree nor disagree	1
county	1	2009	Neither agree nor disagree	4
county	21	2009	Neither agree nor disagree	3
county	47	2009	Neither agree nor disagree	10
county	32	2009	Neither agree nor disagree	3
county	29	2009	Neither agree nor disagree	4
county	33	2009	Neither agree nor disagree	3
county	46	2009	Neither agree nor disagree	1
county	19	2009	Neither agree nor disagree	3
county	41	2009	Neither agree nor disagree	2
county	6	2009	Neither agree nor disagree	2
county	13	2009	Neither agree nor disagree	4
county	26	2009	Neither agree nor disagree	3
county	23	2009	Neither agree nor disagree	3
county	27	2009	Neither agree nor disagree	4
county	38	2009	Neither agree nor disagree	1
\.


--
-- Name: leaders_serve_interests_of_people_or_their_own pk_leaders_serve_interests_of_people_or_their_own; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.leaders_serve_interests_of_people_or_their_own
    ADD CONSTRAINT pk_leaders_serve_interests_of_people_or_their_own PRIMARY KEY (geo_level, geo_code, geo_version, leaders_serve_interests_of_people_or_their_own);


--
-- PostgreSQL database dump complete
--

