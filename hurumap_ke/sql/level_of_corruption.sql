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

ALTER TABLE IF EXISTS ONLY public.level_of_corruption DROP CONSTRAINT IF EXISTS pk_level_of_corruption;
DROP TABLE IF EXISTS public.level_of_corruption;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: level_of_corruption; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.level_of_corruption (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    level_of_corruption character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: level_of_corruption; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.level_of_corruption (geo_level, geo_code, geo_version, level_of_corruption, total) FROM stdin;
county	36	2009	Decreased a lot	3
county	39	2009	Decreased a lot	3
county	40	2009	Decreased a lot	2
county	34	2009	Decreased a lot	2
county	37	2009	Decreased a lot	3
county	35	2009	Decreased a lot	2
county	22	2009	Decreased a lot	6
county	20	2009	Decreased a lot	1
county	2	2009	Decreased a lot	2
county	31	2009	Decreased a lot	1
county	5	2009	Decreased a lot	1
county	16	2009	Decreased a lot	1
county	17	2009	Decreased a lot	2
county	47	2009	Decreased a lot	5
county	32	2009	Decreased a lot	10
county	33	2009	Decreased a lot	4
county	18	2009	Decreased a lot	4
county	19	2009	Decreased a lot	3
county	26	2009	Decreased a lot	1
county	23	2009	Decreased a lot	1
county	38	2009	Decreased a lot	1
county	30	2009	Decreased somewhat	10
county	36	2009	Decreased somewhat	20
county	39	2009	Decreased somewhat	17
county	40	2009	Decreased somewhat	4
county	28	2009	Decreased somewhat	1
county	14	2009	Decreased somewhat	2
county	7	2009	Decreased somewhat	1
county	34	2009	Decreased somewhat	7
county	37	2009	Decreased somewhat	8
county	35	2009	Decreased somewhat	4
county	22	2009	Decreased somewhat	35
county	3	2009	Decreased somewhat	1
county	20	2009	Decreased somewhat	17
county	45	2009	Decreased somewhat	3
county	42	2009	Decreased somewhat	3
county	15	2009	Decreased somewhat	1
county	2	2009	Decreased somewhat	1
county	31	2009	Decreased somewhat	6
county	5	2009	Decreased somewhat	3
county	16	2009	Decreased somewhat	9
county	17	2009	Decreased somewhat	9
county	9	2009	Decreased somewhat	2
county	12	2009	Decreased somewhat	4
county	44	2009	Decreased somewhat	2
county	1	2009	Decreased somewhat	3
county	21	2009	Decreased somewhat	29
county	47	2009	Decreased somewhat	43
county	32	2009	Decreased somewhat	28
county	29	2009	Decreased somewhat	15
county	33	2009	Decreased somewhat	11
county	46	2009	Decreased somewhat	1
county	18	2009	Decreased somewhat	15
county	19	2009	Decreased somewhat	13
county	41	2009	Decreased somewhat	7
county	6	2009	Decreased somewhat	3
county	4	2009	Decreased somewhat	2
county	13	2009	Decreased somewhat	1
county	26	2009	Decreased somewhat	10
county	23	2009	Decreased somewhat	3
county	27	2009	Decreased somewhat	10
county	8	2009	Decreased somewhat	3
county	24	2009	Decreased somewhat	5
county	30	2009	Don't know	1
county	28	2009	Don't know	1
county	14	2009	Don't know	1
county	7	2009	Don't know	3
county	11	2009	Don't know	2
county	34	2009	Don't know	2
county	37	2009	Don't know	1
county	22	2009	Don't know	2
county	3	2009	Don't know	3
county	42	2009	Don't know	1
county	15	2009	Don't know	2
county	2	2009	Don't know	1
county	31	2009	Don't know	3
county	16	2009	Don't know	4
county	17	2009	Don't know	3
county	9	2009	Don't know	3
county	10	2009	Don't know	3
county	12	2009	Don't know	9
county	1	2009	Don't know	2
county	21	2009	Don't know	1
county	47	2009	Don't know	3
county	32	2009	Don't know	1
county	29	2009	Don't know	2
county	33	2009	Don't know	1
county	46	2009	Don't know	1
county	19	2009	Don't know	1
county	25	2009	Don't know	2
county	6	2009	Don't know	1
county	4	2009	Don't know	4
county	13	2009	Don't know	1
county	26	2009	Don't know	2
county	23	2009	Don't know	6
county	27	2009	Don't know	2
county	38	2009	Don't know	1
county	8	2009	Don't know	6
county	24	2009	Don't know	3
county	30	2009	Increased a lot	8
county	36	2009	Increased a lot	13
county	39	2009	Increased a lot	41
county	40	2009	Increased a lot	25
county	28	2009	Increased a lot	5
county	14	2009	Increased a lot	9
county	7	2009	Increased a lot	7
county	43	2009	Increased a lot	43
county	11	2009	Increased a lot	2
county	34	2009	Increased a lot	19
county	37	2009	Increased a lot	62
county	35	2009	Increased a lot	13
county	22	2009	Increased a lot	31
county	3	2009	Increased a lot	40
county	20	2009	Increased a lot	11
county	45	2009	Increased a lot	45
county	42	2009	Increased a lot	45
county	15	2009	Increased a lot	19
county	2	2009	Increased a lot	22
county	31	2009	Increased a lot	4
county	5	2009	Increased a lot	2
county	16	2009	Increased a lot	32
county	17	2009	Increased a lot	24
county	9	2009	Increased a lot	21
county	10	2009	Increased a lot	8
county	12	2009	Increased a lot	29
county	44	2009	Increased a lot	34
county	1	2009	Increased a lot	36
county	21	2009	Increased a lot	15
county	47	2009	Increased a lot	89
county	32	2009	Increased a lot	26
county	29	2009	Increased a lot	13
county	33	2009	Increased a lot	16
county	46	2009	Increased a lot	27
county	18	2009	Increased a lot	6
county	19	2009	Increased a lot	11
county	25	2009	Increased a lot	1
county	41	2009	Increased a lot	29
county	6	2009	Increased a lot	5
county	4	2009	Increased a lot	1
county	13	2009	Increased a lot	9
county	26	2009	Increased a lot	16
county	23	2009	Increased a lot	11
county	27	2009	Increased a lot	18
county	38	2009	Increased a lot	22
county	8	2009	Increased a lot	10
county	24	2009	Increased a lot	3
county	30	2009	Increased somewhat	10
county	36	2009	Increased somewhat	10
county	39	2009	Increased somewhat	15
county	40	2009	Increased somewhat	3
county	28	2009	Increased somewhat	6
county	14	2009	Increased somewhat	12
county	7	2009	Increased somewhat	13
county	43	2009	Increased somewhat	9
county	11	2009	Increased somewhat	1
county	34	2009	Increased somewhat	13
county	37	2009	Increased somewhat	17
county	35	2009	Increased somewhat	17
county	22	2009	Increased somewhat	26
county	3	2009	Increased somewhat	12
county	20	2009	Increased somewhat	5
county	45	2009	Increased somewhat	19
county	42	2009	Increased somewhat	5
county	15	2009	Increased somewhat	21
county	2	2009	Increased somewhat	11
county	31	2009	Increased somewhat	5
county	5	2009	Increased somewhat	2
county	16	2009	Increased somewhat	16
county	17	2009	Increased somewhat	8
county	9	2009	Increased somewhat	17
county	10	2009	Increased somewhat	1
county	12	2009	Increased somewhat	21
county	44	2009	Increased somewhat	6
county	1	2009	Increased somewhat	21
county	21	2009	Increased somewhat	8
county	47	2009	Increased somewhat	60
county	32	2009	Increased somewhat	23
county	29	2009	Increased somewhat	10
county	33	2009	Increased somewhat	11
county	46	2009	Increased somewhat	8
county	18	2009	Increased somewhat	8
county	19	2009	Increased somewhat	9
county	25	2009	Increased somewhat	4
county	41	2009	Increased somewhat	11
county	6	2009	Increased somewhat	5
county	4	2009	Increased somewhat	1
county	13	2009	Increased somewhat	3
county	26	2009	Increased somewhat	12
county	23	2009	Increased somewhat	22
county	27	2009	Increased somewhat	23
county	38	2009	Increased somewhat	5
county	8	2009	Increased somewhat	7
county	24	2009	Increased somewhat	11
county	16	2009	Missing	1
county	9	2009	Missing	1
county	30	2009	Stayed the same	3
county	36	2009	Stayed the same	2
county	39	2009	Stayed the same	4
county	40	2009	Stayed the same	6
county	28	2009	Stayed the same	3
county	14	2009	Stayed the same	16
county	7	2009	Stayed the same	8
county	43	2009	Stayed the same	4
county	11	2009	Stayed the same	3
county	34	2009	Stayed the same	5
county	37	2009	Stayed the same	5
county	35	2009	Stayed the same	4
county	22	2009	Stayed the same	20
county	3	2009	Stayed the same	8
county	20	2009	Stayed the same	6
county	45	2009	Stayed the same	5
county	42	2009	Stayed the same	2
county	15	2009	Stayed the same	13
county	2	2009	Stayed the same	3
county	31	2009	Stayed the same	5
county	16	2009	Stayed the same	9
county	17	2009	Stayed the same	10
county	9	2009	Stayed the same	4
county	10	2009	Stayed the same	4
county	12	2009	Stayed the same	22
county	44	2009	Stayed the same	6
county	1	2009	Stayed the same	10
county	21	2009	Stayed the same	11
county	47	2009	Stayed the same	48
county	32	2009	Stayed the same	16
county	29	2009	Stayed the same	8
county	33	2009	Stayed the same	5
county	46	2009	Stayed the same	3
county	18	2009	Stayed the same	7
county	19	2009	Stayed the same	11
county	25	2009	Stayed the same	1
county	41	2009	Stayed the same	1
county	6	2009	Stayed the same	2
county	13	2009	Stayed the same	10
county	26	2009	Stayed the same	7
county	23	2009	Stayed the same	5
county	27	2009	Stayed the same	3
county	38	2009	Stayed the same	3
county	8	2009	Stayed the same	6
county	24	2009	Stayed the same	2
\.


--
-- Name: level_of_corruption pk_level_of_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.level_of_corruption
    ADD CONSTRAINT pk_level_of_corruption PRIMARY KEY (geo_level, geo_code, geo_version, level_of_corruption);


--
-- PostgreSQL database dump complete
--

