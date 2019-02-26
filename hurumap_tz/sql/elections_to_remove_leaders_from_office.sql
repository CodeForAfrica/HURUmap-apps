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

ALTER TABLE IF EXISTS ONLY public.elections_to_remove_leaders_from_office DROP CONSTRAINT IF EXISTS pk_elections_to_remove_leaders_from_office;
DROP TABLE IF EXISTS public.elections_to_remove_leaders_from_office;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: elections_to_remove_leaders_from_office; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.elections_to_remove_leaders_from_office (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    elections_to_remove_leaders_from_office character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: elections_to_remove_leaders_from_office; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.elections_to_remove_leaders_from_office (geo_level, geo_code, geo_version, elections_to_remove_leaders_from_office, total) FROM stdin;
region	1	2009	Don't know	11
region	1	2009	Not at all well	17
region	1	2009	Not very well	42
region	1	2009	Very well	11
region	1	2009	Well	39
region	2	2009	Don't know	7
region	2	2009	Not at all well	28
region	2	2009	Not very well	137
region	2	2009	Very well	10
region	2	2009	Well	91
region	3	2009	Don't know	12
region	3	2009	Not at all well	28
region	3	2009	Not very well	47
region	3	2009	Well	9
region	4	2009	Don't know	1
region	4	2009	Not at all well	16
region	4	2009	Not very well	27
region	4	2009	Very well	10
region	4	2009	Well	17
region	5	2009	Don't know	7
region	5	2009	Not at all well	8
region	5	2009	Not very well	19
region	5	2009	Very well	2
region	5	2009	Well	12
region	6	2009	Don't know	4
region	6	2009	Not at all well	13
region	6	2009	Not very well	20
region	6	2009	Very well	7
region	6	2009	Well	28
region	7	2009	Not at all well	26
region	7	2009	Not very well	25
region	7	2009	Well	5
region	8	2009	Don't know	1
region	8	2009	Not at all well	11
region	8	2009	Not very well	28
region	9	2009	Don't know	1
region	9	2009	Not very well	7
region	9	2009	Very well	2
region	9	2009	Well	14
region	10	2009	Don't know	5
region	10	2009	Not at all well	7
region	10	2009	Not very well	35
region	10	2009	Very well	11
region	10	2009	Well	38
region	11	2009	Don't know	7
region	11	2009	Not at all well	2
region	11	2009	Not very well	49
region	11	2009	Very well	4
region	11	2009	Well	25
region	12	2009	Not at all well	4
region	12	2009	Not very well	3
region	12	2009	Well	1
region	13	2009	Not at all well	4
region	13	2009	Not very well	18
region	13	2009	Well	2
region	14	2009	Not at all well	4
region	14	2009	Not very well	31
region	14	2009	Well	13
region	15	2009	Don't know	4
region	15	2009	Not at all well	16
region	15	2009	Not very well	23
region	15	2009	Very well	1
region	15	2009	Well	20
region	16	2009	Not at all well	9
region	16	2009	Not very well	21
region	16	2009	Very well	13
region	16	2009	Well	37
region	17	2009	Don't know	2
region	17	2009	Not at all well	12
region	17	2009	Not very well	20
region	17	2009	Very well	6
region	17	2009	Well	24
region	30	2009	Don't know	1
region	30	2009	Not at all well	39
region	30	2009	Not very well	69
region	30	2009	Very well	1
region	30	2009	Well	2
region	18	2009	Don't know	21
region	18	2009	Not at all well	35
region	18	2009	Not very well	45
region	18	2009	Very well	1
region	18	2009	Well	18
region	19	2009	Not at all well	8
region	19	2009	Not very well	40
region	19	2009	Well	23
region	20	2009	Don't know	1
region	20	2009	Not at all well	11
region	20	2009	Not very well	44
region	20	2009	Very well	19
region	20	2009	Well	49
region	21	2009	Don't know	2
region	21	2009	Not at all well	7
region	21	2009	Not very well	20
region	21	2009	Very well	5
region	21	2009	Well	6
region	22	2009	Not at all well	4
region	22	2009	Not very well	30
region	22	2009	Very well	7
region	22	2009	Well	31
region	23	2009	Don't know	3
region	23	2009	Not at all well	5
region	23	2009	Not very well	11
region	23	2009	Very well	4
region	23	2009	Well	16
region	24	2009	Don't know	2
region	24	2009	Not at all well	10
region	24	2009	Not very well	21
region	24	2009	Very well	8
region	24	2009	Well	31
region	25	2009	Not at all well	2
region	25	2009	Not very well	37
region	25	2009	Very well	11
region	25	2009	Well	22
region	26	2009	Don't know	2
region	26	2009	Not at all well	2
region	26	2009	Not very well	30
region	26	2009	Very well	6
region	26	2009	Well	24
region	27	2009	Not at all well	2
region	27	2009	Not very well	26
region	27	2009	Very well	11
region	27	2009	Well	25
region	31	2009	Don't know	4
region	31	2009	Not at all well	8
region	31	2009	Not very well	26
region	31	2009	Very well	6
region	31	2009	Well	28
region	29	2009	Don't know	8
region	29	2009	Not at all well	22
region	29	2009	Not very well	62
region	29	2009	Very well	1
region	29	2009	Well	10
region	28	2009	Don't know	7
region	28	2009	Not at all well	23
region	28	2009	Not very well	21
region	28	2009	Very well	2
region	28	2009	Well	35
country	TZ	2009	Not very well	1034
country	TZ	2009	Well	695
country	TZ	2009	Don't know	113
country	TZ	2009	Not at all well	383
country	TZ	2009	Very well	159
\.


--
-- Name: elections_to_remove_leaders_from_office pk_elections_to_remove_leaders_from_office; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elections_to_remove_leaders_from_office
    ADD CONSTRAINT pk_elections_to_remove_leaders_from_office PRIMARY KEY (geo_level, geo_code, geo_version, elections_to_remove_leaders_from_office);


--
-- PostgreSQL database dump complete
--

