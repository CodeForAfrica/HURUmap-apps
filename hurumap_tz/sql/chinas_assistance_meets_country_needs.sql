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

ALTER TABLE IF EXISTS ONLY public.chinas_assistance_meets_country_needs DROP CONSTRAINT IF EXISTS pk_chinas_assistance_meets_country_needs;
DROP TABLE IF EXISTS public.chinas_assistance_meets_country_needs;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chinas_assistance_meets_country_needs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chinas_assistance_meets_country_needs (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    chinas_assistance_meets_country_needs character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: chinas_assistance_meets_country_needs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.chinas_assistance_meets_country_needs (geo_level, geo_code, geo_version, chinas_assistance_meets_country_needs, total) FROM stdin;
region	1	2009	China doesn't give development assistance to the country	1
region	1	2009	Don't know / Haven't heard enough	28
region	1	2009	Neither good nor bad job	38
region	1	2009	Somewhat bad job	19
region	1	2009	Somewhat good job	25
region	1	2009	Very bad job	3
region	1	2009	Very good job	6
region	2	2009	China doesn't give development assistance to the country	2
region	2	2009	Don't know / Haven't heard enough	35
region	2	2009	Neither good nor bad job	53
region	2	2009	Somewhat bad job	42
region	2	2009	Somewhat good job	112
region	2	2009	Very bad job	13
region	2	2009	Very good job	16
region	3	2009	Don't know / Haven't heard enough	22
region	3	2009	Neither good nor bad job	4
region	3	2009	Somewhat bad job	3
region	3	2009	Somewhat good job	54
region	3	2009	Very bad job	1
region	3	2009	Very good job	12
region	4	2009	China doesn't give development assistance to the country	4
region	4	2009	Don't know / Haven't heard enough	11
region	4	2009	Neither good nor bad job	6
region	4	2009	Somewhat bad job	8
region	4	2009	Somewhat good job	23
region	4	2009	Very bad job	4
region	4	2009	Very good job	15
region	5	2009	Don't know / Haven't heard enough	10
region	5	2009	Neither good nor bad job	3
region	5	2009	Somewhat bad job	5
region	5	2009	Somewhat good job	23
region	5	2009	Very bad job	5
region	5	2009	Very good job	2
region	6	2009	China doesn't give development assistance to the country	1
region	6	2009	Don't know / Haven't heard enough	17
region	6	2009	Neither good nor bad job	7
region	6	2009	Somewhat bad job	14
region	6	2009	Somewhat good job	21
region	6	2009	Very bad job	1
region	6	2009	Very good job	11
region	7	2009	Don't know / Haven't heard enough	7
region	7	2009	Neither good nor bad job	6
region	7	2009	Somewhat good job	31
region	7	2009	Very bad job	1
region	7	2009	Very good job	11
region	8	2009	Don't know / Haven't heard enough	2
region	8	2009	Neither good nor bad job	1
region	8	2009	Somewhat bad job	2
region	8	2009	Somewhat good job	30
region	8	2009	Very good job	5
region	9	2009	Don't know / Haven't heard enough	5
region	9	2009	Somewhat good job	17
region	9	2009	Very good job	2
region	10	2009	China doesn't give development assistance to the country	1
region	10	2009	Don't know / Haven't heard enough	33
region	10	2009	Neither good nor bad job	7
region	10	2009	Somewhat bad job	26
region	10	2009	Somewhat good job	20
region	10	2009	Very bad job	2
region	10	2009	Very good job	7
region	11	2009	Don't know / Haven't heard enough	4
region	11	2009	Neither good nor bad job	33
region	11	2009	Somewhat bad job	13
region	11	2009	Somewhat good job	24
region	11	2009	Very bad job	7
region	11	2009	Very good job	7
region	12	2009	Neither good nor bad job	1
region	12	2009	Somewhat good job	6
region	12	2009	Very good job	1
region	13	2009	Don't know / Haven't heard enough	2
region	13	2009	Somewhat bad job	2
region	13	2009	Somewhat good job	17
region	13	2009	Very good job	3
region	14	2009	Neither good nor bad job	8
region	14	2009	Somewhat bad job	6
region	14	2009	Somewhat good job	31
region	14	2009	Very good job	3
region	15	2009	China doesn't give development assistance to the country	1
region	15	2009	Don't know / Haven't heard enough	4
region	15	2009	Neither good nor bad job	23
region	15	2009	Somewhat bad job	5
region	15	2009	Somewhat good job	17
region	15	2009	Very bad job	8
region	15	2009	Very good job	6
region	16	2009	Don't know / Haven't heard enough	16
region	16	2009	Neither good nor bad job	8
region	16	2009	Somewhat bad job	18
region	16	2009	Somewhat good job	22
region	16	2009	Very bad job	3
region	16	2009	Very good job	13
region	17	2009	Don't know / Haven't heard enough	10
region	17	2009	Neither good nor bad job	7
region	17	2009	Somewhat bad job	8
region	17	2009	Somewhat good job	32
region	17	2009	Very bad job	1
region	17	2009	Very good job	6
region	30	2009	Don't know / Haven't heard enough	2
region	30	2009	Neither good nor bad job	2
region	30	2009	Somewhat bad job	2
region	30	2009	Somewhat good job	84
region	30	2009	Very good job	22
region	18	2009	Don't know / Haven't heard enough	37
region	18	2009	Neither good nor bad job	7
region	18	2009	Somewhat good job	55
region	18	2009	Very good job	21
region	19	2009	China doesn't give development assistance to the country	3
region	19	2009	Neither good nor bad job	4
region	19	2009	Somewhat bad job	10
region	19	2009	Somewhat good job	48
region	19	2009	Very bad job	1
region	19	2009	Very good job	5
region	20	2009	China doesn't give development assistance to the country	2
region	20	2009	Don't know / Haven't heard enough	9
region	20	2009	Neither good nor bad job	8
region	20	2009	Somewhat bad job	24
region	20	2009	Somewhat good job	61
region	20	2009	Very bad job	1
region	20	2009	Very good job	19
region	21	2009	Don't know / Haven't heard enough	6
region	21	2009	Neither good nor bad job	3
region	21	2009	Somewhat bad job	8
region	21	2009	Somewhat good job	21
region	21	2009	Very good job	2
region	22	2009	Don't know / Haven't heard enough	3
region	22	2009	Neither good nor bad job	7
region	22	2009	Somewhat bad job	21
region	22	2009	Somewhat good job	26
region	22	2009	Very bad job	3
region	22	2009	Very good job	12
region	23	2009	Don't know / Haven't heard enough	9
region	23	2009	Neither good nor bad job	4
region	23	2009	Somewhat bad job	2
region	23	2009	Somewhat good job	20
region	23	2009	Very good job	4
region	24	2009	Don't know / Haven't heard enough	10
region	24	2009	Neither good nor bad job	10
region	24	2009	Somewhat bad job	9
region	24	2009	Somewhat good job	37
region	24	2009	Very bad job	1
region	24	2009	Very good job	5
region	25	2009	Don't know / Haven't heard enough	2
region	25	2009	Neither good nor bad job	8
region	25	2009	Somewhat bad job	27
region	25	2009	Somewhat good job	18
region	25	2009	Very bad job	6
region	25	2009	Very good job	11
region	26	2009	China doesn't give development assistance to the country	2
region	26	2009	Don't know / Haven't heard enough	15
region	26	2009	Neither good nor bad job	3
region	26	2009	Somewhat bad job	18
region	26	2009	Somewhat good job	22
region	26	2009	Very bad job	1
region	26	2009	Very good job	3
region	27	2009	Don't know / Haven't heard enough	1
region	27	2009	Neither good nor bad job	4
region	27	2009	Somewhat bad job	25
region	27	2009	Somewhat good job	25
region	27	2009	Very bad job	1
region	27	2009	Very good job	8
region	31	2009	Don't know / Haven't heard enough	13
region	31	2009	Neither good nor bad job	6
region	31	2009	Somewhat bad job	5
region	31	2009	Somewhat good job	37
region	31	2009	Very bad job	3
region	31	2009	Very good job	8
region	29	2009	China doesn't give development assistance to the country	1
region	29	2009	Don't know / Haven't heard enough	26
region	29	2009	Neither good nor bad job	13
region	29	2009	Somewhat bad job	3
region	29	2009	Somewhat good job	48
region	29	2009	Very bad job	1
region	29	2009	Very good job	12
region	28	2009	China doesn't give development assistance to the country	1
region	28	2009	Don't know / Haven't heard enough	8
region	28	2009	Neither good nor bad job	27
region	28	2009	Somewhat bad job	21
region	28	2009	Somewhat good job	15
region	28	2009	Very bad job	2
region	28	2009	Very good job	14
country	TZ	2009	Very bad job	69
country	TZ	2009	Don't know / Haven't heard enough	347
country	TZ	2009	Somewhat bad job	346
country	TZ	2009	Very good job	272
country	TZ	2009	Somewhat good job	1022
country	TZ	2009	Neither good nor bad job	311
country	TZ	2009	China doesn't give development assistance to the country	19
\.


--
-- Name: chinas_assistance_meets_country_needs pk_chinas_assistance_meets_country_needs; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chinas_assistance_meets_country_needs
    ADD CONSTRAINT pk_chinas_assistance_meets_country_needs PRIMARY KEY (geo_level, geo_code, geo_version, chinas_assistance_meets_country_needs);


--
-- PostgreSQL database dump complete
--

