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

ALTER TABLE IF EXISTS ONLY public.how_often_gone_without_food DROP CONSTRAINT IF EXISTS pk_how_often_gone_without_food;
DROP TABLE IF EXISTS public.how_often_gone_without_food;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: how_often_gone_without_food; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.how_often_gone_without_food (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    how_often_gone_without_food character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: how_often_gone_without_food; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.how_often_gone_without_food (geo_level, geo_code, geo_version, how_often_gone_without_food, total) FROM stdin;
county	7	2009	Always	2
county	34	2009	Always	1
county	37	2009	Always	2
county	15	2009	Always	1
county	31	2009	Always	1
county	9	2009	Always	3
county	10	2009	Always	1
county	12	2009	Always	1
county	44	2009	Always	1
county	21	2009	Always	1
county	47	2009	Always	1
county	4	2009	Always	1
county	26	2009	Always	1
county	8	2009	Always	4
county	30	2009	Just once or twice	13
county	36	2009	Just once or twice	10
county	39	2009	Just once or twice	25
county	40	2009	Just once or twice	11
county	28	2009	Just once or twice	7
county	14	2009	Just once or twice	5
county	7	2009	Just once or twice	4
county	43	2009	Just once or twice	33
county	34	2009	Just once or twice	24
county	37	2009	Just once or twice	28
county	35	2009	Just once or twice	10
county	22	2009	Just once or twice	8
county	3	2009	Just once or twice	8
county	20	2009	Just once or twice	2
county	45	2009	Just once or twice	30
county	42	2009	Just once or twice	31
county	15	2009	Just once or twice	11
county	2	2009	Just once or twice	8
county	31	2009	Just once or twice	5
county	5	2009	Just once or twice	1
county	16	2009	Just once or twice	16
county	17	2009	Just once or twice	11
county	9	2009	Just once or twice	8
county	10	2009	Just once or twice	1
county	12	2009	Just once or twice	7
county	44	2009	Just once or twice	19
county	1	2009	Just once or twice	12
county	21	2009	Just once or twice	2
county	47	2009	Just once or twice	38
county	32	2009	Just once or twice	14
county	29	2009	Just once or twice	14
county	33	2009	Just once or twice	9
county	46	2009	Just once or twice	15
county	18	2009	Just once or twice	6
county	19	2009	Just once or twice	3
county	25	2009	Just once or twice	2
county	41	2009	Just once or twice	30
county	13	2009	Just once or twice	8
county	26	2009	Just once or twice	14
county	23	2009	Just once or twice	9
county	27	2009	Just once or twice	23
county	38	2009	Just once or twice	13
county	8	2009	Just once or twice	5
county	24	2009	Just once or twice	12
county	36	2009	Many times	1
county	39	2009	Many times	5
county	40	2009	Many times	3
county	7	2009	Many times	4
county	43	2009	Many times	2
county	11	2009	Many times	5
county	34	2009	Many times	1
county	37	2009	Many times	4
county	22	2009	Many times	6
county	3	2009	Many times	15
county	45	2009	Many times	3
county	42	2009	Many times	2
county	15	2009	Many times	7
county	2	2009	Many times	4
county	31	2009	Many times	4
county	16	2009	Many times	5
county	17	2009	Many times	3
county	9	2009	Many times	6
county	10	2009	Many times	8
county	12	2009	Many times	3
county	44	2009	Many times	2
county	1	2009	Many times	7
county	21	2009	Many times	3
county	47	2009	Many times	13
county	32	2009	Many times	7
county	29	2009	Many times	2
county	33	2009	Many times	4
county	46	2009	Many times	1
county	19	2009	Many times	4
county	25	2009	Many times	2
county	41	2009	Many times	1
county	6	2009	Many times	1
county	4	2009	Many times	5
county	26	2009	Many times	5
county	23	2009	Many times	5
county	38	2009	Many times	2
county	8	2009	Many times	5
county	30	2009	Never	18
county	36	2009	Never	32
county	39	2009	Never	35
county	40	2009	Never	16
county	28	2009	Never	8
county	14	2009	Never	31
county	7	2009	Never	14
county	43	2009	Never	8
county	11	2009	Never	3
county	34	2009	Never	21
county	37	2009	Never	39
county	35	2009	Never	28
county	22	2009	Never	101
county	3	2009	Never	22
county	20	2009	Never	36
county	45	2009	Never	28
county	42	2009	Never	15
county	15	2009	Never	23
county	2	2009	Never	15
county	31	2009	Never	10
county	5	2009	Never	4
county	16	2009	Never	38
county	17	2009	Never	36
county	9	2009	Never	19
county	10	2009	Never	2
county	12	2009	Never	66
county	44	2009	Never	15
county	1	2009	Never	36
county	21	2009	Never	55
county	47	2009	Never	166
county	32	2009	Never	71
county	29	2009	Never	31
county	33	2009	Never	26
county	46	2009	Never	19
county	18	2009	Never	33
county	19	2009	Never	37
county	41	2009	Never	5
county	6	2009	Never	12
county	13	2009	Never	13
county	26	2009	Never	18
county	27	2009	Never	29
county	38	2009	Never	10
county	8	2009	Never	12
county	24	2009	Never	4
county	30	2009	Several times	1
county	36	2009	Several times	5
county	39	2009	Several times	15
county	40	2009	Several times	10
county	28	2009	Several times	1
county	14	2009	Several times	4
county	7	2009	Several times	8
county	43	2009	Several times	13
county	34	2009	Several times	1
county	37	2009	Several times	23
county	35	2009	Several times	2
county	22	2009	Several times	5
county	3	2009	Several times	19
county	20	2009	Several times	2
county	45	2009	Several times	11
county	42	2009	Several times	8
county	15	2009	Several times	14
county	2	2009	Several times	13
county	31	2009	Several times	4
county	5	2009	Several times	3
county	16	2009	Several times	13
county	17	2009	Several times	6
county	9	2009	Several times	12
county	10	2009	Several times	4
county	12	2009	Several times	8
county	44	2009	Several times	11
county	1	2009	Several times	17
county	21	2009	Several times	3
county	47	2009	Several times	30
county	32	2009	Several times	12
county	29	2009	Several times	1
county	33	2009	Several times	9
county	46	2009	Several times	5
county	18	2009	Several times	1
county	19	2009	Several times	4
county	25	2009	Several times	4
county	41	2009	Several times	12
county	6	2009	Several times	3
county	4	2009	Several times	2
county	13	2009	Several times	3
county	26	2009	Several times	10
county	23	2009	Several times	34
county	27	2009	Several times	4
county	38	2009	Several times	7
county	8	2009	Several times	6
county	24	2009	Several times	8
\.


--
-- Name: how_often_gone_without_food pk_how_often_gone_without_food; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_gone_without_food
    ADD CONSTRAINT pk_how_often_gone_without_food PRIMARY KEY (geo_level, geo_code, geo_version, how_often_gone_without_food);


--
-- PostgreSQL database dump complete
--

