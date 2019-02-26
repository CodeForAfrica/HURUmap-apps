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
province	10	2009	Agriculture / farming / fishing / forestry	1
province	10	2009	Artisan or skilled manual worker	18
province	10	2009	Clerical or secretarial	7
province	10	2009	Housewife / homemaker	9
province	10	2009	Mid-level professional	4
province	10	2009	Never had a job	35
province	10	2009	Other	10
province	10	2009	Retail / Shop	12
province	10	2009	Security services	6
province	10	2009	Student	13
province	10	2009	Supervisor / Foreman / Senior Manager	4
province	10	2009	Trader / hawker / vendor	6
province	10	2009	Unskilled manual worker	17
province	10	2009	Upper-level professional	10
province	19	2009	Agriculture / farming / fishing / forestry	11
province	19	2009	Artisan or skilled manual worker	72
province	19	2009	Clerical or secretarial	21
province	19	2009	Housewife / homemaker	30
province	19	2009	Mid-level professional	41
province	19	2009	Never had a job	29
province	19	2009	Other	15
province	19	2009	Retail / Shop	27
province	19	2009	Security services	11
province	19	2009	Student	31
province	19	2009	Supervisor / Foreman / Senior Manager	12
province	19	2009	Trader / hawker / vendor	49
province	19	2009	Unskilled manual worker	66
province	19	2009	Upper-level professional	33
province	11	2009	Agriculture / farming / fishing / forestry	32
province	11	2009	Artisan or skilled manual worker	21
province	11	2009	Clerical or secretarial	5
province	11	2009	Housewife / homemaker	10
province	11	2009	Mid-level professional	13
province	11	2009	Never had a job	122
province	11	2009	Other	2
province	11	2009	Retail / Shop	8
province	11	2009	Security services	4
province	11	2009	Student	10
province	11	2009	Supervisor / Foreman / Senior Manager	8
province	11	2009	Trader / hawker / vendor	19
province	11	2009	Unskilled manual worker	45
province	11	2009	Upper-level professional	5
province	12	2009	Agriculture / farming / fishing / forestry	80
province	12	2009	Artisan or skilled manual worker	9
province	12	2009	Clerical or secretarial	3
province	12	2009	Housewife / homemaker	18
province	12	2009	Mid-level professional	10
province	12	2009	Never had a job	22
province	12	2009	Other	2
province	12	2009	Retail / Shop	5
province	12	2009	Security services	3
province	12	2009	Student	3
province	12	2009	Supervisor / Foreman / Senior Manager	1
province	12	2009	Trader / hawker / vendor	8
province	12	2009	Unskilled manual worker	42
province	12	2009	Upper-level professional	2
province	13	2009	Agriculture / farming / fishing / forestry	46
province	13	2009	Artisan or skilled manual worker	14
province	13	2009	Clerical or secretarial	4
province	13	2009	Housewife / homemaker	24
province	13	2009	Mid-level professional	6
province	13	2009	Never had a job	70
province	13	2009	Other	5
province	13	2009	Retail / Shop	8
province	13	2009	Security services	1
province	13	2009	Student	4
province	13	2009	Supervisor / Foreman / Senior Manager	2
province	13	2009	Trader / hawker / vendor	21
province	13	2009	Unskilled manual worker	42
province	13	2009	Upper-level professional	1
province	14	2009	Agriculture / farming / fishing / forestry	42
province	14	2009	Artisan or skilled manual worker	14
province	14	2009	Clerical or secretarial	2
province	14	2009	Housewife / homemaker	12
province	14	2009	Mid-level professional	7
province	14	2009	Never had a job	88
province	14	2009	Other	4
province	14	2009	Retail / Shop	11
province	14	2009	Security services	8
province	14	2009	Student	6
province	14	2009	Supervisor / Foreman / Senior Manager	5
province	14	2009	Trader / hawker / vendor	11
province	14	2009	Unskilled manual worker	62
province	18	2009	Agriculture / farming / fishing / forestry	24
province	18	2009	Artisan or skilled manual worker	26
province	18	2009	Clerical or secretarial	1
province	18	2009	Housewife / homemaker	31
province	18	2009	Mid-level professional	4
province	18	2009	Never had a job	77
province	18	2009	Retail / Shop	9
province	18	2009	Security services	14
province	18	2009	Student	5
province	18	2009	Supervisor / Foreman / Senior Manager	4
province	18	2009	Trader / hawker / vendor	11
province	18	2009	Unskilled manual worker	40
province	18	2009	Upper-level professional	2
province	15	2009	Agriculture / farming / fishing / forestry	8
province	15	2009	Artisan or skilled manual worker	6
province	15	2009	Clerical or secretarial	1
province	15	2009	Housewife / homemaker	13
province	15	2009	Mid-level professional	2
province	15	2009	Never had a job	38
province	15	2009	Other	1
province	15	2009	Retail / Shop	4
province	15	2009	Security services	3
province	15	2009	Student	3
province	15	2009	Trader / hawker / vendor	3
province	15	2009	Unskilled manual worker	45
province	16	2009	Agriculture / farming / fishing / forestry	5
province	16	2009	Artisan or skilled manual worker	7
province	16	2009	Housewife / homemaker	13
province	16	2009	Mid-level professional	6
province	16	2009	Never had a job	35
province	16	2009	Retail / Shop	2
province	16	2009	Security services	1
province	16	2009	Supervisor / Foreman / Senior Manager	1
province	16	2009	Trader / hawker / vendor	4
province	16	2009	Unskilled manual worker	29
province	16	2009	Upper-level professional	1
province	17	2009	Agriculture / farming / fishing / forestry	39
province	17	2009	Artisan or skilled manual worker	16
province	17	2009	Clerical or secretarial	4
province	17	2009	Don't know	1
province	17	2009	Housewife / homemaker	11
province	17	2009	Mid-level professional	35
province	17	2009	Never had a job	80
province	17	2009	Other	4
province	17	2009	Retail / Shop	9
province	17	2009	Security services	9
province	17	2009	Student	14
province	17	2009	Supervisor / Foreman / Senior Manager	7
province	17	2009	Trader / hawker / vendor	9
province	17	2009	Unskilled manual worker	41
province	17	2009	Upper-level professional	9
country	ZW	2009	Agriculture / farming / fishing / forestry	288
country	ZW	2009	Student	89
country	ZW	2009	Unskilled manual worker	429
country	ZW	2009	Artisan or skilled manual worker	203
country	ZW	2009	Trader / hawker / vendor	141
country	ZW	2009	Clerical or secretarial	48
country	ZW	2009	Never had a job	596
country	ZW	2009	Housewife / homemaker	171
country	ZW	2009	Other	43
country	ZW	2009	Supervisor / Foreman / Senior Manager	44
country	ZW	2009	Mid-level professional	128
country	ZW	2009	Upper-level professional	63
country	ZW	2009	Security services	60
country	ZW	2009	Don't know	1
country	ZW	2009	Retail / Shop	95
\.


--
-- Name: occupation_of_respondent pk_occupation_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.occupation_of_respondent
    ADD CONSTRAINT pk_occupation_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, occupation_of_respondent);


--
-- PostgreSQL database dump complete
--

