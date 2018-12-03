--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.occupation_of_respondent DROP CONSTRAINT IF EXISTS pk_occupation_of_respondent;
DROP TABLE IF EXISTS public.occupation_of_respondent;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: occupation_of_respondent; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.occupation_of_respondent (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    occupation_of_respondent character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: occupation_of_respondent; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.occupation_of_respondent (geo_level, geo_code, geo_version, occupation_of_respondent, total) FROM stdin;
region	114	2014	Agriculture / farming / fishing / forestry	237
region	114	2014	Artisan or skilled manual worker	37
region	114	2014	Clerical or secretarial	5
region	114	2014	Don't know	1
region	114	2014	Housewife / homemaker	42
region	114	2014	Mid-level professional	32
region	114	2014	Never had a job	63
region	114	2014	Other	22
region	114	2014	Retail / Shop	51
region	114	2014	Security services	12
region	114	2014	Student	45
region	114	2014	Supervisor / Foreman / Senior Manager	7
region	114	2014	Trader / hawker / vendor	49
region	114	2014	Unskilled manual worker	53
region	114	2014	Upper-level professional	8
region	115	2014	Agriculture / farming / fishing / forestry	260
region	115	2014	Artisan or skilled manual worker	16
region	115	2014	Clerical or secretarial	1
region	115	2014	Don't know	1
region	115	2014	Housewife / homemaker	69
region	115	2014	Mid-level professional	30
region	115	2014	Missing	1
region	115	2014	Never had a job	127
region	115	2014	Other	9
region	115	2014	Retail / Shop	17
region	115	2014	Security services	5
region	115	2014	Student	42
region	115	2014	Supervisor / Foreman / Senior Manager	3
region	115	2014	Trader / hawker / vendor	24
region	115	2014	Unskilled manual worker	18
region	115	2014	Upper-level professional	1
region	116	2014	Agriculture / farming / fishing / forestry	269
region	116	2014	Artisan or skilled manual worker	12
region	116	2014	Don't know	1
region	116	2014	Housewife / homemaker	67
region	116	2014	Mid-level professional	14
region	116	2014	Never had a job	57
region	116	2014	Other	9
region	116	2014	Retail / Shop	3
region	116	2014	Security services	3
region	116	2014	Student	38
region	116	2014	Supervisor / Foreman / Senior Manager	1
region	116	2014	Trader / hawker / vendor	19
region	116	2014	Unskilled manual worker	11
region	117	2014	Agriculture / farming / fishing / forestry	342
region	117	2014	Artisan or skilled manual worker	13
region	117	2014	Clerical or secretarial	1
region	117	2014	Don't know	2
region	117	2014	Housewife / homemaker	22
region	117	2014	Mid-level professional	23
region	117	2014	Never had a job	38
region	117	2014	Other	13
region	117	2014	Retail / Shop	33
region	117	2014	Security services	4
region	117	2014	Student	23
region	117	2014	Supervisor / Foreman / Senior Manager	1
region	117	2014	Trader / hawker / vendor	43
region	117	2014	Unskilled manual worker	47
region	117	2014	Upper-level professional	3
country	UG	2014	Agriculture / farming / fishing / forestry	1108
country	UG	2014	Student	148
country	UG	2014	Missing	1
country	UG	2014	Unskilled manual worker	129
country	UG	2014	Artisan or skilled manual worker	78
country	UG	2014	Trader / hawker / vendor	135
country	UG	2014	Clerical or secretarial	7
country	UG	2014	Never had a job	285
country	UG	2014	Housewife / homemaker	200
country	UG	2014	Other	53
country	UG	2014	Supervisor / Foreman / Senior Manager	12
country	UG	2014	Mid-level professional	99
country	UG	2014	Upper-level professional	12
country	UG	2014	Security services	24
country	UG	2014	Don't know	5
country	UG	2014	Retail / Shop	104
\.


--
-- Name: occupation_of_respondent pk_occupation_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.occupation_of_respondent
    ADD CONSTRAINT pk_occupation_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, occupation_of_respondent);


--
-- PostgreSQL database dump complete
--

