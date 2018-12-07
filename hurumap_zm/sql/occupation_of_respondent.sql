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
province	1	2010	Agriculture / farming / fishing / forestry	19
province	1	2010	Artisan or skilled manual worker	4
province	1	2010	Clerical or secretarial	4
province	1	2010	Don't know	1
province	1	2010	Housewife / homemaker	15
province	1	2010	Mid-level professional	11
province	1	2010	Never had a job	18
province	1	2010	Other	1
province	1	2010	Retail / Shop	2
province	1	2010	Security services	6
province	1	2010	Student	12
province	1	2010	Supervisor / Foreman / Senior Manager	1
province	1	2010	Trader / hawker / vendor	2
province	1	2010	Unskilled manual worker	23
province	2	2010	Agriculture / farming / fishing / forestry	9
province	2	2010	Artisan or skilled manual worker	10
province	2	2010	Housewife / homemaker	17
province	2	2010	Mid-level professional	2
province	2	2010	Never had a job	44
province	2	2010	Other	13
province	2	2010	Retail / Shop	5
province	2	2010	Security services	3
province	2	2010	Student	29
province	2	2010	Supervisor / Foreman / Senior Manager	6
province	2	2010	Trader / hawker / vendor	19
province	2	2010	Unskilled manual worker	30
province	2	2010	Upper-level professional	5
province	3	2010	Agriculture / farming / fishing / forestry	83
province	3	2010	Artisan or skilled manual worker	1
province	3	2010	Don't know	1
province	3	2010	Housewife / homemaker	14
province	3	2010	Mid-level professional	6
province	3	2010	Never had a job	10
province	3	2010	Other	2
province	3	2010	Retail / Shop	2
province	3	2010	Student	3
province	3	2010	Trader / hawker / vendor	6
province	3	2010	Unskilled manual worker	6
province	3	2010	Upper-level professional	1
province	4	2010	Agriculture / farming / fishing / forestry	15
province	4	2010	Artisan or skilled manual worker	3
province	4	2010	Clerical or secretarial	1
province	4	2010	Don't know	1
province	4	2010	Housewife / homemaker	6
province	4	2010	Mid-level professional	1
province	4	2010	Never had a job	29
province	4	2010	Other	1
province	4	2010	Retail / Shop	2
province	4	2010	Security services	2
province	4	2010	Student	17
province	4	2010	Trader / hawker / vendor	2
province	4	2010	Unskilled manual worker	4
province	4	2010	Upper-level professional	2
province	5	2010	Agriculture / farming / fishing / forestry	5
province	5	2010	Artisan or skilled manual worker	9
province	5	2010	Clerical or secretarial	6
province	5	2010	Don't know	1
province	5	2010	Housewife / homemaker	22
province	5	2010	Mid-level professional	13
province	5	2010	Never had a job	34
province	5	2010	Other	18
province	5	2010	Retail / Shop	11
province	5	2010	Security services	2
province	5	2010	Student	49
province	5	2010	Supervisor / Foreman / Senior Manager	6
province	5	2010	Trader / hawker / vendor	16
province	5	2010	Unskilled manual worker	28
province	5	2010	Upper-level professional	3
province	6	2010	Agriculture / farming / fishing / forestry	13
province	6	2010	Artisan or skilled manual worker	2
province	6	2010	Housewife / homemaker	7
province	6	2010	Mid-level professional	8
province	6	2010	Never had a job	11
province	6	2010	Retail / Shop	2
province	6	2010	Student	7
province	6	2010	Supervisor / Foreman / Senior Manager	1
province	6	2010	Trader / hawker / vendor	2
province	6	2010	Unskilled manual worker	11
province	8	2010	Agriculture / farming / fishing / forestry	23
province	8	2010	Artisan or skilled manual worker	2
province	8	2010	Clerical or secretarial	1
province	8	2010	Housewife / homemaker	3
province	8	2010	Mid-level professional	3
province	8	2010	Never had a job	13
province	8	2010	Other	4
province	8	2010	Security services	1
province	8	2010	Student	7
province	8	2010	Supervisor / Foreman / Senior Manager	1
province	8	2010	Trader / hawker / vendor	2
province	8	2010	Unskilled manual worker	4
province	7	2010	Agriculture / farming / fishing / forestry	35
province	7	2010	Artisan or skilled manual worker	5
province	7	2010	Housewife / homemaker	13
province	7	2010	Mid-level professional	4
province	7	2010	Never had a job	18
province	7	2010	Other	4
province	7	2010	Retail / Shop	1
province	7	2010	Security services	1
province	7	2010	Student	6
province	7	2010	Trader / hawker / vendor	1
province	7	2010	Unskilled manual worker	6
province	7	2010	Upper-level professional	2
province	9	2010	Agriculture / farming / fishing / forestry	47
province	9	2010	Artisan or skilled manual worker	7
province	9	2010	Don't know	1
province	9	2010	Housewife / homemaker	26
province	9	2010	Mid-level professional	7
province	9	2010	Never had a job	8
province	9	2010	Other	4
province	9	2010	Retail / Shop	1
province	9	2010	Security services	2
province	9	2010	Student	6
province	9	2010	Supervisor / Foreman / Senior Manager	1
province	9	2010	Trader / hawker / vendor	9
province	9	2010	Unskilled manual worker	14
province	9	2010	Upper-level professional	3
province	10	2010	Agriculture / farming / fishing / forestry	36
province	10	2010	Artisan or skilled manual worker	2
province	10	2010	Don't know	1
province	10	2010	Housewife / homemaker	7
province	10	2010	Mid-level professional	18
province	10	2010	Never had a job	6
province	10	2010	Other	2
province	10	2010	Retail / Shop	3
province	10	2010	Student	1
province	10	2010	Trader / hawker / vendor	2
province	10	2010	Unskilled manual worker	2
country	ZM	2010	Agriculture / farming / fishing / forestry	285
country	ZM	2010	Student	137
country	ZM	2010	Unskilled manual worker	128
country	ZM	2010	Artisan or skilled manual worker	45
country	ZM	2010	Trader / hawker / vendor	61
country	ZM	2010	Clerical or secretarial	12
country	ZM	2010	Never had a job	191
country	ZM	2010	Housewife / homemaker	130
country	ZM	2010	Other	49
country	ZM	2010	Supervisor / Foreman / Senior Manager	16
country	ZM	2010	Mid-level professional	73
country	ZM	2010	Upper-level professional	16
country	ZM	2010	Security services	17
country	ZM	2010	Don't know	6
country	ZM	2010	Retail / Shop	29
\.


--
-- Name: occupation_of_respondent pk_occupation_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.occupation_of_respondent
    ADD CONSTRAINT pk_occupation_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, occupation_of_respondent);


--
-- PostgreSQL database dump complete
--

