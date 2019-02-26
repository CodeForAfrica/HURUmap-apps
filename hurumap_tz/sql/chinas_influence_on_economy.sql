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

ALTER TABLE IF EXISTS ONLY public.chinas_influence_on_economy DROP CONSTRAINT IF EXISTS pk_chinas_influence_on_economy;
DROP TABLE IF EXISTS public.chinas_influence_on_economy;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chinas_influence_on_economy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chinas_influence_on_economy (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    chinas_influence_on_economy character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: chinas_influence_on_economy; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.chinas_influence_on_economy (geo_level, geo_code, geo_version, chinas_influence_on_economy, total) FROM stdin;
region	1	2009	A little	25
region	1	2009	A lot	41
region	1	2009	Don't know / Haven't heard enough	20
region	1	2009	None	7
region	1	2009	Some	27
region	2	2009	A little	25
region	2	2009	A lot	126
region	2	2009	Don't know / Haven't heard enough	25
region	2	2009	None	8
region	2	2009	Some	89
region	3	2009	A little	2
region	3	2009	A lot	54
region	3	2009	Don't know / Haven't heard enough	27
region	3	2009	Some	13
region	4	2009	A little	11
region	4	2009	A lot	23
region	4	2009	Don't know / Haven't heard enough	2
region	4	2009	None	7
region	4	2009	Some	28
region	5	2009	A little	4
region	5	2009	A lot	14
region	5	2009	Don't know / Haven't heard enough	10
region	5	2009	None	5
region	5	2009	Some	15
region	6	2009	A little	18
region	6	2009	A lot	17
region	6	2009	Don't know / Haven't heard enough	12
region	6	2009	None	3
region	6	2009	Some	22
region	7	2009	A little	3
region	7	2009	A lot	28
region	7	2009	Don't know / Haven't heard enough	5
region	7	2009	None	1
region	7	2009	Some	19
region	8	2009	A lot	25
region	8	2009	Don't know / Haven't heard enough	2
region	8	2009	Some	13
region	9	2009	A little	1
region	9	2009	A lot	13
region	9	2009	Don't know / Haven't heard enough	5
region	9	2009	Some	5
region	10	2009	A little	12
region	10	2009	A lot	14
region	10	2009	Don't know / Haven't heard enough	29
region	10	2009	None	3
region	10	2009	Some	38
region	11	2009	A little	20
region	11	2009	A lot	33
region	11	2009	Don't know / Haven't heard enough	3
region	11	2009	None	3
region	11	2009	Some	29
region	12	2009	A little	1
region	12	2009	A lot	6
region	12	2009	Some	1
region	13	2009	A lot	14
region	13	2009	Don't know / Haven't heard enough	2
region	13	2009	Some	8
region	14	2009	A little	5
region	14	2009	A lot	15
region	14	2009	None	1
region	14	2009	Some	27
region	15	2009	A little	19
region	15	2009	A lot	30
region	15	2009	Don't know / Haven't heard enough	4
region	15	2009	None	1
region	15	2009	Some	10
region	16	2009	A little	9
region	16	2009	A lot	29
region	16	2009	Don't know / Haven't heard enough	8
region	16	2009	None	7
region	16	2009	Some	27
region	17	2009	A little	7
region	17	2009	A lot	31
region	17	2009	Don't know / Haven't heard enough	9
region	17	2009	None	1
region	17	2009	Some	16
region	30	2009	A little	3
region	30	2009	A lot	71
region	30	2009	Don't know / Haven't heard enough	2
region	30	2009	None	3
region	30	2009	Some	33
region	18	2009	A little	6
region	18	2009	A lot	62
region	18	2009	Don't know / Haven't heard enough	27
region	18	2009	Some	25
region	19	2009	A little	6
region	19	2009	A lot	26
region	19	2009	None	1
region	19	2009	Some	38
region	20	2009	A little	24
region	20	2009	A lot	36
region	20	2009	Don't know / Haven't heard enough	4
region	20	2009	None	7
region	20	2009	Some	53
region	21	2009	A little	1
region	21	2009	A lot	18
region	21	2009	Don't know / Haven't heard enough	5
region	21	2009	None	2
region	21	2009	Some	14
region	22	2009	A little	6
region	22	2009	A lot	21
region	22	2009	Don't know / Haven't heard enough	2
region	22	2009	None	1
region	22	2009	Some	42
region	23	2009	A little	2
region	23	2009	A lot	15
region	23	2009	Don't know / Haven't heard enough	11
region	23	2009	None	1
region	23	2009	Some	10
region	24	2009	A little	7
region	24	2009	A lot	31
region	24	2009	Don't know / Haven't heard enough	9
region	24	2009	Some	25
region	25	2009	A little	11
region	25	2009	A lot	16
region	25	2009	Don't know / Haven't heard enough	2
region	25	2009	None	4
region	25	2009	Some	39
region	26	2009	A little	7
region	26	2009	A lot	8
region	26	2009	Don't know / Haven't heard enough	14
region	26	2009	None	4
region	26	2009	Some	31
region	27	2009	A little	12
region	27	2009	A lot	13
region	27	2009	Don't know / Haven't heard enough	3
region	27	2009	None	1
region	27	2009	Some	35
region	31	2009	A little	3
region	31	2009	A lot	30
region	31	2009	Don't know / Haven't heard enough	14
region	31	2009	None	1
region	31	2009	Some	24
region	29	2009	A little	7
region	29	2009	A lot	52
region	29	2009	Don't know / Haven't heard enough	26
region	29	2009	Some	19
region	28	2009	A little	27
region	28	2009	A lot	28
region	28	2009	Don't know / Haven't heard enough	8
region	28	2009	None	4
region	28	2009	Some	21
country	TZ	2009	A lot	940
country	TZ	2009	Don't know / Haven't heard enough	290
country	TZ	2009	Some	796
country	TZ	2009	None	76
country	TZ	2009	A little	284
\.


--
-- Name: chinas_influence_on_economy pk_chinas_influence_on_economy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chinas_influence_on_economy
    ADD CONSTRAINT pk_chinas_influence_on_economy PRIMARY KEY (geo_level, geo_code, geo_version, chinas_influence_on_economy);


--
-- PostgreSQL database dump complete
--

