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

ALTER TABLE IF EXISTS ONLY public.chinas_influence_positive_or_negative DROP CONSTRAINT IF EXISTS pk_chinas_influence_positive_or_negative;
DROP TABLE IF EXISTS public.chinas_influence_positive_or_negative;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chinas_influence_positive_or_negative; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chinas_influence_positive_or_negative (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    chinas_influence_positive_or_negative character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: chinas_influence_positive_or_negative; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.chinas_influence_positive_or_negative (geo_level, geo_code, geo_version, chinas_influence_positive_or_negative, total) FROM stdin;
region	1	2009	Don't know / Haven't heard enough	24
region	1	2009	Neither positive nor negative	19
region	1	2009	Somewhat negative	7
region	1	2009	Somewhat positive	44
region	1	2009	Very negative	5
region	1	2009	Very positive	21
region	2	2009	Don't know / Haven't heard enough	22
region	2	2009	Neither positive nor negative	30
region	2	2009	Somewhat negative	12
region	2	2009	Somewhat positive	144
region	2	2009	Very negative	7
region	2	2009	Very positive	58
region	3	2009	Don't know / Haven't heard enough	26
region	3	2009	Neither positive nor negative	2
region	3	2009	Somewhat negative	3
region	3	2009	Somewhat positive	45
region	3	2009	Very negative	2
region	3	2009	Very positive	18
region	4	2009	Don't know / Haven't heard enough	4
region	4	2009	Neither positive nor negative	2
region	4	2009	Somewhat negative	9
region	4	2009	Somewhat positive	35
region	4	2009	Very negative	4
region	4	2009	Very positive	17
region	5	2009	Don't know / Haven't heard enough	10
region	5	2009	Neither positive nor negative	3
region	5	2009	Somewhat negative	1
region	5	2009	Somewhat positive	24
region	5	2009	Very negative	3
region	5	2009	Very positive	7
region	6	2009	Don't know / Haven't heard enough	11
region	6	2009	Neither positive nor negative	11
region	6	2009	Somewhat negative	7
region	6	2009	Somewhat positive	28
region	6	2009	Very negative	2
region	6	2009	Very positive	13
region	7	2009	Don't know / Haven't heard enough	5
region	7	2009	Neither positive nor negative	1
region	7	2009	Somewhat positive	26
region	7	2009	Very positive	24
region	8	2009	Don't know / Haven't heard enough	1
region	8	2009	Neither positive nor negative	2
region	8	2009	Somewhat negative	1
region	8	2009	Somewhat positive	17
region	8	2009	Very positive	19
region	9	2009	Don't know / Haven't heard enough	5
region	9	2009	Somewhat positive	17
region	9	2009	Very positive	2
region	10	2009	Don't know / Haven't heard enough	28
region	10	2009	Neither positive nor negative	4
region	10	2009	Somewhat negative	4
region	10	2009	Somewhat positive	46
region	10	2009	Very negative	3
region	10	2009	Very positive	11
region	11	2009	Don't know / Haven't heard enough	3
region	11	2009	Neither positive nor negative	21
region	11	2009	Somewhat negative	4
region	11	2009	Somewhat positive	28
region	11	2009	Very negative	3
region	11	2009	Very positive	29
region	12	2009	Somewhat positive	3
region	12	2009	Very positive	5
region	13	2009	Don't know / Haven't heard enough	2
region	13	2009	Neither positive nor negative	1
region	13	2009	Somewhat positive	14
region	13	2009	Very positive	7
region	14	2009	Somewhat negative	2
region	14	2009	Somewhat positive	35
region	14	2009	Very negative	1
region	14	2009	Very positive	10
region	15	2009	Don't know / Haven't heard enough	5
region	15	2009	Neither positive nor negative	18
region	15	2009	Somewhat negative	1
region	15	2009	Somewhat positive	13
region	15	2009	Very negative	1
region	15	2009	Very positive	26
region	16	2009	Don't know / Haven't heard enough	12
region	16	2009	Neither positive nor negative	1
region	16	2009	Somewhat negative	7
region	16	2009	Somewhat positive	29
region	16	2009	Very negative	4
region	16	2009	Very positive	27
region	17	2009	Don't know / Haven't heard enough	9
region	17	2009	Neither positive nor negative	2
region	17	2009	Somewhat negative	5
region	17	2009	Somewhat positive	34
region	17	2009	Very positive	14
region	30	2009	Don't know / Haven't heard enough	3
region	30	2009	Somewhat positive	49
region	30	2009	Very negative	1
region	30	2009	Very positive	59
region	18	2009	Don't know / Haven't heard enough	28
region	18	2009	Neither positive nor negative	8
region	18	2009	Somewhat negative	3
region	18	2009	Somewhat positive	57
region	18	2009	Very negative	1
region	18	2009	Very positive	23
region	19	2009	Neither positive nor negative	4
region	19	2009	Somewhat negative	1
region	19	2009	Somewhat positive	55
region	19	2009	Very positive	11
region	20	2009	Don't know / Haven't heard enough	7
region	20	2009	Neither positive nor negative	10
region	20	2009	Somewhat negative	8
region	20	2009	Somewhat positive	65
region	20	2009	Very negative	5
region	20	2009	Very positive	29
region	21	2009	Don't know / Haven't heard enough	4
region	21	2009	Neither positive nor negative	1
region	21	2009	Somewhat negative	2
region	21	2009	Somewhat positive	25
region	21	2009	Very negative	1
region	21	2009	Very positive	7
region	22	2009	Don't know / Haven't heard enough	2
region	22	2009	Neither positive nor negative	5
region	22	2009	Somewhat negative	2
region	22	2009	Somewhat positive	42
region	22	2009	Very negative	1
region	22	2009	Very positive	20
region	23	2009	Don't know / Haven't heard enough	11
region	23	2009	Neither positive nor negative	3
region	23	2009	Somewhat negative	2
region	23	2009	Somewhat positive	17
region	23	2009	Very positive	6
region	24	2009	Don't know / Haven't heard enough	9
region	24	2009	Neither positive nor negative	3
region	24	2009	Somewhat negative	3
region	24	2009	Somewhat positive	39
region	24	2009	Very negative	1
region	24	2009	Very positive	17
region	25	2009	Don't know / Haven't heard enough	1
region	25	2009	Neither positive nor negative	2
region	25	2009	Somewhat negative	8
region	25	2009	Somewhat positive	46
region	25	2009	Very negative	1
region	25	2009	Very positive	14
region	26	2009	Don't know / Haven't heard enough	14
region	26	2009	Neither positive nor negative	1
region	26	2009	Somewhat negative	4
region	26	2009	Somewhat positive	40
region	26	2009	Very positive	5
region	27	2009	Don't know / Haven't heard enough	1
region	27	2009	Neither positive nor negative	1
region	27	2009	Somewhat negative	4
region	27	2009	Somewhat positive	45
region	27	2009	Very positive	13
region	31	2009	Don't know / Haven't heard enough	14
region	31	2009	Neither positive nor negative	4
region	31	2009	Somewhat negative	2
region	31	2009	Somewhat positive	38
region	31	2009	Very negative	1
region	31	2009	Very positive	13
region	29	2009	Don't know / Haven't heard enough	27
region	29	2009	Neither positive nor negative	8
region	29	2009	Somewhat negative	6
region	29	2009	Somewhat positive	40
region	29	2009	Very negative	3
region	29	2009	Very positive	20
region	28	2009	Don't know / Haven't heard enough	7
region	28	2009	Neither positive nor negative	21
region	28	2009	Somewhat negative	5
region	28	2009	Somewhat positive	21
region	28	2009	Very negative	4
region	28	2009	Very positive	30
country	TZ	2009	Don't know / Haven't heard enough	295
country	TZ	2009	Somewhat positive	1161
country	TZ	2009	Somewhat negative	113
country	TZ	2009	Neither positive nor negative	188
country	TZ	2009	Very negative	54
country	TZ	2009	Very positive	575
\.


--
-- Name: chinas_influence_positive_or_negative pk_chinas_influence_positive_or_negative; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chinas_influence_positive_or_negative
    ADD CONSTRAINT pk_chinas_influence_positive_or_negative PRIMARY KEY (geo_level, geo_code, geo_version, chinas_influence_positive_or_negative);


--
-- PostgreSQL database dump complete
--

