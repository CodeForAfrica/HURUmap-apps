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

ALTER TABLE IF EXISTS ONLY public.how_often_use_a_mobile_phone DROP CONSTRAINT IF EXISTS pk_how_often_use_a_mobile_phone;
DROP TABLE IF EXISTS public.how_often_use_a_mobile_phone;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: how_often_use_a_mobile_phone; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.how_often_use_a_mobile_phone (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    how_often_use_a_mobile_phone character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: how_often_use_a_mobile_phone; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.how_often_use_a_mobile_phone (geo_level, geo_code, geo_version, how_often_use_a_mobile_phone, total) FROM stdin;
region	1	2009	A few times a month	2
region	1	2009	A few times a week	12
region	1	2009	Everyday	67
region	1	2009	Less than once a month	3
region	1	2009	Never	36
region	2	2009	A few times a month	5
region	2	2009	A few times a week	12
region	2	2009	Everyday	248
region	2	2009	Less than once a month	1
region	2	2009	Never	7
region	3	2009	A few times a month	3
region	3	2009	A few times a week	19
region	3	2009	Everyday	51
region	3	2009	Never	23
region	4	2009	A few times a month	6
region	4	2009	A few times a week	5
region	4	2009	Don't know	1
region	4	2009	Everyday	43
region	4	2009	Less than once a month	2
region	4	2009	Never	14
region	5	2009	A few times a week	7
region	5	2009	Don't know	1
region	5	2009	Everyday	27
region	5	2009	Never	13
region	6	2009	A few times a month	3
region	6	2009	A few times a week	10
region	6	2009	Everyday	41
region	6	2009	Never	18
region	7	2009	A few times a month	1
region	7	2009	A few times a week	1
region	7	2009	Everyday	52
region	7	2009	Never	2
region	8	2009	A few times a week	1
region	8	2009	Everyday	35
region	8	2009	Never	4
region	9	2009	A few times a week	3
region	9	2009	Everyday	20
region	9	2009	Never	1
region	10	2009	A few times a week	5
region	10	2009	Everyday	64
region	10	2009	Less than once a month	1
region	10	2009	Never	26
region	11	2009	A few times a month	2
region	11	2009	A few times a week	6
region	11	2009	Everyday	58
region	11	2009	Less than once a month	1
region	11	2009	Never	21
region	12	2009	Everyday	6
region	12	2009	Never	2
region	13	2009	Everyday	22
region	13	2009	Never	2
region	14	2009	A few times a month	2
region	14	2009	A few times a week	15
region	14	2009	Everyday	15
region	14	2009	Less than once a month	2
region	14	2009	Never	14
region	15	2009	A few times a week	1
region	15	2009	Everyday	37
region	15	2009	Never	26
region	16	2009	A few times a month	4
region	16	2009	A few times a week	12
region	16	2009	Everyday	47
region	16	2009	Never	17
region	17	2009	A few times a week	6
region	17	2009	Everyday	57
region	17	2009	Never	1
region	30	2009	A few times a month	1
region	30	2009	Everyday	109
region	30	2009	Never	2
region	18	2009	A few times a month	5
region	18	2009	A few times a week	9
region	18	2009	Everyday	79
region	18	2009	Less than once a month	1
region	18	2009	Never	26
region	19	2009	A few times a month	3
region	19	2009	A few times a week	9
region	19	2009	Everyday	40
region	19	2009	Less than once a month	4
region	19	2009	Never	15
region	20	2009	A few times a month	9
region	20	2009	A few times a week	16
region	20	2009	Everyday	75
region	20	2009	Less than once a month	6
region	20	2009	Never	18
region	21	2009	A few times a week	1
region	21	2009	Everyday	34
region	21	2009	Never	5
region	22	2009	A few times a month	1
region	22	2009	A few times a week	7
region	22	2009	Everyday	56
region	22	2009	Never	8
region	23	2009	A few times a week	4
region	23	2009	Everyday	33
region	23	2009	Never	2
region	24	2009	A few times a week	16
region	24	2009	Everyday	47
region	24	2009	Never	9
region	25	2009	A few times a week	3
region	25	2009	Everyday	56
region	25	2009	Less than once a month	1
region	25	2009	Never	12
region	26	2009	A few times a week	10
region	26	2009	Everyday	46
region	26	2009	Less than once a month	1
region	26	2009	Never	7
region	27	2009	A few times a month	2
region	27	2009	A few times a week	6
region	27	2009	Everyday	48
region	27	2009	Never	8
region	31	2009	A few times a month	1
region	31	2009	A few times a week	8
region	31	2009	Everyday	57
region	31	2009	Never	6
region	29	2009	A few times a month	2
region	29	2009	A few times a week	11
region	29	2009	Everyday	51
region	29	2009	Never	40
region	28	2009	A few times a week	3
region	28	2009	Everyday	54
region	28	2009	Never	31
country	TZ	2009	A few times a month	52
country	TZ	2009	Less than once a month	23
country	TZ	2009	Never	416
country	TZ	2009	Don't know	2
country	TZ	2009	A few times a week	218
country	TZ	2009	Everyday	1675
\.


--
-- Name: how_often_use_a_mobile_phone pk_how_often_use_a_mobile_phone; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_use_a_mobile_phone
    ADD CONSTRAINT pk_how_often_use_a_mobile_phone PRIMARY KEY (geo_level, geo_code, geo_version, how_often_use_a_mobile_phone);


--
-- PostgreSQL database dump complete
--

