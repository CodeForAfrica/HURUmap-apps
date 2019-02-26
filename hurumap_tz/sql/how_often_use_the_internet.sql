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

ALTER TABLE IF EXISTS ONLY public.how_often_use_the_internet DROP CONSTRAINT IF EXISTS pk_how_often_use_the_internet;
DROP TABLE IF EXISTS public.how_often_use_the_internet;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: how_often_use_the_internet; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.how_often_use_the_internet (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    how_often_use_the_internet character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: how_often_use_the_internet; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.how_often_use_the_internet (geo_level, geo_code, geo_version, how_often_use_the_internet, total) FROM stdin;
region	1	2009	A few times a month	1
region	1	2009	A few times a week	5
region	1	2009	Don't know	1
region	1	2009	Everyday	3
region	1	2009	Less than once a month	1
region	1	2009	Never	109
region	2	2009	A few times a month	10
region	2	2009	A few times a week	31
region	2	2009	Don't know	6
region	2	2009	Everyday	61
region	2	2009	Less than once a month	6
region	2	2009	Never	159
region	3	2009	A few times a month	3
region	3	2009	A few times a week	3
region	3	2009	Everyday	7
region	3	2009	Less than once a month	1
region	3	2009	Never	82
region	4	2009	A few times a week	1
region	4	2009	Don't know	2
region	4	2009	Everyday	3
region	4	2009	Less than once a month	2
region	4	2009	Never	63
region	5	2009	A few times a month	1
region	5	2009	Don't know	1
region	5	2009	Everyday	2
region	5	2009	Less than once a month	3
region	5	2009	Never	41
region	6	2009	A few times a week	2
region	6	2009	Everyday	4
region	6	2009	Never	66
region	7	2009	A few times a week	1
region	7	2009	Everyday	6
region	7	2009	Less than once a month	1
region	7	2009	Never	48
region	8	2009	A few times a week	1
region	8	2009	Everyday	2
region	8	2009	Less than once a month	1
region	8	2009	Never	36
region	9	2009	Less than once a month	2
region	9	2009	Never	22
region	10	2009	A few times a week	1
region	10	2009	Don't know	2
region	10	2009	Everyday	1
region	10	2009	Never	92
region	11	2009	A few times a month	2
region	11	2009	A few times a week	7
region	11	2009	Don't know	1
region	11	2009	Everyday	6
region	11	2009	Less than once a month	1
region	11	2009	Never	71
region	12	2009	Never	8
region	13	2009	A few times a month	1
region	13	2009	A few times a week	2
region	13	2009	Never	21
region	14	2009	Never	48
region	15	2009	A few times a month	1
region	15	2009	A few times a week	2
region	15	2009	Don't know	2
region	15	2009	Everyday	2
region	15	2009	Never	57
region	16	2009	A few times a month	1
region	16	2009	A few times a week	2
region	16	2009	Don't know	1
region	16	2009	Everyday	4
region	16	2009	Less than once a month	1
region	16	2009	Never	71
region	17	2009	A few times a month	1
region	17	2009	A few times a week	3
region	17	2009	Everyday	5
region	17	2009	Less than once a month	5
region	17	2009	Never	50
region	30	2009	A few times a month	2
region	30	2009	A few times a week	5
region	30	2009	Everyday	16
region	30	2009	Never	89
region	18	2009	A few times a month	5
region	18	2009	A few times a week	2
region	18	2009	Everyday	3
region	18	2009	Less than once a month	1
region	18	2009	Never	109
region	19	2009	A few times a month	1
region	19	2009	A few times a week	1
region	19	2009	Everyday	5
region	19	2009	Never	64
region	20	2009	A few times a month	2
region	20	2009	A few times a week	2
region	20	2009	Don't know	1
region	20	2009	Everyday	6
region	20	2009	Less than once a month	6
region	20	2009	Never	107
region	21	2009	A few times a month	1
region	21	2009	A few times a week	2
region	21	2009	Everyday	2
region	21	2009	Less than once a month	1
region	21	2009	Never	34
region	22	2009	Don't know	1
region	22	2009	Everyday	1
region	22	2009	Never	70
region	23	2009	A few times a week	1
region	23	2009	Everyday	1
region	23	2009	Never	37
region	24	2009	A few times a month	1
region	24	2009	A few times a week	3
region	24	2009	Never	68
region	25	2009	A few times a month	1
region	25	2009	Everyday	2
region	25	2009	Less than once a month	1
region	25	2009	Never	68
region	26	2009	A few times a week	1
region	26	2009	Less than once a month	1
region	26	2009	Never	62
region	27	2009	A few times a month	1
region	27	2009	Never	63
region	31	2009	A few times a month	1
region	31	2009	A few times a week	3
region	31	2009	Everyday	2
region	31	2009	Less than once a month	3
region	31	2009	Never	63
region	29	2009	A few times a month	2
region	29	2009	A few times a week	2
region	29	2009	Don't know	1
region	29	2009	Never	99
region	28	2009	A few times a week	7
region	28	2009	Don't know	1
region	28	2009	Everyday	7
region	28	2009	Never	73
country	TZ	2009	A few times a month	38
country	TZ	2009	Less than once a month	37
country	TZ	2009	Never	2050
country	TZ	2009	Don't know	20
country	TZ	2009	A few times a week	90
country	TZ	2009	Everyday	151
\.


--
-- Name: how_often_use_the_internet pk_how_often_use_the_internet; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_use_the_internet
    ADD CONSTRAINT pk_how_often_use_the_internet PRIMARY KEY (geo_level, geo_code, geo_version, how_often_use_the_internet);


--
-- PostgreSQL database dump complete
--

