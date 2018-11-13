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

ALTER TABLE IF EXISTS ONLY public.how_often_felt_unsafe_walking_in_neighbourhood DROP CONSTRAINT IF EXISTS pk_how_often_felt_unsafe_walking_in_neighbourhood;
DROP TABLE IF EXISTS public.how_often_felt_unsafe_walking_in_neighbourhood;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: how_often_felt_unsafe_walking_in_neighbourhood; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.how_often_felt_unsafe_walking_in_neighbourhood (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    how_often_felt_unsafe_walking_in_neighbourhood character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: how_often_felt_unsafe_walking_in_neighbourhood; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.how_often_felt_unsafe_walking_in_neighbourhood (geo_level, geo_code, geo_version, how_often_felt_unsafe_walking_in_neighbourhood, total) FROM stdin;
county	30	2009	Always	1
county	39	2009	Always	1
county	40	2009	Always	1
county	28	2009	Always	1
county	43	2009	Always	1
county	11	2009	Always	2
county	34	2009	Always	2
county	37	2009	Always	2
county	22	2009	Always	5
county	3	2009	Always	1
county	20	2009	Always	1
county	45	2009	Always	1
county	42	2009	Always	2
county	2	2009	Always	3
county	31	2009	Always	5
county	5	2009	Always	2
county	16	2009	Always	5
county	17	2009	Always	3
county	10	2009	Always	5
county	12	2009	Always	6
county	1	2009	Always	4
county	21	2009	Always	1
county	47	2009	Always	15
county	32	2009	Always	6
county	46	2009	Always	1
county	18	2009	Always	2
county	19	2009	Always	4
county	41	2009	Always	2
county	6	2009	Always	1
county	23	2009	Always	2
county	38	2009	Always	1
county	12	2009	Don't Know	1
county	30	2009	Just once or twice	3
county	36	2009	Just once or twice	6
county	39	2009	Just once or twice	23
county	40	2009	Just once or twice	8
county	28	2009	Just once or twice	4
county	14	2009	Just once or twice	8
county	7	2009	Just once or twice	5
county	43	2009	Just once or twice	18
county	11	2009	Just once or twice	2
county	34	2009	Just once or twice	6
county	37	2009	Just once or twice	16
county	35	2009	Just once or twice	12
county	22	2009	Just once or twice	17
county	3	2009	Just once or twice	12
county	20	2009	Just once or twice	4
county	45	2009	Just once or twice	33
county	42	2009	Just once or twice	11
county	15	2009	Just once or twice	5
county	2	2009	Just once or twice	4
county	31	2009	Just once or twice	1
county	16	2009	Just once or twice	6
county	17	2009	Just once or twice	5
county	9	2009	Just once or twice	7
county	10	2009	Just once or twice	1
county	12	2009	Just once or twice	11
county	44	2009	Just once or twice	10
county	1	2009	Just once or twice	17
county	21	2009	Just once or twice	7
county	47	2009	Just once or twice	50
county	32	2009	Just once or twice	14
county	29	2009	Just once or twice	13
county	33	2009	Just once or twice	11
county	46	2009	Just once or twice	7
county	18	2009	Just once or twice	10
county	19	2009	Just once or twice	6
county	25	2009	Just once or twice	2
county	41	2009	Just once or twice	19
county	6	2009	Just once or twice	3
county	4	2009	Just once or twice	1
county	13	2009	Just once or twice	5
county	26	2009	Just once or twice	7
county	23	2009	Just once or twice	19
county	27	2009	Just once or twice	13
county	38	2009	Just once or twice	6
county	8	2009	Just once or twice	6
county	36	2009	Many times	1
county	39	2009	Many times	7
county	40	2009	Many times	3
county	14	2009	Many times	3
county	11	2009	Many times	2
county	34	2009	Many times	2
county	37	2009	Many times	9
county	35	2009	Many times	1
county	22	2009	Many times	7
county	3	2009	Many times	6
county	20	2009	Many times	3
county	42	2009	Many times	9
county	2	2009	Many times	6
county	31	2009	Many times	6
county	5	2009	Many times	5
county	16	2009	Many times	8
county	17	2009	Many times	5
county	9	2009	Many times	3
county	10	2009	Many times	3
county	12	2009	Many times	5
county	44	2009	Many times	3
county	1	2009	Many times	14
county	47	2009	Many times	35
county	32	2009	Many times	9
county	33	2009	Many times	2
county	46	2009	Many times	4
county	18	2009	Many times	5
county	19	2009	Many times	3
county	41	2009	Many times	1
county	13	2009	Many times	3
county	26	2009	Many times	6
county	27	2009	Many times	3
county	38	2009	Many times	4
county	3	2009	Missing	1
county	30	2009	Never	27
county	36	2009	Never	35
county	39	2009	Never	34
county	40	2009	Never	19
county	28	2009	Never	9
county	14	2009	Never	18
county	7	2009	Never	23
county	43	2009	Never	24
county	11	2009	Never	1
county	34	2009	Never	35
county	37	2009	Never	48
county	35	2009	Never	22
county	22	2009	Never	72
county	3	2009	Never	13
county	20	2009	Never	29
county	45	2009	Never	27
county	42	2009	Never	18
county	15	2009	Never	43
county	2	2009	Never	12
county	31	2009	Never	7
county	16	2009	Never	37
county	17	2009	Never	29
county	9	2009	Never	27
county	10	2009	Never	3
county	12	2009	Never	41
county	44	2009	Never	22
county	1	2009	Never	11
county	21	2009	Never	53
county	47	2009	Never	89
county	32	2009	Never	58
county	29	2009	Never	33
county	33	2009	Never	31
county	46	2009	Never	20
county	18	2009	Never	21
county	19	2009	Never	27
county	25	2009	Never	6
county	41	2009	Never	21
county	6	2009	Never	9
county	4	2009	Never	7
county	13	2009	Never	10
county	26	2009	Never	29
county	23	2009	Never	19
county	27	2009	Never	36
county	38	2009	Never	10
county	8	2009	Never	24
county	24	2009	Never	24
county	30	2009	Several times	1
county	36	2009	Several times	6
county	39	2009	Several times	15
county	40	2009	Several times	9
county	28	2009	Several times	2
county	14	2009	Several times	11
county	7	2009	Several times	4
county	43	2009	Several times	13
county	11	2009	Several times	1
county	34	2009	Several times	3
county	37	2009	Several times	21
county	35	2009	Several times	5
county	22	2009	Several times	19
county	3	2009	Several times	31
county	20	2009	Several times	3
county	45	2009	Several times	11
county	42	2009	Several times	16
county	15	2009	Several times	8
county	2	2009	Several times	15
county	31	2009	Several times	5
county	5	2009	Several times	1
county	16	2009	Several times	16
county	17	2009	Several times	14
county	9	2009	Several times	11
county	10	2009	Several times	4
county	12	2009	Several times	21
county	44	2009	Several times	13
county	1	2009	Several times	26
county	21	2009	Several times	3
county	47	2009	Several times	59
county	32	2009	Several times	17
county	29	2009	Several times	2
county	33	2009	Several times	4
county	46	2009	Several times	8
county	18	2009	Several times	2
county	19	2009	Several times	8
county	41	2009	Several times	5
county	6	2009	Several times	3
county	13	2009	Several times	6
county	26	2009	Several times	6
county	23	2009	Several times	8
county	27	2009	Several times	4
county	38	2009	Several times	11
county	8	2009	Several times	2
\.


--
-- Name: how_often_felt_unsafe_walking_in_neighbourhood pk_how_often_felt_unsafe_walking_in_neighbourhood; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_felt_unsafe_walking_in_neighbourhood
    ADD CONSTRAINT pk_how_often_felt_unsafe_walking_in_neighbourhood PRIMARY KEY (geo_level, geo_code, geo_version, how_often_felt_unsafe_walking_in_neighbourhood);


--
-- PostgreSQL database dump complete
--

