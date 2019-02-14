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
region	1	2009	Decreased a lot	2
region	1	2009	Decreased somewhat	9
region	1	2009	Don't know	3
region	1	2009	Increased a lot	54
region	1	2009	Increased somewhat	29
region	1	2009	Stayed the same	23
region	2	2009	Decreased a lot	2
region	2	2009	Decreased somewhat	14
region	2	2009	Don't know	13
region	2	2009	Increased a lot	138
region	2	2009	Increased somewhat	65
region	2	2009	Stayed the same	41
region	3	2009	Decreased a lot	2
region	3	2009	Decreased somewhat	18
region	3	2009	Don't know	15
region	3	2009	Increased a lot	33
region	3	2009	Increased somewhat	24
region	3	2009	Stayed the same	4
region	4	2009	Decreased a lot	7
region	4	2009	Decreased somewhat	7
region	4	2009	Don't know	2
region	4	2009	Increased a lot	23
region	4	2009	Increased somewhat	21
region	4	2009	Stayed the same	11
region	5	2009	Decreased a lot	1
region	5	2009	Decreased somewhat	4
region	5	2009	Don't know	8
region	5	2009	Increased a lot	13
region	5	2009	Increased somewhat	11
region	5	2009	Stayed the same	11
region	6	2009	Decreased a lot	2
region	6	2009	Decreased somewhat	6
region	6	2009	Don't know	5
region	6	2009	Increased a lot	25
region	6	2009	Increased somewhat	29
region	6	2009	Stayed the same	5
region	7	2009	Decreased somewhat	1
region	7	2009	Don't know	6
region	7	2009	Increased a lot	33
region	7	2009	Increased somewhat	15
region	7	2009	Stayed the same	1
region	8	2009	Decreased somewhat	1
region	8	2009	Don't know	2
region	8	2009	Increased a lot	26
region	8	2009	Increased somewhat	11
region	9	2009	Decreased a lot	2
region	9	2009	Decreased somewhat	1
region	9	2009	Don't know	1
region	9	2009	Increased a lot	2
region	9	2009	Increased somewhat	8
region	9	2009	Stayed the same	10
region	10	2009	Decreased a lot	1
region	10	2009	Decreased somewhat	10
region	10	2009	Don't know	6
region	10	2009	Increased a lot	40
region	10	2009	Increased somewhat	20
region	10	2009	Stayed the same	19
region	11	2009	Decreased somewhat	2
region	11	2009	Don't know	4
region	11	2009	Increased a lot	48
region	11	2009	Increased somewhat	13
region	11	2009	Stayed the same	21
region	12	2009	Decreased somewhat	1
region	12	2009	Increased a lot	6
region	12	2009	Increased somewhat	1
region	13	2009	Decreased somewhat	1
region	13	2009	Don't know	2
region	13	2009	Increased a lot	11
region	13	2009	Increased somewhat	10
region	14	2009	Decreased somewhat	1
region	14	2009	Increased a lot	11
region	14	2009	Increased somewhat	35
region	14	2009	Stayed the same	1
region	15	2009	Decreased a lot	1
region	15	2009	Decreased somewhat	11
region	15	2009	Don't know	1
region	15	2009	Increased a lot	29
region	15	2009	Increased somewhat	7
region	15	2009	Stayed the same	15
region	16	2009	Decreased a lot	2
region	16	2009	Decreased somewhat	17
region	16	2009	Don't know	5
region	16	2009	Increased a lot	31
region	16	2009	Increased somewhat	15
region	16	2009	Stayed the same	10
region	17	2009	Decreased a lot	4
region	17	2009	Decreased somewhat	6
region	17	2009	Don't know	1
region	17	2009	Increased a lot	26
region	17	2009	Increased somewhat	16
region	17	2009	Stayed the same	11
region	30	2009	Decreased somewhat	2
region	30	2009	Don't know	3
region	30	2009	Increased a lot	78
region	30	2009	Increased somewhat	27
region	30	2009	Stayed the same	2
region	18	2009	Decreased a lot	2
region	18	2009	Decreased somewhat	14
region	18	2009	Don't know	20
region	18	2009	Increased a lot	50
region	18	2009	Increased somewhat	29
region	18	2009	Stayed the same	5
region	19	2009	Decreased a lot	1
region	19	2009	Decreased somewhat	3
region	19	2009	Increased a lot	31
region	19	2009	Increased somewhat	31
region	19	2009	Stayed the same	5
region	20	2009	Decreased a lot	9
region	20	2009	Decreased somewhat	16
region	20	2009	Don't know	1
region	20	2009	Increased a lot	32
region	20	2009	Increased somewhat	53
region	20	2009	Stayed the same	13
region	21	2009	Decreased a lot	2
region	21	2009	Decreased somewhat	4
region	21	2009	Don't know	2
region	21	2009	Increased a lot	10
region	21	2009	Increased somewhat	17
region	21	2009	Stayed the same	5
region	22	2009	Decreased a lot	1
region	22	2009	Decreased somewhat	5
region	22	2009	Don't know	2
region	22	2009	Increased a lot	31
region	22	2009	Increased somewhat	23
region	22	2009	Stayed the same	10
region	23	2009	Decreased a lot	3
region	23	2009	Decreased somewhat	6
region	23	2009	Don't know	1
region	23	2009	Increased a lot	12
region	23	2009	Increased somewhat	6
region	23	2009	Stayed the same	11
region	24	2009	Decreased a lot	7
region	24	2009	Decreased somewhat	9
region	24	2009	Don't know	1
region	24	2009	Increased a lot	18
region	24	2009	Increased somewhat	13
region	24	2009	Stayed the same	24
region	25	2009	Decreased somewhat	4
region	25	2009	Increased a lot	38
region	25	2009	Increased somewhat	22
region	25	2009	Stayed the same	8
region	26	2009	Decreased a lot	4
region	26	2009	Decreased somewhat	7
region	26	2009	Don't know	5
region	26	2009	Increased a lot	21
region	26	2009	Increased somewhat	18
region	26	2009	Stayed the same	9
region	27	2009	Decreased a lot	1
region	27	2009	Decreased somewhat	2
region	27	2009	Don't know	1
region	27	2009	Increased a lot	26
region	27	2009	Increased somewhat	27
region	27	2009	Stayed the same	7
region	31	2009	Decreased a lot	3
region	31	2009	Decreased somewhat	9
region	31	2009	Don't know	4
region	31	2009	Increased a lot	21
region	31	2009	Increased somewhat	20
region	31	2009	Stayed the same	15
region	29	2009	Decreased a lot	1
region	29	2009	Decreased somewhat	24
region	29	2009	Don't know	12
region	29	2009	Increased a lot	33
region	29	2009	Increased somewhat	22
region	29	2009	Stayed the same	12
region	28	2009	Decreased a lot	3
region	28	2009	Decreased somewhat	15
region	28	2009	Don't know	10
region	28	2009	Increased a lot	30
region	28	2009	Increased somewhat	10
region	28	2009	Stayed the same	20
country	TZ	2009	Increased somewhat	648
country	TZ	2009	Decreased a lot	63
country	TZ	2009	Increased a lot	980
country	TZ	2009	Stayed the same	329
country	TZ	2009	Decreased somewhat	230
country	TZ	2009	Don't know	136
\.


--
-- Name: level_of_corruption pk_level_of_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.level_of_corruption
    ADD CONSTRAINT pk_level_of_corruption PRIMARY KEY (geo_level, geo_code, geo_version, level_of_corruption);


--
-- PostgreSQL database dump complete
--

