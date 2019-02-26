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

ALTER TABLE IF EXISTS ONLY public.corruption_mps DROP CONSTRAINT IF EXISTS pk_corruption_mps;
DROP TABLE IF EXISTS public.corruption_mps;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_mps; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_mps (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_mps character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_mps; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_mps (geo_level, geo_code, geo_version, corruption_mps, total) FROM stdin;
region	1	2009	All of them	5
region	1	2009	Don't know/ Haven't heard enough	4
region	1	2009	Most of them	36
region	1	2009	None	9
region	1	2009	Some of them	66
region	2	2009	All of them	9
region	2	2009	Don't know/ Haven't heard enough	32
region	2	2009	Most of them	51
region	2	2009	None	34
region	2	2009	Some of them	147
region	3	2009	Don't know/ Haven't heard enough	23
region	3	2009	Most of them	11
region	3	2009	None	19
region	3	2009	Some of them	43
region	4	2009	All of them	3
region	4	2009	Most of them	14
region	4	2009	None	18
region	4	2009	Some of them	36
region	5	2009	Don't know/ Haven't heard enough	6
region	5	2009	Most of them	8
region	5	2009	None	10
region	5	2009	Some of them	24
region	6	2009	All of them	1
region	6	2009	Don't know/ Haven't heard enough	1
region	6	2009	Most of them	8
region	6	2009	None	14
region	6	2009	Some of them	48
region	7	2009	Don't know/ Haven't heard enough	14
region	7	2009	Most of them	19
region	7	2009	None	8
region	7	2009	Some of them	15
region	8	2009	Don't know/ Haven't heard enough	6
region	8	2009	Most of them	9
region	8	2009	None	4
region	8	2009	Some of them	21
region	9	2009	Most of them	3
region	9	2009	None	4
region	9	2009	Some of them	17
region	10	2009	All of them	2
region	10	2009	Don't know/ Haven't heard enough	30
region	10	2009	Most of them	17
region	10	2009	None	12
region	10	2009	Some of them	35
region	11	2009	All of them	2
region	11	2009	Don't know/ Haven't heard enough	1
region	11	2009	Most of them	25
region	11	2009	None	1
region	11	2009	Some of them	59
region	12	2009	Don't know/ Haven't heard enough	1
region	12	2009	Most of them	1
region	12	2009	None	3
region	12	2009	Some of them	3
region	13	2009	Don't know/ Haven't heard enough	3
region	13	2009	Most of them	4
region	13	2009	None	3
region	13	2009	Some of them	14
region	14	2009	All of them	1
region	14	2009	Don't know/ Haven't heard enough	1
region	14	2009	Most of them	9
region	14	2009	None	3
region	14	2009	Some of them	34
region	15	2009	All of them	5
region	15	2009	Don't know/ Haven't heard enough	2
region	15	2009	Most of them	26
region	15	2009	None	3
region	15	2009	Some of them	28
region	16	2009	All of them	3
region	16	2009	Don't know/ Haven't heard enough	6
region	16	2009	Most of them	11
region	16	2009	None	17
region	16	2009	Some of them	43
region	17	2009	All of them	3
region	17	2009	Don't know/ Haven't heard enough	4
region	17	2009	Most of them	16
region	17	2009	None	8
region	17	2009	Some of them	33
region	30	2009	All of them	1
region	30	2009	Don't know/ Haven't heard enough	15
region	30	2009	Most of them	27
region	30	2009	None	11
region	30	2009	Some of them	58
region	18	2009	Don't know/ Haven't heard enough	31
region	18	2009	Most of them	15
region	18	2009	None	10
region	18	2009	Some of them	64
region	19	2009	All of them	3
region	19	2009	Don't know/ Haven't heard enough	12
region	19	2009	Most of them	14
region	19	2009	None	14
region	19	2009	Some of them	28
region	20	2009	All of them	4
region	20	2009	Don't know/ Haven't heard enough	5
region	20	2009	Most of them	26
region	20	2009	None	14
region	20	2009	Some of them	75
region	21	2009	All of them	3
region	21	2009	Don't know/ Haven't heard enough	2
region	21	2009	Most of them	6
region	21	2009	None	7
region	21	2009	Some of them	22
region	22	2009	Don't know/ Haven't heard enough	6
region	22	2009	Most of them	20
region	22	2009	None	2
region	22	2009	Some of them	44
region	23	2009	Don't know/ Haven't heard enough	4
region	23	2009	Most of them	4
region	23	2009	None	6
region	23	2009	Some of them	25
region	24	2009	Don't know/ Haven't heard enough	2
region	24	2009	Most of them	7
region	24	2009	None	9
region	24	2009	Some of them	54
region	25	2009	All of them	1
region	25	2009	Don't know/ Haven't heard enough	10
region	25	2009	Most of them	9
region	25	2009	None	9
region	25	2009	Some of them	43
region	26	2009	All of them	3
region	26	2009	Don't know/ Haven't heard enough	12
region	26	2009	Most of them	7
region	26	2009	None	10
region	26	2009	Some of them	32
region	27	2009	Don't know/ Haven't heard enough	4
region	27	2009	Most of them	12
region	27	2009	None	5
region	27	2009	Some of them	43
region	31	2009	All of them	1
region	31	2009	Don't know/ Haven't heard enough	7
region	31	2009	Most of them	9
region	31	2009	None	4
region	31	2009	Some of them	51
region	29	2009	Don't know/ Haven't heard enough	29
region	29	2009	Most of them	10
region	29	2009	None	19
region	29	2009	Some of them	46
region	28	2009	All of them	3
region	28	2009	Don't know/ Haven't heard enough	3
region	28	2009	Most of them	28
region	28	2009	None	10
region	28	2009	Some of them	44
country	TZ	2009	None	300
country	TZ	2009	All of them	53
country	TZ	2009	Most of them	462
country	TZ	2009	Don't know/ Haven't heard enough	276
country	TZ	2009	Some of them	1295
\.


--
-- Name: corruption_mps pk_corruption_mps; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_mps
    ADD CONSTRAINT pk_corruption_mps PRIMARY KEY (geo_level, geo_code, geo_version, corruption_mps);


--
-- PostgreSQL database dump complete
--

