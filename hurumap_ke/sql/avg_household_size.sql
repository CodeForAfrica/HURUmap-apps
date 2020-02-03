--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.avg_household_size DROP CONSTRAINT IF EXISTS pk_avg_household_size;
DROP TABLE IF EXISTS public.avg_household_size;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: avg_household_size; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.avg_household_size (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    year character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: avg_household_size; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.avg_household_size (geo_level, geo_code, geo_version, year, total) FROM stdin;
county	30	2009	2019	47
county	36	2009	2019	47
county	39	2009	2019	46
county	40	2009	2019	45
county	28	2009	2019	45
county	14	2009	2019	33
county	7	2009	2019	59
county	43	2009	2019	43
county	11	2009	2019	46
county	34	2009	2019	35
county	37	2009	2019	43
country	KE	2009	2019	39
county	35	2009	2019	44
county	22	2009	2019	30
county	3	2009	2019	48
county	20	2009	2019	30
county	45	2009	2019	41
county	42	2009	2019	38
county	15	2009	2019	43
county	2	2009	2019	50
county	31	2009	2019	34
county	5	2009	2019	37
county	16	2009	2019	35
county	17	2009	2019	40
county	9	2009	2019	69
county	10	2009	2019	58
county	12	2009	2019	36
county	44	2009	2019	46
county	1	2009	2019	31
county	21	2009	2019	33
county	47	2009	2019	29
county	32	2009	2019	35
county	29	2009	2019	44
county	33	2009	2019	48
county	46	2009	2019	40
county	18	2009	2019	35
county	19	2009	2019	30
county	25	2009	2019	47
county	41	2009	2019	39
county	6	2009	2019	35
county	4	2009	2019	46
county	13	2009	2019	36
county	26	2009	2019	44
county	23	2009	2019	56
county	27	2009	2019	38
county	38	2009	2019	41
county	8	2009	2019	61
county	24	2009	2019	53
\.


--
-- Name: avg_household_size pk_avg_household_size; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.avg_household_size
    ADD CONSTRAINT pk_avg_household_size PRIMARY KEY (geo_level, geo_code, geo_version, year);


--
-- PostgreSQL database dump complete
--

