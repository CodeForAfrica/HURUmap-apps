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

ALTER TABLE IF EXISTS ONLY public.election_attend_campaign_rally DROP CONSTRAINT IF EXISTS pk_election_attend_campaign_rally;
DROP TABLE IF EXISTS public.election_attend_campaign_rally;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: election_attend_campaign_rally; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.election_attend_campaign_rally (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    election_attend_campaign_rally character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: election_attend_campaign_rally; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.election_attend_campaign_rally (geo_level, geo_code, geo_version, election_attend_campaign_rally, total) FROM stdin;
region	1	2009	No	65
region	1	2009	Yes	55
region	2	2009	No	152
region	2	2009	Yes	121
region	3	2009	No	47
region	3	2009	Yes	49
region	4	2009	No	22
region	4	2009	Yes	49
region	5	2009	Don't know	1
region	5	2009	No	15
region	5	2009	Yes	32
region	6	2009	No	35
region	6	2009	Yes	37
region	7	2009	No	20
region	7	2009	Yes	36
region	8	2009	No	12
region	8	2009	Yes	28
region	9	2009	No	11
region	9	2009	Yes	13
region	10	2009	No	27
region	10	2009	Yes	69
region	11	2009	No	42
region	11	2009	Yes	46
region	12	2009	No	2
region	12	2009	Yes	6
region	13	2009	No	8
region	13	2009	Yes	16
region	14	2009	No	8
region	14	2009	Yes	40
region	15	2009	No	37
region	15	2009	Yes	27
region	16	2009	No	34
region	16	2009	Yes	46
region	17	2009	No	22
region	17	2009	Yes	42
region	30	2009	No	38
region	30	2009	Yes	74
region	18	2009	No	55
region	18	2009	Yes	65
region	19	2009	No	9
region	19	2009	Yes	62
region	20	2009	No	45
region	20	2009	Yes	79
region	21	2009	No	14
region	21	2009	Yes	26
region	22	2009	No	15
region	22	2009	Yes	57
region	23	2009	No	9
region	23	2009	Yes	30
region	24	2009	No	20
region	24	2009	Yes	52
region	25	2009	No	32
region	25	2009	Yes	40
region	26	2009	No	18
region	26	2009	Yes	46
region	27	2009	No	23
region	27	2009	Yes	41
region	31	2009	No	28
region	31	2009	Yes	44
region	29	2009	No	39
region	29	2009	Yes	65
region	28	2009	No	37
region	28	2009	Yes	51
country	TZ	2009	Yes	1444
country	TZ	2009	No	941
country	TZ	2009	Don't know	1
\.


--
-- Name: election_attend_campaign_rally pk_election_attend_campaign_rally; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.election_attend_campaign_rally
    ADD CONSTRAINT pk_election_attend_campaign_rally PRIMARY KEY (geo_level, geo_code, geo_version, election_attend_campaign_rally);


--
-- PostgreSQL database dump complete
--

